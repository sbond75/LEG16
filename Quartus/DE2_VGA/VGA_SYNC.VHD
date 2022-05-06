library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all; -- needed for conv_unsigned etc. ( https://www2.cs.sfu.ca/~ggbaker/reference/std_logic/arith/conv_unsigned.html , https://www2.cs.sfu.ca/~ggbaker/reference/std_logic/arith/conv_std_logic_vector.html )
use  IEEE.STD_LOGIC_UNSIGNED.all; -- makes all additions of std_logic_vector UNSIGNED ( https://community.intel.com/t5/Intel-Quartus-Prime-Software/Error-10327-Can-t-determine-definition-of-operator-quot-quot/td-p/61149 )
--use  IEEE.STD_LOGIC_SIGNED.all;
--use ieee.numeric_std.all; -- needed for `to_unsigned(65535, unsigned'length);`
use IEEE.math_real.all;

-- Module Generates Video Sync Signals for Video Montor Interface
-- RGB and Sync outputs tie directly to monitor conector pins
ENTITY VGA_SYNC_module IS
  generic (
    constant Num_Hex_Digits : integer
  );
	PORT(	clock_50Mhz, red, green, blue		: IN	STD_LOGIC;
			red_out, green_out, blue_out	:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			horiz_sync_out, vert_sync_out, video_on, pixel_clock
				: OUT	STD_LOGIC;
			pixel_row, pixel_column: OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			KEYS: IN STD_LOGIC_VECTOR(3 downto 0);
			SWITCHES:	IN STD_LOGIC_VECTOR(7 DOWNTO 0);

    -- Input switches
    
    --SW 			: IN STD_LOGIC_VECTOR (17 downto 0);         -- DPDT switches

	Hex_Display_Data: out std_logic_vector((Num_Hex_Digits*4)-1 downto 0) := "00010101000101010001010100010101"
			);
END VGA_SYNC_module;
ARCHITECTURE a OF VGA_SYNC_module IS

	-- enums basically --

	subtype t_Mnemonic is std_logic_vector(3 downto 0);

	constant mn_addi: t_Mnemonic := "0000";
	constant mn_subi: t_Mnemonic := "1010";
	constant mn_add: t_Mnemonic := "0111";
	constant mn_sub: t_Mnemonic := "1011";
	constant mn_xor: t_Mnemonic := "1100";
	constant mn_and: t_Mnemonic := "1101";
	constant mn_or: t_Mnemonic := "1110";
	constant mn_sh: t_Mnemonic := "0110";
	constant mn_set: t_Mnemonic := "0010";
	constant mn_br: t_Mnemonic := "1000";
	constant mn_brdnz: t_Mnemonic := "0001";
	constant mn_call: t_Mnemonic := "1111";
	constant mn_jmp: t_Mnemonic := "1001";
	constant mn_ldi: t_Mnemonic := "0100";
	constant mn_str: t_Mnemonic := "0101";
	constant mn_ldr: t_Mnemonic := "0011";

	subtype t_Condition is std_logic_vector(3 downto 0);
	
	constant cond_none: t_Condition := "0000";
	constant cond_sgz: t_Condition := "0001";
	constant cond_slz: t_Condition := "0010";
	constant cond_nz: t_Condition := "0011";
	constant cond_z: t_Condition := "0100";
	constant cond_cu: t_Condition := "0101";
	constant cond_cs: t_Condition := "0110";

	-- misc constants --

	-- https://www2.cs.sfu.ca/~ggbaker/reference/std_logic/arith/conv_unsigned.html
	constant MEMORY_SIZE: unsigned := conv_unsigned(65535, 64); --to_unsigned(65535, unsigned'length); -- in units of t_MemoryCell records
	
	-- typedefs basically --
	
	subtype MemoryPointingRegister is std_logic_vector(15 downto 0); -- 16-bit unsigned integer
	subtype ImmediateType is std_logic_vector(7 downto 0); -- 8-bit unsigned integer
	subtype SignedImmediateType is Integer range -128 to 127; -- 8-bit signed integer

	-- structs basically --
	
	type t_MemoryCell is record
		dataOrInstruction: std_logic_vector(15 downto 0);
	end record t_MemoryCell;
	constant t_MemoryCell_size: unsigned := conv_unsigned(2, 64); -- bytes
	
	type t_Instruction is record
		immediate_orRegSelects_orRegSelectAndExtraOperation: std_logic_vector(7 downto 0); -- this is used to store either an immediate or two register selects or ((a register select and an extra operation)).
		conditionOrRegSelect: std_logic_vector(3 downto 0);
		mnemonic: t_Mnemonic;
	end record t_Instruction;

	-- functions --

	-- https://www.nandland.com/vhdl/examples/example-function-advanced.html
  function f_is_msb_set_forUInt8 (
    value    : in std_logic_vector(7 downto 0))
    return std_logic is
    variable v_res : std_logic := '0';
  begin
    v_res := value(7);
    return v_res;
  end function f_is_msb_set_forUInt8;

	function f_memoryCellFromImmediate(value: in unsigned)
		return t_MemoryCell is variable v_res: t_MemoryCell;
	begin
		v_res := (dataOrInstruction => conv_std_logic_vector(value, 16)); -- https://insights.sigasi.com/tech/records-initialize/
		return v_res;
	end function f_memoryCellFromImmediate;

	-- signals --
	
	SIGNAL horiz_sync, vert_sync, pixel_clock_int : STD_LOGIC;
	SIGNAL video_on_int, video_on_v, video_on_h : STD_LOGIC;
	SIGNAL h_count, v_count :STD_LOGIC_VECTOR(9 DOWNTO 0);
	signal currentColor: STD_LOGIC_VECTOR(2 downto 0) := "000";
	signal currentCircleColor: STD_LOGIC_VECTOR(2 downto 0) := "000";
	signal enableSwitch: STD_LOGIC := '1';
	signal enableCircleSwitch: STD_LOGIC := '1';
	signal distToCircleCenterSquared: STD_LOGIC_VECTOR(19 DOWNTO 0);
	--signal distToCircleCenterReal: integer;

        signal PC: MemoryPointingRegister := conv_std_logic_vector(0, 16);
        signal SP: MemoryPointingRegister := conv_std_logic_vector(16383, 16); --floor(65535 / 2 / 2); --"should" be: conv_std_logic_vector(MEMORY_SIZE / t_MemoryCell_size / 2, 16); -- We initialize SP to halfway in the memory
	signal SP_orig: MemoryPointingRegister := SP;

	type t_MEMORY is array(65535 downto 0) of t_MemoryCell; --"should" be: type t_MEMORY is array(MEMORY_SIZE downto 0) of t_MemoryCell;
	signal memory: t_MEMORY := (
    (dataOrInstruction => "0000000011111111"), -- addi r0, 255
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    (dataOrInstruction => "0111000100100011"), -- add r1, r2 into r3
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128
    (dataOrInstruction => "0100000010011100"), -- ldi r0, 156
    (dataOrInstruction => "0100000110011101"), -- ldi r1, 157
    (dataOrInstruction => "0100001010011100"), -- ldi r2, 156
    (dataOrInstruction => "0111000100100011"), -- add r1, r2 into r3
    (dataOrInstruction => "1011001100010011"), -- sub r3, r1 into r3
    (dataOrInstruction => "1011001100100011"), -- sub r3, r2 into r3
    -- - r3 should be zero at this point. (PC=9 should show on the screen to check this)
    -- - zero flag should be set at this point. (Flags=2)
    (dataOrInstruction => "1100000100100011"), -- xor r1, r2 into r3
    -- r3 should be 1 at this point (PC=10)
    -- r0 should be 0x009C
    -- r1 should be 0x009D
    -- r2 should be 0x009C
    (dataOrInstruction => "0110000100001000"), -- sh r1 right 8
    -- r1 should be 0 (PC=11)
    -- Flags should = 2
    (dataOrInstruction => "0110001011111000"), -- sh r2 left 8
    -- r2 should be 0x9C00 (PC=12)
    (dataOrInstruction => "0110001011111000"), -- sh r2 left 8
    -- r2 should be 0x0000 (PC=13)
    (dataOrInstruction => "0100001001111011"), -- ldi r2, 123
    (dataOrInstruction => "0010000100100000"), -- set r1 to r2
    -- r1 should be 0x007B (PC=15)
    (dataOrInstruction => "0010000100100001"), -- set r1 to -r2
    -- r1 should be 0xFF85 (PC=16)
    (dataOrInstruction => "1000000001100100"), -- br to 100
    -- (PC=117)
    (dataOrInstruction => "1101000100100011"), -- and r1, r2 into r3
    -- r3 should be 1
    (dataOrInstruction => "1110000100100011"), -- or r1, r2 into r3
    -- r3 should be 0xFFFF (PC=19)
    -- Note: as a signed two's complement number, 0xFFFF = -1
    (dataOrInstruction => "1000000100001111"), -- brsgz to 15 -- This shouldn't branch
    -- (PC=20)
    (dataOrInstruction => "1000001000000011"), -- brslz to 3 -- This should branch
    -- (PC=21)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=22)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=23)
    (dataOrInstruction => "0000000000000010"), -- addi r0, 2 -- This should execute
    -- (PC=24)
    (dataOrInstruction => "0111000100100011"), -- add r1, r2 into r3
    -- (PC=25)
    (dataOrInstruction => "1000010100000011"), -- brcu to 3 -- This should branch
    -- (PC=26)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=27)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=28)
    (dataOrInstruction => "1000011000000011"), -- brcs to 3 -- This shouldn't branch
    -- (PC=29)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This should execute
    -- (PC=30)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This should execute
    -- (PC=31)
    (dataOrInstruction => "1010000010000000"), -- subi r0, 128
    -- (PC=32)
    (dataOrInstruction => "1010000010000000"), -- subi r0, 128
    -- (PC=33)
    (dataOrInstruction => "1010000010000000"), -- subi r0, 128
    -- (PC=34)
    (dataOrInstruction => "1010000010000000"), -- subi r0, 128
    -- (PC=35)
    (dataOrInstruction => "1010000010000000"), -- subi r0, 128
    -- (PC=36)
    (dataOrInstruction => "1010000010000000"), -- subi r0, 128
    -- (PC=37)
    (dataOrInstruction => "1010000010000000"), -- subi r0, 128
    -- (PC=38)
    (dataOrInstruction => "0110001011111000"), -- sh r2 left 8
    -- (PC=39)
    (dataOrInstruction => "1000010000000011"), -- brz to 3 -- This should branch
    -- (PC=40)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=41)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=42)
    (dataOrInstruction => "0110000011111010"), -- sh r0 left 6
    -- (PC=43)
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    -- (PC=44)
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    -- (PC=45)
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    -- (PC=46)
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    -- (PC=47)
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    -- (PC=48)
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    -- (PC=49)
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    -- (PC=50)
    -- r0 as an unsigned number=32903
    (dataOrInstruction => "1010000011111111"), -- subi r0, 255
    -- (PC=51)
    -- r0 as an unsigned number=32648 <-- notice that this just dipped below the absolute value of int16's min value (normally -32768) which is (absolute value): 32768 (or if it were addition, max value of 32767 would need to be surpassed). two's complement of 32648 is (-)32888 so is that the same as checking the unsigned? anyway I think it works..
    (dataOrInstruction => "1000011000000011"), -- brcs to 3 -- This should branch
    -- (PC=52)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=53)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=54)
    (dataOrInstruction => "1000001100000011"), -- brnz to 3 -- This should branch
    -- (PC=55)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=56)
    (dataOrInstruction => "0000000010000000"), -- addi r0, 128 -- This shouldn't execute
    -- (PC=57)
    (dataOrInstruction => "0000000100000001"), -- addi r1, 1
    -- (PC=58)
    (dataOrInstruction => "1111000100000000"), -- call r1 -- This should execute, causing PC=32707
    -- (PC=59)
    (dataOrInstruction => "0000000100000001"), -- addi r1, 1 -- This should execute, and r1 should be 121 after this instruction
    -- (PC=60)
    (dataOrInstruction => "0101000100000001"), -- str r1 at SP++
    -- (PC=61)
    -- r1 is 0x79
    (dataOrInstruction => "0100000100000010"), -- ldi r1, 2
    -- (PC=62)
    -- r1 is 0x2
    (dataOrInstruction => "0101000100010000"), -- str r1 at r1
    -- (PC=63)
    -- Memory: 2nd byte in raw hexdump should go from FF A0 to 02 00
    (dataOrInstruction => "0011000100010000"), -- ldr r1 from r1
    -- (PC=64)
    -- r1 is 0x2
    (dataOrInstruction => "0001000100000000"), -- brdnz r1 to 0 -- Should jump to itself a bunch until r1 is 0
    -- (PC=65)
    (dataOrInstruction => "0001000110011100"), -- brdnz r1 to -100 -- Shouldn't branch
    -- (PC=66)
    others => (dataOrInstruction => conv_std_logic_vector(0, 16))
); -- Instructions and data memory
        
	
--
-- To select a different screen resolution, clock rate, and refresh rate
-- pick a set of new video timing constant values from table at end of code section
-- enter eight new sync timing constants below and
-- adjust PLL frequency output to pixel clock rate from table
-- using MegaWizard to edit video_PLL.vhd
-- Horizontal Timing Constants  
	CONSTANT H_pixels_across: 	Natural := 640;
	CONSTANT H_sync_low: 		Natural := 664;
	CONSTANT H_sync_high: 		Natural := 760;
	CONSTANT H_end_count: 		Natural := 800;
