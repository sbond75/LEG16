-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "05/05/2022 21:08:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_Test IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	VGA_BLANK_N : BUFFER std_logic;
	VGA_CLK : BUFFER std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_SYNC_N : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(7 DOWNTO 0);
	LCD_BLON : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_ON : BUFFER std_logic;
	LCD_RS : BUFFER std_logic;
	LCD_RW : BUFFER std_logic;
	LCD_DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END VGA_Test;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_Test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \VGA_BLANK_N~output_o\ : std_logic;
SIGNAL \VGA_CLK~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_SYNC_N~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[0]~22_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[15]~53\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[16]~54_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[16]~55\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[17]~58_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[17]~59\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[18]~60_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[18]~61\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[19]~62_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[14]~20_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[14]~56_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|LessThan0~2_combout\ : std_logic;
SIGNAL \U2|LessThan0~3_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[14]~57_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[0]~23\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[1]~24_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[1]~25\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[2]~26_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[2]~27\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[3]~28_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[3]~29\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[4]~30_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[4]~31\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[5]~32_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[5]~33\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[6]~34_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[6]~35\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[7]~36_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[7]~37\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[8]~38_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[8]~39\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[9]~40_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[9]~41\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[10]~42_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[10]~43\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[11]~44_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[11]~45\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[12]~46_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[12]~47\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[13]~48_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[13]~49\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[14]~50_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[14]~51\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[15]~52_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[14]~21_combout\ : std_logic;
SIGNAL \U2|CLK_400HZ_Enable~0_combout\ : std_logic;
SIGNAL \U2|CLK_400HZ_Enable~q\ : std_logic;
SIGNAL \U2|state.HOLD~q\ : std_logic;
SIGNAL \U2|LCD_RS~0_combout\ : std_logic;
SIGNAL \U2|state.DROP_LCD_E~q\ : std_logic;
SIGNAL \U2|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \U2|state.RESET1~q\ : std_logic;
SIGNAL \U2|Selector18~0_combout\ : std_logic;
SIGNAL \U2|next_command.RESET2~q\ : std_logic;
SIGNAL \U2|state~36_combout\ : std_logic;
SIGNAL \U2|state.RESET2~q\ : std_logic;
SIGNAL \U2|Selector19~0_combout\ : std_logic;
SIGNAL \U2|next_command.RESET3~q\ : std_logic;
SIGNAL \U2|state~34_combout\ : std_logic;
SIGNAL \U2|state.RESET3~q\ : std_logic;
SIGNAL \U2|Selector12~0_combout\ : std_logic;
SIGNAL \U2|next_command.FUNC_SET~q\ : std_logic;
SIGNAL \U2|state~35_combout\ : std_logic;
SIGNAL \U2|state.FUNC_SET~q\ : std_logic;
SIGNAL \U2|Selector20~0_combout\ : std_logic;
SIGNAL \U2|next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \U2|state~37_combout\ : std_logic;
SIGNAL \U2|state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \U2|Selector21~0_combout\ : std_logic;
SIGNAL \U2|next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \U2|state~32_combout\ : std_logic;
SIGNAL \U2|state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \U2|Selector9~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[0]~5_combout\ : std_logic;
SIGNAL \U2|Selector26~0_combout\ : std_logic;
SIGNAL \U1|U1|CHAR_COUNT[0]~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \U2|CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \U2|Selector25~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[1]~8\ : std_logic;
SIGNAL \U2|CHAR_COUNT[2]~9_combout\ : std_logic;
SIGNAL \U2|Selector24~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[2]~10\ : std_logic;
SIGNAL \U2|CHAR_COUNT[3]~11_combout\ : std_logic;
SIGNAL \U2|Selector23~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[3]~12\ : std_logic;
SIGNAL \U2|CHAR_COUNT[4]~13_combout\ : std_logic;
SIGNAL \U2|Selector22~0_combout\ : std_logic;
SIGNAL \U2|Equal2~0_combout\ : std_logic;
SIGNAL \U2|Selector17~0_combout\ : std_logic;
SIGNAL \U2|Selector17~1_combout\ : std_logic;
SIGNAL \U2|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \U2|state~31_combout\ : std_logic;
SIGNAL \U2|state.RETURN_HOME~q\ : std_logic;
SIGNAL \U2|Selector16~0_combout\ : std_logic;
SIGNAL \U2|Selector16~1_combout\ : std_logic;
SIGNAL \U2|next_command.LINE2~q\ : std_logic;
SIGNAL \U2|state~30_combout\ : std_logic;
SIGNAL \U2|state.LINE2~q\ : std_logic;
SIGNAL \U2|Selector13~0_combout\ : std_logic;
SIGNAL \U2|next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \U2|state~33_combout\ : std_logic;
SIGNAL \U2|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \U2|Selector14~0_combout\ : std_logic;
SIGNAL \U2|next_command.MODE_SET~q\ : std_logic;
SIGNAL \U2|state~29_combout\ : std_logic;
SIGNAL \U2|state.MODE_SET~q\ : std_logic;
SIGNAL \U2|Selector5~0_combout\ : std_logic;
SIGNAL \U2|Selector15~0_combout\ : std_logic;
SIGNAL \U2|Selector15~1_combout\ : std_logic;
SIGNAL \U2|next_command.Print_String~q\ : std_logic;
SIGNAL \U2|state~28_combout\ : std_logic;
SIGNAL \U2|state.Print_String~q\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \U2|Mux5~0_combout\ : std_logic;
SIGNAL \U2|Mux6~0_combout\ : std_logic;
SIGNAL \U2|Mux4~2_combout\ : std_logic;
SIGNAL \U2|Mux5~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|Mux3~1_combout\ : std_logic;
SIGNAL \U2|Mux3~2_combout\ : std_logic;
SIGNAL \U2|Mux4~6_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \U2|Mux4~3_combout\ : std_logic;
SIGNAL \U2|Mux4~5_combout\ : std_logic;
SIGNAL \U2|DATA_BUS_VALUE~0_combout\ : std_logic;
SIGNAL \U2|Mux4~4_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \U2|Mux6~1_combout\ : std_logic;
SIGNAL \U2|Mux6~2_combout\ : std_logic;
SIGNAL \U2|Mux6~3_combout\ : std_logic;
SIGNAL \U2|Selector9~1_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~feeder_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~0_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~q\ : std_logic;
SIGNAL \U2|Selector8~0_combout\ : std_logic;
SIGNAL \U2|Selector8~1_combout\ : std_logic;
SIGNAL \U2|Selector8~2_combout\ : std_logic;
SIGNAL \U2|Selector7~0_combout\ : std_logic;
SIGNAL \U2|Selector7~1_combout\ : std_logic;
SIGNAL \U2|Selector7~2_combout\ : std_logic;
SIGNAL \U2|Selector5~1_combout\ : std_logic;
SIGNAL \U2|Selector6~0_combout\ : std_logic;
SIGNAL \U2|Selector6~1_combout\ : std_logic;
SIGNAL \U2|Selector6~2_combout\ : std_logic;
SIGNAL \U2|Selector6~3_combout\ : std_logic;
SIGNAL \U2|Selector5~3_combout\ : std_logic;
SIGNAL \U2|Selector5~2_combout\ : std_logic;
SIGNAL \U2|Selector5~4_combout\ : std_logic;
SIGNAL \U2|LessThan1~0_combout\ : std_logic;
SIGNAL \U2|Selector4~0_combout\ : std_logic;
SIGNAL \U2|Selector4~1_combout\ : std_logic;
SIGNAL \U2|Selector3~0_combout\ : std_logic;
SIGNAL \U2|Selector3~1_combout\ : std_logic;
SIGNAL \U2|Selector3~2_combout\ : std_logic;
SIGNAL \U2|Selector2~0_combout\ : std_logic;
SIGNAL \U2|LCD_E~0_combout\ : std_logic;
SIGNAL \U2|LCD_E~q\ : std_logic;
SIGNAL \U2|Selector1~0_combout\ : std_logic;
SIGNAL \U2|LCD_RS~q\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U2|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|ALT_INV_state.Print_String~q\ : std_logic;
SIGNAL \U2|ALT_INV_LCD_RW_INT~q\ : std_logic;
SIGNAL \U2|ALT_INV_LCD_E~q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \U2|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
LCD_BLON <= ww_LCD_BLON;
LCD_EN <= ww_LCD_EN;
LCD_ON <= ww_LCD_ON;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
LCD_DATA <= ww_LCD_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\U2|ALT_INV_state.Print_String~q\ <= NOT \U2|state.Print_String~q\;
\U2|ALT_INV_LCD_RW_INT~q\ <= NOT \U2|LCD_RW_INT~q\;
\U2|ALT_INV_LCD_E~q\ <= NOT \U2|LCD_E~q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\U2|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \U2|DATA_BUS_VALUE\(5);
\U2|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \U2|DATA_BUS_VALUE\(4);
\U2|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \U2|DATA_BUS_VALUE\(3);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|DATA_BUS_VALUE\(0),
	oe => \U2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|DATA_BUS_VALUE\(1),
	oe => \U2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|DATA_BUS_VALUE\(2),
	oe => \U2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_DATA_BUS_VALUE\(3),
	oe => \U2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_DATA_BUS_VALUE\(4),
	oe => \U2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_DATA_BUS_VALUE\(5),
	oe => \U2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|DATA_BUS_VALUE\(6),
	oe => \U2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|DATA_BUS_VALUE\(7),
	oe => \U2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_BLANK_N~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_SYNC_N~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_LCD_E~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|LCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X74_Y19_N12
