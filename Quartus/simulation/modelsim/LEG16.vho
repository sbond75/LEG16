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

-- DATE "05/05/2022 22:03:31"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

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
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
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
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|CHAR_COUNT[0]~5_combout\ : std_logic;
SIGNAL \U2|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[0]~21_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|LessThan0~2_combout\ : std_logic;
SIGNAL \U2|LessThan0~3_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[10]~55_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[0]~22\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[1]~23_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[1]~24\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[2]~25_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[2]~26\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[3]~27_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[3]~28\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[4]~29_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[4]~30\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[5]~31_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[5]~32\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[6]~33_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[6]~34\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[7]~35_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[7]~36\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[8]~37_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[8]~38\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[9]~39_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[9]~40\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[10]~41_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[10]~42\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[11]~43_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[11]~44\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[12]~45_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[12]~46\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[13]~47_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[13]~48\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[14]~49_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[14]~50\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[15]~51_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[15]~52\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[16]~53_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[16]~54\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[17]~56_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[17]~57\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[18]~58_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[18]~59\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[19]~60_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[10]~20_combout\ : std_logic;
SIGNAL \U2|CLK_400HZ_Enable~0_combout\ : std_logic;
SIGNAL \U2|CLK_400HZ_Enable~q\ : std_logic;
SIGNAL \U2|state.RESET1~q\ : std_logic;
SIGNAL \U2|Selector26~0_combout\ : std_logic;
SIGNAL \U2|state.HOLD~q\ : std_logic;
SIGNAL \U2|LCD_RS~0_combout\ : std_logic;
SIGNAL \U2|state.DROP_LCD_E~q\ : std_logic;
SIGNAL \U2|Selector15~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \U2|CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \U2|Selector25~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[0]~11_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[1]~8\ : std_logic;
SIGNAL \U2|CHAR_COUNT[2]~9_combout\ : std_logic;
SIGNAL \U2|Selector24~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[2]~10\ : std_logic;
SIGNAL \U2|CHAR_COUNT[3]~12_combout\ : std_logic;
SIGNAL \U2|Selector23~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[3]~13\ : std_logic;
SIGNAL \U2|CHAR_COUNT[4]~14_combout\ : std_logic;
SIGNAL \U2|Selector22~0_combout\ : std_logic;
SIGNAL \U2|Mux6~0_combout\ : std_logic;
SIGNAL \U2|Equal3~0_combout\ : std_logic;
SIGNAL \U2|Equal2~0_combout\ : std_logic;
SIGNAL \U2|Selector15~1_combout\ : std_logic;
SIGNAL \U2|Selector16~0_combout\ : std_logic;
SIGNAL \U2|next_command.LINE2~q\ : std_logic;
SIGNAL \U2|state~30_combout\ : std_logic;
SIGNAL \U2|state.LINE2~q\ : std_logic;
SIGNAL \U2|Selector17~0_combout\ : std_logic;
SIGNAL \U2|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \U2|state~31_combout\ : std_logic;
SIGNAL \U2|state.RETURN_HOME~q\ : std_logic;
SIGNAL \U2|Selector18~0_combout\ : std_logic;
SIGNAL \U2|next_command.RESET2~q\ : std_logic;
SIGNAL \U2|state~37_combout\ : std_logic;
SIGNAL \U2|state.RESET2~q\ : std_logic;
SIGNAL \U2|Selector19~0_combout\ : std_logic;
SIGNAL \U2|next_command.RESET3~q\ : std_logic;
SIGNAL \U2|state~34_combout\ : std_logic;
SIGNAL \U2|state.RESET3~q\ : std_logic;
SIGNAL \U2|Selector12~0_combout\ : std_logic;
SIGNAL \U2|next_command.FUNC_SET~q\ : std_logic;
SIGNAL \U2|state~36_combout\ : std_logic;
SIGNAL \U2|state.FUNC_SET~q\ : std_logic;
SIGNAL \U2|Selector20~0_combout\ : std_logic;
SIGNAL \U2|next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \U2|state~35_combout\ : std_logic;
SIGNAL \U2|state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \U2|Selector21~0_combout\ : std_logic;
SIGNAL \U2|next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \U2|state~32_combout\ : std_logic;
SIGNAL \U2|state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \U2|Selector13~0_combout\ : std_logic;
SIGNAL \U2|next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \U2|state~33_combout\ : std_logic;
SIGNAL \U2|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \U2|Selector14~0_combout\ : std_logic;
SIGNAL \U2|next_command.MODE_SET~q\ : std_logic;
SIGNAL \U2|state~29_combout\ : std_logic;
SIGNAL \U2|state.MODE_SET~q\ : std_logic;
SIGNAL \U2|Selector15~2_combout\ : std_logic;
SIGNAL \U2|next_command.Print_String~q\ : std_logic;
SIGNAL \U2|state~28_combout\ : std_logic;
SIGNAL \U2|state.Print_String~q\ : std_logic;
SIGNAL \U2|Mux6~7_combout\ : std_logic;
SIGNAL \U2|Mux6~8_combout\ : std_logic;
SIGNAL \U2|Mux6~2_combout\ : std_logic;
SIGNAL \U2|Mux6~1_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[0]~3_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \U1|enableSwitch~0_combout\ : std_logic;
SIGNAL \U1|enableSwitch~q\ : std_logic;
SIGNAL \U1|Hex_Display_Data[12]~0_combout\ : std_logic;
SIGNAL \U1|PC[1]~15_combout\ : std_logic;
SIGNAL \U1|PC[1]~16\ : std_logic;
SIGNAL \U1|PC[2]~17_combout\ : std_logic;
SIGNAL \U1|PC[2]~18\ : std_logic;
SIGNAL \U1|PC[3]~19_combout\ : std_logic;
SIGNAL \U1|PC[3]~20\ : std_logic;
SIGNAL \U1|PC[4]~21_combout\ : std_logic;
SIGNAL \U1|PC[4]~22\ : std_logic;
SIGNAL \U1|PC[5]~23_combout\ : std_logic;
SIGNAL \U1|PC[5]~24\ : std_logic;
SIGNAL \U1|PC[6]~25_combout\ : std_logic;
SIGNAL \U1|PC[6]~26\ : std_logic;
SIGNAL \U1|PC[7]~27_combout\ : std_logic;
SIGNAL \U1|PC[7]~28\ : std_logic;
SIGNAL \U1|PC[8]~29_combout\ : std_logic;
SIGNAL \U1|PC[8]~30\ : std_logic;
SIGNAL \U1|PC[9]~31_combout\ : std_logic;
SIGNAL \U1|PC[9]~32\ : std_logic;
SIGNAL \U1|PC[10]~33_combout\ : std_logic;
SIGNAL \U1|PC[10]~34\ : std_logic;
SIGNAL \U1|PC[11]~35_combout\ : std_logic;
SIGNAL \U1|PC[11]~36\ : std_logic;
SIGNAL \U1|PC[12]~37_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[12]~6_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[8]~5_combout\ : std_logic;
SIGNAL \U2|Mux6~4_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[4]~4_combout\ : std_logic;
SIGNAL \U2|Mux6~3_combout\ : std_logic;
SIGNAL \U2|Mux6~5_combout\ : std_logic;
SIGNAL \U2|Mux6~6_combout\ : std_logic;
SIGNAL \U2|Selector9~0_combout\ : std_logic;
SIGNAL \U2|Mux5~3_combout\ : std_logic;
SIGNAL \U2|Mux5~0_combout\ : std_logic;
SIGNAL \U1|PC[12]~38\ : std_logic;
SIGNAL \U1|PC[13]~39_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[9]~feeder_combout\ : std_logic;
SIGNAL \U2|Mux5~1_combout\ : std_logic;
SIGNAL \U2|Mux5~2_combout\ : std_logic;
SIGNAL \U2|Mux5~4_combout\ : std_logic;
SIGNAL \U2|Mux4~3_combout\ : std_logic;
SIGNAL \U2|Mux4~4_combout\ : std_logic;
SIGNAL \U2|Mux3~3_combout\ : std_logic;
SIGNAL \U2|Mux4~5_combout\ : std_logic;
SIGNAL \U1|PC[13]~40\ : std_logic;
SIGNAL \U1|PC[14]~41_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[10]~2_combout\ : std_logic;
SIGNAL \U2|Mux4~1_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[2]~1_combout\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U2|Mux4~2_combout\ : std_logic;
SIGNAL \U2|Mux4~6_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux1~1_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U2|Mux3~4_combout\ : std_logic;
SIGNAL \U1|PC[14]~42\ : std_logic;
SIGNAL \U1|PC[15]~43_combout\ : std_logic;
SIGNAL \U2|Mux3~1_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|Mux3~2_combout\ : std_logic;
SIGNAL \U2|Mux3~5_combout\ : std_logic;
SIGNAL \U2|DATA_BUS_VALUE~0_combout\ : std_logic;
SIGNAL \U2|Selector9~1_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~feeder_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~0_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~q\ : std_logic;
SIGNAL \U2|Selector8~0_combout\ : std_logic;
SIGNAL \U2|Selector8~1_combout\ : std_logic;
SIGNAL \U2|Selector7~0_combout\ : std_logic;
SIGNAL \U2|Selector7~1_combout\ : std_logic;
SIGNAL \U2|Selector7~2_combout\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U2|Selector6~2_combout\ : std_logic;
SIGNAL \U2|Selector6~0_combout\ : std_logic;
SIGNAL \U2|Selector6~1_combout\ : std_logic;
SIGNAL \U2|Selector6~3_combout\ : std_logic;
SIGNAL \U2|Selector5~0_combout\ : std_logic;
SIGNAL \U2|Selector5~1_combout\ : std_logic;
SIGNAL \U2|Selector5~2_combout\ : std_logic;
SIGNAL \U2|Selector5~3_combout\ : std_logic;
SIGNAL \U2|Selector4~0_combout\ : std_logic;
SIGNAL \U2|Selector4~1_combout\ : std_logic;
SIGNAL \U2|Selector3~0_combout\ : std_logic;
SIGNAL \U2|Selector3~1_combout\ : std_logic;
SIGNAL \U2|Selector3~2_combout\ : std_logic;
SIGNAL \U2|Selector2~0_combout\ : std_logic;
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U2|LCD_E~0_combout\ : std_logic;
SIGNAL \U2|LCD_E~q\ : std_logic;
SIGNAL \U2|Selector1~0_combout\ : std_logic;
SIGNAL \U2|LCD_RS~q\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U2|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|Hex_Display_Data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \U2|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \U2|ALT_INV_state.Print_String~q\ : std_logic;
SIGNAL \U2|ALT_INV_LCD_RW_INT~q\ : std_logic;
SIGNAL \U2|ALT_INV_LCD_E~q\ : std_logic;

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