-- Vertical Timing Constants
	CONSTANT V_pixels_down: 	Natural := 480;
	CONSTANT V_sync_low: 		Natural := 491;
	CONSTANT V_sync_high: 		Natural := 493;
	CONSTANT V_end_count: 		Natural := 525;
	
	CONSTANT circleCenterX: Natural := H_pixels_across / 2;
	CONSTANT circleCenterY: Natural := V_pixels_down / 2;
	CONSTANT circleRadius: Natural := V_pixels_down / 3; --MINIMUM(H_pixels_across, V_pixels_across) / 3;
	
	COMPONENT video_PLL
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0			: OUT STD_LOGIC 
	);
end component;

BEGIN

-- PLL below is used to generate the pixel clock frequency
-- Uses UP 3's 48Mhz USB clock for PLL's input clock
video_PLL_inst : video_PLL PORT MAP (
		inclk0	 => Clock_50Mhz,
		c0	 => pixel_clock_int
	);

-- video_on is high only when RGB pixel data is being displayed
-- used to blank color signals at screen edges during retrace
video_on_int <= video_on_H AND video_on_V;
-- output pixel clock and video on for external user logic
pixel_clock <= pixel_clock_int;
video_on <= video_on_int; 

PROCESS(clock_50Mhz)
  variable instr : t_MemoryCell := (dataOrInstruction => conv_std_logic_vector(0, 16));
