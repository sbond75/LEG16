-------------------------------------------------------------------------------
--
-- Project					: LCD_Test
-- File name				: LCD_Test.vhd
-- Title						: LCD display test 
-- Description				:  
--								: 
-- Design library			: N/A
-- Analysis Dependency	: LCD_Display
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
USE ieee.std_logic_unsigned.ALL;

-- Entity declaration
-- 		Defines the interface to the entity

ENTITY LCD_Test IS


	PORT
	(
-- 	Note: It is easier to identify individual ports and change their order
--	or types when their declarations are on separate lines.
--	This also helps the readability of your code.

    -- Clocks
    
    CLOCK_50	: IN STD_LOGIC;  -- 50 MHz
 

    -- Input switches
    
    SW 			: IN STD_LOGIC_VECTOR (17 downto 0);         -- DPDT switches


    -- 16 X 2 LCD Module
    
    LCD_BLON : out std_logic;      							-- Back Light ON/OFF
    LCD_EN   : out std_logic;      							-- Enable
    LCD_ON   : out std_logic;      							-- Power ON/OFF
    LCD_RS   : out std_logic;	   							-- Command/Data Select, 0 = Command, 1 = Data
    LCD_RW   : out std_logic; 	   						-- Read/Write Select, 0 = Write, 1 = Read
    LCD_DATA : inout std_logic_vector(7 downto 0) 	-- Data bus 8 bits

	);
END LCD_Test;


-- Architecture body 
-- 		Describes the functionality or internal implementation of the entity

ARCHITECTURE structural OF LCD_Test IS

COMPONENT LCD_Display

	GENERIC(Num_Hex_Digits: Integer:= 2);
	
	PORT(reset					: IN	STD_LOGIC;
	     clk_50MHz				: IN	STD_LOGIC;
		  Hex_Display_Data	: IN    STD_LOGIC_VECTOR((Num_Hex_Digits*4)-1 DOWNTO 0);
		  LCD_RS					: OUT	STD_LOGIC;
		  LCD_E					: OUT	STD_LOGIC;
		  LCD_RW					: OUT   STD_LOGIC;
		  DATA_BUS				: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
		 );

END COMPONENT;

BEGIN

	LCD_ON   <= '1';
	LCD_BLON <= '1';


	U1: LCD_Display PORT MAP
		(reset				=>	NOT SW(17),
		 clk_50MHz			=>	CLOCK_50,
		 Hex_Display_Data	=>	SW(7 DOWNTO 0),	
		 LCD_RS				=>	LCD_RS,
		 LCD_E				=>	LCD_EN,
		 LCD_RW				=>	LCD_RW,
		 DATA_BUS			=>	LCD_DATA
		);

END structural;