\U1|video_PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\U1|video_PLL_inst|altpll_component|auto_generated|clk\(0) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U1|video_PLL_inst|altpll_component|auto_generated|clk\(1) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U1|video_PLL_inst|altpll_component|auto_generated|clk\(2) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U1|video_PLL_inst|altpll_component|auto_generated|clk\(3) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U1|video_PLL_inst|altpll_component|auto_generated|clk\(4) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|video_PLL_inst|altpll_component|auto_generated|clk\(0));
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\U2|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \U2|DATA_BUS_VALUE\(5);
\U2|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \U2|DATA_BUS_VALUE\(4);
\U2|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \U2|DATA_BUS_VALUE\(3);
\U2|ALT_INV_state.Print_String~q\ <= NOT \U2|state.Print_String~q\;
\U2|ALT_INV_LCD_RW_INT~q\ <= NOT \U2|LCD_RW_INT~q\;
\U2|ALT_INV_LCD_E~q\ <= NOT \U2|LCD_E~q\;

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
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

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
	o => ww_VGA_HS);

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
	o => ww_VGA_SYNC_N);

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
	o => ww_VGA_VS);

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
	o => ww_VGA_R(0));

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
	o => ww_VGA_R(1));

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
	o => ww_VGA_R(2));

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
	o => ww_VGA_R(3));

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
	o => ww_VGA_R(4));

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
	o => ww_VGA_R(5));

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
	o => ww_VGA_R(6));

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
	o => ww_VGA_R(7));

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
	o => ww_VGA_G(0));

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
	o => ww_VGA_G(1));

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
	o => ww_VGA_G(2));

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
	o => ww_VGA_G(3));

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
	o => ww_VGA_G(4));

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
	o => ww_VGA_G(5));

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
	o => ww_VGA_G(6));

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
	o => ww_VGA_G(7));

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
	o => ww_VGA_B(0));

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
	o => ww_VGA_B(1));

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
	o => ww_VGA_B(2));

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
	o => ww_VGA_B(3));

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
	o => ww_VGA_B(4));

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
	o => ww_VGA_B(5));

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
	o => ww_VGA_B(6));

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
	o => ww_VGA_B(7));

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
	o => ww_LCD_BLON);

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
	o => ww_LCD_EN);

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
	o => ww_LCD_ON);

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
	o => ww_LCD_RS);

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
	o => ww_LCD_RW);

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
	o => ww_LCD_DATA(0));

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
	o => ww_LCD_DATA(1));

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
	o => ww_LCD_DATA(2));

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
	o => ww_LCD_DATA(3));

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
	o => ww_LCD_DATA(4));

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
	o => ww_LCD_DATA(5));

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
	o => ww_LCD_DATA(6));

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
	o => ww_LCD_DATA(7));

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