\U2|CLK_COUNT_400HZ[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[0]~22_combout\ = \U2|CLK_COUNT_400HZ\(0) $ (VCC)
-- \U2|CLK_COUNT_400HZ[0]~23\ = CARRY(\U2|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \U2|CLK_COUNT_400HZ[0]~22_combout\,
	cout => \U2|CLK_COUNT_400HZ[0]~23\);

-- Location: LCCOMB_X74_Y18_N10
\U2|CLK_COUNT_400HZ[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[15]~52_combout\ = (\U2|CLK_COUNT_400HZ\(15) & (!\U2|CLK_COUNT_400HZ[14]~51\)) # (!\U2|CLK_COUNT_400HZ\(15) & ((\U2|CLK_COUNT_400HZ[14]~51\) # (GND)))
-- \U2|CLK_COUNT_400HZ[15]~53\ = CARRY((!\U2|CLK_COUNT_400HZ[14]~51\) # (!\U2|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[14]~51\,
	combout => \U2|CLK_COUNT_400HZ[15]~52_combout\,
	cout => \U2|CLK_COUNT_400HZ[15]~53\);

-- Location: LCCOMB_X74_Y18_N12
\U2|CLK_COUNT_400HZ[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[16]~54_combout\ = (\U2|CLK_COUNT_400HZ\(16) & (\U2|CLK_COUNT_400HZ[15]~53\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(16) & (!\U2|CLK_COUNT_400HZ[15]~53\ & VCC))
-- \U2|CLK_COUNT_400HZ[16]~55\ = CARRY((\U2|CLK_COUNT_400HZ\(16) & !\U2|CLK_COUNT_400HZ[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[15]~53\,
	combout => \U2|CLK_COUNT_400HZ[16]~54_combout\,
	cout => \U2|CLK_COUNT_400HZ[16]~55\);

-- Location: FF_X74_Y18_N13
\U2|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[16]~54_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X74_Y18_N14
\U2|CLK_COUNT_400HZ[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[17]~58_combout\ = (\U2|CLK_COUNT_400HZ\(17) & (!\U2|CLK_COUNT_400HZ[16]~55\)) # (!\U2|CLK_COUNT_400HZ\(17) & ((\U2|CLK_COUNT_400HZ[16]~55\) # (GND)))
-- \U2|CLK_COUNT_400HZ[17]~59\ = CARRY((!\U2|CLK_COUNT_400HZ[16]~55\) # (!\U2|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[16]~55\,
	combout => \U2|CLK_COUNT_400HZ[17]~58_combout\,
	cout => \U2|CLK_COUNT_400HZ[17]~59\);

-- Location: FF_X74_Y18_N15
\U2|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[17]~58_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X74_Y18_N16
\U2|CLK_COUNT_400HZ[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[18]~60_combout\ = (\U2|CLK_COUNT_400HZ\(18) & (\U2|CLK_COUNT_400HZ[17]~59\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(18) & (!\U2|CLK_COUNT_400HZ[17]~59\ & VCC))
-- \U2|CLK_COUNT_400HZ[18]~61\ = CARRY((\U2|CLK_COUNT_400HZ\(18) & !\U2|CLK_COUNT_400HZ[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[17]~59\,
	combout => \U2|CLK_COUNT_400HZ[18]~60_combout\,
	cout => \U2|CLK_COUNT_400HZ[18]~61\);

-- Location: FF_X74_Y18_N17
\U2|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[18]~60_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X74_Y18_N18
\U2|CLK_COUNT_400HZ[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[19]~62_combout\ = \U2|CLK_COUNT_400HZ[18]~61\ $ (\U2|CLK_COUNT_400HZ\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|CLK_COUNT_400HZ\(19),
	cin => \U2|CLK_COUNT_400HZ[18]~61\,
	combout => \U2|CLK_COUNT_400HZ[19]~62_combout\);

-- Location: FF_X74_Y18_N19
\U2|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[19]~62_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X74_Y18_N20
\U2|CLK_COUNT_400HZ[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[14]~20_combout\ = (!\U2|CLK_COUNT_400HZ\(16) & (!\U2|CLK_COUNT_400HZ\(19) & (!\U2|CLK_COUNT_400HZ\(17) & !\U2|CLK_COUNT_400HZ\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(16),
	datab => \U2|CLK_COUNT_400HZ\(19),
	datac => \U2|CLK_COUNT_400HZ\(17),
	datad => \U2|CLK_COUNT_400HZ\(18),
	combout => \U2|CLK_COUNT_400HZ[14]~20_combout\);

-- Location: LCCOMB_X74_Y18_N28
\U2|CLK_COUNT_400HZ[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[14]~56_combout\ = (!\U2|CLK_COUNT_400HZ\(15)) # (!\U2|CLK_COUNT_400HZ\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CLK_COUNT_400HZ\(14),
	datad => \U2|CLK_COUNT_400HZ\(15),
	combout => \U2|CLK_COUNT_400HZ[14]~56_combout\);

-- Location: LCCOMB_X74_Y18_N26
\U2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = (((!\U2|CLK_COUNT_400HZ\(10) & !\U2|CLK_COUNT_400HZ\(11))) # (!\U2|CLK_COUNT_400HZ\(12))) # (!\U2|CLK_COUNT_400HZ\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(13),
	datab => \U2|CLK_COUNT_400HZ\(10),
	datac => \U2|CLK_COUNT_400HZ\(12),
	datad => \U2|CLK_COUNT_400HZ\(11),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X74_Y19_N8
\U2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~1_combout\ = ((!\U2|CLK_COUNT_400HZ\(3) & (!\U2|CLK_COUNT_400HZ\(4) & !\U2|CLK_COUNT_400HZ\(2)))) # (!\U2|CLK_COUNT_400HZ\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(5),
	datab => \U2|CLK_COUNT_400HZ\(3),
	datac => \U2|CLK_COUNT_400HZ\(4),
	datad => \U2|CLK_COUNT_400HZ\(2),
	combout => \U2|LessThan0~1_combout\);

-- Location: LCCOMB_X74_Y19_N10
\U2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~2_combout\ = (!\U2|CLK_COUNT_400HZ\(9) & (!\U2|CLK_COUNT_400HZ\(8) & (!\U2|CLK_COUNT_400HZ\(7) & !\U2|CLK_COUNT_400HZ\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(9),
	datab => \U2|CLK_COUNT_400HZ\(8),
	datac => \U2|CLK_COUNT_400HZ\(7),
	datad => \U2|CLK_COUNT_400HZ\(6),
	combout => \U2|LessThan0~2_combout\);

-- Location: LCCOMB_X74_Y18_N24
\U2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~3_combout\ = (\U2|LessThan0~0_combout\) # ((!\U2|CLK_COUNT_400HZ\(11) & (\U2|LessThan0~1_combout\ & \U2|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~0_combout\,
	datab => \U2|CLK_COUNT_400HZ\(11),
	datac => \U2|LessThan0~1_combout\,
	datad => \U2|LessThan0~2_combout\,
	combout => \U2|LessThan0~3_combout\);

-- Location: LCCOMB_X74_Y18_N30
\U2|CLK_COUNT_400HZ[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[14]~57_combout\ = (\SW[7]~input_o\) # (((!\U2|CLK_COUNT_400HZ[14]~56_combout\ & !\U2|LessThan0~3_combout\)) # (!\U2|CLK_COUNT_400HZ[14]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \U2|CLK_COUNT_400HZ[14]~20_combout\,
	datac => \U2|CLK_COUNT_400HZ[14]~56_combout\,
	datad => \U2|LessThan0~3_combout\,
	combout => \U2|CLK_COUNT_400HZ[14]~57_combout\);

-- Location: FF_X74_Y19_N13
\U2|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[0]~22_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X74_Y19_N14
\U2|CLK_COUNT_400HZ[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[1]~24_combout\ = (\U2|CLK_COUNT_400HZ\(1) & (!\U2|CLK_COUNT_400HZ[0]~23\)) # (!\U2|CLK_COUNT_400HZ\(1) & ((\U2|CLK_COUNT_400HZ[0]~23\) # (GND)))
-- \U2|CLK_COUNT_400HZ[1]~25\ = CARRY((!\U2|CLK_COUNT_400HZ[0]~23\) # (!\U2|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[0]~23\,
	combout => \U2|CLK_COUNT_400HZ[1]~24_combout\,
	cout => \U2|CLK_COUNT_400HZ[1]~25\);

-- Location: FF_X74_Y19_N15
\U2|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[1]~24_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X74_Y19_N16
\U2|CLK_COUNT_400HZ[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[2]~26_combout\ = (\U2|CLK_COUNT_400HZ\(2) & (\U2|CLK_COUNT_400HZ[1]~25\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(2) & (!\U2|CLK_COUNT_400HZ[1]~25\ & VCC))
-- \U2|CLK_COUNT_400HZ[2]~27\ = CARRY((\U2|CLK_COUNT_400HZ\(2) & !\U2|CLK_COUNT_400HZ[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[1]~25\,
	combout => \U2|CLK_COUNT_400HZ[2]~26_combout\,
	cout => \U2|CLK_COUNT_400HZ[2]~27\);

-- Location: FF_X74_Y19_N17
\U2|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[2]~26_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X74_Y19_N18
\U2|CLK_COUNT_400HZ[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[3]~28_combout\ = (\U2|CLK_COUNT_400HZ\(3) & (!\U2|CLK_COUNT_400HZ[2]~27\)) # (!\U2|CLK_COUNT_400HZ\(3) & ((\U2|CLK_COUNT_400HZ[2]~27\) # (GND)))
-- \U2|CLK_COUNT_400HZ[3]~29\ = CARRY((!\U2|CLK_COUNT_400HZ[2]~27\) # (!\U2|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[2]~27\,
	combout => \U2|CLK_COUNT_400HZ[3]~28_combout\,
	cout => \U2|CLK_COUNT_400HZ[3]~29\);

-- Location: FF_X74_Y19_N19
\U2|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[3]~28_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X74_Y19_N20
\U2|CLK_COUNT_400HZ[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[4]~30_combout\ = (\U2|CLK_COUNT_400HZ\(4) & (\U2|CLK_COUNT_400HZ[3]~29\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(4) & (!\U2|CLK_COUNT_400HZ[3]~29\ & VCC))
-- \U2|CLK_COUNT_400HZ[4]~31\ = CARRY((\U2|CLK_COUNT_400HZ\(4) & !\U2|CLK_COUNT_400HZ[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[3]~29\,
	combout => \U2|CLK_COUNT_400HZ[4]~30_combout\,
	cout => \U2|CLK_COUNT_400HZ[4]~31\);

-- Location: FF_X74_Y19_N21
\U2|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[4]~30_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X74_Y19_N22
\U2|CLK_COUNT_400HZ[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[5]~32_combout\ = (\U2|CLK_COUNT_400HZ\(5) & (!\U2|CLK_COUNT_400HZ[4]~31\)) # (!\U2|CLK_COUNT_400HZ\(5) & ((\U2|CLK_COUNT_400HZ[4]~31\) # (GND)))
-- \U2|CLK_COUNT_400HZ[5]~33\ = CARRY((!\U2|CLK_COUNT_400HZ[4]~31\) # (!\U2|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[4]~31\,
	combout => \U2|CLK_COUNT_400HZ[5]~32_combout\,
	cout => \U2|CLK_COUNT_400HZ[5]~33\);

-- Location: FF_X74_Y19_N23
\U2|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[5]~32_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X74_Y19_N24
\U2|CLK_COUNT_400HZ[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[6]~34_combout\ = (\U2|CLK_COUNT_400HZ\(6) & (\U2|CLK_COUNT_400HZ[5]~33\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(6) & (!\U2|CLK_COUNT_400HZ[5]~33\ & VCC))
-- \U2|CLK_COUNT_400HZ[6]~35\ = CARRY((\U2|CLK_COUNT_400HZ\(6) & !\U2|CLK_COUNT_400HZ[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[5]~33\,
	combout => \U2|CLK_COUNT_400HZ[6]~34_combout\,
	cout => \U2|CLK_COUNT_400HZ[6]~35\);

-- Location: FF_X74_Y19_N25
\U2|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[6]~34_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X74_Y19_N26
\U2|CLK_COUNT_400HZ[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[7]~36_combout\ = (\U2|CLK_COUNT_400HZ\(7) & (!\U2|CLK_COUNT_400HZ[6]~35\)) # (!\U2|CLK_COUNT_400HZ\(7) & ((\U2|CLK_COUNT_400HZ[6]~35\) # (GND)))
-- \U2|CLK_COUNT_400HZ[7]~37\ = CARRY((!\U2|CLK_COUNT_400HZ[6]~35\) # (!\U2|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[6]~35\,
	combout => \U2|CLK_COUNT_400HZ[7]~36_combout\,
	cout => \U2|CLK_COUNT_400HZ[7]~37\);

-- Location: FF_X74_Y19_N27
\U2|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[7]~36_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X74_Y19_N28
\U2|CLK_COUNT_400HZ[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[8]~38_combout\ = (\U2|CLK_COUNT_400HZ\(8) & (\U2|CLK_COUNT_400HZ[7]~37\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(8) & (!\U2|CLK_COUNT_400HZ[7]~37\ & VCC))
-- \U2|CLK_COUNT_400HZ[8]~39\ = CARRY((\U2|CLK_COUNT_400HZ\(8) & !\U2|CLK_COUNT_400HZ[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[7]~37\,
	combout => \U2|CLK_COUNT_400HZ[8]~38_combout\,
	cout => \U2|CLK_COUNT_400HZ[8]~39\);

-- Location: FF_X74_Y19_N29
\U2|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[8]~38_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X74_Y19_N30
\U2|CLK_COUNT_400HZ[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[9]~40_combout\ = (\U2|CLK_COUNT_400HZ\(9) & (!\U2|CLK_COUNT_400HZ[8]~39\)) # (!\U2|CLK_COUNT_400HZ\(9) & ((\U2|CLK_COUNT_400HZ[8]~39\) # (GND)))
-- \U2|CLK_COUNT_400HZ[9]~41\ = CARRY((!\U2|CLK_COUNT_400HZ[8]~39\) # (!\U2|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[8]~39\,
	combout => \U2|CLK_COUNT_400HZ[9]~40_combout\,
	cout => \U2|CLK_COUNT_400HZ[9]~41\);

-- Location: FF_X74_Y19_N31
\U2|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[9]~40_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X74_Y18_N0
\U2|CLK_COUNT_400HZ[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[10]~42_combout\ = (\U2|CLK_COUNT_400HZ\(10) & (\U2|CLK_COUNT_400HZ[9]~41\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(10) & (!\U2|CLK_COUNT_400HZ[9]~41\ & VCC))
-- \U2|CLK_COUNT_400HZ[10]~43\ = CARRY((\U2|CLK_COUNT_400HZ\(10) & !\U2|CLK_COUNT_400HZ[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[9]~41\,
	combout => \U2|CLK_COUNT_400HZ[10]~42_combout\,
	cout => \U2|CLK_COUNT_400HZ[10]~43\);

-- Location: FF_X74_Y18_N1
\U2|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[10]~42_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X74_Y18_N2
\U2|CLK_COUNT_400HZ[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[11]~44_combout\ = (\U2|CLK_COUNT_400HZ\(11) & (!\U2|CLK_COUNT_400HZ[10]~43\)) # (!\U2|CLK_COUNT_400HZ\(11) & ((\U2|CLK_COUNT_400HZ[10]~43\) # (GND)))
-- \U2|CLK_COUNT_400HZ[11]~45\ = CARRY((!\U2|CLK_COUNT_400HZ[10]~43\) # (!\U2|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[10]~43\,
	combout => \U2|CLK_COUNT_400HZ[11]~44_combout\,
	cout => \U2|CLK_COUNT_400HZ[11]~45\);

-- Location: FF_X74_Y18_N3
\U2|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[11]~44_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X74_Y18_N4
\U2|CLK_COUNT_400HZ[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[12]~46_combout\ = (\U2|CLK_COUNT_400HZ\(12) & (\U2|CLK_COUNT_400HZ[11]~45\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(12) & (!\U2|CLK_COUNT_400HZ[11]~45\ & VCC))
-- \U2|CLK_COUNT_400HZ[12]~47\ = CARRY((\U2|CLK_COUNT_400HZ\(12) & !\U2|CLK_COUNT_400HZ[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[11]~45\,
	combout => \U2|CLK_COUNT_400HZ[12]~46_combout\,
	cout => \U2|CLK_COUNT_400HZ[12]~47\);

-- Location: FF_X74_Y18_N5
\U2|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[12]~46_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X74_Y18_N6
\U2|CLK_COUNT_400HZ[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[13]~48_combout\ = (\U2|CLK_COUNT_400HZ\(13) & (!\U2|CLK_COUNT_400HZ[12]~47\)) # (!\U2|CLK_COUNT_400HZ\(13) & ((\U2|CLK_COUNT_400HZ[12]~47\) # (GND)))
-- \U2|CLK_COUNT_400HZ[13]~49\ = CARRY((!\U2|CLK_COUNT_400HZ[12]~47\) # (!\U2|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[12]~47\,
	combout => \U2|CLK_COUNT_400HZ[13]~48_combout\,
	cout => \U2|CLK_COUNT_400HZ[13]~49\);

-- Location: FF_X74_Y18_N7
\U2|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[13]~48_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X74_Y18_N8
\U2|CLK_COUNT_400HZ[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[14]~50_combout\ = (\U2|CLK_COUNT_400HZ\(14) & (\U2|CLK_COUNT_400HZ[13]~49\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(14) & (!\U2|CLK_COUNT_400HZ[13]~49\ & VCC))
-- \U2|CLK_COUNT_400HZ[14]~51\ = CARRY((\U2|CLK_COUNT_400HZ\(14) & !\U2|CLK_COUNT_400HZ[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[13]~49\,
	combout => \U2|CLK_COUNT_400HZ[14]~50_combout\,
	cout => \U2|CLK_COUNT_400HZ[14]~51\);

-- Location: FF_X74_Y18_N9
\U2|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[14]~50_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(14));

-- Location: FF_X74_Y18_N11
\U2|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[15]~52_combout\,
	sclr => \U2|CLK_COUNT_400HZ[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X74_Y18_N22
\U2|CLK_COUNT_400HZ[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[14]~21_combout\ = (\U2|CLK_COUNT_400HZ[14]~20_combout\ & (((\U2|LessThan0~3_combout\) # (!\U2|CLK_COUNT_400HZ\(14))) # (!\U2|CLK_COUNT_400HZ\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(15),
	datab => \U2|CLK_COUNT_400HZ[14]~20_combout\,
	datac => \U2|CLK_COUNT_400HZ\(14),
	datad => \U2|LessThan0~3_combout\,
	combout => \U2|CLK_COUNT_400HZ[14]~21_combout\);

-- Location: LCCOMB_X73_Y18_N24
\U2|CLK_400HZ_Enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_400HZ_Enable~0_combout\ = (!\SW[7]~input_o\ & !\U2|CLK_COUNT_400HZ[14]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[7]~input_o\,
	datad => \U2|CLK_COUNT_400HZ[14]~21_combout\,
	combout => \U2|CLK_400HZ_Enable~0_combout\);

-- Location: FF_X73_Y18_N25
\U2|CLK_400HZ_Enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_400HZ_Enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_400HZ_Enable~q\);

-- Location: FF_X72_Y18_N13
\U2|state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|state.DROP_LCD_E~q\,
	clrn => \ALT_INV_SW[7]~input_o\,
	sload => VCC,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.HOLD~q\);

-- Location: LCCOMB_X73_Y18_N26
\U2|LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LCD_RS~0_combout\ = (!\U2|state.DROP_LCD_E~q\ & !\U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.DROP_LCD_E~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|LCD_RS~0_combout\);

-- Location: FF_X73_Y18_N27
\U2|state.DROP_LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|LCD_RS~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.DROP_LCD_E~q\);

-- Location: LCCOMB_X72_Y18_N24
\U2|state.RESET1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U2|state.RESET1~feeder_combout\);

-- Location: FF_X72_Y18_N25
\U2|state.RESET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state.RESET1~feeder_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.RESET1~q\);

-- Location: LCCOMB_X73_Y18_N28
\U2|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector18~0_combout\ = (\U2|state.RESET1~q\ & ((\U2|next_command.RESET2~q\) # ((!\U2|state.DROP_LCD_E~q\ & !\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.RESET1~q\,
	datab => \U2|state.DROP_LCD_E~q\,
	datac => \U2|next_command.RESET2~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|Selector18~0_combout\);

-- Location: FF_X73_Y18_N29
\U2|next_command.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector18~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.RESET2~q\);

-- Location: LCCOMB_X73_Y18_N22
\U2|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~36_combout\ = (\U2|state.HOLD~q\ & !\U2|next_command.RESET2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datad => \U2|next_command.RESET2~q\,
	combout => \U2|state~36_combout\);

-- Location: FF_X73_Y18_N23
\U2|state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~36_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.RESET2~q\);

-- Location: LCCOMB_X73_Y18_N12
\U2|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector19~0_combout\ = (\U2|state.RESET2~q\) # ((\U2|next_command.RESET3~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.RESET2~q\,
	datab => \U2|state.DROP_LCD_E~q\,
	datac => \U2|next_command.RESET3~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|Selector19~0_combout\);

-- Location: FF_X73_Y18_N13
\U2|next_command.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector19~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.RESET3~q\);

-- Location: LCCOMB_X73_Y18_N18
\U2|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~34_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.RESET3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datad => \U2|next_command.RESET3~q\,
	combout => \U2|state~34_combout\);

-- Location: FF_X73_Y18_N19
\U2|state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~34_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.RESET3~q\);

-- Location: LCCOMB_X73_Y18_N6
\U2|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector12~0_combout\ = (\U2|state.RESET3~q\) # ((\U2|next_command.FUNC_SET~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.RESET3~q\,
	datac => \U2|next_command.FUNC_SET~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector12~0_combout\);

-- Location: FF_X73_Y18_N7
\U2|next_command.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector12~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.FUNC_SET~q\);

-- Location: LCCOMB_X73_Y18_N4
\U2|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~35_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.FUNC_SET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datad => \U2|next_command.FUNC_SET~q\,
	combout => \U2|state~35_combout\);

-- Location: FF_X73_Y18_N5
\U2|state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~35_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.FUNC_SET~q\);

-- Location: LCCOMB_X73_Y18_N14
\U2|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector20~0_combout\ = (\U2|state.FUNC_SET~q\) # ((\U2|next_command.DISPLAY_OFF~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.FUNC_SET~q\,
	datac => \U2|next_command.DISPLAY_OFF~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector20~0_combout\);

-- Location: FF_X73_Y18_N15
\U2|next_command.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector20~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.DISPLAY_OFF~q\);

-- Location: LCCOMB_X73_Y18_N8
\U2|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~37_combout\ = (\U2|next_command.DISPLAY_OFF~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|next_command.DISPLAY_OFF~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|state~37_combout\);

-- Location: FF_X73_Y18_N9
\U2|state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~37_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X73_Y18_N2
\U2|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector21~0_combout\ = (\U2|state.DISPLAY_OFF~q\) # ((\U2|next_command.DISPLAY_CLEAR~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DISPLAY_OFF~q\,
	datac => \U2|next_command.DISPLAY_CLEAR~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector21~0_combout\);

-- Location: FF_X73_Y18_N3
\U2|next_command.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector21~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X72_Y18_N20
\U2|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~32_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.DISPLAY_CLEAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.DISPLAY_CLEAR~q\,
	combout => \U2|state~32_combout\);

-- Location: FF_X72_Y18_N21
\U2|state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~32_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X72_Y18_N14
\U2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector9~0_combout\ = (\U2|state.DISPLAY_CLEAR~q\) # ((\U2|DATA_BUS_VALUE\(0) & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.DISPLAY_CLEAR~q\,
	datac => \U2|state.HOLD~q\,
	datad => \U2|DATA_BUS_VALUE\(0),
	combout => \U2|Selector9~0_combout\);

-- Location: LCCOMB_X68_Y18_N10
\U2|CHAR_COUNT[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[0]~5_combout\ = \U2|CHAR_COUNT\(0) $ (VCC)
-- \U2|CHAR_COUNT[0]~6\ = CARRY(\U2|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datad => VCC,
	combout => \U2|CHAR_COUNT[0]~5_combout\,
	cout => \U2|CHAR_COUNT[0]~6\);

-- Location: LCCOMB_X67_Y18_N0
\U2|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector26~0_combout\ = (\U2|CHAR_COUNT\(0) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(0),
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector26~0_combout\);

-- Location: LCCOMB_X72_Y18_N30
\U1|U1|CHAR_COUNT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U1|CHAR_COUNT[0]~0_combout\ = (!\SW[7]~input_o\ & \U2|CLK_400HZ_Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \U2|CLK_400HZ_Enable~q\,
	combout => \U1|U1|CHAR_COUNT[0]~0_combout\);

-- Location: FF_X68_Y18_N11
\U2|CHAR_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CHAR_COUNT[0]~5_combout\,
	asdata => \U2|Selector26~0_combout\,
	sload => \U2|ALT_INV_state.Print_String~q\,
	ena => \U1|U1|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(0));

-- Location: LCCOMB_X68_Y18_N12
\U2|CHAR_COUNT[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[1]~7_combout\ = (\U2|CHAR_COUNT\(1) & (!\U2|CHAR_COUNT[0]~6\)) # (!\U2|CHAR_COUNT\(1) & ((\U2|CHAR_COUNT[0]~6\) # (GND)))
-- \U2|CHAR_COUNT[1]~8\ = CARRY((!\U2|CHAR_COUNT[0]~6\) # (!\U2|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datad => VCC,
	cin => \U2|CHAR_COUNT[0]~6\,
	combout => \U2|CHAR_COUNT[1]~7_combout\,
	cout => \U2|CHAR_COUNT[1]~8\);

-- Location: LCCOMB_X67_Y18_N4
\U2|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector25~0_combout\ = (\U2|CHAR_COUNT\(1) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(1),
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector25~0_combout\);

-- Location: FF_X68_Y18_N13
\U2|CHAR_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CHAR_COUNT[1]~7_combout\,
	asdata => \U2|Selector25~0_combout\,
	sload => \U2|ALT_INV_state.Print_String~q\,
	ena => \U1|U1|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(1));

-- Location: LCCOMB_X68_Y18_N14
\U2|CHAR_COUNT[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[2]~9_combout\ = (\U2|CHAR_COUNT\(2) & (\U2|CHAR_COUNT[1]~8\ $ (GND))) # (!\U2|CHAR_COUNT\(2) & (!\U2|CHAR_COUNT[1]~8\ & VCC))
-- \U2|CHAR_COUNT[2]~10\ = CARRY((\U2|CHAR_COUNT\(2) & !\U2|CHAR_COUNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(2),
	datad => VCC,
	cin => \U2|CHAR_COUNT[1]~8\,
	combout => \U2|CHAR_COUNT[2]~9_combout\,
	cout => \U2|CHAR_COUNT[2]~10\);

-- Location: LCCOMB_X67_Y18_N26
\U2|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector24~0_combout\ = (\U2|CHAR_COUNT\(2) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(2),
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector24~0_combout\);

-- Location: FF_X68_Y18_N15
\U2|CHAR_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CHAR_COUNT[2]~9_combout\,
	asdata => \U2|Selector24~0_combout\,
	sload => \U2|ALT_INV_state.Print_String~q\,
	ena => \U1|U1|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(2));

-- Location: LCCOMB_X68_Y18_N16
\U2|CHAR_COUNT[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[3]~11_combout\ = (\U2|CHAR_COUNT\(3) & (!\U2|CHAR_COUNT[2]~10\)) # (!\U2|CHAR_COUNT\(3) & ((\U2|CHAR_COUNT[2]~10\) # (GND)))
-- \U2|CHAR_COUNT[3]~12\ = CARRY((!\U2|CHAR_COUNT[2]~10\) # (!\U2|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(3),
	datad => VCC,
	cin => \U2|CHAR_COUNT[2]~10\,
	combout => \U2|CHAR_COUNT[3]~11_combout\,
	cout => \U2|CHAR_COUNT[3]~12\);

-- Location: LCCOMB_X67_Y18_N6
\U2|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector23~0_combout\ = (\U2|CHAR_COUNT\(3) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(3),
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector23~0_combout\);

-- Location: FF_X68_Y18_N17
\U2|CHAR_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CHAR_COUNT[3]~11_combout\,
	asdata => \U2|Selector23~0_combout\,
	sload => \U2|ALT_INV_state.Print_String~q\,
	ena => \U1|U1|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(3));

-- Location: LCCOMB_X68_Y18_N18
\U2|CHAR_COUNT[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[4]~13_combout\ = \U2|CHAR_COUNT[3]~12\ $ (!\U2|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|CHAR_COUNT\(4),
	cin => \U2|CHAR_COUNT[3]~12\,
	combout => \U2|CHAR_COUNT[4]~13_combout\);

-- Location: LCCOMB_X67_Y18_N16
\U2|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector22~0_combout\ = (\U2|CHAR_COUNT\(4) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(4),
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector22~0_combout\);

-- Location: FF_X68_Y18_N19
\U2|CHAR_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CHAR_COUNT[4]~13_combout\,
	asdata => \U2|Selector22~0_combout\,
	sload => \U2|ALT_INV_state.Print_String~q\,
	ena => \U1|U1|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(4));

-- Location: LCCOMB_X67_Y18_N12
\U2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal2~0_combout\ = (\U2|CHAR_COUNT\(1) & (\U2|CHAR_COUNT\(0) & (\U2|CHAR_COUNT\(2) & \U2|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Equal2~0_combout\);

-- Location: LCCOMB_X72_Y18_N10
\U2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector17~0_combout\ = (\U2|next_command.RETURN_HOME~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|next_command.RETURN_HOME~q\,
	combout => \U2|Selector17~0_combout\);

-- Location: LCCOMB_X72_Y18_N28
\U2|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector17~1_combout\ = (\U2|Selector17~0_combout\) # ((\U2|state.Print_String~q\ & (\U2|CHAR_COUNT\(4) & \U2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.Print_String~q\,
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|Equal2~0_combout\,
	datad => \U2|Selector17~0_combout\,
	combout => \U2|Selector17~1_combout\);

-- Location: FF_X72_Y18_N29
\U2|next_command.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector17~1_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.RETURN_HOME~q\);

-- Location: LCCOMB_X70_Y18_N16
\U2|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~31_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.RETURN_HOME~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.RETURN_HOME~q\,
	combout => \U2|state~31_combout\);

-- Location: FF_X70_Y18_N17
\U2|state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~31_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.RETURN_HOME~q\);

-- Location: LCCOMB_X72_Y18_N12
\U2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector16~0_combout\ = (\U2|next_command.LINE2~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.LINE2~q\,
	combout => \U2|Selector16~0_combout\);

-- Location: LCCOMB_X72_Y18_N8
\U2|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector16~1_combout\ = (\U2|Selector16~0_combout\) # ((\U2|state.Print_String~q\ & (!\U2|CHAR_COUNT\(4) & \U2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.Print_String~q\,
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|Equal2~0_combout\,
	datad => \U2|Selector16~0_combout\,
	combout => \U2|Selector16~1_combout\);

-- Location: FF_X72_Y18_N9
\U2|next_command.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector16~1_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.LINE2~q\);

-- Location: LCCOMB_X72_Y18_N18
\U2|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~30_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.LINE2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.HOLD~q\,
	datac => \U2|next_command.LINE2~q\,
	combout => \U2|state~30_combout\);

-- Location: FF_X70_Y18_N27
\U2|state.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|state~30_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	sload => VCC,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.LINE2~q\);

-- Location: LCCOMB_X72_Y18_N26
\U2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector13~0_combout\ = (\U2|state.DISPLAY_CLEAR~q\) # ((\U2|next_command.DISPLAY_ON~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|next_command.DISPLAY_ON~q\,
	datad => \U2|state.DISPLAY_CLEAR~q\,
	combout => \U2|Selector13~0_combout\);

-- Location: FF_X72_Y18_N27
\U2|next_command.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector13~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.DISPLAY_ON~q\);

-- Location: LCCOMB_X72_Y18_N16
\U2|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~33_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.DISPLAY_ON~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.HOLD~q\,
	datac => \U2|next_command.DISPLAY_ON~q\,
	combout => \U2|state~33_combout\);

-- Location: FF_X73_Y18_N1
\U2|state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|state~33_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	sload => VCC,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.DISPLAY_ON~q\);

-- Location: LCCOMB_X73_Y18_N16
\U2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector14~0_combout\ = (\U2|state.DISPLAY_ON~q\) # ((\U2|next_command.MODE_SET~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DROP_LCD_E~q\,
	datac => \U2|next_command.MODE_SET~q\,
	datad => \U2|state.DISPLAY_ON~q\,
	combout => \U2|Selector14~0_combout\);

-- Location: FF_X73_Y18_N17
\U2|next_command.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector14~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.MODE_SET~q\);

-- Location: LCCOMB_X73_Y18_N0
\U2|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~29_combout\ = (\U2|next_command.MODE_SET~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|next_command.MODE_SET~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|state~29_combout\);

-- Location: FF_X70_Y18_N13
\U2|state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|state~29_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	sload => VCC,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.MODE_SET~q\);

-- Location: LCCOMB_X70_Y18_N30
\U2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~0_combout\ = (!\U2|state.RETURN_HOME~q\ & (!\U2|state.LINE2~q\ & !\U2|state.MODE_SET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.RETURN_HOME~q\,
	datac => \U2|state.LINE2~q\,
	datad => \U2|state.MODE_SET~q\,
	combout => \U2|Selector5~0_combout\);

-- Location: LCCOMB_X70_Y18_N2
\U2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector15~0_combout\ = (\U2|state.Print_String~q\ & !\U2|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.Print_String~q\,
	datad => \U2|Equal2~0_combout\,
	combout => \U2|Selector15~0_combout\);

-- Location: LCCOMB_X70_Y18_N24
\U2|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector15~1_combout\ = ((\U2|Selector15~0_combout\) # ((!\U2|LCD_RS~0_combout\ & \U2|next_command.Print_String~q\))) # (!\U2|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LCD_RS~0_combout\,
	datab => \U2|Selector5~0_combout\,
	datac => \U2|next_command.Print_String~q\,
	datad => \U2|Selector15~0_combout\,
	combout => \U2|Selector15~1_combout\);

-- Location: FF_X70_Y18_N25
\U2|next_command.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector15~1_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.Print_String~q\);

-- Location: LCCOMB_X72_Y18_N6
\U2|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~28_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.Print_String~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.Print_String~q\,
	combout => \U2|state~28_combout\);

-- Location: FF_X72_Y18_N7
\U2|state.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~28_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.Print_String~q\);

-- Location: LCCOMB_X68_Y18_N4
\U2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (\U2|CHAR_COUNT\(1) & ((\U2|CHAR_COUNT\(4)) # ((!\U2|CHAR_COUNT\(2))))) # (!\U2|CHAR_COUNT\(1) & ((\U2|CHAR_COUNT\(2)) # ((!\U2|CHAR_COUNT\(4) & \U2|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux1~0_combout\);

-- Location: LCCOMB_X68_Y18_N22
\U2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(4)) # (\U2|CHAR_COUNT\(2) $ (!\U2|CHAR_COUNT\(1))))) # (!\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(2)) # (\U2|CHAR_COUNT\(1) $ (\U2|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(1),
	datad => \U2|CHAR_COUNT\(4),
	combout => \U2|Mux2~0_combout\);

-- Location: LCCOMB_X68_Y18_N28
\U2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = (\U2|CHAR_COUNT\(2) & ((\U2|CHAR_COUNT\(0)) # ((\U2|CHAR_COUNT\(1)) # (\U2|CHAR_COUNT\(4))))) # (!\U2|CHAR_COUNT\(2) & (((\U2|CHAR_COUNT\(1) & \U2|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(1),
	datad => \U2|CHAR_COUNT\(4),
	combout => \U2|Mux0~0_combout\);

-- Location: LCCOMB_X68_Y18_N26
\U2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (!\U2|CHAR_COUNT\(3) & (!\U2|Mux1~0_combout\ & (\U2|Mux2~0_combout\ & \U2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(3),
	datab => \U2|Mux1~0_combout\,
	datac => \U2|Mux2~0_combout\,
	datad => \U2|Mux0~0_combout\,
	combout => \U2|Equal0~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X69_Y18_N4
\U2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~0_combout\ = (\U2|CHAR_COUNT\(0) & (\SW[1]~input_o\)) # (!\U2|CHAR_COUNT\(0) & ((\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y18_N26
\U2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~0_combout\ = (\U2|CHAR_COUNT\(1) & (!\U2|CHAR_COUNT\(4) & (!\U2|CHAR_COUNT\(3) & \U2|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|CHAR_COUNT\(3),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux6~0_combout\);

-- Location: LCCOMB_X68_Y18_N20
\U2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~2_combout\ = (!\U2|CHAR_COUNT\(2) & (!\U2|CHAR_COUNT\(3) & (\U2|CHAR_COUNT\(1) $ (!\U2|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux4~2_combout\);

-- Location: LCCOMB_X69_Y18_N8
\U2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~1_combout\ = (\U2|CHAR_COUNT\(0) & (\U2|Mux5~0_combout\ & (\U2|Mux6~0_combout\))) # (!\U2|CHAR_COUNT\(0) & ((\U2|Mux4~2_combout\) # ((\U2|Mux5~0_combout\ & \U2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|Mux5~0_combout\,
	datac => \U2|Mux6~0_combout\,
	datad => \U2|Mux4~2_combout\,
	combout => \U2|Mux5~1_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X70_Y18_N4
\U2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (\U2|CHAR_COUNT\(0) & (\U2|CHAR_COUNT\(2) & ((\SW[3]~input_o\) # (!\U2|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|CHAR_COUNT\(0),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y18_N10
\U2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~1_combout\ = (!\U2|CHAR_COUNT\(0) & (\U2|CHAR_COUNT\(1) & ((\SW[7]~input_o\) # (!\U2|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|CHAR_COUNT\(1),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux3~1_combout\);

-- Location: LCCOMB_X70_Y18_N8
\U2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~2_combout\ = (!\U2|CHAR_COUNT\(3) & (!\U2|CHAR_COUNT\(4) & ((\U2|Mux3~0_combout\) # (\U2|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(3),
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|Mux3~0_combout\,
	datad => \U2|Mux3~1_combout\,
	combout => \U2|Mux3~2_combout\);

-- Location: LCCOMB_X68_Y18_N6
\U2|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~6_combout\ = (\U2|CHAR_COUNT\(4) & (((!\U2|CHAR_COUNT\(2) & !\U2|CHAR_COUNT\(1))))) # (!\U2|CHAR_COUNT\(4) & ((\U2|CHAR_COUNT\(2) & ((!\U2|CHAR_COUNT\(1)))) # (!\U2|CHAR_COUNT\(2) & ((\U2|CHAR_COUNT\(1)) # (!\U2|CHAR_COUNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|CHAR_COUNT\(1),
	combout => \U2|Mux4~6_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X69_Y18_N6
\U2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~3_combout\ = (\U2|Mux6~0_combout\ & ((\U2|CHAR_COUNT\(0) & (\SW[2]~input_o\)) # (!\U2|CHAR_COUNT\(0) & ((\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \U2|Mux6~0_combout\,
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux4~3_combout\);

-- Location: LCCOMB_X69_Y18_N12
\U2|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~5_combout\ = (\U2|Mux4~3_combout\) # ((!\U2|CHAR_COUNT\(3) & \U2|Mux4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(3),
	datac => \U2|Mux4~6_combout\,
	datad => \U2|Mux4~3_combout\,
	combout => \U2|Mux4~5_combout\);

-- Location: LCCOMB_X69_Y18_N22
\U2|DATA_BUS_VALUE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DATA_BUS_VALUE~0_combout\ = (\U2|Equal0~0_combout\ & (\U2|Mux3~2_combout\ & ((\U2|Mux5~1_combout\) # (\U2|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~0_combout\,
	datab => \U2|Mux5~1_combout\,
	datac => \U2|Mux3~2_combout\,
	datad => \U2|Mux4~5_combout\,
	combout => \U2|DATA_BUS_VALUE~0_combout\);

-- Location: LCCOMB_X68_Y18_N8
\U2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~4_combout\ = (\U2|CHAR_COUNT\(1)) # ((\U2|CHAR_COUNT\(2)) # (!\U2|CHAR_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux4~4_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X68_Y18_N2
\U2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~1_combout\ = (\U2|CHAR_COUNT\(2) & (((!\U2|CHAR_COUNT\(0) & \SW[4]~input_o\)) # (!\U2|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \SW[4]~input_o\,
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|CHAR_COUNT\(1),
	combout => \U2|Mux6~1_combout\);

-- Location: LCCOMB_X68_Y18_N24
\U2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~2_combout\ = (\U2|Mux6~1_combout\) # ((\U2|CHAR_COUNT\(0) & ((\SW[0]~input_o\) # (!\U2|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \SW[0]~input_o\,
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|Mux6~1_combout\,
	combout => \U2|Mux6~2_combout\);

-- Location: LCCOMB_X68_Y18_N30
\U2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~3_combout\ = (!\U2|CHAR_COUNT\(3) & (((!\U2|CHAR_COUNT\(4) & \U2|Mux6~2_combout\)) # (!\U2|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(3),
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|Mux4~4_combout\,
	datad => \U2|Mux6~2_combout\,
	combout => \U2|Mux6~3_combout\);

-- Location: LCCOMB_X69_Y18_N20
\U2|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector9~1_combout\ = (\U2|Selector9~0_combout\) # ((\U2|state.Print_String~q\ & (\U2|DATA_BUS_VALUE~0_combout\ $ (\U2|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector9~0_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|DATA_BUS_VALUE~0_combout\,
	datad => \U2|Mux6~3_combout\,
	combout => \U2|Selector9~1_combout\);

-- Location: FF_X69_Y18_N21
\U2|DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector9~1_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X70_Y18_N20
\U2|LCD_RW_INT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LCD_RW_INT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U2|LCD_RW_INT~feeder_combout\);

-- Location: LCCOMB_X70_Y18_N18
\U2|LCD_RW_INT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LCD_RW_INT~0_combout\ = (\U2|CLK_400HZ_Enable~q\ & (!\U2|state.HOLD~q\ & !\U2|state.DROP_LCD_E~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_400HZ_Enable~q\,
	datac => \U2|state.HOLD~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|LCD_RW_INT~0_combout\);

-- Location: FF_X70_Y18_N21
\U2|LCD_RW_INT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|LCD_RW_INT~feeder_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|LCD_RW_INT~q\);

-- Location: LCCOMB_X70_Y18_N12
\U2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~0_combout\ = (\U2|state.MODE_SET~q\) # ((\U2|DATA_BUS_VALUE\(1) & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|DATA_BUS_VALUE\(1),
	datac => \U2|state.MODE_SET~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector8~0_combout\);

-- Location: LCCOMB_X69_Y18_N24
\U2|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~1_combout\ = \U2|Mux5~1_combout\ $ (((\U2|DATA_BUS_VALUE~0_combout\ & !\U2|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mux5~1_combout\,
	datac => \U2|DATA_BUS_VALUE~0_combout\,
	datad => \U2|Mux6~3_combout\,
	combout => \U2|Selector8~1_combout\);

-- Location: LCCOMB_X69_Y18_N18
\U2|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~2_combout\ = (\U2|Selector8~0_combout\) # ((\U2|state.Print_String~q\ & \U2|Selector8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.Print_String~q\,
	datac => \U2|Selector8~0_combout\,
	datad => \U2|Selector8~1_combout\,
	combout => \U2|Selector8~2_combout\);

-- Location: FF_X69_Y18_N19
\U2|DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector8~2_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X70_Y18_N14
\U2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~0_combout\ = (\U2|state.MODE_SET~q\) # ((\U2|state.DISPLAY_ON~q\) # ((\U2|DATA_BUS_VALUE\(2) & !\U2|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.MODE_SET~q\,
	datab => \U2|DATA_BUS_VALUE\(2),
	datac => \U2|LCD_RS~0_combout\,
	datad => \U2|state.DISPLAY_ON~q\,
	combout => \U2|Selector7~0_combout\);

-- Location: LCCOMB_X69_Y18_N2
\U2|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~1_combout\ = (!\U2|Mux5~1_combout\ & (\U2|DATA_BUS_VALUE~0_combout\ & !\U2|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mux5~1_combout\,
	datac => \U2|DATA_BUS_VALUE~0_combout\,
	datad => \U2|Mux6~3_combout\,
	combout => \U2|Selector7~1_combout\);

-- Location: LCCOMB_X69_Y18_N28
\U2|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~2_combout\ = (\U2|Selector7~0_combout\) # ((\U2|state.Print_String~q\ & (\U2|Mux4~5_combout\ $ (\U2|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~5_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Selector7~0_combout\,
	datad => \U2|Selector7~1_combout\,
	combout => \U2|Selector7~2_combout\);

-- Location: FF_X69_Y18_N29
\U2|DATA_BUS_VALUE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector7~2_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X73_Y18_N10
\U2|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~1_combout\ = (!\U2|state.DISPLAY_OFF~q\ & !\U2|state.DISPLAY_ON~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.DISPLAY_OFF~q\,
	datad => \U2|state.DISPLAY_ON~q\,
	combout => \U2|Selector5~1_combout\);

-- Location: LCCOMB_X73_Y18_N20
\U2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~0_combout\ = (\U2|state.RESET2~q\) # ((\U2|state.RESET3~q\) # ((\U2|state.FUNC_SET~q\) # (!\U2|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.RESET2~q\,
	datab => \U2|state.RESET3~q\,
	datac => \U2|state.FUNC_SET~q\,
	datad => \U2|Selector5~1_combout\,
	combout => \U2|Selector6~0_combout\);

-- Location: LCCOMB_X73_Y18_N30
\U2|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~1_combout\ = ((\U2|Selector6~0_combout\) # ((!\U2|DATA_BUS_VALUE\(3) & !\U2|LCD_RS~0_combout\))) # (!\U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.RESET1~q\,
	datab => \U2|DATA_BUS_VALUE\(3),
	datac => \U2|LCD_RS~0_combout\,
	datad => \U2|Selector6~0_combout\,
	combout => \U2|Selector6~1_combout\);

-- Location: LCCOMB_X69_Y18_N16
\U2|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~2_combout\ = (\U2|DATA_BUS_VALUE~0_combout\ & ((\U2|Mux4~5_combout\) # ((\U2|Mux5~1_combout\) # (\U2|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~5_combout\,
	datab => \U2|Mux5~1_combout\,
	datac => \U2|DATA_BUS_VALUE~0_combout\,
	datad => \U2|Mux6~3_combout\,
	combout => \U2|Selector6~2_combout\);

-- Location: LCCOMB_X69_Y18_N10
\U2|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~3_combout\ = (!\U2|Selector6~1_combout\ & ((\U2|Mux3~2_combout\ $ (!\U2|Selector6~2_combout\)) # (!\U2|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector6~1_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Mux3~2_combout\,
	datad => \U2|Selector6~2_combout\,
	combout => \U2|Selector6~3_combout\);

-- Location: FF_X69_Y18_N11
\U2|DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector6~3_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X67_Y18_N22
\U2|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~3_combout\ = (!\U2|CHAR_COUNT\(3) & (((!\U2|Mux1~0_combout\ & \U2|Mux0~0_combout\)) # (!\U2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux1~0_combout\,
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|Mux2~0_combout\,
	datad => \U2|Mux0~0_combout\,
	combout => \U2|Selector5~3_combout\);

-- Location: LCCOMB_X70_Y18_N28
\U2|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~2_combout\ = (\U2|Selector5~0_combout\ & (!\U2|state.DISPLAY_CLEAR~q\ & (!\U2|state.Print_String~q\ & \U2|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector5~0_combout\,
	datab => \U2|state.DISPLAY_CLEAR~q\,
	datac => \U2|state.Print_String~q\,
	datad => \U2|Selector5~1_combout\,
	combout => \U2|Selector5~2_combout\);

-- Location: LCCOMB_X70_Y18_N6
\U2|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~4_combout\ = (!\U2|Selector5~2_combout\ & (((\U2|DATA_BUS_VALUE~0_combout\) # (!\U2|state.Print_String~q\)) # (!\U2|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector5~3_combout\,
	datab => \U2|Selector5~2_combout\,
	datac => \U2|state.Print_String~q\,
	datad => \U2|DATA_BUS_VALUE~0_combout\,
	combout => \U2|Selector5~4_combout\);

-- Location: FF_X70_Y18_N7
\U2|DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector5~4_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X69_Y18_N30
\U2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~0_combout\ = (\U2|Mux3~2_combout\ & ((\U2|Mux5~1_combout\) # (\U2|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mux5~1_combout\,
	datac => \U2|Mux3~2_combout\,
	datad => \U2|Mux4~5_combout\,
	combout => \U2|LessThan1~0_combout\);

-- Location: LCCOMB_X70_Y18_N22
\U2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector4~0_combout\ = (\U2|Selector5~2_combout\) # ((\U2|state.Print_String~q\ & ((\U2|CHAR_COUNT\(3)) # (\U2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(3),
	datab => \U2|Mux1~0_combout\,
	datac => \U2|state.Print_String~q\,
	datad => \U2|Selector5~2_combout\,
	combout => \U2|Selector4~0_combout\);

-- Location: LCCOMB_X69_Y18_N0
\U2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector4~1_combout\ = (!\U2|Selector4~0_combout\ & (((\U2|LessThan1~0_combout\) # (!\U2|state.Print_String~q\)) # (!\U2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~0_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|LessThan1~0_combout\,
	datad => \U2|Selector4~0_combout\,
	combout => \U2|Selector4~1_combout\);

-- Location: FF_X69_Y18_N1
\U2|DATA_BUS_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector4~1_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X68_Y18_N0
\U2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~0_combout\ = (!\U2|CHAR_COUNT\(3) & (\U2|state.Print_String~q\ & !\U2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|state.Print_String~q\,
	datad => \U2|Mux0~0_combout\,
	combout => \U2|Selector3~0_combout\);

-- Location: LCCOMB_X70_Y18_N26
\U2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~1_combout\ = (\U2|state.LINE2~q\) # ((\U2|DATA_BUS_VALUE\(6) & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|DATA_BUS_VALUE\(6),
	datac => \U2|state.LINE2~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector3~1_combout\);

-- Location: LCCOMB_X69_Y18_N14
\U2|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~2_combout\ = (\U2|Selector3~0_combout\) # ((\U2|Selector3~1_combout\) # ((\U2|state.Print_String~q\ & \U2|DATA_BUS_VALUE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector3~0_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|DATA_BUS_VALUE~0_combout\,
	datad => \U2|Selector3~1_combout\,
	combout => \U2|Selector3~2_combout\);

-- Location: FF_X69_Y18_N15
\U2|DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector3~2_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X70_Y18_N0
\U2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector2~0_combout\ = (\U2|state.RETURN_HOME~q\) # ((\U2|state.LINE2~q\) # ((!\U2|LCD_RS~0_combout\ & \U2|DATA_BUS_VALUE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LCD_RS~0_combout\,
	datab => \U2|state.RETURN_HOME~q\,
	datac => \U2|DATA_BUS_VALUE\(7),
	datad => \U2|state.LINE2~q\,
	combout => \U2|Selector2~0_combout\);

-- Location: FF_X70_Y18_N1
\U2|DATA_BUS_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector2~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X72_Y18_N4
\U2|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LCD_E~0_combout\ = (\U2|state.HOLD~q\ & (((\U2|LCD_E~q\)))) # (!\U2|state.HOLD~q\ & ((\U2|CLK_400HZ_Enable~q\ & (\U2|state.DROP_LCD_E~q\)) # (!\U2|CLK_400HZ_Enable~q\ & ((\U2|LCD_E~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|LCD_E~q\,
	datad => \U2|CLK_400HZ_Enable~q\,
	combout => \U2|LCD_E~0_combout\);

-- Location: FF_X72_Y18_N5
\U2|LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|LCD_E~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|LCD_E~q\);

-- Location: LCCOMB_X72_Y18_N22
\U2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector1~0_combout\ = (\U2|state.Print_String~q\) # ((\U2|LCD_RS~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|LCD_RS~q\,
	datad => \U2|state.Print_String~q\,
	combout => \U2|Selector1~0_combout\);

-- Location: FF_X72_Y18_N23
\U2|LCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector1~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|LCD_RS~q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

ww_VGA_BLANK_N <= \VGA_BLANK_N~output_o\;

ww_VGA_CLK <= \VGA_CLK~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_SYNC_N <= \VGA_SYNC_N~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;
END structure;


