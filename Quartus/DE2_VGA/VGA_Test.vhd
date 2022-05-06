-------------------------------------------------------------------------------
--
-- Project					: VGA_Test
-- File name				: VGA_Test.vhd
-- Title						: VGA display test 
-- Description				:  
--								: 
-- Design library			: N/A
-- Analysis Dependency	: VGA_SYNC.vhd
-- Simulator(s)			: ModelSim-Altera version 6.1g
-- Initialization			: none
-- Notes						: This model is designed for synthesis
--								: Compile with VHDL'93
--
-------------------------------------------------------------------------------
--
-- Revisions
--			Date		Author			Revision		Comments
--		3/11/2008		W.H.Robinson	Rev A			Creation
--		3/13/2012		W.H.Robinson	Rev B			Update for DE2-115 Board
--
--			
-------------------------------------------------------------------------------

-- Always specify the IEEE library in your design


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;

-- Entity declaration
-- 		Defines the interface to the entity

ENTITY VGA_Test IS


	PORT
	(
-- 	Note: It is easier to identify individual ports and change their order
--	or types when their declarations are on separate lines.
--	This also helps the readability of your code.

    -- Clocks
    
    CLOCK_50	: IN STD_LOGIC;  -- 50 MHz
 
    -- Buttons 
    
    KEY 		: IN STD_LOGIC_VECTOR (3 downto 0);         -- Push buttons

    -- Input switches
    
    SW 			: IN STD_LOGIC_VECTOR (17 downto 0);         -- DPDT switches

    -- VGA output
    
    VGA_BLANK_N : out std_logic;            -- BLANK
    VGA_CLK 	 : out std_logic;            -- Clock
    VGA_HS 		 : out std_logic;            -- H_SYNC
    VGA_SYNC_N  : out std_logic;            -- SYNC
    VGA_VS 		 : out std_logic;            -- V_SYNC
    VGA_R 		 : out STD_LOGIC_VECTOR(7 downto 0); -- Red[7:0]
    VGA_G 		 : out STD_LOGIC_VECTOR(7 downto 0); -- Green[7:0]
    VGA_B 		 : out STD_LOGIC_VECTOR(7 downto 0); -- Blue[7:0]

    
    -- 16 X 2 LCD Module
    
    LCD_BLON : out std_logic;      							-- Back Light ON/OFF
    LCD_EN   : out std_logic;      							-- Enable
    LCD_ON   : out std_logic;      							-- Power ON/OFF
    LCD_RS   : out std_logic;	   							-- Command/Data Select, 0 = Command, 1 = Data
    LCD_RW   : out std_logic; 	   						-- Read/Write Select, 0 = Write, 1 = Read
    LCD_DATA : inout std_logic_vector(7 downto 0) 	-- Data bus 8 bits
    
	);
END VGA_Test;


-- Architecture body 
-- 		Describes the functionality or internal implementation of the entity

ARCHITECTURE structural OF VGA_Test IS

	constant Num_Hex_Digits: Integer:= 16;
  
COMPONENT LCD_Display

	GENERIC(Num_Hex_Digits: Integer:= Num_Hex_Digits);
	
	PORT(reset					: IN	STD_LOGIC;
	     clk_50MHz				: IN	STD_LOGIC;
		  Hex_Display_Data	: IN    STD_LOGIC_VECTOR((Num_Hex_Digits*4)-1 DOWNTO 0);
		  LCD_RS					: OUT	STD_LOGIC;
		  LCD_E					: OUT	STD_LOGIC;
		  LCD_RW					: OUT   STD_LOGIC;
		  DATA_BUS				: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
		 );

END COMPONENT;

COMPONENT VGA_SYNC_module

	GENERIC(Num_Hex_Digits: Integer:= Num_Hex_Digits);
	
	PORT(	clock_50Mhz, red, green, blue		: IN	STD_LOGIC;
			red_out, green_out, blue_out		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			horiz_sync_out, vert_sync_out, video_on, pixel_clock	: OUT	STD_LOGIC;
			pixel_row, pixel_column: OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			KEYS: IN STD_LOGIC_VECTOR(3 downto 0);
			SWITCHES: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Hex_Display_Data: out std_logic_vector((Num_Hex_Digits*4)-1 downto 0)
		);

END COMPONENT;

signal Hex_Display_Data: std_logic_vector((Num_Hex_Digits*4)-1 downto 0);

SIGNAL red_int : STD_LOGIC;
SIGNAL green_int : STD_LOGIC;
SIGNAL blue_int : STD_LOGIC;
SIGNAL video_on_int : STD_LOGIC; 
SIGNAL pixel_clock_int : STD_LOGIC;
SIGNAL pixel_row_int :STD_LOGIC_VECTOR(9 DOWNTO 0); 
SIGNAL pixel_column_int :STD_LOGIC_VECTOR(9 DOWNTO 0); 
signal currentColor: STD_LOGIC_VECTOR(2 downto 0) := "000";
signal currentCircleColor: STD_LOGIC_VECTOR(2 downto 0) := "000";

BEGIN


-- use LCD --
	LCD_ON   <= '1';
	LCD_BLON <= '1';


	U2: LCD_Display PORT MAP
		(reset				=>	not SW(7), --NOT SW(17),
		 -- v-- port/internal signals
		 clk_50MHz			=>	CLOCK_50, -- signal from outside
		 Hex_Display_Data	=>	Hex_Display_Data, --SW((Num_Hex_Digits*4)-1 DOWNTO 0),	--Hex_Display_Data, --SW(7 DOWNTO 0),	
		 LCD_RS				=>	LCD_RS,
		 LCD_E				=>	LCD_EN,
		 LCD_RW				=>	LCD_RW,
		 DATA_BUS			=>	LCD_DATA
		);

	
	U1: VGA_SYNC_module PORT MAP
		(clock_50Mhz		=>	CLOCK_50,
		 red					=>	currentColor(2),
		 green				=>	currentColor(1),	
		 blue					=>	currentColor(0),
		 red_out				=>	VGA_R,
		 green_out			=>	VGA_G,
		 blue_out			=>	VGA_B,
		 horiz_sync_out	=>	VGA_HS,
		 vert_sync_out		=>	VGA_VS,
		 video_on			=>	VGA_BLANK_N,
		 pixel_clock		=>	VGA_CLK,
		 pixel_row			=>	pixel_row_int,
		 pixel_column		=>	pixel_column_int,
		 KEYS             => KEY,
		 SWITCHES			=> SW(7 DOWNTO 0),
		 Hex_Display_Data => Hex_Display_Data
		);
		
--process begin
--	if KEY(0) = '0' then -- key pressed (0)
--		-- Change color
--		currentColor <= currentColor + 1;
--	end if;
--end process;

END structural;