-- Location: LCCOMB_X6_Y45_N14
\U2|CHAR_COUNT[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[0]~5_combout\ = \U2|CHAR_COUNT\(0) $ (VCC)
-- \U2|CHAR_COUNT[0]~6\ = CARRY(\U2|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(0),
	datad => VCC,
	combout => \U2|CHAR_COUNT[0]~5_combout\,
	cout => \U2|CHAR_COUNT[0]~6\);

-- Location: LCCOMB_X8_Y45_N24
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

-- Location: LCCOMB_X14_Y46_N12
\U2|CLK_COUNT_400HZ[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[0]~21_combout\ = \U2|CLK_COUNT_400HZ\(0) $ (VCC)
-- \U2|CLK_COUNT_400HZ[0]~22\ = CARRY(\U2|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \U2|CLK_COUNT_400HZ[0]~21_combout\,
	cout => \U2|CLK_COUNT_400HZ[0]~22\);

-- Location: LCCOMB_X14_Y46_N0
\U2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = ((!\U2|CLK_COUNT_400HZ\(4) & (!\U2|CLK_COUNT_400HZ\(3) & !\U2|CLK_COUNT_400HZ\(2)))) # (!\U2|CLK_COUNT_400HZ\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(4),
	datab => \U2|CLK_COUNT_400HZ\(3),
	datac => \U2|CLK_COUNT_400HZ\(5),
	datad => \U2|CLK_COUNT_400HZ\(2),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y46_N10
\U2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~1_combout\ = (!\U2|CLK_COUNT_400HZ\(7) & (!\U2|CLK_COUNT_400HZ\(6) & (!\U2|CLK_COUNT_400HZ\(9) & !\U2|CLK_COUNT_400HZ\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(7),
	datab => \U2|CLK_COUNT_400HZ\(6),
	datac => \U2|CLK_COUNT_400HZ\(9),
	datad => \U2|CLK_COUNT_400HZ\(8),
	combout => \U2|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y45_N24
\U2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~2_combout\ = (!\U2|CLK_COUNT_400HZ\(11) & (((\U2|LessThan0~0_combout\ & \U2|LessThan0~1_combout\)) # (!\U2|CLK_COUNT_400HZ\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~0_combout\,
	datab => \U2|CLK_COUNT_400HZ\(11),
	datac => \U2|LessThan0~1_combout\,
	datad => \U2|CLK_COUNT_400HZ\(10),
	combout => \U2|LessThan0~2_combout\);

-- Location: LCCOMB_X14_Y45_N26
\U2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~3_combout\ = (((!\U2|CLK_COUNT_400HZ\(13)) # (!\U2|CLK_COUNT_400HZ\(12))) # (!\U2|CLK_COUNT_400HZ\(14))) # (!\U2|CLK_COUNT_400HZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(15),
	datab => \U2|CLK_COUNT_400HZ\(14),
	datac => \U2|CLK_COUNT_400HZ\(12),
	datad => \U2|CLK_COUNT_400HZ\(13),
	combout => \U2|LessThan0~3_combout\);

-- Location: LCCOMB_X14_Y45_N20
\U2|CLK_COUNT_400HZ[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[10]~55_combout\ = ((\SW[7]~input_o\) # ((!\U2|LessThan0~2_combout\ & !\U2|LessThan0~3_combout\))) # (!\U2|CLK_COUNT_400HZ[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ[10]~20_combout\,
	datab => \U2|LessThan0~2_combout\,
	datac => \U2|LessThan0~3_combout\,
	datad => \SW[7]~input_o\,
	combout => \U2|CLK_COUNT_400HZ[10]~55_combout\);

-- Location: FF_X14_Y46_N13
\U2|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[0]~21_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X14_Y46_N14
\U2|CLK_COUNT_400HZ[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[1]~23_combout\ = (\U2|CLK_COUNT_400HZ\(1) & (!\U2|CLK_COUNT_400HZ[0]~22\)) # (!\U2|CLK_COUNT_400HZ\(1) & ((\U2|CLK_COUNT_400HZ[0]~22\) # (GND)))
-- \U2|CLK_COUNT_400HZ[1]~24\ = CARRY((!\U2|CLK_COUNT_400HZ[0]~22\) # (!\U2|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[0]~22\,
	combout => \U2|CLK_COUNT_400HZ[1]~23_combout\,
	cout => \U2|CLK_COUNT_400HZ[1]~24\);

-- Location: FF_X14_Y46_N15
\U2|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[1]~23_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X14_Y46_N16
\U2|CLK_COUNT_400HZ[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[2]~25_combout\ = (\U2|CLK_COUNT_400HZ\(2) & (\U2|CLK_COUNT_400HZ[1]~24\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(2) & (!\U2|CLK_COUNT_400HZ[1]~24\ & VCC))
-- \U2|CLK_COUNT_400HZ[2]~26\ = CARRY((\U2|CLK_COUNT_400HZ\(2) & !\U2|CLK_COUNT_400HZ[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[1]~24\,
	combout => \U2|CLK_COUNT_400HZ[2]~25_combout\,
	cout => \U2|CLK_COUNT_400HZ[2]~26\);

-- Location: FF_X14_Y46_N17
\U2|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[2]~25_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X14_Y46_N18
\U2|CLK_COUNT_400HZ[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[3]~27_combout\ = (\U2|CLK_COUNT_400HZ\(3) & (!\U2|CLK_COUNT_400HZ[2]~26\)) # (!\U2|CLK_COUNT_400HZ\(3) & ((\U2|CLK_COUNT_400HZ[2]~26\) # (GND)))
-- \U2|CLK_COUNT_400HZ[3]~28\ = CARRY((!\U2|CLK_COUNT_400HZ[2]~26\) # (!\U2|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[2]~26\,
	combout => \U2|CLK_COUNT_400HZ[3]~27_combout\,
	cout => \U2|CLK_COUNT_400HZ[3]~28\);

-- Location: FF_X14_Y46_N19
\U2|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[3]~27_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X14_Y46_N20
\U2|CLK_COUNT_400HZ[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[4]~29_combout\ = (\U2|CLK_COUNT_400HZ\(4) & (\U2|CLK_COUNT_400HZ[3]~28\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(4) & (!\U2|CLK_COUNT_400HZ[3]~28\ & VCC))
-- \U2|CLK_COUNT_400HZ[4]~30\ = CARRY((\U2|CLK_COUNT_400HZ\(4) & !\U2|CLK_COUNT_400HZ[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[3]~28\,
	combout => \U2|CLK_COUNT_400HZ[4]~29_combout\,
	cout => \U2|CLK_COUNT_400HZ[4]~30\);

-- Location: FF_X14_Y46_N21
\U2|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[4]~29_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X14_Y46_N22
\U2|CLK_COUNT_400HZ[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[5]~31_combout\ = (\U2|CLK_COUNT_400HZ\(5) & (!\U2|CLK_COUNT_400HZ[4]~30\)) # (!\U2|CLK_COUNT_400HZ\(5) & ((\U2|CLK_COUNT_400HZ[4]~30\) # (GND)))
-- \U2|CLK_COUNT_400HZ[5]~32\ = CARRY((!\U2|CLK_COUNT_400HZ[4]~30\) # (!\U2|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[4]~30\,
	combout => \U2|CLK_COUNT_400HZ[5]~31_combout\,
	cout => \U2|CLK_COUNT_400HZ[5]~32\);

-- Location: FF_X14_Y46_N23
\U2|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[5]~31_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X14_Y46_N24
\U2|CLK_COUNT_400HZ[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[6]~33_combout\ = (\U2|CLK_COUNT_400HZ\(6) & (\U2|CLK_COUNT_400HZ[5]~32\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(6) & (!\U2|CLK_COUNT_400HZ[5]~32\ & VCC))
-- \U2|CLK_COUNT_400HZ[6]~34\ = CARRY((\U2|CLK_COUNT_400HZ\(6) & !\U2|CLK_COUNT_400HZ[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[5]~32\,
	combout => \U2|CLK_COUNT_400HZ[6]~33_combout\,
	cout => \U2|CLK_COUNT_400HZ[6]~34\);

-- Location: FF_X14_Y46_N25
\U2|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[6]~33_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X14_Y46_N26
\U2|CLK_COUNT_400HZ[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[7]~35_combout\ = (\U2|CLK_COUNT_400HZ\(7) & (!\U2|CLK_COUNT_400HZ[6]~34\)) # (!\U2|CLK_COUNT_400HZ\(7) & ((\U2|CLK_COUNT_400HZ[6]~34\) # (GND)))
-- \U2|CLK_COUNT_400HZ[7]~36\ = CARRY((!\U2|CLK_COUNT_400HZ[6]~34\) # (!\U2|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[6]~34\,
	combout => \U2|CLK_COUNT_400HZ[7]~35_combout\,
	cout => \U2|CLK_COUNT_400HZ[7]~36\);

-- Location: FF_X14_Y46_N27
\U2|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[7]~35_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X14_Y46_N28
\U2|CLK_COUNT_400HZ[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[8]~37_combout\ = (\U2|CLK_COUNT_400HZ\(8) & (\U2|CLK_COUNT_400HZ[7]~36\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(8) & (!\U2|CLK_COUNT_400HZ[7]~36\ & VCC))
-- \U2|CLK_COUNT_400HZ[8]~38\ = CARRY((\U2|CLK_COUNT_400HZ\(8) & !\U2|CLK_COUNT_400HZ[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[7]~36\,
	combout => \U2|CLK_COUNT_400HZ[8]~37_combout\,
	cout => \U2|CLK_COUNT_400HZ[8]~38\);

-- Location: FF_X14_Y46_N29
\U2|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[8]~37_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X14_Y46_N30
\U2|CLK_COUNT_400HZ[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[9]~39_combout\ = (\U2|CLK_COUNT_400HZ\(9) & (!\U2|CLK_COUNT_400HZ[8]~38\)) # (!\U2|CLK_COUNT_400HZ\(9) & ((\U2|CLK_COUNT_400HZ[8]~38\) # (GND)))
-- \U2|CLK_COUNT_400HZ[9]~40\ = CARRY((!\U2|CLK_COUNT_400HZ[8]~38\) # (!\U2|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[8]~38\,
	combout => \U2|CLK_COUNT_400HZ[9]~39_combout\,
	cout => \U2|CLK_COUNT_400HZ[9]~40\);

-- Location: FF_X14_Y46_N31
\U2|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[9]~39_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X14_Y45_N0
\U2|CLK_COUNT_400HZ[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[10]~41_combout\ = (\U2|CLK_COUNT_400HZ\(10) & (\U2|CLK_COUNT_400HZ[9]~40\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(10) & (!\U2|CLK_COUNT_400HZ[9]~40\ & VCC))
-- \U2|CLK_COUNT_400HZ[10]~42\ = CARRY((\U2|CLK_COUNT_400HZ\(10) & !\U2|CLK_COUNT_400HZ[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[9]~40\,
	combout => \U2|CLK_COUNT_400HZ[10]~41_combout\,
	cout => \U2|CLK_COUNT_400HZ[10]~42\);

-- Location: FF_X14_Y45_N1
\U2|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[10]~41_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X14_Y45_N2
\U2|CLK_COUNT_400HZ[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[11]~43_combout\ = (\U2|CLK_COUNT_400HZ\(11) & (!\U2|CLK_COUNT_400HZ[10]~42\)) # (!\U2|CLK_COUNT_400HZ\(11) & ((\U2|CLK_COUNT_400HZ[10]~42\) # (GND)))
-- \U2|CLK_COUNT_400HZ[11]~44\ = CARRY((!\U2|CLK_COUNT_400HZ[10]~42\) # (!\U2|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[10]~42\,
	combout => \U2|CLK_COUNT_400HZ[11]~43_combout\,
	cout => \U2|CLK_COUNT_400HZ[11]~44\);

-- Location: FF_X14_Y45_N3
\U2|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[11]~43_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X14_Y45_N4
\U2|CLK_COUNT_400HZ[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[12]~45_combout\ = (\U2|CLK_COUNT_400HZ\(12) & (\U2|CLK_COUNT_400HZ[11]~44\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(12) & (!\U2|CLK_COUNT_400HZ[11]~44\ & VCC))
-- \U2|CLK_COUNT_400HZ[12]~46\ = CARRY((\U2|CLK_COUNT_400HZ\(12) & !\U2|CLK_COUNT_400HZ[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[11]~44\,
	combout => \U2|CLK_COUNT_400HZ[12]~45_combout\,
	cout => \U2|CLK_COUNT_400HZ[12]~46\);

-- Location: FF_X14_Y45_N5
\U2|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[12]~45_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X14_Y45_N6
\U2|CLK_COUNT_400HZ[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[13]~47_combout\ = (\U2|CLK_COUNT_400HZ\(13) & (!\U2|CLK_COUNT_400HZ[12]~46\)) # (!\U2|CLK_COUNT_400HZ\(13) & ((\U2|CLK_COUNT_400HZ[12]~46\) # (GND)))
-- \U2|CLK_COUNT_400HZ[13]~48\ = CARRY((!\U2|CLK_COUNT_400HZ[12]~46\) # (!\U2|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[12]~46\,
	combout => \U2|CLK_COUNT_400HZ[13]~47_combout\,
	cout => \U2|CLK_COUNT_400HZ[13]~48\);

-- Location: FF_X14_Y45_N7
\U2|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[13]~47_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X14_Y45_N8
\U2|CLK_COUNT_400HZ[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[14]~49_combout\ = (\U2|CLK_COUNT_400HZ\(14) & (\U2|CLK_COUNT_400HZ[13]~48\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(14) & (!\U2|CLK_COUNT_400HZ[13]~48\ & VCC))
-- \U2|CLK_COUNT_400HZ[14]~50\ = CARRY((\U2|CLK_COUNT_400HZ\(14) & !\U2|CLK_COUNT_400HZ[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[13]~48\,
	combout => \U2|CLK_COUNT_400HZ[14]~49_combout\,
	cout => \U2|CLK_COUNT_400HZ[14]~50\);

-- Location: FF_X14_Y45_N9
\U2|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[14]~49_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(14));

-- Location: LCCOMB_X14_Y45_N10
\U2|CLK_COUNT_400HZ[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[15]~51_combout\ = (\U2|CLK_COUNT_400HZ\(15) & (!\U2|CLK_COUNT_400HZ[14]~50\)) # (!\U2|CLK_COUNT_400HZ\(15) & ((\U2|CLK_COUNT_400HZ[14]~50\) # (GND)))
-- \U2|CLK_COUNT_400HZ[15]~52\ = CARRY((!\U2|CLK_COUNT_400HZ[14]~50\) # (!\U2|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[14]~50\,
	combout => \U2|CLK_COUNT_400HZ[15]~51_combout\,
	cout => \U2|CLK_COUNT_400HZ[15]~52\);

-- Location: FF_X14_Y45_N11
\U2|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[15]~51_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X14_Y45_N12
\U2|CLK_COUNT_400HZ[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[16]~53_combout\ = (\U2|CLK_COUNT_400HZ\(16) & (\U2|CLK_COUNT_400HZ[15]~52\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(16) & (!\U2|CLK_COUNT_400HZ[15]~52\ & VCC))
-- \U2|CLK_COUNT_400HZ[16]~54\ = CARRY((\U2|CLK_COUNT_400HZ\(16) & !\U2|CLK_COUNT_400HZ[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[15]~52\,
	combout => \U2|CLK_COUNT_400HZ[16]~53_combout\,
	cout => \U2|CLK_COUNT_400HZ[16]~54\);

-- Location: FF_X14_Y45_N13
\U2|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[16]~53_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X14_Y45_N14
\U2|CLK_COUNT_400HZ[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[17]~56_combout\ = (\U2|CLK_COUNT_400HZ\(17) & (!\U2|CLK_COUNT_400HZ[16]~54\)) # (!\U2|CLK_COUNT_400HZ\(17) & ((\U2|CLK_COUNT_400HZ[16]~54\) # (GND)))
-- \U2|CLK_COUNT_400HZ[17]~57\ = CARRY((!\U2|CLK_COUNT_400HZ[16]~54\) # (!\U2|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[16]~54\,
	combout => \U2|CLK_COUNT_400HZ[17]~56_combout\,
	cout => \U2|CLK_COUNT_400HZ[17]~57\);

-- Location: FF_X14_Y45_N15
\U2|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[17]~56_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X14_Y45_N16
\U2|CLK_COUNT_400HZ[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[18]~58_combout\ = (\U2|CLK_COUNT_400HZ\(18) & (\U2|CLK_COUNT_400HZ[17]~57\ $ (GND))) # (!\U2|CLK_COUNT_400HZ\(18) & (!\U2|CLK_COUNT_400HZ[17]~57\ & VCC))
-- \U2|CLK_COUNT_400HZ[18]~59\ = CARRY((\U2|CLK_COUNT_400HZ\(18) & !\U2|CLK_COUNT_400HZ[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \U2|CLK_COUNT_400HZ[17]~57\,
	combout => \U2|CLK_COUNT_400HZ[18]~58_combout\,
	cout => \U2|CLK_COUNT_400HZ[18]~59\);

-- Location: FF_X14_Y45_N17
\U2|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[18]~58_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X14_Y45_N18
\U2|CLK_COUNT_400HZ[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[19]~60_combout\ = \U2|CLK_COUNT_400HZ[18]~59\ $ (\U2|CLK_COUNT_400HZ\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|CLK_COUNT_400HZ\(19),
	cin => \U2|CLK_COUNT_400HZ[18]~59\,
	combout => \U2|CLK_COUNT_400HZ[19]~60_combout\);

-- Location: FF_X14_Y45_N19
\U2|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[19]~60_combout\,
	sclr => \U2|CLK_COUNT_400HZ[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X14_Y45_N30
\U2|CLK_COUNT_400HZ[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[10]~20_combout\ = (!\U2|CLK_COUNT_400HZ\(16) & (!\U2|CLK_COUNT_400HZ\(18) & (!\U2|CLK_COUNT_400HZ\(17) & !\U2|CLK_COUNT_400HZ\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(16),
	datab => \U2|CLK_COUNT_400HZ\(18),
	datac => \U2|CLK_COUNT_400HZ\(17),
	datad => \U2|CLK_COUNT_400HZ\(19),
	combout => \U2|CLK_COUNT_400HZ[10]~20_combout\);

-- Location: LCCOMB_X14_Y45_N28
\U2|CLK_400HZ_Enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_400HZ_Enable~0_combout\ = (!\SW[7]~input_o\ & (((!\U2|LessThan0~2_combout\ & !\U2|LessThan0~3_combout\)) # (!\U2|CLK_COUNT_400HZ[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ[10]~20_combout\,
	datab => \U2|LessThan0~2_combout\,
	datac => \U2|LessThan0~3_combout\,
	datad => \SW[7]~input_o\,
	combout => \U2|CLK_400HZ_Enable~0_combout\);

-- Location: FF_X14_Y45_N29
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

-- Location: FF_X8_Y45_N25
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

-- Location: LCCOMB_X6_Y45_N4
\U2|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector26~0_combout\ = (\U2|state.RESET1~q\ & \U2|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.RESET1~q\,
	datac => \U2|CHAR_COUNT\(0),
	combout => \U2|Selector26~0_combout\);

-- Location: FF_X7_Y46_N13
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

-- Location: LCCOMB_X7_Y46_N28
\U2|LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LCD_RS~0_combout\ = (!\U2|state.HOLD~q\ & !\U2|state.DROP_LCD_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.HOLD~q\,
	datac => \U2|state.DROP_LCD_E~q\,
	combout => \U2|LCD_RS~0_combout\);

-- Location: FF_X7_Y46_N29
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

-- Location: LCCOMB_X7_Y46_N12
\U2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector15~0_combout\ = (\U2|next_command.Print_String~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.Print_String~q\,
	combout => \U2|Selector15~0_combout\);

-- Location: LCCOMB_X6_Y45_N16
\U2|CHAR_COUNT[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[1]~7_combout\ = (\U2|CHAR_COUNT\(1) & (!\U2|CHAR_COUNT[0]~6\)) # (!\U2|CHAR_COUNT\(1) & ((\U2|CHAR_COUNT[0]~6\) # (GND)))
-- \U2|CHAR_COUNT[1]~8\ = CARRY((!\U2|CHAR_COUNT[0]~6\) # (!\U2|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(1),
	datad => VCC,
	cin => \U2|CHAR_COUNT[0]~6\,
	combout => \U2|CHAR_COUNT[1]~7_combout\,
	cout => \U2|CHAR_COUNT[1]~8\);

-- Location: LCCOMB_X6_Y45_N8
\U2|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector25~0_combout\ = (\U2|CHAR_COUNT\(1) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|state.RESET1~q\,
	combout => \U2|Selector25~0_combout\);

-- Location: LCCOMB_X7_Y44_N10
\U2|CHAR_COUNT[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[0]~11_combout\ = (\U2|CLK_400HZ_Enable~q\ & !\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_400HZ_Enable~q\,
	datad => \SW[7]~input_o\,
	combout => \U2|CHAR_COUNT[0]~11_combout\);

-- Location: FF_X6_Y45_N17
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
	ena => \U2|CHAR_COUNT[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(1));

-- Location: LCCOMB_X6_Y45_N18
\U2|CHAR_COUNT[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[2]~9_combout\ = (\U2|CHAR_COUNT\(2) & (\U2|CHAR_COUNT[1]~8\ $ (GND))) # (!\U2|CHAR_COUNT\(2) & (!\U2|CHAR_COUNT[1]~8\ & VCC))
-- \U2|CHAR_COUNT[2]~10\ = CARRY((\U2|CHAR_COUNT\(2) & !\U2|CHAR_COUNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datad => VCC,
	cin => \U2|CHAR_COUNT[1]~8\,
	combout => \U2|CHAR_COUNT[2]~9_combout\,
	cout => \U2|CHAR_COUNT[2]~10\);

-- Location: LCCOMB_X6_Y45_N24
\U2|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector24~0_combout\ = (\U2|CHAR_COUNT\(2) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datac => \U2|state.RESET1~q\,
	combout => \U2|Selector24~0_combout\);

-- Location: FF_X6_Y45_N19
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
	ena => \U2|CHAR_COUNT[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(2));

-- Location: LCCOMB_X6_Y45_N20
\U2|CHAR_COUNT[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[3]~12_combout\ = (\U2|CHAR_COUNT\(3) & (!\U2|CHAR_COUNT[2]~10\)) # (!\U2|CHAR_COUNT\(3) & ((\U2|CHAR_COUNT[2]~10\) # (GND)))
-- \U2|CHAR_COUNT[3]~13\ = CARRY((!\U2|CHAR_COUNT[2]~10\) # (!\U2|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(3),
	datad => VCC,
	cin => \U2|CHAR_COUNT[2]~10\,
	combout => \U2|CHAR_COUNT[3]~12_combout\,
	cout => \U2|CHAR_COUNT[3]~13\);

-- Location: LCCOMB_X6_Y45_N10
\U2|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector23~0_combout\ = (\U2|CHAR_COUNT\(3) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|state.RESET1~q\,
	combout => \U2|Selector23~0_combout\);

-- Location: FF_X6_Y45_N21
\U2|CHAR_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CHAR_COUNT[3]~12_combout\,
	asdata => \U2|Selector23~0_combout\,
	sload => \U2|ALT_INV_state.Print_String~q\,
	ena => \U2|CHAR_COUNT[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(3));

-- Location: LCCOMB_X6_Y45_N22
\U2|CHAR_COUNT[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[4]~14_combout\ = \U2|CHAR_COUNT\(4) $ (!\U2|CHAR_COUNT[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	cin => \U2|CHAR_COUNT[3]~13\,
	combout => \U2|CHAR_COUNT[4]~14_combout\);

-- Location: LCCOMB_X6_Y45_N26
\U2|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector22~0_combout\ = (\U2|state.RESET1~q\ & \U2|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.RESET1~q\,
	datac => \U2|CHAR_COUNT\(4),
	combout => \U2|Selector22~0_combout\);

-- Location: FF_X6_Y45_N23
\U2|CHAR_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CHAR_COUNT[4]~14_combout\,
	asdata => \U2|Selector22~0_combout\,
	sload => \U2|ALT_INV_state.Print_String~q\,
	ena => \U2|CHAR_COUNT[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(4));

-- Location: LCCOMB_X8_Y45_N8
\U2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~0_combout\ = (\U2|CHAR_COUNT\(2) & \U2|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux6~0_combout\);

-- Location: LCCOMB_X8_Y45_N28
\U2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal3~0_combout\ = (\U2|CHAR_COUNT\(4) & (\U2|CHAR_COUNT\(1) & (\U2|Mux6~0_combout\ & \U2|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|Mux6~0_combout\,
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Equal3~0_combout\);

-- Location: LCCOMB_X8_Y45_N2
\U2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal2~0_combout\ = (!\U2|CHAR_COUNT\(4) & (\U2|CHAR_COUNT\(1) & (\U2|Mux6~0_combout\ & \U2|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|Mux6~0_combout\,
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Equal2~0_combout\);

-- Location: LCCOMB_X7_Y46_N30
\U2|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector15~1_combout\ = (\U2|Selector15~0_combout\) # ((\U2|state.Print_String~q\ & (\U2|Equal3~0_combout\ $ (!\U2|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector15~0_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Equal3~0_combout\,
	datad => \U2|Equal2~0_combout\,
	combout => \U2|Selector15~1_combout\);

-- Location: LCCOMB_X7_Y46_N6
\U2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector16~0_combout\ = (\U2|Equal2~0_combout\ & ((\U2|state.Print_String~q\) # ((!\U2|LCD_RS~0_combout\ & \U2|next_command.LINE2~q\)))) # (!\U2|Equal2~0_combout\ & (!\U2|LCD_RS~0_combout\ & (\U2|next_command.LINE2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~0_combout\,
	datab => \U2|LCD_RS~0_combout\,
	datac => \U2|next_command.LINE2~q\,
	datad => \U2|state.Print_String~q\,
	combout => \U2|Selector16~0_combout\);

-- Location: FF_X7_Y46_N7
\U2|next_command.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector16~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.LINE2~q\);

-- Location: LCCOMB_X7_Y46_N20
\U2|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~30_combout\ = (\U2|next_command.LINE2~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|next_command.LINE2~q\,
	datac => \U2|state.HOLD~q\,
	combout => \U2|state~30_combout\);

-- Location: FF_X7_Y46_N21
\U2|state.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~30_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.LINE2~q\);

-- Location: LCCOMB_X7_Y46_N18
\U2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector17~0_combout\ = (\U2|state.Print_String~q\ & ((\U2|Equal3~0_combout\) # ((\U2|next_command.RETURN_HOME~q\ & !\U2|LCD_RS~0_combout\)))) # (!\U2|state.Print_String~q\ & (((\U2|next_command.RETURN_HOME~q\ & !\U2|LCD_RS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.Print_String~q\,
	datab => \U2|Equal3~0_combout\,
	datac => \U2|next_command.RETURN_HOME~q\,
	datad => \U2|LCD_RS~0_combout\,
	combout => \U2|Selector17~0_combout\);

-- Location: FF_X7_Y46_N19
\U2|next_command.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector17~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.RETURN_HOME~q\);

-- Location: LCCOMB_X7_Y46_N22
\U2|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~31_combout\ = (\U2|next_command.RETURN_HOME~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|next_command.RETURN_HOME~q\,
	datac => \U2|state.HOLD~q\,
	combout => \U2|state~31_combout\);

-- Location: FF_X7_Y46_N23
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

-- Location: LCCOMB_X8_Y45_N4
\U2|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector18~0_combout\ = (\U2|state.RESET1~q\ & ((\U2|next_command.RESET2~q\) # ((!\U2|state.DROP_LCD_E~q\ & !\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|next_command.RESET2~q\,
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector18~0_combout\);

-- Location: FF_X8_Y45_N5
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

-- Location: LCCOMB_X8_Y44_N12
\U2|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~37_combout\ = (!\U2|next_command.RESET2~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|next_command.RESET2~q\,
	datac => \U2|state.HOLD~q\,
	combout => \U2|state~37_combout\);

-- Location: FF_X8_Y44_N13
\U2|state.RESET2\ : dffeas
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
	q => \U2|state.RESET2~q\);

-- Location: LCCOMB_X8_Y44_N24
\U2|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector19~0_combout\ = (\U2|state.RESET2~q\) # ((\U2|next_command.RESET3~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DROP_LCD_E~q\,
	datac => \U2|next_command.RESET3~q\,
	datad => \U2|state.RESET2~q\,
	combout => \U2|Selector19~0_combout\);

-- Location: FF_X8_Y44_N25
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

-- Location: LCCOMB_X8_Y44_N0
\U2|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~34_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.RESET3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.RESET3~q\,
	combout => \U2|state~34_combout\);

-- Location: FF_X8_Y44_N1
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

-- Location: LCCOMB_X8_Y44_N28
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

-- Location: FF_X8_Y44_N29
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

-- Location: LCCOMB_X8_Y44_N30
\U2|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~36_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.FUNC_SET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.FUNC_SET~q\,
	combout => \U2|state~36_combout\);

-- Location: FF_X7_Y44_N11
\U2|state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|state~36_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	sload => VCC,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.FUNC_SET~q\);

-- Location: LCCOMB_X8_Y44_N10
\U2|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector20~0_combout\ = (\U2|state.FUNC_SET~q\) # ((\U2|next_command.DISPLAY_OFF~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DROP_LCD_E~q\,
	datac => \U2|next_command.DISPLAY_OFF~q\,
	datad => \U2|state.FUNC_SET~q\,
	combout => \U2|Selector20~0_combout\);

-- Location: FF_X8_Y44_N11
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

-- Location: LCCOMB_X8_Y44_N26
\U2|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~35_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.DISPLAY_OFF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.DISPLAY_OFF~q\,
	combout => \U2|state~35_combout\);

-- Location: FF_X8_Y44_N27
\U2|state.DISPLAY_OFF\ : dffeas
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
	q => \U2|state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X7_Y44_N0
\U2|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector21~0_combout\ = (\U2|state.DISPLAY_OFF~q\) # ((\U2|next_command.DISPLAY_CLEAR~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|next_command.DISPLAY_CLEAR~q\,
	datad => \U2|state.DISPLAY_OFF~q\,
	combout => \U2|Selector21~0_combout\);

-- Location: FF_X7_Y44_N1
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

-- Location: LCCOMB_X7_Y44_N26
\U2|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~32_combout\ = (\U2|next_command.DISPLAY_CLEAR~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|next_command.DISPLAY_CLEAR~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|state~32_combout\);

-- Location: FF_X7_Y44_N27
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

-- Location: LCCOMB_X7_Y44_N18
\U2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector13~0_combout\ = (\U2|state.DISPLAY_CLEAR~q\) # ((\U2|next_command.DISPLAY_ON~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DISPLAY_CLEAR~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|next_command.DISPLAY_ON~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector13~0_combout\);

-- Location: FF_X7_Y44_N19
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

-- Location: LCCOMB_X7_Y44_N22
\U2|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~33_combout\ = (\U2|next_command.DISPLAY_ON~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|next_command.DISPLAY_ON~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|state~33_combout\);

-- Location: FF_X7_Y44_N23
\U2|state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~33_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.DISPLAY_ON~q\);

-- Location: LCCOMB_X7_Y44_N30
\U2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector14~0_combout\ = (\U2|state.DISPLAY_ON~q\) # ((\U2|next_command.MODE_SET~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|next_command.MODE_SET~q\,
	datad => \U2|state.DISPLAY_ON~q\,
	combout => \U2|Selector14~0_combout\);

-- Location: FF_X7_Y44_N31
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

-- Location: LCCOMB_X7_Y44_N24
\U2|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~29_combout\ = (\U2|next_command.MODE_SET~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|next_command.MODE_SET~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|state~29_combout\);

-- Location: FF_X7_Y44_N25
\U2|state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|state~29_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.MODE_SET~q\);

-- Location: LCCOMB_X7_Y46_N10
\U2|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector15~2_combout\ = (\U2|Selector15~1_combout\) # ((\U2|state.LINE2~q\) # ((\U2|state.RETURN_HOME~q\) # (\U2|state.MODE_SET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector15~1_combout\,
	datab => \U2|state.LINE2~q\,
	datac => \U2|state.RETURN_HOME~q\,
	datad => \U2|state.MODE_SET~q\,
	combout => \U2|Selector15~2_combout\);

-- Location: FF_X7_Y46_N11
\U2|next_command.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector15~2_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|next_command.Print_String~q\);

-- Location: LCCOMB_X7_Y46_N16
\U2|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~28_combout\ = (\U2|next_command.Print_String~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|next_command.Print_String~q\,
	datac => \U2|state.HOLD~q\,
	combout => \U2|state~28_combout\);

-- Location: FF_X7_Y46_N17
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

-- Location: FF_X6_Y45_N15
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
	ena => \U2|CHAR_COUNT[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CHAR_COUNT\(0));

-- Location: LCCOMB_X7_Y45_N14
\U2|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~7_combout\ = (\U2|CHAR_COUNT\(4) & (!\U2|CHAR_COUNT\(2) & (!\U2|CHAR_COUNT\(1) & !\U2|CHAR_COUNT\(3)))) # (!\U2|CHAR_COUNT\(4) & (((!\U2|CHAR_COUNT\(2) & !\U2|CHAR_COUNT\(1))) # (!\U2|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(1),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux6~7_combout\);

-- Location: LCCOMB_X8_Y45_N6
\U2|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~8_combout\ = (\U2|Mux6~7_combout\ & ((\U2|CHAR_COUNT\(3) & ((!\U2|CHAR_COUNT\(2)))) # (!\U2|CHAR_COUNT\(3) & ((\U2|CHAR_COUNT\(0)) # (\U2|CHAR_COUNT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|Mux6~7_combout\,
	combout => \U2|Mux6~8_combout\);

-- Location: LCCOMB_X8_Y45_N14
\U2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~2_combout\ = (\U2|CHAR_COUNT\(4) & ((\U2|CHAR_COUNT\(1)) # ((\U2|CHAR_COUNT\(2) & \U2|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux6~2_combout\);

-- Location: LCCOMB_X7_Y46_N14
\U2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~1_combout\ = (\U2|CHAR_COUNT\(1) & (((\U2|CHAR_COUNT\(2) & \U2|CHAR_COUNT\(3))) # (!\U2|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(0),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux6~1_combout\);

-- Location: LCCOMB_X8_Y46_N4
\U1|Hex_Display_Data[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[0]~3_combout\ = !\U1|Hex_Display_Data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Hex_Display_Data\(0),
	combout => \U1|Hex_Display_Data[0]~3_combout\);

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

-- Location: LCCOMB_X9_Y45_N24
\U1|enableSwitch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|enableSwitch~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \U1|enableSwitch~0_combout\);

-- Location: FF_X9_Y45_N25
\U1|enableSwitch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|enableSwitch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|enableSwitch~q\);

-- Location: LCCOMB_X9_Y45_N10
\U1|Hex_Display_Data[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[12]~0_combout\ = (!\U1|enableSwitch~q\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|enableSwitch~q\,
	datac => \KEY[0]~input_o\,
	combout => \U1|Hex_Display_Data[12]~0_combout\);

-- Location: FF_X8_Y46_N5
\U1|Hex_Display_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[0]~3_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(0));

-- Location: LCCOMB_X9_Y46_N2
\U1|PC[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[1]~15_combout\ = (\U1|Hex_Display_Data\(0) & (\U1|PC\(1) $ (VCC))) # (!\U1|Hex_Display_Data\(0) & (\U1|PC\(1) & VCC))
-- \U1|PC[1]~16\ = CARRY((\U1|Hex_Display_Data\(0) & \U1|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(1),
	datad => VCC,
	combout => \U1|PC[1]~15_combout\,
	cout => \U1|PC[1]~16\);

-- Location: FF_X9_Y46_N3
\U1|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[1]~15_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(1));

-- Location: LCCOMB_X9_Y46_N4
\U1|PC[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[2]~17_combout\ = (\U1|PC\(2) & (!\U1|PC[1]~16\)) # (!\U1|PC\(2) & ((\U1|PC[1]~16\) # (GND)))
-- \U1|PC[2]~18\ = CARRY((!\U1|PC[1]~16\) # (!\U1|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(2),
	datad => VCC,
	cin => \U1|PC[1]~16\,
	combout => \U1|PC[2]~17_combout\,
	cout => \U1|PC[2]~18\);

-- Location: FF_X9_Y46_N5
\U1|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[2]~17_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(2));

-- Location: LCCOMB_X9_Y46_N6
\U1|PC[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[3]~19_combout\ = (\U1|PC\(3) & (\U1|PC[2]~18\ $ (GND))) # (!\U1|PC\(3) & (!\U1|PC[2]~18\ & VCC))
-- \U1|PC[3]~20\ = CARRY((\U1|PC\(3) & !\U1|PC[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datad => VCC,
	cin => \U1|PC[2]~18\,
	combout => \U1|PC[3]~19_combout\,
	cout => \U1|PC[3]~20\);

-- Location: FF_X9_Y46_N7
\U1|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[3]~19_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(3));

-- Location: LCCOMB_X9_Y46_N8
\U1|PC[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[4]~21_combout\ = (\U1|PC\(4) & (!\U1|PC[3]~20\)) # (!\U1|PC\(4) & ((\U1|PC[3]~20\) # (GND)))
-- \U1|PC[4]~22\ = CARRY((!\U1|PC[3]~20\) # (!\U1|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(4),
	datad => VCC,
	cin => \U1|PC[3]~20\,
	combout => \U1|PC[4]~21_combout\,
	cout => \U1|PC[4]~22\);

-- Location: FF_X9_Y46_N9
\U1|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[4]~21_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(4));

-- Location: LCCOMB_X9_Y46_N10
\U1|PC[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[5]~23_combout\ = (\U1|PC\(5) & (\U1|PC[4]~22\ $ (GND))) # (!\U1|PC\(5) & (!\U1|PC[4]~22\ & VCC))
-- \U1|PC[5]~24\ = CARRY((\U1|PC\(5) & !\U1|PC[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datad => VCC,
	cin => \U1|PC[4]~22\,
	combout => \U1|PC[5]~23_combout\,
	cout => \U1|PC[5]~24\);

-- Location: FF_X9_Y46_N11
\U1|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[5]~23_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(5));

-- Location: LCCOMB_X9_Y46_N12
\U1|PC[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[6]~25_combout\ = (\U1|PC\(6) & (!\U1|PC[5]~24\)) # (!\U1|PC\(6) & ((\U1|PC[5]~24\) # (GND)))
-- \U1|PC[6]~26\ = CARRY((!\U1|PC[5]~24\) # (!\U1|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(6),
	datad => VCC,
	cin => \U1|PC[5]~24\,
	combout => \U1|PC[6]~25_combout\,
	cout => \U1|PC[6]~26\);

-- Location: FF_X9_Y46_N13
\U1|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[6]~25_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(6));

-- Location: LCCOMB_X9_Y46_N14
\U1|PC[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[7]~27_combout\ = (\U1|PC\(7) & (\U1|PC[6]~26\ $ (GND))) # (!\U1|PC\(7) & (!\U1|PC[6]~26\ & VCC))
-- \U1|PC[7]~28\ = CARRY((\U1|PC\(7) & !\U1|PC[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(7),
	datad => VCC,
	cin => \U1|PC[6]~26\,
	combout => \U1|PC[7]~27_combout\,
	cout => \U1|PC[7]~28\);

-- Location: FF_X9_Y46_N15
\U1|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[7]~27_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(7));

-- Location: LCCOMB_X9_Y46_N16
\U1|PC[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[8]~29_combout\ = (\U1|PC\(8) & (!\U1|PC[7]~28\)) # (!\U1|PC\(8) & ((\U1|PC[7]~28\) # (GND)))
-- \U1|PC[8]~30\ = CARRY((!\U1|PC[7]~28\) # (!\U1|PC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(8),
	datad => VCC,
	cin => \U1|PC[7]~28\,
	combout => \U1|PC[8]~29_combout\,
	cout => \U1|PC[8]~30\);

-- Location: FF_X9_Y46_N17
\U1|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[8]~29_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(8));

-- Location: LCCOMB_X9_Y46_N18
\U1|PC[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[9]~31_combout\ = (\U1|PC\(9) & (\U1|PC[8]~30\ $ (GND))) # (!\U1|PC\(9) & (!\U1|PC[8]~30\ & VCC))
-- \U1|PC[9]~32\ = CARRY((\U1|PC\(9) & !\U1|PC[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(9),
	datad => VCC,
	cin => \U1|PC[8]~30\,
	combout => \U1|PC[9]~31_combout\,
	cout => \U1|PC[9]~32\);

-- Location: FF_X9_Y46_N19
\U1|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[9]~31_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(9));

-- Location: LCCOMB_X9_Y46_N20
\U1|PC[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[10]~33_combout\ = (\U1|PC\(10) & (!\U1|PC[9]~32\)) # (!\U1|PC\(10) & ((\U1|PC[9]~32\) # (GND)))
-- \U1|PC[10]~34\ = CARRY((!\U1|PC[9]~32\) # (!\U1|PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(10),
	datad => VCC,
	cin => \U1|PC[9]~32\,
	combout => \U1|PC[10]~33_combout\,
	cout => \U1|PC[10]~34\);

-- Location: FF_X9_Y46_N21
\U1|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[10]~33_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(10));

-- Location: LCCOMB_X9_Y46_N22
\U1|PC[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[11]~35_combout\ = (\U1|PC\(11) & (\U1|PC[10]~34\ $ (GND))) # (!\U1|PC\(11) & (!\U1|PC[10]~34\ & VCC))
-- \U1|PC[11]~36\ = CARRY((\U1|PC\(11) & !\U1|PC[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(11),
	datad => VCC,
	cin => \U1|PC[10]~34\,
	combout => \U1|PC[11]~35_combout\,
	cout => \U1|PC[11]~36\);

-- Location: FF_X9_Y46_N23
\U1|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[11]~35_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(11));

-- Location: LCCOMB_X9_Y46_N24
\U1|PC[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[12]~37_combout\ = (\U1|PC\(12) & (!\U1|PC[11]~36\)) # (!\U1|PC\(12) & ((\U1|PC[11]~36\) # (GND)))
-- \U1|PC[12]~38\ = CARRY((!\U1|PC[11]~36\) # (!\U1|PC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(12),
	datad => VCC,
	cin => \U1|PC[11]~36\,
	combout => \U1|PC[12]~37_combout\,
	cout => \U1|PC[12]~38\);

-- Location: FF_X9_Y46_N25
\U1|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[12]~37_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(12));

-- Location: LCCOMB_X8_Y46_N30
\U1|Hex_Display_Data[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[12]~6_combout\ = !\U1|PC\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PC\(12),
	combout => \U1|Hex_Display_Data[12]~6_combout\);

-- Location: FF_X8_Y46_N3
\U1|Hex_Display_Data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Hex_Display_Data[12]~6_combout\,
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(12));

-- Location: LCCOMB_X8_Y46_N0
\U1|Hex_Display_Data[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[8]~5_combout\ = !\U1|PC\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PC\(8),
	combout => \U1|Hex_Display_Data[8]~5_combout\);

-- Location: FF_X8_Y46_N1
\U1|Hex_Display_Data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[8]~5_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(8));

-- Location: LCCOMB_X8_Y46_N2
\U2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~4_combout\ = (\U2|CHAR_COUNT\(0) & (!\U2|CHAR_COUNT\(1) & ((!\U1|Hex_Display_Data\(8))))) # (!\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(1)) # ((!\U1|Hex_Display_Data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U1|Hex_Display_Data\(12),
	datad => \U1|Hex_Display_Data\(8),
	combout => \U2|Mux6~4_combout\);

-- Location: LCCOMB_X8_Y46_N26
\U1|Hex_Display_Data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[4]~4_combout\ = !\U1|PC\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(4),
	combout => \U1|Hex_Display_Data[4]~4_combout\);

-- Location: FF_X8_Y46_N23
\U1|Hex_Display_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Hex_Display_Data[4]~4_combout\,
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(4));

-- Location: LCCOMB_X8_Y46_N22
\U2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~3_combout\ = (\U2|CHAR_COUNT\(2) & (!\U1|Hex_Display_Data\(4) & \U2|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datac => \U1|Hex_Display_Data\(4),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux6~3_combout\);

-- Location: LCCOMB_X8_Y46_N20
\U2|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~5_combout\ = (\U2|Mux6~1_combout\ & ((\U2|Mux6~4_combout\ & ((\U2|Mux6~3_combout\))) # (!\U2|Mux6~4_combout\ & (!\U1|Hex_Display_Data\(0))))) # (!\U2|Mux6~1_combout\ & (\U2|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~1_combout\,
	datab => \U2|Mux6~4_combout\,
	datac => \U1|Hex_Display_Data\(0),
	datad => \U2|Mux6~3_combout\,
	combout => \U2|Mux6~5_combout\);

-- Location: LCCOMB_X7_Y45_N26
\U2|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~6_combout\ = (\U2|Mux6~8_combout\) # ((\U2|Mux6~2_combout\ & (\U2|CHAR_COUNT\(4) & \U2|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~8_combout\,
	datab => \U2|Mux6~2_combout\,
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|Mux6~5_combout\,
	combout => \U2|Mux6~6_combout\);

-- Location: LCCOMB_X7_Y44_N28
\U2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector9~0_combout\ = (\U2|state.DISPLAY_CLEAR~q\) # ((\U2|DATA_BUS_VALUE\(0) & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DISPLAY_CLEAR~q\,
	datab => \U2|state.HOLD~q\,
	datac => \U2|state.DROP_LCD_E~q\,
	datad => \U2|DATA_BUS_VALUE\(0),
	combout => \U2|Selector9~0_combout\);

-- Location: LCCOMB_X6_Y45_N2
\U2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~3_combout\ = (!\U2|CHAR_COUNT\(2) & (!\U2|CHAR_COUNT\(1) & (!\U2|CHAR_COUNT\(4) & !\U2|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux5~3_combout\);

-- Location: FF_X8_Y46_N15
\U1|Hex_Display_Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(5),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(5));

-- Location: LCCOMB_X8_Y46_N14
\U2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~0_combout\ = (\U2|CHAR_COUNT\(2) & (\U1|Hex_Display_Data\(5) & \U2|CHAR_COUNT\(3))) # (!\U2|CHAR_COUNT\(2) & ((!\U2|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datac => \U1|Hex_Display_Data\(5),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux5~0_combout\);

-- Location: FF_X8_Y46_N29
\U1|Hex_Display_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(1),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(1));

-- Location: LCCOMB_X9_Y46_N26
\U1|PC[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[13]~39_combout\ = (\U1|PC\(13) & (\U1|PC[12]~38\ $ (GND))) # (!\U1|PC\(13) & (!\U1|PC[12]~38\ & VCC))
-- \U1|PC[13]~40\ = CARRY((\U1|PC\(13) & !\U1|PC[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(13),
	datad => VCC,
	cin => \U1|PC[12]~38\,
	combout => \U1|PC[13]~39_combout\,
	cout => \U1|PC[13]~40\);

-- Location: FF_X9_Y46_N27
\U1|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[13]~39_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(13));

-- Location: FF_X8_Y46_N11
\U1|Hex_Display_Data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(13),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(13));

-- Location: LCCOMB_X8_Y46_N24
\U1|Hex_Display_Data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[9]~feeder_combout\ = \U1|PC\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PC\(9),
	combout => \U1|Hex_Display_Data[9]~feeder_combout\);

-- Location: FF_X8_Y46_N25
\U1|Hex_Display_Data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[9]~feeder_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(9));

-- Location: LCCOMB_X8_Y46_N10
\U2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~1_combout\ = (\U2|CHAR_COUNT\(0) & (!\U2|CHAR_COUNT\(1) & ((\U1|Hex_Display_Data\(9))))) # (!\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(1)) # ((\U1|Hex_Display_Data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U1|Hex_Display_Data\(13),
	datad => \U1|Hex_Display_Data\(9),
	combout => \U2|Mux5~1_combout\);

-- Location: LCCOMB_X8_Y46_N28
\U2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~2_combout\ = (\U2|Mux6~1_combout\ & ((\U2|Mux5~1_combout\ & (\U2|Mux5~0_combout\)) # (!\U2|Mux5~1_combout\ & ((\U1|Hex_Display_Data\(1)))))) # (!\U2|Mux6~1_combout\ & (((\U2|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~1_combout\,
	datab => \U2|Mux5~0_combout\,
	datac => \U1|Hex_Display_Data\(1),
	datad => \U2|Mux5~1_combout\,
	combout => \U2|Mux5~2_combout\);

-- Location: LCCOMB_X7_Y45_N6
\U2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~4_combout\ = (\U2|Mux5~3_combout\ & (((\U2|Mux6~2_combout\ & \U2|Mux5~2_combout\)) # (!\U2|CHAR_COUNT\(0)))) # (!\U2|Mux5~3_combout\ & (((\U2|Mux6~2_combout\ & \U2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~3_combout\,
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|Mux6~2_combout\,
	datad => \U2|Mux5~2_combout\,
	combout => \U2|Mux5~4_combout\);

-- Location: LCCOMB_X8_Y45_N26
\U2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~3_combout\ = (\U2|CHAR_COUNT\(3) & (\U2|CHAR_COUNT\(0) & !\U2|CHAR_COUNT\(4))) # (!\U2|CHAR_COUNT\(3) & ((\U2|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|CHAR_COUNT\(4),
	combout => \U2|Mux4~3_combout\);

-- Location: LCCOMB_X8_Y45_N20
\U2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~4_combout\ = (\U2|Mux4~3_combout\ & (!\U2|CHAR_COUNT\(1) & !\U2|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~3_combout\,
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux4~4_combout\);

-- Location: LCCOMB_X8_Y45_N18
\U2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~3_combout\ = (!\U2|CHAR_COUNT\(3) & !\U2|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|CHAR_COUNT\(4),
	combout => \U2|Mux3~3_combout\);

-- Location: LCCOMB_X8_Y45_N30
\U2|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~5_combout\ = (\U2|Mux3~3_combout\ & ((\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(1)) # (\U2|CHAR_COUNT\(2)))) # (!\U2|CHAR_COUNT\(0) & ((!\U2|CHAR_COUNT\(2)) # (!\U2|CHAR_COUNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|Mux3~3_combout\,
	combout => \U2|Mux4~5_combout\);

-- Location: LCCOMB_X9_Y46_N28
\U1|PC[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[14]~41_combout\ = (\U1|PC\(14) & (!\U1|PC[13]~40\)) # (!\U1|PC\(14) & ((\U1|PC[13]~40\) # (GND)))
-- \U1|PC[14]~42\ = CARRY((!\U1|PC[13]~40\) # (!\U1|PC\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(14),
	datad => VCC,
	cin => \U1|PC[13]~40\,
	combout => \U1|PC[14]~41_combout\,
	cout => \U1|PC[14]~42\);

-- Location: FF_X9_Y46_N29
\U1|PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[14]~41_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(14));

-- Location: FF_X8_Y46_N17
\U1|Hex_Display_Data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(14),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(14));

-- Location: LCCOMB_X8_Y46_N6
\U1|Hex_Display_Data[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[10]~2_combout\ = !\U1|PC\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|PC\(10),
	combout => \U1|Hex_Display_Data[10]~2_combout\);

-- Location: FF_X8_Y46_N7
\U1|Hex_Display_Data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[10]~2_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(10));

-- Location: LCCOMB_X8_Y46_N16
\U2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~1_combout\ = (\U2|CHAR_COUNT\(0) & (!\U2|CHAR_COUNT\(1) & ((!\U1|Hex_Display_Data\(10))))) # (!\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(1)) # ((\U1|Hex_Display_Data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U1|Hex_Display_Data\(14),
	datad => \U1|Hex_Display_Data\(10),
	combout => \U2|Mux4~1_combout\);

-- Location: LCCOMB_X9_Y46_N0
\U1|Hex_Display_Data[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[2]~1_combout\ = !\U1|PC\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|PC\(2),
	combout => \U1|Hex_Display_Data[2]~1_combout\);

-- Location: FF_X9_Y46_N1
\U1|Hex_Display_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[2]~1_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(2));

-- Location: FF_X8_Y46_N13
\U1|Hex_Display_Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(6),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(6));

-- Location: LCCOMB_X8_Y46_N12
\U2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~0_combout\ = (\U2|CHAR_COUNT\(2) & (\U1|Hex_Display_Data\(6) & \U2|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datac => \U1|Hex_Display_Data\(6),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux4~0_combout\);

-- Location: LCCOMB_X8_Y46_N18
\U2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~2_combout\ = (\U2|Mux6~1_combout\ & ((\U2|Mux4~1_combout\ & ((\U2|Mux4~0_combout\))) # (!\U2|Mux4~1_combout\ & (!\U1|Hex_Display_Data\(2))))) # (!\U2|Mux6~1_combout\ & (\U2|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~1_combout\,
	datab => \U2|Mux4~1_combout\,
	datac => \U1|Hex_Display_Data\(2),
	datad => \U2|Mux4~0_combout\,
	combout => \U2|Mux4~2_combout\);

-- Location: LCCOMB_X7_Y45_N24
\U2|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~6_combout\ = (\U2|Mux6~2_combout\ & (((\U2|Mux4~2_combout\)))) # (!\U2|Mux6~2_combout\ & ((\U2|Mux4~4_combout\) # ((\U2|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~4_combout\,
	datab => \U2|Mux6~2_combout\,
	datac => \U2|Mux4~5_combout\,
	datad => \U2|Mux4~2_combout\,
	combout => \U2|Mux4~6_combout\);

-- Location: LCCOMB_X6_Y45_N0
\U2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = (\U2|CHAR_COUNT\(2) & ((\U2|CHAR_COUNT\(0)) # ((\U2|CHAR_COUNT\(4)) # (\U2|CHAR_COUNT\(1))))) # (!\U2|CHAR_COUNT\(2) & (((\U2|CHAR_COUNT\(4) & \U2|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|CHAR_COUNT\(1),
	combout => \U2|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y45_N28
\U2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (\U2|CHAR_COUNT\(2) & ((\U2|CHAR_COUNT\(4) $ (\U2|CHAR_COUNT\(3))))) # (!\U2|CHAR_COUNT\(2) & ((\U2|CHAR_COUNT\(4) & ((\U2|CHAR_COUNT\(3)))) # (!\U2|CHAR_COUNT\(4) & (\U2|CHAR_COUNT\(0) & !\U2|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux1~0_combout\);

-- Location: LCCOMB_X6_Y45_N6
\U2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux1~1_combout\ = (\U2|Mux1~0_combout\) # ((\U2|CHAR_COUNT\(2) & (!\U2|CHAR_COUNT\(1) & !\U2|CHAR_COUNT\(3))) # (!\U2|CHAR_COUNT\(2) & (\U2|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|Mux1~0_combout\,
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux1~1_combout\);

-- Location: LCCOMB_X8_Y45_N16
\U2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(4)) # (\U2|CHAR_COUNT\(2) $ (!\U2|CHAR_COUNT\(1))))) # (!\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(2)) # (\U2|CHAR_COUNT\(4) $ (\U2|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|CHAR_COUNT\(1),
	combout => \U2|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y45_N12
\U2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (!\U2|Mux1~1_combout\ & ((\U2|CHAR_COUNT\(3)) # ((\U2|Mux0~0_combout\ & \U2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux0~0_combout\,
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|Mux1~1_combout\,
	datad => \U2|Mux2~0_combout\,
	combout => \U2|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y45_N12
\U2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~4_combout\ = (\U2|CHAR_COUNT\(0) & (!\U2|CHAR_COUNT\(1) & \U2|CHAR_COUNT\(2))) # (!\U2|CHAR_COUNT\(0) & (\U2|CHAR_COUNT\(1) & !\U2|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux3~4_combout\);

-- Location: LCCOMB_X9_Y46_N30
\U1|PC[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PC[15]~43_combout\ = \U1|PC\(15) $ (!\U1|PC[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(15),
	cin => \U1|PC[14]~42\,
	combout => \U1|PC[15]~43_combout\);

-- Location: FF_X9_Y46_N31
\U1|PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[15]~43_combout\,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(15));

-- Location: FF_X8_Y45_N1
\U1|Hex_Display_Data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(15),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(15));

-- Location: FF_X8_Y46_N27
\U1|Hex_Display_Data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(11),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(11));

-- Location: LCCOMB_X8_Y45_N0
\U2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~1_combout\ = (\U2|CHAR_COUNT\(0) & (!\U2|CHAR_COUNT\(1) & ((\U1|Hex_Display_Data\(11))))) # (!\U2|CHAR_COUNT\(0) & ((\U2|CHAR_COUNT\(1)) # ((\U1|Hex_Display_Data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U1|Hex_Display_Data\(15),
	datad => \U1|Hex_Display_Data\(11),
	combout => \U2|Mux3~1_combout\);

-- Location: FF_X8_Y45_N23
\U1|Hex_Display_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(3),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(3));

-- Location: FF_X8_Y46_N9
\U1|Hex_Display_Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(7),
	sload => VCC,
	ena => \U1|Hex_Display_Data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(7));

-- Location: LCCOMB_X8_Y46_N8
\U2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (\U2|CHAR_COUNT\(2) & (\U1|Hex_Display_Data\(7) & \U2|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datac => \U1|Hex_Display_Data\(7),
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Mux3~0_combout\);

-- Location: LCCOMB_X8_Y45_N22
\U2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~2_combout\ = (\U2|Mux6~1_combout\ & ((\U2|Mux3~1_combout\ & ((\U2|Mux3~0_combout\))) # (!\U2|Mux3~1_combout\ & (\U1|Hex_Display_Data\(3))))) # (!\U2|Mux6~1_combout\ & (\U2|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~1_combout\,
	datab => \U2|Mux3~1_combout\,
	datac => \U1|Hex_Display_Data\(3),
	datad => \U2|Mux3~0_combout\,
	combout => \U2|Mux3~2_combout\);

-- Location: LCCOMB_X7_Y45_N18
\U2|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~5_combout\ = (\U2|Mux3~3_combout\ & ((\U2|Mux3~4_combout\) # ((\U2|Mux6~2_combout\ & \U2|Mux3~2_combout\)))) # (!\U2|Mux3~3_combout\ & (((\U2|Mux6~2_combout\ & \U2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~3_combout\,
	datab => \U2|Mux3~4_combout\,
	datac => \U2|Mux6~2_combout\,
	datad => \U2|Mux3~2_combout\,
	combout => \U2|Mux3~5_combout\);

-- Location: LCCOMB_X6_Y45_N12
\U2|DATA_BUS_VALUE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DATA_BUS_VALUE~0_combout\ = (\U2|Equal0~0_combout\ & (\U2|Mux3~5_combout\ & ((\U2|Mux5~4_combout\) # (\U2|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~4_combout\,
	datab => \U2|Mux4~6_combout\,
	datac => \U2|Equal0~0_combout\,
	datad => \U2|Mux3~5_combout\,
	combout => \U2|DATA_BUS_VALUE~0_combout\);

-- Location: LCCOMB_X7_Y45_N2
\U2|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector9~1_combout\ = (\U2|Selector9~0_combout\) # ((\U2|state.Print_String~q\ & (\U2|Mux6~6_combout\ $ (\U2|DATA_BUS_VALUE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~6_combout\,
	datab => \U2|Selector9~0_combout\,
	datac => \U2|state.Print_String~q\,
	datad => \U2|DATA_BUS_VALUE~0_combout\,
	combout => \U2|Selector9~1_combout\);

-- Location: FF_X7_Y45_N3
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

-- Location: LCCOMB_X7_Y45_N0
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

-- Location: LCCOMB_X7_Y44_N12
\U2|LCD_RW_INT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LCD_RW_INT~0_combout\ = (!\U2|state.HOLD~q\ & (!\U2|state.DROP_LCD_E~q\ & \U2|CLK_400HZ_Enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.HOLD~q\,
	datac => \U2|state.DROP_LCD_E~q\,
	datad => \U2|CLK_400HZ_Enable~q\,
	combout => \U2|LCD_RW_INT~0_combout\);

-- Location: FF_X7_Y45_N1
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

-- Location: LCCOMB_X7_Y45_N20
\U2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~0_combout\ = (\U2|state.Print_String~q\ & (\U2|Mux5~4_combout\ $ (((\U2|DATA_BUS_VALUE~0_combout\ & !\U2|Mux6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DATA_BUS_VALUE~0_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Mux6~6_combout\,
	datad => \U2|Mux5~4_combout\,
	combout => \U2|Selector8~0_combout\);

-- Location: LCCOMB_X7_Y46_N4
\U2|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~1_combout\ = (\U2|state.MODE_SET~q\) # ((\U2|Selector8~0_combout\) # ((\U2|DATA_BUS_VALUE\(1) & !\U2|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.MODE_SET~q\,
	datab => \U2|Selector8~0_combout\,
	datac => \U2|DATA_BUS_VALUE\(1),
	datad => \U2|LCD_RS~0_combout\,
	combout => \U2|Selector8~1_combout\);

-- Location: FF_X7_Y46_N5
\U2|DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector8~1_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X7_Y44_N16
\U2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~0_combout\ = (\U2|state.DISPLAY_ON~q\) # ((\U2|DATA_BUS_VALUE\(2) & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|DATA_BUS_VALUE\(2),
	datac => \U2|state.DISPLAY_ON~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|Selector7~0_combout\);

-- Location: LCCOMB_X6_Y45_N30
\U2|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~1_combout\ = \U2|Mux4~6_combout\ $ (((\U2|DATA_BUS_VALUE~0_combout\ & (!\U2|Mux6~6_combout\ & !\U2|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DATA_BUS_VALUE~0_combout\,
	datab => \U2|Mux4~6_combout\,
	datac => \U2|Mux6~6_combout\,
	datad => \U2|Mux5~4_combout\,
	combout => \U2|Selector7~1_combout\);

-- Location: LCCOMB_X7_Y44_N14
\U2|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~2_combout\ = (\U2|Selector7~0_combout\) # ((\U2|state.MODE_SET~q\) # ((\U2|Selector7~1_combout\ & \U2|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector7~0_combout\,
	datab => \U2|Selector7~1_combout\,
	datac => \U2|state.Print_String~q\,
	datad => \U2|state.MODE_SET~q\,
	combout => \U2|Selector7~2_combout\);

-- Location: FF_X7_Y44_N15
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

-- Location: LCCOMB_X7_Y45_N30
\U2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = \U2|Mux3~5_combout\ $ (((\U2|Mux5~4_combout\) # ((\U2|Mux4~6_combout\) # (\U2|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~4_combout\,
	datab => \U2|Mux4~6_combout\,
	datac => \U2|Mux6~6_combout\,
	datad => \U2|Mux3~5_combout\,
	combout => \U2|Add1~0_combout\);

-- Location: LCCOMB_X7_Y45_N16
\U2|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~2_combout\ = (\U2|state.Print_String~q\ & ((\U2|DATA_BUS_VALUE~0_combout\ & (\U2|Add1~0_combout\)) # (!\U2|DATA_BUS_VALUE~0_combout\ & ((\U2|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DATA_BUS_VALUE~0_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Add1~0_combout\,
	datad => \U2|Mux3~5_combout\,
	combout => \U2|Selector6~2_combout\);

-- Location: LCCOMB_X7_Y45_N4
\U2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~0_combout\ = ((!\U2|DATA_BUS_VALUE\(3) & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\)))) # (!\U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DROP_LCD_E~q\,
	datac => \U2|DATA_BUS_VALUE\(3),
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector6~0_combout\);

-- Location: LCCOMB_X8_Y44_N14
\U2|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~1_combout\ = (\U2|state.FUNC_SET~q\) # ((\U2|state.DISPLAY_ON~q\) # ((\U2|state.DISPLAY_OFF~q\) # (\U2|state.RESET2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.FUNC_SET~q\,
	datab => \U2|state.DISPLAY_ON~q\,
	datac => \U2|state.DISPLAY_OFF~q\,
	datad => \U2|state.RESET2~q\,
	combout => \U2|Selector6~1_combout\);

-- Location: LCCOMB_X8_Y45_N10
\U2|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~3_combout\ = (!\U2|Selector6~2_combout\ & (!\U2|state.RESET3~q\ & (!\U2|Selector6~0_combout\ & !\U2|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector6~2_combout\,
	datab => \U2|state.RESET3~q\,
	datac => \U2|Selector6~0_combout\,
	datad => \U2|Selector6~1_combout\,
	combout => \U2|Selector6~3_combout\);

-- Location: FF_X7_Y45_N5
\U2|DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|Selector6~3_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	sload => VCC,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X7_Y46_N8
\U2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~0_combout\ = (!\U2|state.MODE_SET~q\ & (!\U2|state.LINE2~q\ & (!\U2|state.RETURN_HOME~q\ & !\U2|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.MODE_SET~q\,
	datab => \U2|state.LINE2~q\,
	datac => \U2|state.RETURN_HOME~q\,
	datad => \U2|state.Print_String~q\,
	combout => \U2|Selector5~0_combout\);

-- Location: LCCOMB_X7_Y44_N20
\U2|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~1_combout\ = (!\U2|state.DISPLAY_CLEAR~q\ & (!\U2|state.DISPLAY_ON~q\ & (\U2|Selector5~0_combout\ & !\U2|state.DISPLAY_OFF~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DISPLAY_CLEAR~q\,
	datab => \U2|state.DISPLAY_ON~q\,
	datac => \U2|Selector5~0_combout\,
	datad => \U2|state.DISPLAY_OFF~q\,
	combout => \U2|Selector5~1_combout\);

-- Location: LCCOMB_X7_Y45_N10
\U2|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~2_combout\ = (\U2|CHAR_COUNT\(3) & (((!\U2|Mux1~1_combout\)))) # (!\U2|CHAR_COUNT\(3) & (((\U2|Mux0~0_combout\ & !\U2|Mux1~1_combout\)) # (!\U2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux0~0_combout\,
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|Mux1~1_combout\,
	datad => \U2|Mux2~0_combout\,
	combout => \U2|Selector5~2_combout\);

-- Location: LCCOMB_X7_Y45_N22
\U2|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~3_combout\ = (!\U2|Selector5~1_combout\ & ((\U2|DATA_BUS_VALUE~0_combout\) # ((!\U2|Selector5~2_combout\) # (!\U2|state.Print_String~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DATA_BUS_VALUE~0_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Selector5~1_combout\,
	datad => \U2|Selector5~2_combout\,
	combout => \U2|Selector5~3_combout\);

-- Location: FF_X7_Y45_N23
\U2|DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector5~3_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X7_Y45_N28
\U2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector4~0_combout\ = (\U2|Equal0~0_combout\ & (((!\U2|Mux5~4_combout\ & !\U2|Mux4~6_combout\)) # (!\U2|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~4_combout\,
	datab => \U2|Mux4~6_combout\,
	datac => \U2|Equal0~0_combout\,
	datad => \U2|Mux3~5_combout\,
	combout => \U2|Selector4~0_combout\);

-- Location: LCCOMB_X7_Y45_N8
\U2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector4~1_combout\ = (!\U2|Selector5~1_combout\ & (((!\U2|Mux1~1_combout\ & !\U2|Selector4~0_combout\)) # (!\U2|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector5~1_combout\,
	datab => \U2|Mux1~1_combout\,
	datac => \U2|state.Print_String~q\,
	datad => \U2|Selector4~0_combout\,
	combout => \U2|Selector4~1_combout\);

-- Location: FF_X7_Y45_N9
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

-- Location: LCCOMB_X7_Y46_N24
\U2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~0_combout\ = (\U2|state.LINE2~q\) # ((\U2|DATA_BUS_VALUE\(6) & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.LINE2~q\,
	datac => \U2|state.HOLD~q\,
	datad => \U2|DATA_BUS_VALUE\(6),
	combout => \U2|Selector3~0_combout\);

-- Location: LCCOMB_X7_Y46_N26
\U2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~1_combout\ = (!\U2|Mux0~0_combout\ & !\U2|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Mux0~0_combout\,
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Selector3~1_combout\);

-- Location: LCCOMB_X7_Y46_N0
\U2|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~2_combout\ = (\U2|Selector3~0_combout\) # ((\U2|state.Print_String~q\ & ((\U2|DATA_BUS_VALUE~0_combout\) # (\U2|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DATA_BUS_VALUE~0_combout\,
	datab => \U2|Selector3~0_combout\,
	datac => \U2|Selector3~1_combout\,
	datad => \U2|state.Print_String~q\,
	combout => \U2|Selector3~2_combout\);

-- Location: FF_X7_Y46_N1
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

-- Location: LCCOMB_X7_Y46_N2
\U2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector2~0_combout\ = (\U2|state.RETURN_HOME~q\) # ((\U2|state.LINE2~q\) # ((!\U2|LCD_RS~0_combout\ & \U2|DATA_BUS_VALUE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.RETURN_HOME~q\,
	datab => \U2|LCD_RS~0_combout\,
	datac => \U2|DATA_BUS_VALUE\(7),
	datad => \U2|state.LINE2~q\,
	combout => \U2|Selector2~0_combout\);

-- Location: FF_X7_Y46_N3
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

-- Location: PLL_1
\U1|video_PLL_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U1|video_PLL_inst|altpll_component|auto_generated|pll1~FBOUT\,
	inclk => \U1|video_PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U1|video_PLL_inst|altpll_component|auto_generated|pll1~FBOUT\,
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y44_N8
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

-- Location: FF_X7_Y44_N9
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

-- Location: LCCOMB_X7_Y44_N2
\U2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector1~0_combout\ = (\U2|state.Print_String~q\) # ((\U2|LCD_RS~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|LCD_RS~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|Selector1~0_combout\);

-- Location: FF_X7_Y44_N3
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
	i => ww_LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);
END structure;