BEGIN
	--WAIT UNTIL(pixel_clock_int'EVENT) AND (pixel_clock_int='1');
  if rising_edge(clock_50Mhz) then
	-- Calculate circle coords
	-- Compute distance to the circleCenterX and Y:
	distToCircleCenterSquared <= conv_std_logic_vector((conv_integer(h_count) -- X
	    - circleCenterX) * (conv_integer(h_count) - circleCenterX), 20)
		 + conv_std_logic_vector((conv_integer(v_count) - circleCenterY) * (conv_integer(v_count) - circleCenterY), 20);

	-- Need square root of dist:
	--distance to real number:
	-- "sqrt is used but not declared" is said if you're supplying the wrong type!
	-- also anything with to_ doesn't usually seem to work..
	-- doesn't compile: distToCircleCenter <= conv_std_logic_vector(sqrt(real(integer(unsigned(distToCircleCenter)))), 20);
	-- doesn't compile: distToCircleCenter <= conv_std_logic_vector(sqrt(real(to_integer(unsigned(distToCircleCenter)))), 20);
	-- doesn't compile: distToCircleCenter <= conv_std_logic_vector(sqrt(real((unsigned(distToCircleCenter)))), 20);
	-- doesn't compile: distToCircleCenter <= conv_std_logic_vector(sqrt(real((integer(distToCircleCenter)))), 20);
	--distToCircleCenterReal <= integer(sqrt(real((conv_integer(distToCircleCenter)))));
		 
	-- Note: this can interrupt drawing of the screen on button press -- in the middle of a vertical refresh, making a line cutting between the current and previous color on the screen
	if KEYS(0) = '0' then -- key pressed (0)
		if enableSwitch = '1' then
			-- Change color
			-- 	currentColor <= currentColor + 1;
	  
			-- CPU --
			-- runOneIter basically
			instr := memory(conv_integer(PC));
			PC <= PC + 1;
			Hex_Display_Data(15 downto 0) <= PC;
			-- --

			enableSwitch <= '0';
		end if;
	else -- key not pressed
		enableSwitch <= '1';
	end if;
	
-- 	-- Check for circle color changing button
-- 	if KEYS(1) = '0' then -- key pressed (0)
-- 		-- Change color
-- 		if enableCircleSwitch = '1' then
-- 			currentCircleColor <= currentCircleColor + 1;
-- 			enableCircleSwitch <= '0';
-- 		end if;
-- 	else -- key not pressed
-- 		enableCircleSwitch <= '1';
-- 	end if;
	
-- --Generate Horizontal and Vertical Timing Signals for Video Signal
-- -- H_count counts pixels (#pixels across + extra time for sync signals)
-- -- 
-- --  Horiz_sync  ------------------------------------__________--------
-- --  H_count     0                 #pixels            sync low      end
-- --
-- 	IF (h_count = H_end_count) THEN
--    		h_count <= "0000000000";
-- 	ELSE
--    		h_count <= h_count + 1;
-- 	END IF;

-- --Generate Horizontal Sync Signal using H_count
-- 	IF (h_count <= H_sync_high) AND (h_count >= H_sync_low) THEN
--  	  	horiz_sync <= '0';
-- 	ELSE
--  	  	horiz_sync <= '1';
-- 	END IF;

-- --V_count counts rows of pixels (#pixel rows down + extra time for V sync signal)
-- --  
-- --  Vert_sync      -----------------------------------------------_______------------
-- --  V_count         0                        last pixel row      V sync low       end
-- --
-- 	IF (v_count >= V_end_count) AND (h_count >= H_sync_low) THEN
--    		v_count <= "0000000000";
-- 	ELSIF (h_count = H_sync_low) THEN
--    		v_count <= v_count + 1;
-- 	END IF;

-- -- Generate Vertical Sync Signal using V_count
-- 	IF (v_count <= V_sync_high) AND (v_count >= V_sync_low) THEN
--    		vert_sync <= '0';
-- 	ELSE
--   		vert_sync <= '1';
-- 	END IF;

-- -- Generate Video on Screen Signals for Pixel Data
-- -- Video on = 1 indicates pixel are being displayed
-- -- Video on = 0 retrace - user logic can update pixel
-- -- memory without needing to read memory for display
-- 	IF (h_count < H_pixels_across) THEN
--    		video_on_h <= '1';
--    		pixel_column <= h_count;
-- 	ELSE
-- 	   	video_on_h <= '0';
-- 	END IF;

-- 	IF (v_count <= V_pixels_down) THEN
--    		video_on_v <= '1';
--    		pixel_row <= v_count;
-- 	ELSE
--    		video_on_v <= '0';
-- 	END IF;

-- -- Put all video signals through DFFs to elminate any small timing delays that cause a blurry image
-- 		horiz_sync_out <= horiz_sync;
-- 		vert_sync_out <= vert_sync;
		
-- -- 		Also turn off RGB color signals at edge of screen during vertical and horizontal retrace
-- 		IF (video_on_int = '1') THEN
-- 			red_out <= (others => '0'); --SWITCHES;
-- 			red_out(7) <= currentColor(0);
					
-- 			if distToCircleCenterSquared < circleRadius*circleRadius then
-- 				 red_out(7) <= currentCircleColor(0);
-- 			end if;
-- 		END IF;
-- 		IF (video_on_int = '1') THEN
-- 			green_out <= (others => '0'); --SWITCHES;
-- 			green_out(7) <= currentColor(1);
					
-- 			if distToCircleCenterSquared < circleRadius*circleRadius then
-- 				 green_out(7) <= currentCircleColor(1);
-- 			end if;
-- 		END IF;
-- 		IF (video_on_int = '1') THEN
-- 			blue_out <= (others => '0'); --SWITCHES;
-- 			blue_out(7) <= currentColor(2);
					
-- 			if distToCircleCenterSquared < circleRadius*circleRadius then
-- 				 blue_out(7) <= currentCircleColor(2);
-- 			end if;
-- 		END IF;
-- 		IF (video_on_int = '0') THEN
-- 			red_out <= "00000000";
-- 			green_out <= "00000000";
-- 			blue_out <= "00000000";
-- 		END IF;
		
		--red_out <= red AND video_on_int;
		--green_out <= green AND video_on_int;
		--blue_out <= blue AND video_on_int;

	end if;

END PROCESS;
END a;
--
-- Common Video Modes - pixel clock and sync counter values
--
--  Mode       Refresh  Hor. Sync    Pixel clock  Interlaced?  VESA?
--  ------------------------------------------------------------
--  640x480     60Hz      31.5khz     25.175Mhz       No         No
--  640x480     63Hz      32.8khz     28.322Mhz       No         No
--  640x480     70Hz      36.5khz     31.5Mhz         No         No
--  640x480     72Hz      37.9khz     31.5Mhz         No        Yes
--  800x600     56Hz      35.1khz     36.0Mhz         No        Yes
--  800x600     56Hz      35.4khz     36.0Mhz         No         No
--  800x600     60Hz      37.9khz     40.0Mhz         No        Yes
--  800x600     60Hz      37.9khz     40.0Mhz         No         No
--  800x600     72Hz      48.0khz     50.0Mhz         No        Yes
--  1024x768    60Hz      48.4khz     65.0Mhz         No        Yes
--  1024x768    60Hz      48.4khz     62.0Mhz         No         No
--  1024x768    70Hz      56.5khz     75.0Mhz         No        Yes
--  1024x768    70Hz      56.25khz    72.0Mhz         No         No
--  1024x768    76Hz      62.5khz     85.0Mhz         No         No
--  1280x1024   59Hz      63.6khz    110.0Mhz         No         No
--  1280x1024   61Hz      64.24khz   110.0Mhz         No         No
--  1280x1024   74Hz      78.85khz   135.0Mhz         No         No
--
-- Pixel clock within 5% works on most monitors.
-- Faster clocks produce higher refresh rates at the same resolution on
-- most new monitors up to the maximum rate.
-- Some older monitors may not support higher refresh rates
-- or may only sync at specific refresh rates - VESA modes most common.
-- Pixel clock within 5% works on most old monitors.
-- Refresh rates below 60Hz will have some flicker.
-- Bad values such as very high refresh rates may damage some monitors
-- that do not support faster refreseh rates - check monitor specs.
--
-- Small adjustments to the sync low count ranges can be used to move
-- video image left, right (H), down or up (V) on the monitor
--
--
-- 640x480@60Hz Non-Interlaced mode
-- Horizontal Sync = 31.5kHz
-- Timing: H=(0.95us, 3.81us, 1.59us), V=(0.35ms, 0.064ms, 1.02ms)
--
--	          clock     horizontal timing         vertical timing      flags
--             Mhz    pix.col low  high end    pix.rows low  high end
--640x480    25.175     640  664   760  800        480  491   493  525
--                              <->                        <->    
--  sync pulses: Horiz----------___------   Vert-----------___-------
--
-- Alternate 640x480@60Hz Non-Interlaced mode
-- Horizontal Sync = 31.5kHz
-- Timing: H=(1.27us, 3.81us, 1.27us) V=(0.32ms, 0.06ms, 1.05ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--640x480      25.175  640  672  768  800    480  490  492  525
--
--
-- 640x480@63Hz Non-Interlaced mode (non-standard)
-- Horizontal Sync = 32.8kHz
-- Timing: H=(1.41us, 1.41us, 5.08us) V=(0.24ms, 0.092ms, 0.92ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--640x480      28.322  640  680  720  864    480  488  491  521
--
--
-- 640x480@70Hz Non-Interlaced mode (non-standard)
-- Horizontal Sync = 36.5kHz
-- Timing: H=(1.27us, 1.27us, 4.57us) V=(0.22ms, 0.082ms, 0.82ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--640x480      31.5    640  680  720  864    480  488  491  521
--
--
-- VESA 640x480@72Hz Non-Interlaced mode
-- Horizontal Sync = 37.9kHz
-- Timing: H=(0.76us, 1.27us, 4.06us) V=(0.24ms, 0.079ms, 0.74ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--640x480      31.5    640  664  704  832    480  489  492  520
--
--
-- VESA 800x600@56Hz Non-Interlaced mode
-- Horizontal Sync = 35.1kHz
-- Timing: H=(0.67us, 2.00us, 3.56us) V=(0.03ms, 0.063ms, 0.70ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--800x600      36      800  824  896 1024    600  601  603  625
--
--
-- Alternate 800x600@56Hz Non-Interlaced mode
-- Horizontal Sync = 35.4kHz
-- Timing: H=(0.89us, 4.00us, 1.11us) V=(0.11ms, 0.057ms, 0.79ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--800x600      36      800  832  976 1016    600  604  606  634
--
--
-- VESA 800x600@60Hz Non-Interlaced mode
-- Horizontal Sync = 37.9kHz
-- Timing: H=(1.00us, 3.20us, 2.20us) V=(0.03ms, 0.106ms, 0.61ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--800x600      40      800  840  968 1056    600  601  605  628 +hsync +vsync
--
--
-- Alternate 800x600@60Hz Non-Interlaced mode
-- Horizontal Sync = 37.9kHz
-- Timing: H=(1.20us, 3.80us, 1.40us) V=(0.13ms, 0.053ms, 0.69ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--800x600      40      800 848 1000 1056     600  605  607  633
--
--
-- VESA 800x600@72Hz Non-Interlaced mode
-- Horizontal Sync = 48kHz
-- Timing: H=(1.12us, 2.40us, 1.28us) V=(0.77ms, 0.13ms, 0.48ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--800x600      50      800  856  976 1040    600  637  643  666  +hsync +vsync
--
--
-- VESA 1024x768@60Hz Non-Interlaced mode
-- Horizontal Sync = 48.4kHz
-- Timing: H=(0.12us, 2.22us, 2.58us) V=(0.06ms, 0.12ms, 0.60ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--1024x768     65     1024 1032 1176 1344    768  771  777  806 -hsync -vsync
--
--
-- 1024x768@60Hz Non-Interlaced mode (non-standard dot-clock)
-- Horizontal Sync = 48.4kHz
-- Timing: H=(0.65us, 2.84us, 0.65us) V=(0.12ms, 0.041ms, 0.66ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--1024x768     62     1024 1064 1240 1280   768  774  776  808
--
--
-- VESA 1024x768@70Hz Non-Interlaced mode
-- Horizontal Sync=56.5kHz
-- Timing: H=(0.32us, 1.81us, 1.92us) V=(0.05ms, 0.14ms, 0.51ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--1024x768     75     1024 1048 1184 1328    768  771  777  806 -hsync -vsync
--
--
-- 1024x768@70Hz Non-Interlaced mode (non-standard dot-clock)
-- Horizontal Sync=56.25kHz
-- Timing: H=(0.44us, 1.89us, 1.22us) V=(0.036ms, 0.11ms, 0.53ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--1024x768     72     1024 1056 1192 1280    768  770  776  806   -hsync -vsync
--
--
-- 1024x768@76Hz Non-Interlaced mode
-- Horizontal Sync=62.5kHz
-- Timing: H=(0.09us, 1.41us, 2.45us) V=(0.09ms, 0.048ms, 0.62ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--1024x768     85     1024 1032 1152 1360    768  784  787  823
--
--
-- 1280x1024@59Hz Non-Interlaced mode (non-standard)
-- Horizontal Sync=63.6kHz
-- Timing: H=(0.36us, 1.45us, 2.25us) V=(0.08ms, 0.11ms, 0.65ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--1280x1024   110     1280 1320 1480 1728   1024 1029 1036 1077
--
--
-- 1280x1024@61Hz, Non-Interlaced mode
-- Horizontal Sync=64.25kHz
-- Timing: H=(0.44us, 1.67us, 1.82us) V=(0.02ms, 0.05ms, 0.41ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--1280x1024   110     1280 1328 1512 1712   1024 1025 1028 1054
--
--
-- 1280x1024@74Hz, Non-Interlaced mode
-- Horizontal Sync=78.85kHz
-- Timing: H=(0.24us, 1.07us, 1.90us) V=(0.04ms, 0.04ms, 0.43ms)
--
-- name        clock   horizontal timing     vertical timing      flags
--1280x1024   135     1280 1312 1456 1712   1024 1027 1030 1064
--
--	VGA female connector: 15 pin small "D" connector
--                   _________________________
--                   \   5   4   3   2   1   /
--                    \   10  X   8   7   6 /
--                     \ 15  14  13 12  11 /
--                      \_________________/
--   Signal Name    Pin Number   Notes
--   -----------------------------------------------------------------------
--   RED video          1        Analog signal, around 0.7 volt, peak-to-peak  75 ohm 
--   GREEN video        2        Analog signal, sround 0.7 volt, peak-to-peak  75 ohm 
--   BLUE video         3        Analog signal, around 0.7 volt, peak-to-peak  75 ohm
--   Monitor ID #2      4        
--   Digital Ground     5        Ground for the video system.
--   RED ground         6  \     The RGB color video signals each have a separate
--   GREEN ground       7  |     ground connection.  
--   BLUE ground        8  /      
--   KEY                9        (X = Not present)
--   SYNC ground       10        TTL return for the SYNC lines.
--   Monitor ID #0     11        
--   Monitor ID #1     12        
--   Horizontal Sync   13        Digital levels (0 to 5 volts, TTL output)
--   Vertical Sync     14        Digital levels (0 to 5 volts, TTL output)
--   Not Connected     15        (Not used)
--
