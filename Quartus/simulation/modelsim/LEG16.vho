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

-- DATE "05/06/2022 17:57:03"

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
SIGNAL \U2|CLK_COUNT_400HZ[15]~52\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[16]~53_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[16]~54\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[17]~56_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[17]~57\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[18]~58_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[18]~59\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[19]~60_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[6]~20_combout\ : std_logic;
SIGNAL \U2|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~2_combout\ : std_logic;
SIGNAL \U2|CLK_COUNT_400HZ[6]~55_combout\ : std_logic;
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
SIGNAL \U2|LessThan0~3_combout\ : std_logic;
SIGNAL \U2|CLK_400HZ_Enable~0_combout\ : std_logic;
SIGNAL \U2|CLK_400HZ_Enable~q\ : std_logic;
SIGNAL \U2|state.RESET1~q\ : std_logic;
SIGNAL \U2|Selector26~0_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[0]~11_combout\ : std_logic;
SIGNAL \U2|CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \U2|CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \U2|Selector25~0_combout\ : std_logic;
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
SIGNAL \U2|state.HOLD~q\ : std_logic;
SIGNAL \U2|LCD_RS~0_combout\ : std_logic;
SIGNAL \U2|state.DROP_LCD_E~q\ : std_logic;
SIGNAL \U2|Equal2~0_combout\ : std_logic;
SIGNAL \U2|Selector16~0_combout\ : std_logic;
SIGNAL \U2|next_command.LINE2~q\ : std_logic;
SIGNAL \U2|state~30_combout\ : std_logic;
SIGNAL \U2|state.LINE2~q\ : std_logic;
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
SIGNAL \U2|Selector17~0_combout\ : std_logic;
SIGNAL \U2|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \U2|state~31_combout\ : std_logic;
SIGNAL \U2|state.RETURN_HOME~q\ : std_logic;
SIGNAL \U2|Selector5~0_combout\ : std_logic;
SIGNAL \U2|Selector15~3_combout\ : std_logic;
SIGNAL \U2|Selector15~2_combout\ : std_logic;
SIGNAL \U2|next_command.Print_String~q\ : std_logic;
SIGNAL \U2|state~28_combout\ : std_logic;
SIGNAL \U2|state.Print_String~q\ : std_logic;
SIGNAL \U2|Selector9~0_combout\ : std_logic;
SIGNAL \U2|Mux3~7_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[0]~6_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \U1|enableSwitch~0_combout\ : std_logic;
SIGNAL \U1|enableSwitch~q\ : std_logic;
SIGNAL \U1|Hex_Display_Data[28]~0_combout\ : std_logic;
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
SIGNAL \U1|PC[12]~38\ : std_logic;
SIGNAL \U1|PC[13]~39_combout\ : std_logic;
SIGNAL \U1|PC[13]~40\ : std_logic;
SIGNAL \U1|PC[14]~41_combout\ : std_logic;
SIGNAL \U1|Mux10~3_combout\ : std_logic;
SIGNAL \U1|Mux10~2_combout\ : std_logic;
SIGNAL \U1|Mux10~7_combout\ : std_logic;
SIGNAL \U1|PC[14]~42\ : std_logic;
SIGNAL \U1|PC[15]~43_combout\ : std_logic;
SIGNAL \U1|Mux1~2_combout\ : std_logic;
SIGNAL \U1|Mux1~6_combout\ : std_logic;
SIGNAL \U1|Mux1~4_combout\ : std_logic;
SIGNAL \U1|Mux1~3_combout\ : std_logic;
SIGNAL \U1|Mux1~5_combout\ : std_logic;
SIGNAL \U1|Mux1~7_combout\ : std_logic;
SIGNAL \U1|Mux1~8_combout\ : std_logic;
SIGNAL \U1|Mux9~0_combout\ : std_logic;
SIGNAL \U1|Mux0~4_combout\ : std_logic;
SIGNAL \U1|Mux0~1_combout\ : std_logic;
SIGNAL \U1|Mux0~2_combout\ : std_logic;
SIGNAL \U1|Mux0~3_combout\ : std_logic;
SIGNAL \U1|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Mux0~5_combout\ : std_logic;
SIGNAL \U1|Mux7~5_combout\ : std_logic;
SIGNAL \U1|Mux7~3_combout\ : std_logic;
SIGNAL \U1|Mux7~2_combout\ : std_logic;
SIGNAL \U1|Mux7~4_combout\ : std_logic;
SIGNAL \U1|Mux7~1_combout\ : std_logic;
SIGNAL \U1|Mux7~6_combout\ : std_logic;
SIGNAL \U1|Mux4~0_combout\ : std_logic;
SIGNAL \U1|Mux11~0_combout\ : std_logic;
SIGNAL \U1|Mux7~0_combout\ : std_logic;
SIGNAL \U1|Mux10~4_combout\ : std_logic;
SIGNAL \U1|Mux7~7_combout\ : std_logic;
SIGNAL \U1|Mux5~1_combout\ : std_logic;
SIGNAL \U1|Mux5~0_combout\ : std_logic;
SIGNAL \U1|Mux5~2_combout\ : std_logic;
SIGNAL \U1|Mux5~3_combout\ : std_logic;
SIGNAL \U1|Mux6~4_combout\ : std_logic;
SIGNAL \U1|Mux6~5_combout\ : std_logic;
SIGNAL \U1|Mux6~6_combout\ : std_logic;
SIGNAL \U1|Mux6~1_combout\ : std_logic;
SIGNAL \U1|Mux6~2_combout\ : std_logic;
SIGNAL \U1|Mux6~0_combout\ : std_logic;
SIGNAL \U1|Mux6~3_combout\ : std_logic;
SIGNAL \U1|Mux6~7_combout\ : std_logic;
SIGNAL \U1|Mux8~1_combout\ : std_logic;
SIGNAL \U1|Mux8~2_combout\ : std_logic;
SIGNAL \U1|Mux8~3_combout\ : std_logic;
SIGNAL \U1|Mux8~0_combout\ : std_logic;
SIGNAL \U1|Mux8~4_combout\ : std_logic;
SIGNAL \U1|Mux8~5_combout\ : std_logic;
SIGNAL \U1|Mux8~6_combout\ : std_logic;
SIGNAL \U1|Mux4~1_combout\ : std_logic;
SIGNAL \U1|Mux4~2_combout\ : std_logic;
SIGNAL \U1|Mux4~3_combout\ : std_logic;
SIGNAL \U1|Mux4~4_combout\ : std_logic;
SIGNAL \U1|Mux9~2_combout\ : std_logic;
SIGNAL \U1|Mux9~1_combout\ : std_logic;
SIGNAL \U1|Mux9~3_combout\ : std_logic;
SIGNAL \U1|Mux9~4_combout\ : std_logic;
SIGNAL \U1|Mux9~5_combout\ : std_logic;
SIGNAL \U1|Mux10~13_combout\ : std_logic;
SIGNAL \U1|Mux10~6_combout\ : std_logic;
SIGNAL \U1|Mux10~8_combout\ : std_logic;
SIGNAL \U1|Mux10~9_combout\ : std_logic;
SIGNAL \U1|Mux10~5_combout\ : std_logic;
SIGNAL \U1|Mux10~10_combout\ : std_logic;
SIGNAL \U1|Mux10~11_combout\ : std_logic;
SIGNAL \U1|Mux10~12_combout\ : std_logic;
SIGNAL \U1|Mux11~1_combout\ : std_logic;
SIGNAL \U1|Mux11~2_combout\ : std_logic;
SIGNAL \U1|Mux11~3_combout\ : std_logic;
SIGNAL \U1|Mux11~4_combout\ : std_logic;
SIGNAL \U1|Mux11~5_combout\ : std_logic;
SIGNAL \U1|Mux12~1_combout\ : std_logic;
SIGNAL \U1|Mux12~0_combout\ : std_logic;
SIGNAL \U1|Mux12~2_combout\ : std_logic;
SIGNAL \U1|Mux12~3_combout\ : std_logic;
SIGNAL \U1|Mux13~1_combout\ : std_logic;
SIGNAL \U1|Mux13~2_combout\ : std_logic;
SIGNAL \U1|Mux13~4_combout\ : std_logic;
SIGNAL \U1|Mux13~0_combout\ : std_logic;
SIGNAL \U1|Mux13~3_combout\ : std_logic;
SIGNAL \U1|Mux13~5_combout\ : std_logic;
SIGNAL \U1|Mux0~6_combout\ : std_logic;
SIGNAL \U1|Mux14~4_combout\ : std_logic;
SIGNAL \U1|Mux14~2_combout\ : std_logic;
SIGNAL \U1|Mux14~1_combout\ : std_logic;
SIGNAL \U1|Mux14~3_combout\ : std_logic;
SIGNAL \U1|Mux14~0_combout\ : std_logic;
SIGNAL \U1|Mux14~5_combout\ : std_logic;
SIGNAL \U1|Mux14~6_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|registers[0].dataOrInstruction[0]~feeder_combout\ : std_logic;
SIGNAL \U1|Decoder1~10_combout\ : std_logic;
SIGNAL \U1|Mux3~8_combout\ : std_logic;
SIGNAL \U1|Mux3~5_combout\ : std_logic;
SIGNAL \U1|Mux3~4_combout\ : std_logic;
SIGNAL \U1|Mux3~6_combout\ : std_logic;
SIGNAL \U1|Mux3~7_combout\ : std_logic;
SIGNAL \U1|Mux3~9_combout\ : std_logic;
SIGNAL \U1|Mux1~9_combout\ : std_logic;
SIGNAL \U1|Mux2~0_combout\ : std_logic;
SIGNAL \U1|Mux2~5_combout\ : std_logic;
SIGNAL \U1|Mux2~1_combout\ : std_logic;
SIGNAL \U1|Mux2~2_combout\ : std_logic;
SIGNAL \U1|Mux2~3_combout\ : std_logic;
SIGNAL \U1|Mux2~4_combout\ : std_logic;
SIGNAL \U1|Mux2~6_combout\ : std_logic;
SIGNAL \U1|Mux2~7_combout\ : std_logic;
SIGNAL \U1|Mux307~2_combout\ : std_logic;
SIGNAL \U1|Mux307~5_combout\ : std_logic;
SIGNAL \U1|Mux2~8_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[15]~0_combout\ : std_logic;
SIGNAL \U1|registers[0].dataOrInstruction[15]~0_combout\ : std_logic;
SIGNAL \U1|registers[0].dataOrInstruction[15]~1_combout\ : std_logic;
SIGNAL \U1|registers[15].dataOrInstruction[14]~4_combout\ : std_logic;
SIGNAL \U1|registers[15].dataOrInstruction[14]~2_combout\ : std_logic;
SIGNAL \U1|Decoder1~2_combout\ : std_logic;
SIGNAL \U1|registers[8].dataOrInstruction[14]~0_combout\ : std_logic;
SIGNAL \U1|registers[4].dataOrInstruction[0]~feeder_combout\ : std_logic;
SIGNAL \U1|Decoder1~6_combout\ : std_logic;
SIGNAL \U1|registers[4].dataOrInstruction[15]~0_combout\ : std_logic;
SIGNAL \U1|registers[4].dataOrInstruction[15]~1_combout\ : std_logic;
SIGNAL \U1|Decoder1~14_combout\ : std_logic;
SIGNAL \U1|registers[12].dataOrInstruction[14]~0_combout\ : std_logic;
SIGNAL \U1|Mux46~4_combout\ : std_logic;
SIGNAL \U1|Mux46~5_combout\ : std_logic;
SIGNAL \U1|registers[2].dataOrInstruction[0]~feeder_combout\ : std_logic;
SIGNAL \U1|Decoder1~8_combout\ : std_logic;
SIGNAL \U1|registers[2].dataOrInstruction[15]~0_combout\ : std_logic;
SIGNAL \U1|registers[2].dataOrInstruction[15]~1_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[0]~feeder_combout\ : std_logic;
SIGNAL \U1|Decoder1~5_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[15]~1_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[15]~2_combout\ : std_logic;
SIGNAL \U1|Decoder1~13_combout\ : std_logic;
SIGNAL \U1|registers[14].dataOrInstruction[14]~0_combout\ : std_logic;
SIGNAL \U1|Mux46~2_combout\ : std_logic;
SIGNAL \U1|Decoder1~0_combout\ : std_logic;
SIGNAL \U1|registers[10].dataOrInstruction[14]~0_combout\ : std_logic;
SIGNAL \U1|Mux46~3_combout\ : std_logic;
SIGNAL \U1|Mux46~6_combout\ : std_logic;
SIGNAL \U1|Decoder1~15_combout\ : std_logic;
SIGNAL \U1|registers[15].dataOrInstruction[14]~3_combout\ : std_logic;
SIGNAL \U1|Decoder1~7_combout\ : std_logic;
SIGNAL \U1|registers[7].dataOrInstruction[15]~0_combout\ : std_logic;
SIGNAL \U1|registers[7].dataOrInstruction[15]~1_combout\ : std_logic;
SIGNAL \U1|registers[3].dataOrInstruction[15]~0_combout\ : std_logic;
SIGNAL \U1|Decoder1~11_combout\ : std_logic;
SIGNAL \U1|registers[3].dataOrInstruction[15]~1_combout\ : std_logic;
SIGNAL \U1|Decoder1~3_combout\ : std_logic;
SIGNAL \U1|registers[11].dataOrInstruction[14]~0_combout\ : std_logic;
SIGNAL \U1|Mux46~7_combout\ : std_logic;
SIGNAL \U1|Mux46~8_combout\ : std_logic;
SIGNAL \U1|Decoder1~12_combout\ : std_logic;
SIGNAL \U1|registers[13].dataOrInstruction[14]~0_combout\ : std_logic;
SIGNAL \U1|registers[1].dataOrInstruction[0]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[1].dataOrInstruction[15]~0_combout\ : std_logic;
SIGNAL \U1|Decoder1~9_combout\ : std_logic;
SIGNAL \U1|registers[1].dataOrInstruction[15]~1_combout\ : std_logic;
SIGNAL \U1|Decoder1~1_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[14]~0_combout\ : std_logic;
SIGNAL \U1|Mux46~0_combout\ : std_logic;
SIGNAL \U1|Mux46~1_combout\ : std_logic;
SIGNAL \U1|Mux46~9_combout\ : std_logic;
SIGNAL \U1|Add2~0_combout\ : std_logic;
SIGNAL \U1|Mux322~2_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|Mux322~4_combout\ : std_logic;
SIGNAL \U1|registers[5].dataOrInstruction[0]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[5].dataOrInstruction[15]~0_combout\ : std_logic;
SIGNAL \U1|Decoder1~4_combout\ : std_logic;
SIGNAL \U1|registers[5].dataOrInstruction[15]~1_combout\ : std_logic;
SIGNAL \U1|Mux30~0_combout\ : std_logic;
SIGNAL \U1|Mux30~1_combout\ : std_logic;
SIGNAL \U1|Mux30~2_combout\ : std_logic;
SIGNAL \U1|Mux30~3_combout\ : std_logic;
SIGNAL \U1|Mux30~4_combout\ : std_logic;
SIGNAL \U1|Add1~1\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|Mux45~7_combout\ : std_logic;
SIGNAL \U1|Mux45~8_combout\ : std_logic;
SIGNAL \U1|Mux45~0_combout\ : std_logic;
SIGNAL \U1|Mux45~1_combout\ : std_logic;
SIGNAL \U1|Mux45~4_combout\ : std_logic;
SIGNAL \U1|Mux45~5_combout\ : std_logic;
SIGNAL \U1|registers[10].dataOrInstruction[1]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux45~2_combout\ : std_logic;
SIGNAL \U1|Mux45~3_combout\ : std_logic;
SIGNAL \U1|Mux45~6_combout\ : std_logic;
SIGNAL \U1|Mux45~9_combout\ : std_logic;
SIGNAL \U1|Add2~1\ : std_logic;
SIGNAL \U1|Add2~2_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Mux321~2_combout\ : std_logic;
SIGNAL \U1|Mux321~4_combout\ : std_logic;
SIGNAL \U1|Mux29~2_combout\ : std_logic;
SIGNAL \U1|Mux29~3_combout\ : std_logic;
SIGNAL \U1|Mux29~0_combout\ : std_logic;
SIGNAL \U1|Mux29~1_combout\ : std_logic;
SIGNAL \U1|Mux29~4_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Mux44~7_combout\ : std_logic;
SIGNAL \U1|Mux44~8_combout\ : std_logic;
SIGNAL \U1|Mux44~0_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[2]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux44~1_combout\ : std_logic;
SIGNAL \U1|Mux44~4_combout\ : std_logic;
SIGNAL \U1|Mux44~5_combout\ : std_logic;
SIGNAL \U1|registers[1].dataOrInstruction[2]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[5].dataOrInstruction[2]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux44~2_combout\ : std_logic;
SIGNAL \U1|Mux44~3_combout\ : std_logic;
SIGNAL \U1|Mux44~6_combout\ : std_logic;
SIGNAL \U1|Mux44~9_combout\ : std_logic;
SIGNAL \U1|Add2~3\ : std_logic;
SIGNAL \U1|Add2~4_combout\ : std_logic;
SIGNAL \U1|Mux320~2_combout\ : std_logic;
SIGNAL \U1|Add1~3\ : std_logic;
SIGNAL \U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|Mux320~4_combout\ : std_logic;
SIGNAL \U1|Mux28~2_combout\ : std_logic;
SIGNAL \U1|Mux28~3_combout\ : std_logic;
SIGNAL \U1|Mux28~0_combout\ : std_logic;
SIGNAL \U1|Mux28~1_combout\ : std_logic;
SIGNAL \U1|Mux28~4_combout\ : std_logic;
SIGNAL \U1|Add1~5\ : std_logic;
SIGNAL \U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|Mux43~4_combout\ : std_logic;
SIGNAL \U1|Mux43~5_combout\ : std_logic;
SIGNAL \U1|Mux43~2_combout\ : std_logic;
SIGNAL \U1|Mux43~3_combout\ : std_logic;
SIGNAL \U1|Mux43~6_combout\ : std_logic;
SIGNAL \U1|registers[11].dataOrInstruction[3]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[3]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux43~0_combout\ : std_logic;
SIGNAL \U1|Mux43~1_combout\ : std_logic;
SIGNAL \U1|registers[14].dataOrInstruction[3]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux43~7_combout\ : std_logic;
SIGNAL \U1|Mux43~8_combout\ : std_logic;
SIGNAL \U1|Mux43~9_combout\ : std_logic;
SIGNAL \U1|Add2~5\ : std_logic;
SIGNAL \U1|Add2~6_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Mux319~2_combout\ : std_logic;
SIGNAL \U1|Mux319~4_combout\ : std_logic;
SIGNAL \U1|Mux27~0_combout\ : std_logic;
SIGNAL \U1|Mux27~1_combout\ : std_logic;
SIGNAL \U1|Mux27~2_combout\ : std_logic;
SIGNAL \U1|Mux27~3_combout\ : std_logic;
SIGNAL \U1|Mux27~4_combout\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~8_combout\ : std_logic;
SIGNAL \U1|Mux42~7_combout\ : std_logic;
SIGNAL \U1|Mux42~8_combout\ : std_logic;
SIGNAL \U1|registers[0].dataOrInstruction[4]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux42~4_combout\ : std_logic;
SIGNAL \U1|Mux42~5_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[4]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux42~2_combout\ : std_logic;
SIGNAL \U1|Mux42~3_combout\ : std_logic;
SIGNAL \U1|Mux42~6_combout\ : std_logic;
SIGNAL \U1|Mux42~0_combout\ : std_logic;
SIGNAL \U1|Mux42~1_combout\ : std_logic;
SIGNAL \U1|Mux42~9_combout\ : std_logic;
SIGNAL \U1|Add2~7\ : std_logic;
SIGNAL \U1|Add2~8_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Mux318~2_combout\ : std_logic;
SIGNAL \U1|Mux318~4_combout\ : std_logic;
SIGNAL \U1|Mux26~2_combout\ : std_logic;
SIGNAL \U1|Mux26~3_combout\ : std_logic;
SIGNAL \U1|Mux26~0_combout\ : std_logic;
SIGNAL \U1|Mux26~1_combout\ : std_logic;
SIGNAL \U1|Mux26~4_combout\ : std_logic;
SIGNAL \U1|Add1~9\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|registers[13].dataOrInstruction[5]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux41~7_combout\ : std_logic;
SIGNAL \U1|Mux41~8_combout\ : std_logic;
SIGNAL \U1|registers[10].dataOrInstruction[5]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux41~2_combout\ : std_logic;
SIGNAL \U1|Mux41~3_combout\ : std_logic;
SIGNAL \U1|Mux41~4_combout\ : std_logic;
SIGNAL \U1|Mux41~5_combout\ : std_logic;
SIGNAL \U1|Mux41~6_combout\ : std_logic;
SIGNAL \U1|Mux41~0_combout\ : std_logic;
SIGNAL \U1|Mux41~1_combout\ : std_logic;
SIGNAL \U1|Mux41~9_combout\ : std_logic;
SIGNAL \U1|Add2~9\ : std_logic;
SIGNAL \U1|Add2~10_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Mux317~2_combout\ : std_logic;
SIGNAL \U1|Mux317~4_combout\ : std_logic;
SIGNAL \U1|Mux25~2_combout\ : std_logic;
SIGNAL \U1|Mux25~3_combout\ : std_logic;
SIGNAL \U1|Mux25~0_combout\ : std_logic;
SIGNAL \U1|Mux25~1_combout\ : std_logic;
SIGNAL \U1|Mux25~4_combout\ : std_logic;
SIGNAL \U1|Add1~11\ : std_logic;
SIGNAL \U1|Add1~12_combout\ : std_logic;
SIGNAL \U1|Mux40~0_combout\ : std_logic;
SIGNAL \U1|Mux40~1_combout\ : std_logic;
SIGNAL \U1|Mux40~7_combout\ : std_logic;
SIGNAL \U1|Mux40~8_combout\ : std_logic;
SIGNAL \U1|registers[4].dataOrInstruction[6]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[0].dataOrInstruction[6]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux40~4_combout\ : std_logic;
SIGNAL \U1|Mux40~5_combout\ : std_logic;
SIGNAL \U1|Mux40~2_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[6]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux40~3_combout\ : std_logic;
SIGNAL \U1|Mux40~6_combout\ : std_logic;
SIGNAL \U1|Mux40~9_combout\ : std_logic;
SIGNAL \U1|Add2~11\ : std_logic;
SIGNAL \U1|Add2~12_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Mux316~4_combout\ : std_logic;
SIGNAL \U1|Mux316~6_combout\ : std_logic;
SIGNAL \U1|Mux24~0_combout\ : std_logic;
SIGNAL \U1|Mux24~1_combout\ : std_logic;
SIGNAL \U1|Mux24~2_combout\ : std_logic;
SIGNAL \U1|Mux24~3_combout\ : std_logic;
SIGNAL \U1|Mux24~4_combout\ : std_logic;
SIGNAL \U1|Add1~13\ : std_logic;
SIGNAL \U1|Add1~14_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|registers[4].dataOrInstruction[7]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux39~2_combout\ : std_logic;
SIGNAL \U1|Mux39~3_combout\ : std_logic;
SIGNAL \U1|Mux39~4_combout\ : std_logic;
SIGNAL \U1|Mux39~5_combout\ : std_logic;
SIGNAL \U1|Mux39~6_combout\ : std_logic;
SIGNAL \U1|registers[11].dataOrInstruction[7]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[7]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux39~0_combout\ : std_logic;
SIGNAL \U1|Mux39~1_combout\ : std_logic;
SIGNAL \U1|registers[14].dataOrInstruction[7]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux39~7_combout\ : std_logic;
SIGNAL \U1|Mux39~8_combout\ : std_logic;
SIGNAL \U1|Mux39~9_combout\ : std_logic;
SIGNAL \U1|Add2~13\ : std_logic;
SIGNAL \U1|Add2~14_combout\ : std_logic;
SIGNAL \U1|Mux315~2_combout\ : std_logic;
SIGNAL \U1|Mux315~4_combout\ : std_logic;
SIGNAL \U1|Mux23~2_combout\ : std_logic;
SIGNAL \U1|Mux23~3_combout\ : std_logic;
SIGNAL \U1|Mux23~0_combout\ : std_logic;
SIGNAL \U1|Mux23~1_combout\ : std_logic;
SIGNAL \U1|Mux23~4_combout\ : std_logic;
SIGNAL \U1|Add1~15\ : std_logic;
SIGNAL \U1|Add1~16_combout\ : std_logic;
SIGNAL \U1|Mux314~4_combout\ : std_logic;
SIGNAL \U1|Mux22~0_combout\ : std_logic;
SIGNAL \U1|Mux22~1_combout\ : std_logic;
SIGNAL \U1|Mux22~2_combout\ : std_logic;
SIGNAL \U1|Mux22~3_combout\ : std_logic;
SIGNAL \U1|Mux22~4_combout\ : std_logic;
SIGNAL \U1|registers[10].dataOrInstruction[8]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux38~2_combout\ : std_logic;
SIGNAL \U1|Mux38~3_combout\ : std_logic;
SIGNAL \U1|Mux38~4_combout\ : std_logic;
SIGNAL \U1|Mux38~5_combout\ : std_logic;
SIGNAL \U1|Mux38~6_combout\ : std_logic;
SIGNAL \U1|Mux38~0_combout\ : std_logic;
SIGNAL \U1|Mux38~1_combout\ : std_logic;
SIGNAL \U1|Mux38~7_combout\ : std_logic;
SIGNAL \U1|Mux38~8_combout\ : std_logic;
SIGNAL \U1|Mux38~9_combout\ : std_logic;
SIGNAL \U1|Add2~15\ : std_logic;
SIGNAL \U1|Add2~16_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Mux314~2_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[17]~1_combout\ : std_logic;
SIGNAL \U1|Mux316~2_combout\ : std_logic;
SIGNAL \U1|Mux316~3_combout\ : std_logic;
SIGNAL \U1|Mux314~3_combout\ : std_logic;
SIGNAL \U2|Mux6~11_combout\ : std_logic;
SIGNAL \U1|registers[7].dataOrInstruction[12]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux34~7_combout\ : std_logic;
SIGNAL \U1|Mux34~8_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[12]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux34~2_combout\ : std_logic;
SIGNAL \U1|Mux34~3_combout\ : std_logic;
SIGNAL \U1|registers[8].dataOrInstruction[12]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux34~4_combout\ : std_logic;
SIGNAL \U1|Mux34~5_combout\ : std_logic;
SIGNAL \U1|Mux34~6_combout\ : std_logic;
SIGNAL \U1|Mux34~0_combout\ : std_logic;
SIGNAL \U1|Mux34~1_combout\ : std_logic;
SIGNAL \U1|Mux34~9_combout\ : std_logic;
SIGNAL \U1|Mux19~2_combout\ : std_logic;
SIGNAL \U1|Mux19~3_combout\ : std_logic;
SIGNAL \U1|Mux19~0_combout\ : std_logic;
SIGNAL \U1|Mux19~1_combout\ : std_logic;
SIGNAL \U1|Mux19~4_combout\ : std_logic;
SIGNAL \U1|Mux37~0_combout\ : std_logic;
SIGNAL \U1|Mux37~1_combout\ : std_logic;
SIGNAL \U1|registers[13].dataOrInstruction[9]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux37~7_combout\ : std_logic;
SIGNAL \U1|Mux37~8_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[9]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[8].dataOrInstruction[9]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[10].dataOrInstruction[9]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux37~2_combout\ : std_logic;
SIGNAL \U1|Mux37~3_combout\ : std_logic;
SIGNAL \U1|Mux37~4_combout\ : std_logic;
SIGNAL \U1|Mux37~5_combout\ : std_logic;
SIGNAL \U1|Mux37~6_combout\ : std_logic;
SIGNAL \U1|Mux37~9_combout\ : std_logic;
SIGNAL \U1|Add2~17\ : std_logic;
SIGNAL \U1|Add2~18_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Mux313~2_combout\ : std_logic;
SIGNAL \U1|Add1~17\ : std_logic;
SIGNAL \U1|Add1~18_combout\ : std_logic;
SIGNAL \U1|Mux313~4_combout\ : std_logic;
SIGNAL \U1|Mux21~0_combout\ : std_logic;
SIGNAL \U1|Mux21~1_combout\ : std_logic;
SIGNAL \U1|Mux21~2_combout\ : std_logic;
SIGNAL \U1|Mux21~3_combout\ : std_logic;
SIGNAL \U1|Mux21~4_combout\ : std_logic;
SIGNAL \U1|Add1~19\ : std_logic;
SIGNAL \U1|Add1~20_combout\ : std_logic;
SIGNAL \U1|Mux36~4_combout\ : std_logic;
SIGNAL \U1|Mux36~5_combout\ : std_logic;
SIGNAL \U1|Mux36~2_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[10]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux36~3_combout\ : std_logic;
SIGNAL \U1|Mux36~6_combout\ : std_logic;
SIGNAL \U1|Mux36~7_combout\ : std_logic;
SIGNAL \U1|Mux36~8_combout\ : std_logic;
SIGNAL \U1|Mux36~0_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[10]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux36~1_combout\ : std_logic;
SIGNAL \U1|Mux36~9_combout\ : std_logic;
SIGNAL \U1|Add2~19\ : std_logic;
SIGNAL \U1|Add2~20_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Mux312~2_combout\ : std_logic;
SIGNAL \U1|Mux312~4_combout\ : std_logic;
SIGNAL \U1|Mux20~2_combout\ : std_logic;
SIGNAL \U1|Mux20~3_combout\ : std_logic;
SIGNAL \U1|Mux20~0_combout\ : std_logic;
SIGNAL \U1|Mux20~1_combout\ : std_logic;
SIGNAL \U1|Mux20~4_combout\ : std_logic;
SIGNAL \U1|Add1~21\ : std_logic;
SIGNAL \U1|Add1~22_combout\ : std_logic;
SIGNAL \U1|Add2~21\ : std_logic;
SIGNAL \U1|Add2~22_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|Mux311~2_combout\ : std_logic;
SIGNAL \U1|Mux311~4_combout\ : std_logic;
SIGNAL \U1|Mux35~2_combout\ : std_logic;
SIGNAL \U1|Mux35~3_combout\ : std_logic;
SIGNAL \U1|Mux35~4_combout\ : std_logic;
SIGNAL \U1|Mux35~5_combout\ : std_logic;
SIGNAL \U1|Mux35~6_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[11]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux35~0_combout\ : std_logic;
SIGNAL \U1|Mux35~1_combout\ : std_logic;
SIGNAL \U1|registers[14].dataOrInstruction[11]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux35~7_combout\ : std_logic;
SIGNAL \U1|Mux35~8_combout\ : std_logic;
SIGNAL \U1|Mux35~9_combout\ : std_logic;
SIGNAL \U1|Add2~23\ : std_logic;
SIGNAL \U1|Add2~24_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|Mux310~2_combout\ : std_logic;
SIGNAL \U1|Mux310~4_combout\ : std_logic;
SIGNAL \U1|Mux18~2_combout\ : std_logic;
SIGNAL \U1|Mux18~3_combout\ : std_logic;
SIGNAL \U1|Mux18~0_combout\ : std_logic;
SIGNAL \U1|Mux18~1_combout\ : std_logic;
SIGNAL \U1|Mux18~4_combout\ : std_logic;
SIGNAL \U1|Add1~23\ : std_logic;
SIGNAL \U1|Add1~24_combout\ : std_logic;
SIGNAL \U1|Mux310~3_combout\ : std_logic;
SIGNAL \U2|Mux6~10_combout\ : std_logic;
SIGNAL \U2|Mux6~1_combout\ : std_logic;
SIGNAL \U2|Mux6~2_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[4]~7_combout\ : std_logic;
SIGNAL \U2|Mux6~3_combout\ : std_logic;
SIGNAL \U1|Mux50~0_combout\ : std_logic;
SIGNAL \U1|registers[11].dataOrInstruction[15]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[15]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux31~0_combout\ : std_logic;
SIGNAL \U1|Mux31~1_combout\ : std_logic;
SIGNAL \U1|registers[14].dataOrInstruction[15]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux31~7_combout\ : std_logic;
SIGNAL \U1|Mux31~8_combout\ : std_logic;
SIGNAL \U1|Mux15~2_combout\ : std_logic;
SIGNAL \U1|Mux15~3_combout\ : std_logic;
SIGNAL \U1|Mux15~0_combout\ : std_logic;
SIGNAL \U1|Mux15~1_combout\ : std_logic;
SIGNAL \U1|Mux15~4_combout\ : std_logic;
SIGNAL \U1|Mux32~2_combout\ : std_logic;
SIGNAL \U1|Mux32~3_combout\ : std_logic;
SIGNAL \U1|registers[4].dataOrInstruction[14]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux32~4_combout\ : std_logic;
SIGNAL \U1|Mux32~5_combout\ : std_logic;
SIGNAL \U1|Mux32~6_combout\ : std_logic;
SIGNAL \U1|Mux32~7_combout\ : std_logic;
SIGNAL \U1|Mux32~8_combout\ : std_logic;
SIGNAL \U1|registers[6].dataOrInstruction[14]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux32~0_combout\ : std_logic;
SIGNAL \U1|Mux32~1_combout\ : std_logic;
SIGNAL \U1|Mux32~9_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|registers[13].dataOrInstruction[13]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux33~7_combout\ : std_logic;
SIGNAL \U1|Mux33~8_combout\ : std_logic;
SIGNAL \U1|Mux33~4_combout\ : std_logic;
SIGNAL \U1|Mux33~5_combout\ : std_logic;
SIGNAL \U1|registers[10].dataOrInstruction[13]~feeder_combout\ : std_logic;
SIGNAL \U1|registers[8].dataOrInstruction[13]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux33~2_combout\ : std_logic;
SIGNAL \U1|registers[9].dataOrInstruction[13]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux33~3_combout\ : std_logic;
SIGNAL \U1|Mux33~6_combout\ : std_logic;
SIGNAL \U1|Mux33~0_combout\ : std_logic;
SIGNAL \U1|Mux33~1_combout\ : std_logic;
SIGNAL \U1|Mux33~9_combout\ : std_logic;
SIGNAL \U1|Add2~25\ : std_logic;
SIGNAL \U1|Add2~26_combout\ : std_logic;
SIGNAL \U1|Mux309~2_combout\ : std_logic;
SIGNAL \U1|Add1~25\ : std_logic;
SIGNAL \U1|Add1~26_combout\ : std_logic;
SIGNAL \U1|Mux309~4_combout\ : std_logic;
SIGNAL \U1|Mux17~2_combout\ : std_logic;
SIGNAL \U1|Mux17~3_combout\ : std_logic;
SIGNAL \U1|Mux17~0_combout\ : std_logic;
SIGNAL \U1|Mux17~1_combout\ : std_logic;
SIGNAL \U1|Mux17~4_combout\ : std_logic;
SIGNAL \U1|Add2~27\ : std_logic;
SIGNAL \U1|Add2~28_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|Mux308~2_combout\ : std_logic;
SIGNAL \U1|Add1~27\ : std_logic;
SIGNAL \U1|Add1~28_combout\ : std_logic;
SIGNAL \U1|Mux308~4_combout\ : std_logic;
SIGNAL \U1|Mux16~0_combout\ : std_logic;
SIGNAL \U1|Mux16~1_combout\ : std_logic;
SIGNAL \U1|Mux16~2_combout\ : std_logic;
SIGNAL \U1|Mux16~3_combout\ : std_logic;
SIGNAL \U1|Mux16~4_combout\ : std_logic;
SIGNAL \U1|Add1~29\ : std_logic;
SIGNAL \U1|Add1~30_combout\ : std_logic;
SIGNAL \U1|Mux291~3_combout\ : std_logic;
SIGNAL \U1|Mux31~4_combout\ : std_logic;
SIGNAL \U1|Mux31~5_combout\ : std_logic;
SIGNAL \U1|Mux31~2_combout\ : std_logic;
SIGNAL \U1|Mux31~3_combout\ : std_logic;
SIGNAL \U1|Mux31~6_combout\ : std_logic;
SIGNAL \U1|Mux31~9_combout\ : std_logic;
SIGNAL \U1|Add2~29\ : std_logic;
SIGNAL \U1|Add2~30_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|Mux291~2_combout\ : std_logic;
SIGNAL \U1|fl_negative~0_combout\ : std_logic;
SIGNAL \U1|fl_negative~3_combout\ : std_logic;
SIGNAL \U1|Mux307~7_combout\ : std_logic;
SIGNAL \U1|fl_negative~1_combout\ : std_logic;
SIGNAL \U1|fl_negative~2_combout\ : std_logic;
SIGNAL \U1|fl_negative~4_combout\ : std_logic;
SIGNAL \U1|fl_negative~5_combout\ : std_logic;
SIGNAL \U1|fl_negative~6_combout\ : std_logic;
SIGNAL \U1|fl_negative~q\ : std_logic;
SIGNAL \U1|Hex_Display_Data[60]~12_combout\ : std_logic;
SIGNAL \U2|Mux6~7_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[8]~11_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[12]~8_combout\ : std_logic;
SIGNAL \U1|Mux322~3_combout\ : std_logic;
SIGNAL \U1|Mux318~3_combout\ : std_logic;
SIGNAL \U2|Mux6~4_combout\ : std_logic;
SIGNAL \U2|Mux6~5_combout\ : std_logic;
SIGNAL \U2|Mux6~6_combout\ : std_logic;
SIGNAL \U2|Mux6~8_combout\ : std_logic;
SIGNAL \U2|Mux6~9_combout\ : std_logic;
SIGNAL \U2|Mux6~12_combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux1~1_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Mux312~3_combout\ : std_logic;
SIGNAL \U2|Mux4~7_combout\ : std_logic;
SIGNAL \U1|Mux308~3_combout\ : std_logic;
SIGNAL \U2|Mux4~8_combout\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U1|Mux316~5_combout\ : std_logic;
SIGNAL \U1|Mux320~3_combout\ : std_logic;
SIGNAL \U2|Mux4~1_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[10]~4_combout\ : std_logic;
SIGNAL \U2|Mux4~2_combout\ : std_logic;
SIGNAL \U2|Mux4~3_combout\ : std_logic;
SIGNAL \U1|Equal2~2_combout\ : std_logic;
SIGNAL \U1|Equal2~0_combout\ : std_logic;
SIGNAL \U1|Equal2~3_combout\ : std_logic;
SIGNAL \U1|Equal2~1_combout\ : std_logic;
SIGNAL \U1|Equal2~4_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|fl_zero~0_combout\ : std_logic;
SIGNAL \U1|Equal1~1_combout\ : std_logic;
SIGNAL \U1|Equal1~3_combout\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|Equal1~2_combout\ : std_logic;
SIGNAL \U1|Equal1~4_combout\ : std_logic;
SIGNAL \U1|fl_zero~1_combout\ : std_logic;
SIGNAL \U1|fl_zero~q\ : std_logic;
SIGNAL \U2|Mux4~4_combout\ : std_logic;
SIGNAL \U2|Mux4~5_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[2]~2_combout\ : std_logic;
SIGNAL \U2|Mux4~6_combout\ : std_logic;
SIGNAL \U2|Mux4~9_combout\ : std_logic;
SIGNAL \U1|Mux313~3_combout\ : std_logic;
SIGNAL \U1|Mux309~3_combout\ : std_logic;
SIGNAL \U2|Mux5~2_combout\ : std_logic;
SIGNAL \U2|Mux5~3_combout\ : std_logic;
SIGNAL \U2|Mux5~4_combout\ : std_logic;
SIGNAL \U1|Mux317~3_combout\ : std_logic;
SIGNAL \U1|Mux321~3_combout\ : std_logic;
SIGNAL \U2|Mux5~5_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[13]~feeder_combout\ : std_logic;
SIGNAL \U2|Mux5~6_combout\ : std_logic;
SIGNAL \U2|Mux5~7_combout\ : std_logic;
SIGNAL \U1|p_updateFlagsForAddAndSubCommon~4_combout\ : std_logic;
SIGNAL \U1|p_updateFlagsForAddAndSubCommon~5_combout\ : std_logic;
SIGNAL \U1|fl_signedCarry~0_combout\ : std_logic;
SIGNAL \U1|p_updateFlagsForAddAndSubCommon~6_combout\ : std_logic;
SIGNAL \U1|fl_signedCarry~q\ : std_logic;
SIGNAL \U2|Mux5~8_combout\ : std_logic;
SIGNAL \U2|Mux5~9_combout\ : std_logic;
SIGNAL \U2|Mux5~10_combout\ : std_logic;
SIGNAL \U2|Mux5~11_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_cout\ : std_logic;
SIGNAL \U1|LessThan0~3_cout\ : std_logic;
SIGNAL \U1|LessThan0~5_cout\ : std_logic;
SIGNAL \U1|LessThan0~7_cout\ : std_logic;
SIGNAL \U1|LessThan0~9_cout\ : std_logic;
SIGNAL \U1|LessThan0~11_cout\ : std_logic;
SIGNAL \U1|LessThan0~13_cout\ : std_logic;
SIGNAL \U1|LessThan0~14_combout\ : std_logic;
SIGNAL \U1|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|LessThan2~1_combout\ : std_logic;
SIGNAL \U1|LessThan2~2_combout\ : std_logic;
SIGNAL \U1|v_res~0_combout\ : std_logic;
SIGNAL \U1|v_res~1_combout\ : std_logic;
SIGNAL \U1|v_res~2_combout\ : std_logic;
SIGNAL \U1|v_res~3_combout\ : std_logic;
SIGNAL \U1|v_res~4_combout\ : std_logic;
SIGNAL \U1|v_res~5_combout\ : std_logic;
SIGNAL \U1|v_res~6_combout\ : std_logic;
SIGNAL \U1|v_res~7_combout\ : std_logic;
SIGNAL \U1|LessThan1~1_cout\ : std_logic;
SIGNAL \U1|LessThan1~3_cout\ : std_logic;
SIGNAL \U1|LessThan1~5_cout\ : std_logic;
SIGNAL \U1|LessThan1~7_cout\ : std_logic;
SIGNAL \U1|LessThan1~9_cout\ : std_logic;
SIGNAL \U1|LessThan1~11_cout\ : std_logic;
SIGNAL \U1|LessThan1~13_cout\ : std_logic;
SIGNAL \U1|LessThan1~15_cout\ : std_logic;
SIGNAL \U1|LessThan1~17_cout\ : std_logic;
SIGNAL \U1|LessThan1~19_cout\ : std_logic;
SIGNAL \U1|LessThan1~21_cout\ : std_logic;
SIGNAL \U1|LessThan1~23_cout\ : std_logic;
SIGNAL \U1|LessThan1~25_cout\ : std_logic;
SIGNAL \U1|LessThan1~27_cout\ : std_logic;
SIGNAL \U1|LessThan1~29_cout\ : std_logic;
SIGNAL \U1|LessThan1~30_combout\ : std_logic;
SIGNAL \U1|LessThan4~1_cout\ : std_logic;
SIGNAL \U1|LessThan4~3_cout\ : std_logic;
SIGNAL \U1|LessThan4~5_cout\ : std_logic;
SIGNAL \U1|LessThan4~7_cout\ : std_logic;
SIGNAL \U1|LessThan4~9_cout\ : std_logic;
SIGNAL \U1|LessThan4~11_cout\ : std_logic;
SIGNAL \U1|LessThan4~13_cout\ : std_logic;
SIGNAL \U1|LessThan4~15_cout\ : std_logic;
SIGNAL \U1|LessThan4~17_cout\ : std_logic;
SIGNAL \U1|LessThan4~19_cout\ : std_logic;
SIGNAL \U1|LessThan4~21_cout\ : std_logic;
SIGNAL \U1|LessThan4~23_cout\ : std_logic;
SIGNAL \U1|LessThan4~25_cout\ : std_logic;
SIGNAL \U1|LessThan4~27_cout\ : std_logic;
SIGNAL \U1|LessThan4~29_cout\ : std_logic;
SIGNAL \U1|LessThan4~30_combout\ : std_logic;
SIGNAL \U1|v_res~8_combout\ : std_logic;
SIGNAL \U1|v_res~9_combout\ : std_logic;
SIGNAL \U1|v_res~10_combout\ : std_logic;
SIGNAL \U1|v_res~11_combout\ : std_logic;
SIGNAL \U1|v_res~12_combout\ : std_logic;
SIGNAL \U1|v_res~13_combout\ : std_logic;
SIGNAL \U1|v_res~14_combout\ : std_logic;
SIGNAL \U1|v_res~15_combout\ : std_logic;
SIGNAL \U1|v_res~16_combout\ : std_logic;
SIGNAL \U1|v_res~17_combout\ : std_logic;
SIGNAL \U1|v_res~18_combout\ : std_logic;
SIGNAL \U1|v_res~19_combout\ : std_logic;
SIGNAL \U1|v_res~20_combout\ : std_logic;
SIGNAL \U1|v_res~21_combout\ : std_logic;
SIGNAL \U1|v_res~22_combout\ : std_logic;
SIGNAL \U1|v_res~23_combout\ : std_logic;
SIGNAL \U1|LessThan5~1_cout\ : std_logic;
SIGNAL \U1|LessThan5~3_cout\ : std_logic;
SIGNAL \U1|LessThan5~5_cout\ : std_logic;
SIGNAL \U1|LessThan5~7_cout\ : std_logic;
SIGNAL \U1|LessThan5~9_cout\ : std_logic;
SIGNAL \U1|LessThan5~11_cout\ : std_logic;
SIGNAL \U1|LessThan5~13_cout\ : std_logic;
SIGNAL \U1|LessThan5~15_cout\ : std_logic;
SIGNAL \U1|LessThan5~17_cout\ : std_logic;
SIGNAL \U1|LessThan5~19_cout\ : std_logic;
SIGNAL \U1|LessThan5~21_cout\ : std_logic;
SIGNAL \U1|LessThan5~23_cout\ : std_logic;
SIGNAL \U1|LessThan5~25_cout\ : std_logic;
SIGNAL \U1|LessThan5~27_cout\ : std_logic;
SIGNAL \U1|LessThan5~29_cout\ : std_logic;
SIGNAL \U1|LessThan5~30_combout\ : std_logic;
SIGNAL \U1|fl_carry~0_combout\ : std_logic;
SIGNAL \U1|LessThan2~4_cout\ : std_logic;
SIGNAL \U1|LessThan2~6_cout\ : std_logic;
SIGNAL \U1|LessThan2~8_cout\ : std_logic;
SIGNAL \U1|LessThan2~10_cout\ : std_logic;
SIGNAL \U1|LessThan2~12_cout\ : std_logic;
SIGNAL \U1|LessThan2~14_cout\ : std_logic;
SIGNAL \U1|LessThan2~16_cout\ : std_logic;
SIGNAL \U1|LessThan2~17_combout\ : std_logic;
SIGNAL \U1|v_res~24_combout\ : std_logic;
SIGNAL \U1|v_res~25_combout\ : std_logic;
SIGNAL \U1|v_res~26_combout\ : std_logic;
SIGNAL \U1|v_res~27_combout\ : std_logic;
SIGNAL \U1|v_res~28_combout\ : std_logic;
SIGNAL \U1|v_res~29_combout\ : std_logic;
SIGNAL \U1|v_res~30_combout\ : std_logic;
SIGNAL \U1|v_res~31_combout\ : std_logic;
SIGNAL \U1|LessThan3~1_cout\ : std_logic;
SIGNAL \U1|LessThan3~3_cout\ : std_logic;
SIGNAL \U1|LessThan3~5_cout\ : std_logic;
SIGNAL \U1|LessThan3~7_cout\ : std_logic;
SIGNAL \U1|LessThan3~9_cout\ : std_logic;
SIGNAL \U1|LessThan3~11_cout\ : std_logic;
SIGNAL \U1|LessThan3~13_cout\ : std_logic;
SIGNAL \U1|LessThan3~15_cout\ : std_logic;
SIGNAL \U1|LessThan3~17_cout\ : std_logic;
SIGNAL \U1|LessThan3~19_cout\ : std_logic;
SIGNAL \U1|LessThan3~21_cout\ : std_logic;
SIGNAL \U1|LessThan3~22_combout\ : std_logic;
SIGNAL \U1|LessThan3~24_combout\ : std_logic;
SIGNAL \U1|fl_carry~q\ : std_logic;
SIGNAL \U2|Mux3~4_combout\ : std_logic;
SIGNAL \U1|Mux315~3_combout\ : std_logic;
SIGNAL \U1|Mux319~3_combout\ : std_logic;
SIGNAL \U2|Mux3~1_combout\ : std_logic;
SIGNAL \U1|Hex_Display_Data[15]~feeder_combout\ : std_logic;
SIGNAL \U2|Mux3~2_combout\ : std_logic;
SIGNAL \U2|Mux3~3_combout\ : std_logic;
SIGNAL \U2|Mux3~5_combout\ : std_logic;
SIGNAL \U2|Mux3~6_combout\ : std_logic;
SIGNAL \U1|Mux311~3_combout\ : std_logic;
SIGNAL \U2|Mux3~9_combout\ : std_logic;
SIGNAL \U1|Mux307~4_combout\ : std_logic;
SIGNAL \U1|Mux307~3_combout\ : std_logic;
SIGNAL \U1|Mux307~6_combout\ : std_logic;
SIGNAL \U2|Mux3~8_combout\ : std_logic;
SIGNAL \U2|Mux3~10_combout\ : std_logic;
SIGNAL \U2|DATA_BUS_VALUE~0_combout\ : std_logic;
SIGNAL \U2|Selector9~1_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~feeder_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~0_combout\ : std_logic;
SIGNAL \U2|LCD_RW_INT~q\ : std_logic;
SIGNAL \U2|Selector8~0_combout\ : std_logic;
SIGNAL \U2|Selector8~1_combout\ : std_logic;
SIGNAL \U2|Selector7~1_combout\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U2|Selector7~0_combout\ : std_logic;
SIGNAL \U2|Selector7~2_combout\ : std_logic;
SIGNAL \U2|Selector6~1_combout\ : std_logic;
SIGNAL \U2|Selector6~2_combout\ : std_logic;
SIGNAL \U2|Add1~1_combout\ : std_logic;
SIGNAL \U2|Selector6~0_combout\ : std_logic;
SIGNAL \U2|Selector6~3_combout\ : std_logic;
SIGNAL \U2|Selector5~3_combout\ : std_logic;
SIGNAL \U2|Selector5~1_combout\ : std_logic;
SIGNAL \U2|Selector5~2_combout\ : std_logic;
SIGNAL \U2|Selector5~4_combout\ : std_logic;
SIGNAL \U2|Selector4~0_combout\ : std_logic;
SIGNAL \U2|Selector4~1_combout\ : std_logic;
SIGNAL \U2|Selector3~0_combout\ : std_logic;
SIGNAL \U2|Selector3~1_combout\ : std_logic;
SIGNAL \U2|Selector2~0_combout\ : std_logic;
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U2|LCD_E~0_combout\ : std_logic;
SIGNAL \U2|LCD_E~q\ : std_logic;
SIGNAL \U2|Selector1~0_combout\ : std_logic;
SIGNAL \U2|LCD_RS~q\ : std_logic;
SIGNAL \U1|registers[10].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U2|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|registers[9].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U2|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|registers[8].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|Hex_Display_Data\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \U1|registers[11].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[5].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[6].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[4].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[7].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[2].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[1].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[0].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[3].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[13].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[14].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[12].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|registers[15].dataOrInstruction\ : std_logic_vector(15 DOWNTO 0);
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

-- Location: LCCOMB_X39_Y49_N14
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

-- Location: LCCOMB_X34_Y49_N20
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

-- Location: LCCOMB_X35_Y48_N12
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

-- Location: LCCOMB_X35_Y47_N10
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

-- Location: LCCOMB_X35_Y47_N12
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

-- Location: FF_X35_Y47_N13
\U2|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[16]~53_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X35_Y47_N14
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

-- Location: FF_X35_Y47_N15
\U2|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[17]~56_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X35_Y47_N16
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

-- Location: FF_X35_Y47_N17
\U2|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[18]~58_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X35_Y47_N18
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

-- Location: FF_X35_Y47_N19
\U2|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[19]~60_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X35_Y47_N30
\U2|CLK_COUNT_400HZ[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[6]~20_combout\ = (!\U2|CLK_COUNT_400HZ\(16) & (!\U2|CLK_COUNT_400HZ\(18) & (!\U2|CLK_COUNT_400HZ\(17) & !\U2|CLK_COUNT_400HZ\(19))))

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
	combout => \U2|CLK_COUNT_400HZ[6]~20_combout\);

-- Location: LCCOMB_X35_Y48_N10
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

-- Location: LCCOMB_X35_Y48_N0
\U2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = ((!\U2|CLK_COUNT_400HZ\(4) & (!\U2|CLK_COUNT_400HZ\(2) & !\U2|CLK_COUNT_400HZ\(3)))) # (!\U2|CLK_COUNT_400HZ\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CLK_COUNT_400HZ\(4),
	datab => \U2|CLK_COUNT_400HZ\(2),
	datac => \U2|CLK_COUNT_400HZ\(5),
	datad => \U2|CLK_COUNT_400HZ\(3),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y47_N24
\U2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~2_combout\ = (!\U2|CLK_COUNT_400HZ\(11) & (((\U2|LessThan0~1_combout\ & \U2|LessThan0~0_combout\)) # (!\U2|CLK_COUNT_400HZ\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~1_combout\,
	datab => \U2|CLK_COUNT_400HZ\(11),
	datac => \U2|LessThan0~0_combout\,
	datad => \U2|CLK_COUNT_400HZ\(10),
	combout => \U2|LessThan0~2_combout\);

-- Location: LCCOMB_X35_Y47_N20
\U2|CLK_COUNT_400HZ[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_COUNT_400HZ[6]~55_combout\ = (\SW[7]~input_o\) # (((!\U2|LessThan0~3_combout\ & !\U2|LessThan0~2_combout\)) # (!\U2|CLK_COUNT_400HZ[6]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \U2|LessThan0~3_combout\,
	datac => \U2|CLK_COUNT_400HZ[6]~20_combout\,
	datad => \U2|LessThan0~2_combout\,
	combout => \U2|CLK_COUNT_400HZ[6]~55_combout\);

-- Location: FF_X35_Y48_N13
\U2|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[0]~21_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X35_Y48_N14
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

-- Location: FF_X35_Y48_N15
\U2|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[1]~23_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X35_Y48_N16
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

-- Location: FF_X35_Y48_N17
\U2|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[2]~25_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X35_Y48_N18
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

-- Location: FF_X35_Y48_N19
\U2|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[3]~27_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X35_Y48_N20
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

-- Location: FF_X35_Y48_N21
\U2|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[4]~29_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X35_Y48_N22
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

-- Location: FF_X35_Y48_N23
\U2|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[5]~31_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X35_Y48_N24
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

-- Location: FF_X35_Y48_N25
\U2|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[6]~33_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X35_Y48_N26
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

-- Location: FF_X35_Y48_N27
\U2|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[7]~35_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X35_Y48_N28
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

-- Location: FF_X35_Y48_N29
\U2|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[8]~37_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X35_Y48_N30
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

-- Location: FF_X35_Y48_N31
\U2|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[9]~39_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X35_Y47_N0
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

-- Location: FF_X35_Y47_N1
\U2|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[10]~41_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X35_Y47_N2
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

-- Location: FF_X35_Y47_N3
\U2|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[11]~43_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X35_Y47_N4
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

-- Location: FF_X35_Y47_N5
\U2|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[12]~45_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X35_Y47_N6
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

-- Location: FF_X35_Y47_N7
\U2|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[13]~47_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X35_Y47_N8
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

-- Location: FF_X35_Y47_N9
\U2|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[14]~49_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(14));

-- Location: FF_X35_Y47_N11
\U2|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|CLK_COUNT_400HZ[15]~51_combout\,
	sclr => \U2|CLK_COUNT_400HZ[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X35_Y47_N26
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

-- Location: LCCOMB_X35_Y47_N28
\U2|CLK_400HZ_Enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CLK_400HZ_Enable~0_combout\ = (!\SW[7]~input_o\ & (((!\U2|LessThan0~3_combout\ & !\U2|LessThan0~2_combout\)) # (!\U2|CLK_COUNT_400HZ[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \U2|LessThan0~3_combout\,
	datac => \U2|CLK_COUNT_400HZ[6]~20_combout\,
	datad => \U2|LessThan0~2_combout\,
	combout => \U2|CLK_400HZ_Enable~0_combout\);

-- Location: FF_X35_Y47_N29
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

-- Location: FF_X34_Y49_N21
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

-- Location: LCCOMB_X39_Y49_N30
\U2|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector26~0_combout\ = (\U2|CHAR_COUNT\(0) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CHAR_COUNT\(0),
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector26~0_combout\);

-- Location: LCCOMB_X35_Y47_N22
\U2|CHAR_COUNT[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CHAR_COUNT[0]~11_combout\ = (!\SW[7]~input_o\ & \U2|CLK_400HZ_Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => \U2|CLK_400HZ_Enable~q\,
	combout => \U2|CHAR_COUNT[0]~11_combout\);

-- Location: FF_X39_Y49_N15
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

-- Location: LCCOMB_X39_Y49_N16
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

-- Location: LCCOMB_X39_Y49_N8
\U2|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector25~0_combout\ = (\U2|state.RESET1~q\ & \U2|CHAR_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.RESET1~q\,
	datad => \U2|CHAR_COUNT\(1),
	combout => \U2|Selector25~0_combout\);

-- Location: FF_X39_Y49_N17
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

-- Location: LCCOMB_X39_Y49_N18
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

-- Location: LCCOMB_X39_Y49_N26
\U2|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector24~0_combout\ = (\U2|state.RESET1~q\ & \U2|CHAR_COUNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.RESET1~q\,
	datac => \U2|CHAR_COUNT\(2),
	combout => \U2|Selector24~0_combout\);

-- Location: FF_X39_Y49_N19
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

-- Location: LCCOMB_X39_Y49_N20
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

-- Location: LCCOMB_X39_Y49_N2
\U2|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector23~0_combout\ = (\U2|state.RESET1~q\ & \U2|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.RESET1~q\,
	datad => \U2|CHAR_COUNT\(3),
	combout => \U2|Selector23~0_combout\);

-- Location: FF_X39_Y49_N21
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

-- Location: LCCOMB_X39_Y49_N22
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

-- Location: LCCOMB_X39_Y49_N4
\U2|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector22~0_combout\ = (\U2|CHAR_COUNT\(4) & \U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector22~0_combout\);

-- Location: FF_X39_Y49_N23
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

-- Location: LCCOMB_X35_Y49_N0
\U2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~0_combout\ = (\U2|CHAR_COUNT\(3) & \U2|CHAR_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CHAR_COUNT\(3),
	datad => \U2|CHAR_COUNT\(1),
	combout => \U2|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y48_N4
\U2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal3~0_combout\ = (\U2|CHAR_COUNT\(4) & (\U2|CHAR_COUNT\(0) & (\U2|Mux6~0_combout\ & \U2|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|Mux6~0_combout\,
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Equal3~0_combout\);

-- Location: FF_X31_Y48_N29
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

-- Location: LCCOMB_X30_Y48_N4
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

-- Location: FF_X30_Y48_N17
\U2|state.DROP_LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|LCD_RS~0_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	sload => VCC,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|state.DROP_LCD_E~q\);

-- Location: LCCOMB_X35_Y48_N6
\U2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal2~0_combout\ = (!\U2|CHAR_COUNT\(4) & (\U2|CHAR_COUNT\(0) & (\U2|Mux6~0_combout\ & \U2|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|Mux6~0_combout\,
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y48_N26
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

-- Location: FF_X30_Y48_N27
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

-- Location: LCCOMB_X30_Y48_N8
\U2|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~30_combout\ = (\U2|next_command.LINE2~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|next_command.LINE2~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|state~30_combout\);

-- Location: FF_X30_Y48_N9
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

-- Location: LCCOMB_X30_Y49_N14
\U2|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector18~0_combout\ = (\U2|state.RESET1~q\ & ((\U2|next_command.RESET2~q\) # ((!\U2|state.HOLD~q\ & !\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.RESET1~q\,
	datac => \U2|next_command.RESET2~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector18~0_combout\);

-- Location: FF_X30_Y49_N15
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

-- Location: LCCOMB_X30_Y49_N30
\U2|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~37_combout\ = (\U2|state.HOLD~q\ & !\U2|next_command.RESET2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datac => \U2|next_command.RESET2~q\,
	combout => \U2|state~37_combout\);

-- Location: FF_X30_Y49_N31
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

-- Location: LCCOMB_X30_Y49_N16
\U2|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector19~0_combout\ = (\U2|state.RESET2~q\) # ((\U2|next_command.RESET3~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.RESET2~q\,
	datac => \U2|next_command.RESET3~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector19~0_combout\);

-- Location: FF_X30_Y49_N17
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

-- Location: LCCOMB_X30_Y49_N0
\U2|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~34_combout\ = (\U2|next_command.RESET3~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|next_command.RESET3~q\,
	datac => \U2|state.HOLD~q\,
	combout => \U2|state~34_combout\);

-- Location: FF_X30_Y49_N1
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

-- Location: LCCOMB_X30_Y49_N20
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

-- Location: FF_X30_Y49_N21
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

-- Location: LCCOMB_X30_Y49_N4
\U2|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~36_combout\ = (\U2|next_command.FUNC_SET~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|next_command.FUNC_SET~q\,
	datac => \U2|state.HOLD~q\,
	combout => \U2|state~36_combout\);

-- Location: FF_X30_Y49_N5
\U2|state.FUNC_SET\ : dffeas
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
	q => \U2|state.FUNC_SET~q\);

-- Location: LCCOMB_X30_Y49_N2
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

-- Location: FF_X30_Y49_N3
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

-- Location: LCCOMB_X30_Y49_N10
\U2|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~35_combout\ = (\U2|next_command.DISPLAY_OFF~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|next_command.DISPLAY_OFF~q\,
	datac => \U2|state.HOLD~q\,
	combout => \U2|state~35_combout\);

-- Location: FF_X30_Y49_N11
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

-- Location: LCCOMB_X30_Y49_N28
\U2|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector21~0_combout\ = (\U2|state.DISPLAY_OFF~q\) # ((\U2|next_command.DISPLAY_CLEAR~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DROP_LCD_E~q\,
	datac => \U2|next_command.DISPLAY_CLEAR~q\,
	datad => \U2|state.DISPLAY_OFF~q\,
	combout => \U2|Selector21~0_combout\);

-- Location: FF_X30_Y49_N29
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

-- Location: LCCOMB_X30_Y49_N18
\U2|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~32_combout\ = (\U2|next_command.DISPLAY_CLEAR~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|next_command.DISPLAY_CLEAR~q\,
	datac => \U2|state.HOLD~q\,
	combout => \U2|state~32_combout\);

-- Location: FF_X30_Y49_N19
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

-- Location: LCCOMB_X30_Y49_N22
\U2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector13~0_combout\ = (\U2|state.DISPLAY_CLEAR~q\) # ((\U2|next_command.DISPLAY_ON~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DISPLAY_CLEAR~q\,
	datac => \U2|next_command.DISPLAY_ON~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector13~0_combout\);

-- Location: FF_X30_Y49_N23
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

-- Location: LCCOMB_X30_Y49_N12
\U2|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~33_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.DISPLAY_ON~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datac => \U2|next_command.DISPLAY_ON~q\,
	combout => \U2|state~33_combout\);

-- Location: FF_X30_Y49_N13
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

-- Location: LCCOMB_X34_Y49_N6
\U2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector14~0_combout\ = (\U2|state.DISPLAY_ON~q\) # ((\U2|next_command.MODE_SET~q\ & ((\U2|state.HOLD~q\) # (\U2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DISPLAY_ON~q\,
	datac => \U2|next_command.MODE_SET~q\,
	datad => \U2|state.DROP_LCD_E~q\,
	combout => \U2|Selector14~0_combout\);

-- Location: FF_X34_Y49_N7
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

-- Location: LCCOMB_X34_Y49_N26
\U2|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~29_combout\ = (\U2|state.HOLD~q\ & \U2|next_command.MODE_SET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|state.HOLD~q\,
	datad => \U2|next_command.MODE_SET~q\,
	combout => \U2|state~29_combout\);

-- Location: FF_X34_Y49_N27
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

-- Location: LCCOMB_X30_Y48_N12
\U2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector17~0_combout\ = (\U2|Equal3~0_combout\ & ((\U2|state.Print_String~q\) # ((!\U2|LCD_RS~0_combout\ & \U2|next_command.RETURN_HOME~q\)))) # (!\U2|Equal3~0_combout\ & (!\U2|LCD_RS~0_combout\ & (\U2|next_command.RETURN_HOME~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal3~0_combout\,
	datab => \U2|LCD_RS~0_combout\,
	datac => \U2|next_command.RETURN_HOME~q\,
	datad => \U2|state.Print_String~q\,
	combout => \U2|Selector17~0_combout\);

-- Location: FF_X30_Y48_N13
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

-- Location: LCCOMB_X30_Y48_N2
\U2|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~31_combout\ = (\U2|next_command.RETURN_HOME~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|next_command.RETURN_HOME~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|state~31_combout\);

-- Location: FF_X30_Y48_N3
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

-- Location: LCCOMB_X30_Y48_N28
\U2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~0_combout\ = (!\U2|state.LINE2~q\ & (!\U2|state.MODE_SET~q\ & !\U2|state.RETURN_HOME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|state.LINE2~q\,
	datac => \U2|state.MODE_SET~q\,
	datad => \U2|state.RETURN_HOME~q\,
	combout => \U2|Selector5~0_combout\);

-- Location: LCCOMB_X30_Y48_N14
\U2|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector15~3_combout\ = ((\U2|next_command.Print_String~q\ & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\)))) # (!\U2|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|Selector5~0_combout\,
	datac => \U2|next_command.Print_String~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|Selector15~3_combout\);

-- Location: LCCOMB_X30_Y48_N22
\U2|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector15~2_combout\ = (\U2|Selector15~3_combout\) # ((!\U2|Equal3~0_combout\ & (!\U2|Equal2~0_combout\ & \U2|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal3~0_combout\,
	datab => \U2|Selector15~3_combout\,
	datac => \U2|Equal2~0_combout\,
	datad => \U2|state.Print_String~q\,
	combout => \U2|Selector15~2_combout\);

-- Location: FF_X30_Y48_N23
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

-- Location: LCCOMB_X30_Y48_N18
\U2|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|state~28_combout\ = (\U2|next_command.Print_String~q\ & \U2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|next_command.Print_String~q\,
	datad => \U2|state.HOLD~q\,
	combout => \U2|state~28_combout\);

-- Location: FF_X30_Y48_N19
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

-- Location: LCCOMB_X31_Y48_N28
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

-- Location: LCCOMB_X35_Y49_N10
\U2|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~7_combout\ = (!\U2|CHAR_COUNT\(3) & !\U2|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CHAR_COUNT\(3),
	datad => \U2|CHAR_COUNT\(4),
	combout => \U2|Mux3~7_combout\);

-- Location: LCCOMB_X41_Y50_N16
\U1|Hex_Display_Data[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[0]~6_combout\ = !\U1|Hex_Display_Data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Hex_Display_Data\(0),
	combout => \U1|Hex_Display_Data[0]~6_combout\);

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

-- Location: LCCOMB_X43_Y46_N0
\U1|enableSwitch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|enableSwitch~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \U1|enableSwitch~0_combout\);

-- Location: FF_X43_Y46_N1
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

-- Location: LCCOMB_X43_Y46_N26
\U1|Hex_Display_Data[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[28]~0_combout\ = (!\KEY[0]~input_o\ & !\U1|enableSwitch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \U1|enableSwitch~q\,
	combout => \U1|Hex_Display_Data[28]~0_combout\);

-- Location: FF_X42_Y50_N29
\U1|Hex_Display_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Hex_Display_Data[0]~6_combout\,
	sload => VCC,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(0));

-- Location: LCCOMB_X43_Y49_N2
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

-- Location: FF_X42_Y50_N17
\U1|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC[1]~15_combout\,
	sload => VCC,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(1));

-- Location: LCCOMB_X43_Y49_N4
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

-- Location: FF_X43_Y49_N5
\U1|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[2]~17_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(2));

-- Location: LCCOMB_X43_Y49_N6
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

-- Location: FF_X43_Y49_N7
\U1|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[3]~19_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(3));

-- Location: LCCOMB_X43_Y49_N8
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

-- Location: FF_X43_Y49_N9
\U1|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[4]~21_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(4));

-- Location: LCCOMB_X43_Y49_N10
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

-- Location: FF_X43_Y49_N11
\U1|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[5]~23_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(5));

-- Location: LCCOMB_X43_Y49_N12
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

-- Location: FF_X43_Y49_N13
\U1|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[6]~25_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(6));

-- Location: LCCOMB_X43_Y49_N14
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

-- Location: FF_X43_Y49_N15
\U1|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[7]~27_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(7));

-- Location: LCCOMB_X43_Y49_N16
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

-- Location: FF_X43_Y49_N17
\U1|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[8]~29_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(8));

-- Location: LCCOMB_X43_Y49_N18
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

-- Location: FF_X43_Y49_N19
\U1|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[9]~31_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(9));

-- Location: LCCOMB_X43_Y49_N20
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

-- Location: FF_X43_Y49_N21
\U1|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[10]~33_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(10));

-- Location: LCCOMB_X43_Y49_N22
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

-- Location: FF_X43_Y49_N23
\U1|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[11]~35_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(11));

-- Location: LCCOMB_X43_Y49_N24
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

-- Location: FF_X43_Y49_N25
\U1|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[12]~37_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(12));

-- Location: LCCOMB_X43_Y49_N26
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

-- Location: FF_X43_Y49_N27
\U1|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[13]~39_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(13));

-- Location: LCCOMB_X43_Y49_N28
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

-- Location: FF_X43_Y49_N29
\U1|PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[14]~41_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(14));

-- Location: LCCOMB_X42_Y49_N30
\U1|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~3_combout\ = (!\U1|PC\(11) & (!\U1|PC\(13) & (!\U1|PC\(12) & !\U1|PC\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(11),
	datab => \U1|PC\(13),
	datac => \U1|PC\(12),
	datad => \U1|PC\(14),
	combout => \U1|Mux10~3_combout\);

-- Location: LCCOMB_X43_Y49_N0
\U1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~2_combout\ = (!\U1|PC\(10) & (!\U1|PC\(8) & (!\U1|PC\(7) & !\U1|PC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(10),
	datab => \U1|PC\(8),
	datac => \U1|PC\(7),
	datad => \U1|PC\(9),
	combout => \U1|Mux10~2_combout\);

-- Location: LCCOMB_X42_Y48_N30
\U1|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~7_combout\ = (\U1|Mux10~3_combout\ & \U1|Mux10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux10~3_combout\,
	datad => \U1|Mux10~2_combout\,
	combout => \U1|Mux10~7_combout\);

-- Location: LCCOMB_X43_Y49_N30
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

-- Location: FF_X43_Y49_N31
\U1|PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|PC[15]~43_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PC\(15));

-- Location: LCCOMB_X42_Y47_N10
\U1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~2_combout\ = (\U1|PC\(2) & (\U1|PC\(4) & (\U1|PC\(3) & \U1|Hex_Display_Data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|PC\(4),
	datac => \U1|PC\(3),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux1~2_combout\);

-- Location: LCCOMB_X42_Y47_N18
\U1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~6_combout\ = (\U1|PC\(2) & ((\U1|PC\(4) & (\U1|PC\(3))) # (!\U1|PC\(4) & (!\U1|PC\(3) & \U1|Hex_Display_Data\(0))))) # (!\U1|PC\(2) & (((\U1|PC\(3) & \U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|PC\(4),
	datac => \U1|PC\(3),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux1~6_combout\);

-- Location: LCCOMB_X42_Y47_N30
\U1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~4_combout\ = (\U1|PC\(2) & (!\U1|PC\(4))) # (!\U1|PC\(2) & (\U1|PC\(4) & (\U1|PC\(3) & \U1|Hex_Display_Data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|PC\(4),
	datac => \U1|PC\(3),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux1~4_combout\);

-- Location: LCCOMB_X42_Y47_N12
\U1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~3_combout\ = (\U1|PC\(4) & (!\U1|PC\(2) & (!\U1|PC\(3)))) # (!\U1|PC\(4) & ((\U1|PC\(2) $ (\U1|PC\(3))) # (!\U1|Hex_Display_Data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|PC\(4),
	datac => \U1|PC\(3),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux1~3_combout\);

-- Location: LCCOMB_X42_Y47_N8
\U1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~5_combout\ = (\U1|PC\(1) & (((\U1|Mux1~3_combout\) # (\U1|PC\(5))))) # (!\U1|PC\(1) & (\U1|Mux1~4_combout\ & ((!\U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~4_combout\,
	datab => \U1|Mux1~3_combout\,
	datac => \U1|PC\(1),
	datad => \U1|PC\(5),
	combout => \U1|Mux1~5_combout\);

-- Location: LCCOMB_X42_Y47_N4
\U1|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~7_combout\ = (\U1|Mux1~5_combout\ & (((\U1|Mux1~6_combout\) # (!\U1|PC\(5))))) # (!\U1|Mux1~5_combout\ & (\U1|Mux1~2_combout\ & ((\U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~2_combout\,
	datab => \U1|Mux1~6_combout\,
	datac => \U1|Mux1~5_combout\,
	datad => \U1|PC\(5),
	combout => \U1|Mux1~7_combout\);

-- Location: LCCOMB_X42_Y48_N8
\U1|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~8_combout\ = (\U1|Mux10~7_combout\ & (!\U1|PC\(15) & (!\U1|PC\(6) & \U1|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~7_combout\,
	datab => \U1|PC\(15),
	datac => \U1|PC\(6),
	datad => \U1|Mux1~7_combout\,
	combout => \U1|Mux1~8_combout\);

-- Location: LCCOMB_X42_Y48_N26
\U1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux9~0_combout\ = (\U1|Mux10~3_combout\ & (!\U1|PC\(15) & (!\U1|PC\(6) & \U1|Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~3_combout\,
	datab => \U1|PC\(15),
	datac => \U1|PC\(6),
	datad => \U1|Mux10~2_combout\,
	combout => \U1|Mux9~0_combout\);

-- Location: LCCOMB_X42_Y47_N6
\U1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~4_combout\ = (\U1|PC\(2) & (((!\U1|PC\(4))))) # (!\U1|PC\(2) & ((\U1|Hex_Display_Data\(0) & (\U1|PC\(1) & \U1|PC\(4))) # (!\U1|Hex_Display_Data\(0) & (!\U1|PC\(1) & !\U1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(4),
	combout => \U1|Mux0~4_combout\);

-- Location: LCCOMB_X42_Y47_N24
\U1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~1_combout\ = (\U1|PC\(2) & (((\U1|PC\(1)) # (!\U1|PC\(4))) # (!\U1|Hex_Display_Data\(0)))) # (!\U1|PC\(2) & ((\U1|PC\(1) & (\U1|Hex_Display_Data\(0))) # (!\U1|PC\(1) & ((\U1|PC\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(4),
	combout => \U1|Mux0~1_combout\);

-- Location: LCCOMB_X42_Y47_N2
\U1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~2_combout\ = (\U1|PC\(2) & (((\U1|PC\(1)) # (!\U1|PC\(4))))) # (!\U1|PC\(2) & ((\U1|PC\(1) & ((!\U1|PC\(4)))) # (!\U1|PC\(1) & (!\U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(4),
	combout => \U1|Mux0~2_combout\);

-- Location: LCCOMB_X42_Y47_N28
\U1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~3_combout\ = (\U1|PC\(5) & (((\U1|PC\(3))))) # (!\U1|PC\(5) & ((\U1|PC\(3) & (!\U1|Mux0~1_combout\)) # (!\U1|PC\(3) & ((!\U1|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datab => \U1|Mux0~1_combout\,
	datac => \U1|PC\(3),
	datad => \U1|Mux0~2_combout\,
	combout => \U1|Mux0~3_combout\);

-- Location: LCCOMB_X42_Y47_N22
\U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~0_combout\ = (\U1|PC\(2) & ((\U1|Hex_Display_Data\(0) & (\U1|PC\(1) $ (\U1|PC\(4)))) # (!\U1|Hex_Display_Data\(0) & (\U1|PC\(1) & \U1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(4),
	combout => \U1|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y47_N16
\U1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~5_combout\ = (\U1|Mux0~3_combout\ & ((\U1|Mux0~4_combout\) # ((!\U1|PC\(5))))) # (!\U1|Mux0~3_combout\ & (((!\U1|Mux0~0_combout\ & \U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~4_combout\,
	datab => \U1|Mux0~3_combout\,
	datac => \U1|Mux0~0_combout\,
	datad => \U1|PC\(5),
	combout => \U1|Mux0~5_combout\);

-- Location: LCCOMB_X43_Y47_N10
\U1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux7~5_combout\ = (\U1|PC\(2) & ((\U1|PC\(3)) # (\U1|PC\(1) $ (!\U1|Hex_Display_Data\(0))))) # (!\U1|PC\(2) & (\U1|PC\(3) & (\U1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|PC\(3),
	datac => \U1|PC\(1),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux7~5_combout\);

-- Location: LCCOMB_X42_Y47_N20
\U1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux7~3_combout\ = (\U1|PC\(1) & ((\U1|PC\(3)) # (\U1|Hex_Display_Data\(0) $ (!\U1|PC\(2))))) # (!\U1|PC\(1) & (((\U1|PC\(3) & !\U1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(1),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(3),
	datad => \U1|PC\(2),
	combout => \U1|Mux7~3_combout\);

-- Location: LCCOMB_X42_Y47_N26
\U1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux7~2_combout\ = (\U1|PC\(3) & ((\U1|Hex_Display_Data\(0) & (\U1|PC\(1))) # (!\U1|Hex_Display_Data\(0) & ((\U1|PC\(2)))))) # (!\U1|PC\(3) & (\U1|PC\(1) & ((\U1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(1),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(3),
	datad => \U1|PC\(2),
	combout => \U1|Mux7~2_combout\);

-- Location: LCCOMB_X42_Y47_N14
\U1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux7~4_combout\ = (\U1|PC\(5) & (((\U1|PC\(4))))) # (!\U1|PC\(5) & ((\U1|PC\(4) & ((\U1|Mux7~2_combout\))) # (!\U1|PC\(4) & (!\U1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datab => \U1|Mux7~3_combout\,
	datac => \U1|Mux7~2_combout\,
	datad => \U1|PC\(4),
	combout => \U1|Mux7~4_combout\);

-- Location: LCCOMB_X43_Y47_N8
\U1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux7~1_combout\ = (!\U1|PC\(2) & (\U1|PC\(3) & (!\U1|PC\(1) & !\U1|Hex_Display_Data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|PC\(3),
	datac => \U1|PC\(1),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux7~1_combout\);

-- Location: LCCOMB_X43_Y47_N12
\U1|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux7~6_combout\ = (\U1|Mux7~4_combout\ & (((!\U1|PC\(5))) # (!\U1|Mux7~5_combout\))) # (!\U1|Mux7~4_combout\ & (((!\U1|Mux7~1_combout\ & \U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux7~5_combout\,
	datab => \U1|Mux7~4_combout\,
	datac => \U1|Mux7~1_combout\,
	datad => \U1|PC\(5),
	combout => \U1|Mux7~6_combout\);

-- Location: LCCOMB_X43_Y50_N2
\U1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux4~0_combout\ = (!\U1|PC\(2) & !\U1|PC\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(2),
	datac => \U1|PC\(4),
	combout => \U1|Mux4~0_combout\);

-- Location: LCCOMB_X43_Y51_N30
\U1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux11~0_combout\ = (!\U1|PC\(3) & (!\U1|Hex_Display_Data\(0) & !\U1|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datac => \U1|Hex_Display_Data\(0),
	datad => \U1|PC\(5),
	combout => \U1|Mux11~0_combout\);

-- Location: LCCOMB_X43_Y50_N20
\U1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux7~0_combout\ = (\U1|PC\(1) & (\U1|Mux4~0_combout\ & (\U1|Mux11~0_combout\ & \U1|PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(1),
	datab => \U1|Mux4~0_combout\,
	datac => \U1|Mux11~0_combout\,
	datad => \U1|PC\(6),
	combout => \U1|Mux7~0_combout\);

-- Location: LCCOMB_X43_Y50_N16
\U1|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~4_combout\ = (\U1|Mux10~3_combout\ & (\U1|Mux10~2_combout\ & !\U1|PC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~3_combout\,
	datab => \U1|Mux10~2_combout\,
	datad => \U1|PC\(15),
	combout => \U1|Mux10~4_combout\);

-- Location: LCCOMB_X43_Y47_N6
\U1|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux7~7_combout\ = (\U1|Mux10~4_combout\ & ((\U1|Mux7~0_combout\) # ((\U1|Mux7~6_combout\ & !\U1|PC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux7~6_combout\,
	datab => \U1|PC\(6),
	datac => \U1|Mux7~0_combout\,
	datad => \U1|Mux10~4_combout\,
	combout => \U1|Mux7~7_combout\);

-- Location: LCCOMB_X42_Y51_N26
\U1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux5~1_combout\ = (\U1|Hex_Display_Data\(0) & (\U1|PC\(4) & !\U1|PC\(1))) # (!\U1|Hex_Display_Data\(0) & ((\U1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(4),
	datad => \U1|PC\(1),
	combout => \U1|Mux5~1_combout\);

-- Location: LCCOMB_X42_Y51_N16
\U1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux5~0_combout\ = (\U1|Hex_Display_Data\(0) & ((\U1|PC\(1)))) # (!\U1|Hex_Display_Data\(0) & (\U1|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(4),
	datad => \U1|PC\(1),
	combout => \U1|Mux5~0_combout\);

-- Location: LCCOMB_X42_Y51_N20
\U1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux5~2_combout\ = (\U1|Mux5~1_combout\ & (((\U1|PC\(2) & !\U1|Mux5~0_combout\)))) # (!\U1|Mux5~1_combout\ & ((\U1|PC\(3) & ((!\U1|Mux5~0_combout\))) # (!\U1|PC\(3) & (\U1|PC\(2) & \U1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~1_combout\,
	datab => \U1|PC\(3),
	datac => \U1|PC\(2),
	datad => \U1|Mux5~0_combout\,
	combout => \U1|Mux5~2_combout\);

-- Location: LCCOMB_X42_Y51_N22
\U1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux5~3_combout\ = (\U1|Mux9~0_combout\ & (\U1|Mux5~2_combout\ & (\U1|PC\(5) $ (!\U1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux5~2_combout\,
	datac => \U1|PC\(5),
	datad => \U1|Mux5~0_combout\,
	combout => \U1|Mux5~3_combout\);

-- Location: LCCOMB_X43_Y48_N8
\U1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~4_combout\ = (\U1|PC\(3) & (((\U1|PC\(1)) # (\U1|PC\(2))))) # (!\U1|PC\(3) & (\U1|Hex_Display_Data\(0) & (\U1|PC\(1) & \U1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(2),
	combout => \U1|Mux6~4_combout\);

-- Location: LCCOMB_X43_Y48_N26
\U1|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~5_combout\ = (\U1|PC\(3) & (!\U1|PC\(2) & (\U1|Hex_Display_Data\(0) $ (\U1|PC\(1))))) # (!\U1|PC\(3) & ((\U1|PC\(1) & ((!\U1|PC\(2)))) # (!\U1|PC\(1) & (!\U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(2),
	combout => \U1|Mux6~5_combout\);

-- Location: LCCOMB_X43_Y48_N12
\U1|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~6_combout\ = (\U1|PC\(4) & ((\U1|PC\(5) & (\U1|Mux6~4_combout\)) # (!\U1|PC\(5) & ((\U1|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(4),
	datab => \U1|Mux6~4_combout\,
	datac => \U1|Mux6~5_combout\,
	datad => \U1|PC\(5),
	combout => \U1|Mux6~6_combout\);

-- Location: LCCOMB_X43_Y48_N10
\U1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~1_combout\ = (\U1|PC\(2) & (\U1|Hex_Display_Data\(0) & ((\U1|PC\(1)) # (!\U1|PC\(3))))) # (!\U1|PC\(2) & ((\U1|PC\(3)) # ((!\U1|Hex_Display_Data\(0) & \U1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(2),
	combout => \U1|Mux6~1_combout\);

-- Location: LCCOMB_X43_Y48_N20
\U1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~2_combout\ = (\U1|PC\(3)) # ((\U1|PC\(2)) # ((\U1|Hex_Display_Data\(0) & \U1|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(2),
	combout => \U1|Mux6~2_combout\);

-- Location: LCCOMB_X43_Y48_N24
\U1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~0_combout\ = (!\U1|PC\(4) & !\U1|PC\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|PC\(4),
	datad => \U1|PC\(5),
	combout => \U1|Mux6~0_combout\);

-- Location: LCCOMB_X43_Y48_N6
\U1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~3_combout\ = (\U1|Mux6~0_combout\ & ((\U1|PC\(6) & ((!\U1|Mux6~2_combout\))) # (!\U1|PC\(6) & (\U1|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~1_combout\,
	datab => \U1|Mux6~2_combout\,
	datac => \U1|Mux6~0_combout\,
	datad => \U1|PC\(6),
	combout => \U1|Mux6~3_combout\);

-- Location: LCCOMB_X43_Y48_N22
\U1|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux6~7_combout\ = (\U1|Mux10~4_combout\ & ((\U1|Mux6~3_combout\) # ((\U1|Mux6~6_combout\ & !\U1|PC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~6_combout\,
	datab => \U1|PC\(6),
	datac => \U1|Mux10~4_combout\,
	datad => \U1|Mux6~3_combout\,
	combout => \U1|Mux6~7_combout\);

-- Location: LCCOMB_X40_Y48_N10
\U1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux8~1_combout\ = (\U1|Hex_Display_Data\(0) & (!\U1|PC\(1) & (!\U1|PC\(3) & !\U1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(1),
	datac => \U1|PC\(3),
	datad => \U1|PC\(2),
	combout => \U1|Mux8~1_combout\);

-- Location: LCCOMB_X40_Y48_N20
\U1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux8~2_combout\ = (\U1|PC\(1) & ((\U1|Hex_Display_Data\(0)) # ((!\U1|PC\(2)) # (!\U1|PC\(3))))) # (!\U1|PC\(1) & ((\U1|PC\(3) $ (\U1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(1),
	datac => \U1|PC\(3),
	datad => \U1|PC\(2),
	combout => \U1|Mux8~2_combout\);

-- Location: LCCOMB_X40_Y48_N6
\U1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux8~3_combout\ = (\U1|PC\(4) & ((\U1|Mux8~1_combout\) # ((\U1|PC\(5))))) # (!\U1|PC\(4) & (((!\U1|Mux8~2_combout\ & !\U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~1_combout\,
	datab => \U1|Mux8~2_combout\,
	datac => \U1|PC\(4),
	datad => \U1|PC\(5),
	combout => \U1|Mux8~3_combout\);

-- Location: LCCOMB_X40_Y48_N16
\U1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux8~0_combout\ = (\U1|PC\(3) & ((\U1|PC\(2)) # ((\U1|Hex_Display_Data\(0) & \U1|PC\(1))))) # (!\U1|PC\(3) & (\U1|Hex_Display_Data\(0) & (\U1|PC\(1) & \U1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(1),
	datac => \U1|PC\(3),
	datad => \U1|PC\(2),
	combout => \U1|Mux8~0_combout\);

-- Location: LCCOMB_X40_Y48_N0
\U1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux8~4_combout\ = (!\U1|PC\(3) & !\U1|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|PC\(3),
	datad => \U1|PC\(2),
	combout => \U1|Mux8~4_combout\);

-- Location: LCCOMB_X40_Y48_N18
\U1|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux8~5_combout\ = (\U1|Mux8~3_combout\ & (((\U1|Mux8~4_combout\) # (!\U1|PC\(5))))) # (!\U1|Mux8~3_combout\ & (\U1|Mux8~0_combout\ & ((\U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~3_combout\,
	datab => \U1|Mux8~0_combout\,
	datac => \U1|Mux8~4_combout\,
	datad => \U1|PC\(5),
	combout => \U1|Mux8~5_combout\);

-- Location: LCCOMB_X40_Y48_N4
\U1|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux8~6_combout\ = (\U1|Mux9~0_combout\ & \U1|Mux8~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux9~0_combout\,
	datad => \U1|Mux8~5_combout\,
	combout => \U1|Mux8~6_combout\);

-- Location: LCCOMB_X40_Y48_N8
\U1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux4~1_combout\ = (\U1|PC\(3) & (!\U1|PC\(2) & (\U1|PC\(1) $ (\U1|PC\(5))))) # (!\U1|PC\(3) & (\U1|PC\(2) & (!\U1|PC\(1) & \U1|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datab => \U1|PC\(2),
	datac => \U1|PC\(1),
	datad => \U1|PC\(5),
	combout => \U1|Mux4~1_combout\);

-- Location: LCCOMB_X40_Y48_N2
\U1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux4~2_combout\ = (\U1|PC\(3) & (!\U1|PC\(1) & (\U1|PC\(2) $ (\U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datab => \U1|PC\(2),
	datac => \U1|PC\(1),
	datad => \U1|PC\(5),
	combout => \U1|Mux4~2_combout\);

-- Location: LCCOMB_X40_Y48_N28
\U1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux4~3_combout\ = (\U1|PC\(4) & (\U1|Mux4~1_combout\ $ (\U1|Mux4~2_combout\))) # (!\U1|PC\(4) & (\U1|Mux4~1_combout\ & \U1|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(4),
	datac => \U1|Mux4~1_combout\,
	datad => \U1|Mux4~2_combout\,
	combout => \U1|Mux4~3_combout\);

-- Location: LCCOMB_X40_Y48_N14
\U1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux4~4_combout\ = (\U1|Mux9~0_combout\ & (\U1|Mux4~3_combout\ & (\U1|Hex_Display_Data\(0) $ (\U1|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|Mux4~1_combout\,
	datac => \U1|Mux9~0_combout\,
	datad => \U1|Mux4~3_combout\,
	combout => \U1|Mux4~4_combout\);

-- Location: LCCOMB_X40_Y48_N24
\U1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux9~2_combout\ = (\U1|PC\(3) & (!\U1|PC\(2) & (\U1|Hex_Display_Data\(0) $ (!\U1|PC\(1))))) # (!\U1|PC\(3) & (\U1|PC\(2) $ (((\U1|Hex_Display_Data\(0) & \U1|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(1),
	datac => \U1|PC\(3),
	datad => \U1|PC\(2),
	combout => \U1|Mux9~2_combout\);

-- Location: LCCOMB_X40_Y48_N30
\U1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux9~1_combout\ = (\U1|PC\(2)) # ((\U1|PC\(3) & ((\U1|PC\(1)) # (!\U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(1),
	datac => \U1|PC\(3),
	datad => \U1|PC\(2),
	combout => \U1|Mux9~1_combout\);

-- Location: LCCOMB_X40_Y48_N26
\U1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux9~3_combout\ = (\U1|PC\(4) & (((\U1|PC\(5)) # (!\U1|Mux9~1_combout\)))) # (!\U1|PC\(4) & (!\U1|Mux9~2_combout\ & ((!\U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(4),
	datab => \U1|Mux9~2_combout\,
	datac => \U1|Mux9~1_combout\,
	datad => \U1|PC\(5),
	combout => \U1|Mux9~3_combout\);

-- Location: LCCOMB_X40_Y48_N12
\U1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux9~4_combout\ = (\U1|Mux9~3_combout\ & ((\U1|Mux8~4_combout\) # ((!\U1|PC\(5))))) # (!\U1|Mux9~3_combout\ & (((\U1|Mux8~0_combout\ & \U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~4_combout\,
	datab => \U1|Mux8~0_combout\,
	datac => \U1|Mux9~3_combout\,
	datad => \U1|PC\(5),
	combout => \U1|Mux9~4_combout\);

-- Location: LCCOMB_X40_Y48_N22
\U1|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux9~5_combout\ = (\U1|Mux9~0_combout\ & \U1|Mux9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux9~0_combout\,
	datad => \U1|Mux9~4_combout\,
	combout => \U1|Mux9~5_combout\);

-- Location: LCCOMB_X43_Y51_N24
\U1|Mux10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~13_combout\ = (\U1|PC\(6) & (!\U1|PC\(4) & (\U1|Mux11~0_combout\ & !\U1|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(6),
	datab => \U1|PC\(4),
	datac => \U1|Mux11~0_combout\,
	datad => \U1|PC\(2),
	combout => \U1|Mux10~13_combout\);

-- Location: LCCOMB_X42_Y50_N26
\U1|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~6_combout\ = (\U1|PC\(5) & (!\U1|PC\(3) & ((!\U1|Hex_Display_Data\(0)) # (!\U1|PC\(1))))) # (!\U1|PC\(5) & (\U1|PC\(1) & ((\U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datab => \U1|PC\(1),
	datac => \U1|PC\(3),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux10~6_combout\);

-- Location: LCCOMB_X42_Y50_N0
\U1|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~8_combout\ = (\U1|PC\(5) & (((!\U1|PC\(1)) # (!\U1|PC\(3))) # (!\U1|Hex_Display_Data\(0)))) # (!\U1|PC\(5) & ((\U1|PC\(1)) # ((\U1|Hex_Display_Data\(0) & \U1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(3),
	datad => \U1|PC\(1),
	combout => \U1|Mux10~8_combout\);

-- Location: LCCOMB_X42_Y50_N10
\U1|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~9_combout\ = (\U1|PC\(4) & (((\U1|PC\(2))))) # (!\U1|PC\(4) & ((\U1|PC\(2) & (!\U1|Mux10~6_combout\)) # (!\U1|PC\(2) & ((!\U1|Mux10~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~6_combout\,
	datab => \U1|PC\(4),
	datac => \U1|Mux10~8_combout\,
	datad => \U1|PC\(2),
	combout => \U1|Mux10~9_combout\);

-- Location: LCCOMB_X42_Y50_N24
\U1|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~5_combout\ = (!\U1|PC\(3) & \U1|PC\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|PC\(3),
	datad => \U1|PC\(5),
	combout => \U1|Mux10~5_combout\);

-- Location: LCCOMB_X42_Y50_N16
\U1|Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~10_combout\ = (\U1|PC\(5) & (\U1|Hex_Display_Data\(0) & (\U1|PC\(1) & \U1|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(3),
	combout => \U1|Mux10~10_combout\);

-- Location: LCCOMB_X42_Y50_N4
\U1|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~11_combout\ = (\U1|Mux10~9_combout\ & (((\U1|Mux10~10_combout\) # (!\U1|PC\(4))))) # (!\U1|Mux10~9_combout\ & (\U1|Mux10~5_combout\ & ((\U1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~9_combout\,
	datab => \U1|Mux10~5_combout\,
	datac => \U1|Mux10~10_combout\,
	datad => \U1|PC\(4),
	combout => \U1|Mux10~11_combout\);

-- Location: LCCOMB_X42_Y50_N6
\U1|Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux10~12_combout\ = (\U1|Mux10~4_combout\ & ((\U1|Mux10~13_combout\) # ((!\U1|PC\(6) & \U1|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~13_combout\,
	datab => \U1|PC\(6),
	datac => \U1|Mux10~11_combout\,
	datad => \U1|Mux10~4_combout\,
	combout => \U1|Mux10~12_combout\);

-- Location: LCCOMB_X42_Y50_N12
\U1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux11~1_combout\ = (\U1|PC\(1) & (((!\U1|Hex_Display_Data\(0)) # (!\U1|PC\(3))))) # (!\U1|PC\(1) & ((\U1|PC\(5)) # ((\U1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datab => \U1|PC\(1),
	datac => \U1|PC\(3),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux11~1_combout\);

-- Location: LCCOMB_X42_Y50_N14
\U1|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux11~2_combout\ = (\U1|PC\(4) & (((\U1|PC\(2))))) # (!\U1|PC\(4) & ((\U1|PC\(2) & ((!\U1|Mux10~6_combout\))) # (!\U1|PC\(2) & (!\U1|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~1_combout\,
	datab => \U1|PC\(4),
	datac => \U1|Mux10~6_combout\,
	datad => \U1|PC\(2),
	combout => \U1|Mux11~2_combout\);

-- Location: LCCOMB_X43_Y50_N6
\U1|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux11~3_combout\ = (!\U1|PC\(1) & (!\U1|Hex_Display_Data\(0) & (!\U1|PC\(3) & !\U1|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(1),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(3),
	datad => \U1|PC\(5),
	combout => \U1|Mux11~3_combout\);

-- Location: LCCOMB_X43_Y50_N24
\U1|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux11~4_combout\ = (\U1|Mux11~2_combout\ & (((\U1|Mux11~3_combout\) # (!\U1|PC\(4))))) # (!\U1|Mux11~2_combout\ & (\U1|Mux10~5_combout\ & (\U1|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~2_combout\,
	datab => \U1|Mux10~5_combout\,
	datac => \U1|PC\(4),
	datad => \U1|Mux11~3_combout\,
	combout => \U1|Mux11~4_combout\);

-- Location: LCCOMB_X43_Y50_N26
\U1|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux11~5_combout\ = (\U1|Mux10~4_combout\ & ((\U1|Mux7~0_combout\) # ((!\U1|PC\(6) & \U1|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(6),
	datab => \U1|Mux7~0_combout\,
	datac => \U1|Mux11~4_combout\,
	datad => \U1|Mux10~4_combout\,
	combout => \U1|Mux11~5_combout\);

-- Location: LCCOMB_X43_Y50_N30
\U1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux12~1_combout\ = (\U1|PC\(3) & (!\U1|PC\(4) & (\U1|PC\(2) & \U1|PC\(5)))) # (!\U1|PC\(3) & (((\U1|PC\(4) & !\U1|PC\(2))) # (!\U1|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(4),
	datab => \U1|PC\(3),
	datac => \U1|PC\(2),
	datad => \U1|PC\(5),
	combout => \U1|Mux12~1_combout\);

-- Location: LCCOMB_X43_Y50_N12
\U1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux12~0_combout\ = (\U1|PC\(1) & (!\U1|PC\(4) & (\U1|PC\(2) & !\U1|Hex_Display_Data\(0)))) # (!\U1|PC\(1) & ((\U1|PC\(2) $ (\U1|Hex_Display_Data\(0))) # (!\U1|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(1),
	datab => \U1|PC\(4),
	datac => \U1|PC\(2),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux12~0_combout\);

-- Location: LCCOMB_X43_Y50_N8
\U1|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux12~2_combout\ = (!\U1|PC\(6) & (\U1|Mux12~1_combout\ & ((\U1|PC\(5)) # (\U1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datab => \U1|PC\(6),
	datac => \U1|Mux12~1_combout\,
	datad => \U1|Mux12~0_combout\,
	combout => \U1|Mux12~2_combout\);

-- Location: LCCOMB_X43_Y50_N18
\U1|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux12~3_combout\ = (\U1|Mux10~4_combout\ & ((\U1|Mux7~0_combout\) # (\U1|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux7~0_combout\,
	datac => \U1|Mux12~2_combout\,
	datad => \U1|Mux10~4_combout\,
	combout => \U1|Mux12~3_combout\);

-- Location: LCCOMB_X42_Y50_N8
\U1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux13~1_combout\ = (\U1|PC\(5) & ((\U1|PC\(2)) # (\U1|Hex_Display_Data\(0) $ (!\U1|PC\(1))))) # (!\U1|PC\(5) & (((!\U1|Hex_Display_Data\(0) & \U1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(5),
	datad => \U1|PC\(1),
	combout => \U1|Mux13~1_combout\);

-- Location: LCCOMB_X42_Y50_N2
\U1|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux13~2_combout\ = (\U1|PC\(2) & ((\U1|Hex_Display_Data\(0) & ((!\U1|PC\(1)) # (!\U1|PC\(5)))) # (!\U1|Hex_Display_Data\(0) & ((\U1|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(5),
	datad => \U1|PC\(1),
	combout => \U1|Mux13~2_combout\);

-- Location: LCCOMB_X42_Y50_N22
\U1|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux13~4_combout\ = (\U1|Mux13~2_combout\ & ((\U1|PC\(3) & ((!\U1|PC\(4)))) # (!\U1|PC\(3) & (\U1|Mux13~1_combout\)))) # (!\U1|Mux13~2_combout\ & (\U1|Mux13~1_combout\ & (\U1|PC\(3) $ (\U1|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~1_combout\,
	datab => \U1|Mux13~2_combout\,
	datac => \U1|PC\(3),
	datad => \U1|PC\(4),
	combout => \U1|Mux13~4_combout\);

-- Location: LCCOMB_X43_Y51_N0
\U1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux13~0_combout\ = (\U1|PC\(1) & (((\U1|Hex_Display_Data\(0)) # (\U1|PC\(5))))) # (!\U1|PC\(1) & ((\U1|PC\(2) & (!\U1|Hex_Display_Data\(0))) # (!\U1|PC\(2) & ((\U1|PC\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(5),
	combout => \U1|Mux13~0_combout\);

-- Location: LCCOMB_X42_Y50_N20
\U1|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux13~3_combout\ = (\U1|PC\(3) & (\U1|Mux13~2_combout\ & (\U1|Mux13~1_combout\ $ (!\U1|PC\(4))))) # (!\U1|PC\(3) & (\U1|Mux13~2_combout\ $ (((!\U1|Mux13~1_combout\ & \U1|PC\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~1_combout\,
	datab => \U1|Mux13~2_combout\,
	datac => \U1|PC\(3),
	datad => \U1|PC\(4),
	combout => \U1|Mux13~3_combout\);

-- Location: LCCOMB_X46_Y52_N16
\U1|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux13~5_combout\ = (\U1|Mux9~0_combout\ & (\U1|Mux13~3_combout\ $ (((\U1|Mux13~4_combout\) # (!\U1|Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux13~4_combout\,
	datac => \U1|Mux13~0_combout\,
	datad => \U1|Mux13~3_combout\,
	combout => \U1|Mux13~5_combout\);

-- Location: LCCOMB_X47_Y49_N10
\U1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~6_combout\ = (\U1|Mux9~0_combout\ & \U1|Mux0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datad => \U1|Mux0~5_combout\,
	combout => \U1|Mux0~6_combout\);

-- Location: LCCOMB_X43_Y51_N10
\U1|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux14~4_combout\ = (\U1|Hex_Display_Data\(0) & ((\U1|PC\(3)) # ((\U1|PC\(2) & !\U1|PC\(5))))) # (!\U1|Hex_Display_Data\(0) & (\U1|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(3),
	datad => \U1|PC\(5),
	combout => \U1|Mux14~4_combout\);

-- Location: LCCOMB_X43_Y51_N22
\U1|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux14~2_combout\ = (\U1|Hex_Display_Data\(0) & (\U1|PC\(5) $ (((\U1|PC\(2) & \U1|PC\(3)))))) # (!\U1|Hex_Display_Data\(0) & ((\U1|PC\(5) & ((!\U1|PC\(3)))) # (!\U1|PC\(5) & (\U1|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(3),
	datad => \U1|PC\(5),
	combout => \U1|Mux14~2_combout\);

-- Location: LCCOMB_X43_Y51_N12
\U1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux14~1_combout\ = (\U1|PC\(2) & (\U1|PC\(3) $ (((\U1|Hex_Display_Data\(0) & !\U1|PC\(5)))))) # (!\U1|PC\(2) & (!\U1|Hex_Display_Data\(0) & ((!\U1|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(3),
	datad => \U1|PC\(5),
	combout => \U1|Mux14~1_combout\);

-- Location: LCCOMB_X43_Y51_N8
\U1|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux14~3_combout\ = (\U1|PC\(1) & ((\U1|PC\(4)) # ((\U1|Mux14~1_combout\)))) # (!\U1|PC\(1) & (!\U1|PC\(4) & (!\U1|Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(1),
	datab => \U1|PC\(4),
	datac => \U1|Mux14~2_combout\,
	datad => \U1|Mux14~1_combout\,
	combout => \U1|Mux14~3_combout\);

-- Location: LCCOMB_X43_Y51_N26
\U1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux14~0_combout\ = (\U1|PC\(3) & ((\U1|PC\(5) & (\U1|PC\(2))) # (!\U1|PC\(5) & ((\U1|Hex_Display_Data\(0)))))) # (!\U1|PC\(3) & ((\U1|PC\(2) $ (\U1|PC\(5))) # (!\U1|Hex_Display_Data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(3),
	datad => \U1|PC\(5),
	combout => \U1|Mux14~0_combout\);

-- Location: LCCOMB_X43_Y51_N20
\U1|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux14~5_combout\ = (\U1|PC\(4) & ((\U1|Mux14~3_combout\ & (!\U1|Mux14~4_combout\)) # (!\U1|Mux14~3_combout\ & ((\U1|Mux14~0_combout\))))) # (!\U1|PC\(4) & (((\U1|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~4_combout\,
	datab => \U1|PC\(4),
	datac => \U1|Mux14~3_combout\,
	datad => \U1|Mux14~0_combout\,
	combout => \U1|Mux14~5_combout\);

-- Location: LCCOMB_X46_Y51_N0
\U1|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux14~6_combout\ = (\U1|Mux9~0_combout\ & \U1|Mux14~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datad => \U1|Mux14~5_combout\,
	combout => \U1|Mux14~6_combout\);

-- Location: LCCOMB_X49_Y49_N0
\U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = (\U1|Mux14~6_combout\ & (\U1|Mux30~4_combout\ $ (VCC))) # (!\U1|Mux14~6_combout\ & (\U1|Mux30~4_combout\ & VCC))
-- \U1|Add0~1\ = CARRY((\U1|Mux14~6_combout\ & \U1|Mux30~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux30~4_combout\,
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X41_Y48_N26
\U1|registers[0].dataOrInstruction[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[0].dataOrInstruction[0]~feeder_combout\ = \U1|Mux322~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux322~4_combout\,
	combout => \U1|registers[0].dataOrInstruction[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y48_N14
\U1|Decoder1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~10_combout\ = (!\U1|Mux8~6_combout\ & (!\U1|Mux10~12_combout\ & (!\U1|Mux9~5_combout\ & !\U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~6_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux9~5_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~10_combout\);

-- Location: LCCOMB_X43_Y47_N0
\U1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~8_combout\ = (\U1|PC\(6) & (!\U1|PC\(4) & !\U1|PC\(5))) # (!\U1|PC\(6) & (\U1|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|PC\(6),
	datac => \U1|PC\(4),
	datad => \U1|PC\(5),
	combout => \U1|Mux3~8_combout\);

-- Location: LCCOMB_X43_Y47_N26
\U1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~5_combout\ = (\U1|PC\(2) & (\U1|Hex_Display_Data\(0) & ((\U1|PC\(3)) # (\U1|PC\(1))))) # (!\U1|PC\(2) & (\U1|PC\(3) & (\U1|PC\(1) $ (!\U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|PC\(3),
	datac => \U1|PC\(1),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux3~5_combout\);

-- Location: LCCOMB_X43_Y47_N24
\U1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~4_combout\ = (\U1|PC\(3) & (((\U1|Hex_Display_Data\(0))))) # (!\U1|PC\(3) & (!\U1|PC\(2) & (\U1|PC\(1) & !\U1|Hex_Display_Data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(2),
	datab => \U1|PC\(3),
	datac => \U1|PC\(1),
	datad => \U1|Hex_Display_Data\(0),
	combout => \U1|Mux3~4_combout\);

-- Location: LCCOMB_X43_Y47_N4
\U1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~6_combout\ = (\U1|Mux3~8_combout\ & (\U1|Mux3~4_combout\ & (\U1|PC\(5) $ (!\U1|Mux3~5_combout\)))) # (!\U1|Mux3~8_combout\ & (!\U1|PC\(5) & (\U1|Mux3~5_combout\ $ (\U1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(5),
	datab => \U1|Mux3~8_combout\,
	datac => \U1|Mux3~5_combout\,
	datad => \U1|Mux3~4_combout\,
	combout => \U1|Mux3~6_combout\);

-- Location: LCCOMB_X43_Y47_N22
\U1|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~7_combout\ = (\U1|PC\(6) & (!\U1|Mux6~2_combout\ & (\U1|Mux3~8_combout\))) # (!\U1|PC\(6) & (((\U1|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~2_combout\,
	datab => \U1|Mux3~8_combout\,
	datac => \U1|Mux3~6_combout\,
	datad => \U1|PC\(6),
	combout => \U1|Mux3~7_combout\);

-- Location: LCCOMB_X42_Y48_N2
\U1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~9_combout\ = (\U1|Mux10~3_combout\ & (\U1|Mux3~7_combout\ & (!\U1|PC\(15) & \U1|Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~3_combout\,
	datab => \U1|Mux3~7_combout\,
	datac => \U1|PC\(15),
	datad => \U1|Mux10~2_combout\,
	combout => \U1|Mux3~9_combout\);

-- Location: LCCOMB_X42_Y48_N4
\U1|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~9_combout\ = (\U1|Mux10~3_combout\ & (\U1|Mux10~2_combout\ & (!\U1|PC\(6) & \U1|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~3_combout\,
	datab => \U1|Mux10~2_combout\,
	datac => \U1|PC\(6),
	datad => \U1|Mux1~7_combout\,
	combout => \U1|Mux1~9_combout\);

-- Location: LCCOMB_X43_Y51_N16
\U1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~0_combout\ = (\U1|PC\(6) & (((\U1|PC\(1)) # (!\U1|Mux11~0_combout\)) # (!\U1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(6),
	datab => \U1|Mux4~0_combout\,
	datac => \U1|PC\(1),
	datad => \U1|Mux11~0_combout\,
	combout => \U1|Mux2~0_combout\);

-- Location: LCCOMB_X43_Y51_N18
\U1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~5_combout\ = (\U1|PC\(2)) # ((\U1|PC\(3) & ((!\U1|PC\(1)) # (!\U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC\(3),
	datab => \U1|Hex_Display_Data\(0),
	datac => \U1|PC\(1),
	datad => \U1|PC\(2),
	combout => \U1|Mux2~5_combout\);

-- Location: LCCOMB_X42_Y51_N28
\U1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~1_combout\ = (\U1|PC\(3) & (!\U1|PC\(2) & ((!\U1|PC\(1)) # (!\U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(3),
	datac => \U1|PC\(2),
	datad => \U1|PC\(1),
	combout => \U1|Mux2~1_combout\);

-- Location: LCCOMB_X42_Y51_N6
\U1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~2_combout\ = (!\U1|PC\(2) & ((\U1|Hex_Display_Data\(0) & (\U1|PC\(3) $ (\U1|PC\(1)))) # (!\U1|Hex_Display_Data\(0) & (!\U1|PC\(3) & !\U1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(3),
	datac => \U1|PC\(2),
	datad => \U1|PC\(1),
	combout => \U1|Mux2~2_combout\);

-- Location: LCCOMB_X42_Y51_N24
\U1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~3_combout\ = (\U1|PC\(1) & (\U1|Hex_Display_Data\(0) $ (((\U1|PC\(3)) # (\U1|PC\(2)))))) # (!\U1|PC\(1) & (!\U1|PC\(3) & ((\U1|PC\(2)) # (!\U1|Hex_Display_Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(0),
	datab => \U1|PC\(3),
	datac => \U1|PC\(2),
	datad => \U1|PC\(1),
	combout => \U1|Mux2~3_combout\);

-- Location: LCCOMB_X42_Y51_N2
\U1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~4_combout\ = (\U1|PC\(4) & (((\U1|PC\(5))) # (!\U1|Mux2~2_combout\))) # (!\U1|PC\(4) & (((!\U1|PC\(5) & \U1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux2~2_combout\,
	datab => \U1|PC\(4),
	datac => \U1|PC\(5),
	datad => \U1|Mux2~3_combout\,
	combout => \U1|Mux2~4_combout\);

-- Location: LCCOMB_X42_Y51_N4
\U1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~6_combout\ = (\U1|PC\(5) & ((\U1|Mux2~4_combout\ & (\U1|Mux2~5_combout\)) # (!\U1|Mux2~4_combout\ & ((\U1|Mux2~1_combout\))))) # (!\U1|PC\(5) & (((\U1|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux2~5_combout\,
	datab => \U1|Mux2~1_combout\,
	datac => \U1|PC\(5),
	datad => \U1|Mux2~4_combout\,
	combout => \U1|Mux2~6_combout\);

-- Location: LCCOMB_X42_Y51_N30
\U1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~7_combout\ = ((\U1|Mux2~0_combout\) # ((\U1|Mux2~6_combout\ & !\U1|PC\(6)))) # (!\U1|Mux10~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~7_combout\,
	datab => \U1|Mux2~0_combout\,
	datac => \U1|Mux2~6_combout\,
	datad => \U1|PC\(6),
	combout => \U1|Mux2~7_combout\);

-- Location: LCCOMB_X43_Y46_N20
\U1|Mux307~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux307~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|PC\(15)) # (\U1|Mux1~9_combout\ $ (\U1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~9_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Mux2~7_combout\,
	datad => \U1|PC\(15),
	combout => \U1|Mux307~2_combout\);

-- Location: LCCOMB_X43_Y46_N14
\U1|Mux307~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux307~5_combout\ = (\U1|Mux3~9_combout\ & (\U1|Mux1~8_combout\ & \U1|Mux307~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux3~9_combout\,
	datac => \U1|Mux1~8_combout\,
	datad => \U1|Mux307~2_combout\,
	combout => \U1|Mux307~5_combout\);

-- Location: LCCOMB_X42_Y48_N18
\U1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~8_combout\ = (!\U1|Mux2~7_combout\ & !\U1|PC\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux2~7_combout\,
	datac => \U1|PC\(15),
	combout => \U1|Mux2~8_combout\);

-- Location: LCCOMB_X42_Y48_N22
\U1|registers[6].dataOrInstruction[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[15]~0_combout\ = (!\U1|Mux1~8_combout\ & (!\U1|Mux3~9_combout\ & (\U1|Mux0~6_combout\ $ (!\U1|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~6_combout\,
	datab => \U1|Mux2~8_combout\,
	datac => \U1|Mux1~8_combout\,
	datad => \U1|Mux3~9_combout\,
	combout => \U1|registers[6].dataOrInstruction[15]~0_combout\);

-- Location: LCCOMB_X41_Y48_N18
\U1|registers[0].dataOrInstruction[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[0].dataOrInstruction[15]~0_combout\ = (!\U1|Mux4~4_combout\ & (\U1|registers[6].dataOrInstruction[15]~0_combout\ & (!\U1|Mux5~3_combout\ & !\U1|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datab => \U1|registers[6].dataOrInstruction[15]~0_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|Mux6~7_combout\,
	combout => \U1|registers[0].dataOrInstruction[15]~0_combout\);

-- Location: LCCOMB_X41_Y48_N4
\U1|registers[0].dataOrInstruction[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[0].dataOrInstruction[15]~1_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|registers[0].dataOrInstruction[15]~0_combout\) # ((\U1|Decoder1~10_combout\ & \U1|Mux307~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Decoder1~10_combout\,
	datab => \U1|Mux307~5_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|registers[0].dataOrInstruction[15]~0_combout\,
	combout => \U1|registers[0].dataOrInstruction[15]~1_combout\);

-- Location: FF_X41_Y48_N27
\U1|registers[0].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[0].dataOrInstruction[0]~feeder_combout\,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(0));

-- Location: LCCOMB_X43_Y46_N12
\U1|registers[15].dataOrInstruction[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[15].dataOrInstruction[14]~4_combout\ = (!\KEY[0]~input_o\ & (!\U1|enableSwitch~q\ & (!\U1|Mux2~7_combout\ & !\U1|PC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \U1|enableSwitch~q\,
	datac => \U1|Mux2~7_combout\,
	datad => \U1|PC\(15),
	combout => \U1|registers[15].dataOrInstruction[14]~4_combout\);

-- Location: LCCOMB_X43_Y46_N2
\U1|registers[15].dataOrInstruction[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[15].dataOrInstruction[14]~2_combout\ = (\U1|registers[15].dataOrInstruction[14]~4_combout\ & (!\U1|Mux0~6_combout\ & (\U1|Mux1~8_combout\ & \U1|Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[15].dataOrInstruction[14]~4_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Mux1~8_combout\,
	datad => \U1|Mux3~9_combout\,
	combout => \U1|registers[15].dataOrInstruction[14]~2_combout\);

-- Location: LCCOMB_X46_Y47_N24
\U1|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~2_combout\ = (!\U1|Mux9~5_combout\ & (!\U1|Mux10~12_combout\ & (!\U1|Mux8~6_combout\ & \U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~2_combout\);

-- Location: LCCOMB_X46_Y47_N26
\U1|registers[8].dataOrInstruction[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[8].dataOrInstruction[14]~0_combout\ = (\U1|registers[15].dataOrInstruction[14]~2_combout\ & \U1|Decoder1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|registers[15].dataOrInstruction[14]~2_combout\,
	datad => \U1|Decoder1~2_combout\,
	combout => \U1|registers[8].dataOrInstruction[14]~0_combout\);

-- Location: FF_X43_Y50_N1
\U1|registers[8].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~0_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(0));

-- Location: LCCOMB_X45_Y51_N12
\U1|registers[4].dataOrInstruction[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[4].dataOrInstruction[0]~feeder_combout\ = \U1|Mux322~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux322~4_combout\,
	combout => \U1|registers[4].dataOrInstruction[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y48_N12
\U1|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~6_combout\ = (!\U1|Mux7~7_combout\ & (!\U1|Mux9~5_combout\ & (\U1|Mux8~6_combout\ & !\U1|Mux10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux7~7_combout\,
	datab => \U1|Mux9~5_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux10~12_combout\,
	combout => \U1|Decoder1~6_combout\);

-- Location: LCCOMB_X50_Y48_N2
\U1|registers[4].dataOrInstruction[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[4].dataOrInstruction[15]~0_combout\ = (\U1|Mux4~4_combout\ & (!\U1|Mux6~7_combout\ & (\U1|registers[6].dataOrInstruction[15]~0_combout\ & !\U1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[6].dataOrInstruction[15]~0_combout\,
	datad => \U1|Mux5~3_combout\,
	combout => \U1|registers[4].dataOrInstruction[15]~0_combout\);

-- Location: LCCOMB_X50_Y48_N14
\U1|registers[4].dataOrInstruction[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[4].dataOrInstruction[15]~1_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|registers[4].dataOrInstruction[15]~0_combout\) # ((\U1|Decoder1~6_combout\ & \U1|Mux307~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Decoder1~6_combout\,
	datab => \U1|Mux307~5_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|registers[4].dataOrInstruction[15]~0_combout\,
	combout => \U1|registers[4].dataOrInstruction[15]~1_combout\);

-- Location: FF_X45_Y51_N13
\U1|registers[4].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[4].dataOrInstruction[0]~feeder_combout\,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(0));

-- Location: LCCOMB_X46_Y47_N6
\U1|Decoder1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~14_combout\ = (!\U1|Mux9~5_combout\ & (!\U1|Mux10~12_combout\ & (\U1|Mux8~6_combout\ & \U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~14_combout\);

-- Location: LCCOMB_X46_Y47_N8
\U1|registers[12].dataOrInstruction[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[12].dataOrInstruction[14]~0_combout\ = (\U1|registers[15].dataOrInstruction[14]~2_combout\ & \U1|Decoder1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|registers[15].dataOrInstruction[14]~2_combout\,
	datad => \U1|Decoder1~14_combout\,
	combout => \U1|registers[12].dataOrInstruction[14]~0_combout\);

-- Location: FF_X43_Y50_N11
\U1|registers[12].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~0_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(0));

-- Location: LCCOMB_X43_Y50_N10
\U1|Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~4_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\ & ((\U1|registers[12].dataOrInstruction\(0)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[4].dataOrInstruction\(0))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[4].dataOrInstruction\(0),
	datab => \U1|Mux12~3_combout\,
	datac => \U1|registers[12].dataOrInstruction\(0),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux46~4_combout\);

-- Location: LCCOMB_X43_Y50_N0
\U1|Mux46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~5_combout\ = (\U1|Mux12~3_combout\ & (((\U1|Mux46~4_combout\)))) # (!\U1|Mux12~3_combout\ & ((\U1|Mux46~4_combout\ & ((\U1|registers[8].dataOrInstruction\(0)))) # (!\U1|Mux46~4_combout\ & (\U1|registers[0].dataOrInstruction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[0].dataOrInstruction\(0),
	datab => \U1|Mux12~3_combout\,
	datac => \U1|registers[8].dataOrInstruction\(0),
	datad => \U1|Mux46~4_combout\,
	combout => \U1|Mux46~5_combout\);

-- Location: LCCOMB_X41_Y48_N0
\U1|registers[2].dataOrInstruction[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[2].dataOrInstruction[0]~feeder_combout\ = \U1|Mux322~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux322~4_combout\,
	combout => \U1|registers[2].dataOrInstruction[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y48_N10
\U1|Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~8_combout\ = (!\U1|Mux10~12_combout\ & (!\U1|Mux8~6_combout\ & (!\U1|Mux7~7_combout\ & \U1|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~12_combout\,
	datab => \U1|Mux8~6_combout\,
	datac => \U1|Mux7~7_combout\,
	datad => \U1|Mux9~5_combout\,
	combout => \U1|Decoder1~8_combout\);

-- Location: LCCOMB_X41_Y48_N24
\U1|registers[2].dataOrInstruction[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[2].dataOrInstruction[15]~0_combout\ = (!\U1|Mux4~4_combout\ & (\U1|registers[6].dataOrInstruction[15]~0_combout\ & (\U1|Mux5~3_combout\ & !\U1|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datab => \U1|registers[6].dataOrInstruction[15]~0_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|Mux6~7_combout\,
	combout => \U1|registers[2].dataOrInstruction[15]~0_combout\);

-- Location: LCCOMB_X41_Y48_N20
\U1|registers[2].dataOrInstruction[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[2].dataOrInstruction[15]~1_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|registers[2].dataOrInstruction[15]~0_combout\) # ((\U1|Decoder1~8_combout\ & \U1|Mux307~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Decoder1~8_combout\,
	datab => \U1|Mux307~5_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|registers[2].dataOrInstruction[15]~0_combout\,
	combout => \U1|registers[2].dataOrInstruction[15]~1_combout\);

-- Location: FF_X41_Y48_N1
\U1|registers[2].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[2].dataOrInstruction[0]~feeder_combout\,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(0));

-- Location: LCCOMB_X49_Y51_N8
\U1|registers[6].dataOrInstruction[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[0]~feeder_combout\ = \U1|Mux322~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux322~4_combout\,
	combout => \U1|registers[6].dataOrInstruction[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y48_N28
\U1|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~5_combout\ = (!\U1|Mux10~12_combout\ & (\U1|Mux8~6_combout\ & (!\U1|Mux7~7_combout\ & \U1|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~12_combout\,
	datab => \U1|Mux8~6_combout\,
	datac => \U1|Mux7~7_combout\,
	datad => \U1|Mux9~5_combout\,
	combout => \U1|Decoder1~5_combout\);

-- Location: LCCOMB_X41_Y48_N2
\U1|registers[6].dataOrInstruction[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[15]~1_combout\ = (\U1|Mux4~4_combout\ & (\U1|registers[6].dataOrInstruction[15]~0_combout\ & (\U1|Mux5~3_combout\ & !\U1|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datab => \U1|registers[6].dataOrInstruction[15]~0_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|Mux6~7_combout\,
	combout => \U1|registers[6].dataOrInstruction[15]~1_combout\);

-- Location: LCCOMB_X41_Y48_N6
\U1|registers[6].dataOrInstruction[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[15]~2_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|registers[6].dataOrInstruction[15]~1_combout\) # ((\U1|Decoder1~5_combout\ & \U1|Mux307~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Decoder1~5_combout\,
	datab => \U1|Mux307~5_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|registers[6].dataOrInstruction[15]~1_combout\,
	combout => \U1|registers[6].dataOrInstruction[15]~2_combout\);

-- Location: FF_X49_Y51_N9
\U1|registers[6].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[6].dataOrInstruction[0]~feeder_combout\,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(0));

-- Location: LCCOMB_X46_Y47_N20
\U1|Decoder1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~13_combout\ = (\U1|Mux9~5_combout\ & (!\U1|Mux10~12_combout\ & (\U1|Mux8~6_combout\ & \U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~13_combout\);

-- Location: LCCOMB_X45_Y46_N0
\U1|registers[14].dataOrInstruction[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[14].dataOrInstruction[14]~0_combout\ = (\U1|registers[15].dataOrInstruction[14]~2_combout\ & \U1|Decoder1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|registers[15].dataOrInstruction[14]~2_combout\,
	datad => \U1|Decoder1~13_combout\,
	combout => \U1|registers[14].dataOrInstruction[14]~0_combout\);

-- Location: FF_X48_Y50_N17
\U1|registers[14].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~0_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(0));

-- Location: LCCOMB_X48_Y50_N16
\U1|Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~2_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[14].dataOrInstruction\(0)) # (!\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[6].dataOrInstruction\(0) & ((\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[6].dataOrInstruction\(0),
	datac => \U1|registers[14].dataOrInstruction\(0),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux46~2_combout\);

-- Location: LCCOMB_X46_Y47_N2
\U1|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~0_combout\ = (\U1|Mux9~5_combout\ & (!\U1|Mux10~12_combout\ & (!\U1|Mux8~6_combout\ & \U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~0_combout\);

-- Location: LCCOMB_X49_Y47_N6
\U1|registers[10].dataOrInstruction[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[10].dataOrInstruction[14]~0_combout\ = (\U1|registers[15].dataOrInstruction[14]~2_combout\ & \U1|Decoder1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|registers[15].dataOrInstruction[14]~2_combout\,
	datad => \U1|Decoder1~0_combout\,
	combout => \U1|registers[10].dataOrInstruction[14]~0_combout\);

-- Location: FF_X48_Y50_N15
\U1|registers[10].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~0_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(0));

-- Location: LCCOMB_X48_Y50_N14
\U1|Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~3_combout\ = (\U1|Mux46~2_combout\ & (((\U1|registers[10].dataOrInstruction\(0)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux46~2_combout\ & (\U1|registers[2].dataOrInstruction\(0) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[2].dataOrInstruction\(0),
	datab => \U1|Mux46~2_combout\,
	datac => \U1|registers[10].dataOrInstruction\(0),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux46~3_combout\);

-- Location: LCCOMB_X45_Y51_N6
\U1|Mux46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~6_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\) # ((\U1|Mux46~3_combout\)))) # (!\U1|Mux13~5_combout\ & (!\U1|Mux14~6_combout\ & (\U1|Mux46~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux14~6_combout\,
	datac => \U1|Mux46~5_combout\,
	datad => \U1|Mux46~3_combout\,
	combout => \U1|Mux46~6_combout\);

-- Location: LCCOMB_X46_Y47_N10
\U1|Decoder1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~15_combout\ = (\U1|Mux9~5_combout\ & (\U1|Mux10~12_combout\ & (\U1|Mux8~6_combout\ & \U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~15_combout\);

-- Location: LCCOMB_X46_Y47_N12
\U1|registers[15].dataOrInstruction[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[15].dataOrInstruction[14]~3_combout\ = (\U1|registers[15].dataOrInstruction[14]~2_combout\ & \U1|Decoder1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|registers[15].dataOrInstruction[14]~2_combout\,
	datad => \U1|Decoder1~15_combout\,
	combout => \U1|registers[15].dataOrInstruction[14]~3_combout\);

-- Location: FF_X47_Y50_N1
\U1|registers[15].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~0_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(0));

-- Location: LCCOMB_X50_Y46_N8
\U1|Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~7_combout\ = (\U1|Mux8~6_combout\ & (\U1|Mux10~12_combout\ & (!\U1|Mux7~7_combout\ & \U1|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~6_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux7~7_combout\,
	datad => \U1|Mux9~5_combout\,
	combout => \U1|Decoder1~7_combout\);

-- Location: LCCOMB_X50_Y48_N24
\U1|registers[7].dataOrInstruction[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[7].dataOrInstruction[15]~0_combout\ = (\U1|Mux4~4_combout\ & (\U1|Mux6~7_combout\ & (\U1|registers[6].dataOrInstruction[15]~0_combout\ & \U1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[6].dataOrInstruction[15]~0_combout\,
	datad => \U1|Mux5~3_combout\,
	combout => \U1|registers[7].dataOrInstruction[15]~0_combout\);

-- Location: LCCOMB_X50_Y48_N26
\U1|registers[7].dataOrInstruction[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[7].dataOrInstruction[15]~1_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|registers[7].dataOrInstruction[15]~0_combout\) # ((\U1|Decoder1~7_combout\ & \U1|Mux307~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Decoder1~7_combout\,
	datab => \U1|Mux307~5_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|registers[7].dataOrInstruction[15]~0_combout\,
	combout => \U1|registers[7].dataOrInstruction[15]~1_combout\);

-- Location: FF_X48_Y51_N9
\U1|registers[7].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux322~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(0));

-- Location: LCCOMB_X41_Y48_N22
\U1|registers[3].dataOrInstruction[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[3].dataOrInstruction[15]~0_combout\ = (!\U1|Mux4~4_combout\ & (\U1|registers[6].dataOrInstruction[15]~0_combout\ & (\U1|Mux5~3_combout\ & \U1|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datab => \U1|registers[6].dataOrInstruction[15]~0_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|Mux6~7_combout\,
	combout => \U1|registers[3].dataOrInstruction[15]~0_combout\);

-- Location: LCCOMB_X43_Y48_N0
\U1|Decoder1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~11_combout\ = (!\U1|Mux8~6_combout\ & (\U1|Mux10~12_combout\ & (\U1|Mux9~5_combout\ & !\U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~6_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux9~5_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~11_combout\);

-- Location: LCCOMB_X43_Y48_N18
\U1|registers[3].dataOrInstruction[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[3].dataOrInstruction[15]~1_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|registers[3].dataOrInstruction[15]~0_combout\) # ((\U1|Mux307~5_combout\ & \U1|Decoder1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[3].dataOrInstruction[15]~0_combout\,
	datab => \U1|Hex_Display_Data[28]~0_combout\,
	datac => \U1|Mux307~5_combout\,
	datad => \U1|Decoder1~11_combout\,
	combout => \U1|registers[3].dataOrInstruction[15]~1_combout\);

-- Location: FF_X47_Y49_N31
\U1|registers[3].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux322~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(0));

-- Location: LCCOMB_X46_Y47_N28
\U1|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~3_combout\ = (\U1|Mux9~5_combout\ & (\U1|Mux10~12_combout\ & (!\U1|Mux8~6_combout\ & \U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~3_combout\);

-- Location: LCCOMB_X46_Y47_N0
\U1|registers[11].dataOrInstruction[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[11].dataOrInstruction[14]~0_combout\ = (\U1|registers[15].dataOrInstruction[14]~2_combout\ & \U1|Decoder1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[15].dataOrInstruction[14]~2_combout\,
	datad => \U1|Decoder1~3_combout\,
	combout => \U1|registers[11].dataOrInstruction[14]~0_combout\);

-- Location: FF_X47_Y52_N9
\U1|registers[11].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~0_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(0));

-- Location: LCCOMB_X47_Y52_N8
\U1|Mux46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~7_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[11].dataOrInstruction\(0)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[3].dataOrInstruction\(0) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[3].dataOrInstruction\(0),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[11].dataOrInstruction\(0),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux46~7_combout\);

-- Location: LCCOMB_X48_Y51_N8
\U1|Mux46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~8_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux46~7_combout\ & (\U1|registers[15].dataOrInstruction\(0))) # (!\U1|Mux46~7_combout\ & ((\U1|registers[7].dataOrInstruction\(0)))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux46~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[15].dataOrInstruction\(0),
	datac => \U1|registers[7].dataOrInstruction\(0),
	datad => \U1|Mux46~7_combout\,
	combout => \U1|Mux46~8_combout\);

-- Location: LCCOMB_X46_Y47_N16
\U1|Decoder1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~12_combout\ = (!\U1|Mux9~5_combout\ & (\U1|Mux10~12_combout\ & (\U1|Mux8~6_combout\ & \U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~12_combout\);

-- Location: LCCOMB_X46_Y47_N18
\U1|registers[13].dataOrInstruction[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[13].dataOrInstruction[14]~0_combout\ = (\U1|registers[15].dataOrInstruction[14]~2_combout\ & \U1|Decoder1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|registers[15].dataOrInstruction[14]~2_combout\,
	datad => \U1|Decoder1~12_combout\,
	combout => \U1|registers[13].dataOrInstruction[14]~0_combout\);

-- Location: FF_X50_Y50_N1
\U1|registers[13].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~0_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(0));

-- Location: LCCOMB_X46_Y52_N28
\U1|registers[1].dataOrInstruction[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[1].dataOrInstruction[0]~feeder_combout\ = \U1|Mux322~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux322~4_combout\,
	combout => \U1|registers[1].dataOrInstruction[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y48_N30
\U1|registers[1].dataOrInstruction[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[1].dataOrInstruction[15]~0_combout\ = (!\U1|Mux4~4_combout\ & (\U1|registers[6].dataOrInstruction[15]~0_combout\ & (!\U1|Mux5~3_combout\ & \U1|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datab => \U1|registers[6].dataOrInstruction[15]~0_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|Mux6~7_combout\,
	combout => \U1|registers[1].dataOrInstruction[15]~0_combout\);

-- Location: LCCOMB_X46_Y47_N14
\U1|Decoder1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~9_combout\ = (!\U1|Mux9~5_combout\ & (\U1|Mux10~12_combout\ & (!\U1|Mux8~6_combout\ & !\U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~9_combout\);

-- Location: LCCOMB_X41_Y48_N16
\U1|registers[1].dataOrInstruction[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[1].dataOrInstruction[15]~1_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|registers[1].dataOrInstruction[15]~0_combout\) # ((\U1|Decoder1~9_combout\ & \U1|Mux307~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction[15]~0_combout\,
	datab => \U1|Hex_Display_Data[28]~0_combout\,
	datac => \U1|Decoder1~9_combout\,
	datad => \U1|Mux307~5_combout\,
	combout => \U1|registers[1].dataOrInstruction[15]~1_combout\);

-- Location: FF_X46_Y52_N29
\U1|registers[1].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[1].dataOrInstruction[0]~feeder_combout\,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(0));

-- Location: LCCOMB_X46_Y47_N4
\U1|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~1_combout\ = (!\U1|Mux9~5_combout\ & (\U1|Mux10~12_combout\ & (!\U1|Mux8~6_combout\ & \U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux8~6_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~1_combout\);

-- Location: LCCOMB_X46_Y47_N30
\U1|registers[9].dataOrInstruction[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[14]~0_combout\ = (\U1|Decoder1~1_combout\ & \U1|registers[15].dataOrInstruction[14]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Decoder1~1_combout\,
	datac => \U1|registers[15].dataOrInstruction[14]~2_combout\,
	combout => \U1|registers[9].dataOrInstruction[14]~0_combout\);

-- Location: FF_X50_Y50_N23
\U1|registers[9].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~0_combout\,
	sload => VCC,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(0));

-- Location: LCCOMB_X50_Y50_N22
\U1|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~0_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[9].dataOrInstruction\(0)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[1].dataOrInstruction\(0) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(0),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[9].dataOrInstruction\(0),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux46~0_combout\);

-- Location: LCCOMB_X50_Y50_N0
\U1|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~1_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux46~0_combout\ & ((\U1|registers[13].dataOrInstruction\(0)))) # (!\U1|Mux46~0_combout\ & (\U1|registers[5].dataOrInstruction\(0))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[5].dataOrInstruction\(0),
	datac => \U1|registers[13].dataOrInstruction\(0),
	datad => \U1|Mux46~0_combout\,
	combout => \U1|Mux46~1_combout\);

-- Location: LCCOMB_X48_Y51_N10
\U1|Mux46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux46~9_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux46~6_combout\ & (\U1|Mux46~8_combout\)) # (!\U1|Mux46~6_combout\ & ((\U1|Mux46~1_combout\))))) # (!\U1|Mux14~6_combout\ & (\U1|Mux46~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux46~6_combout\,
	datac => \U1|Mux46~8_combout\,
	datad => \U1|Mux46~1_combout\,
	combout => \U1|Mux46~9_combout\);

-- Location: LCCOMB_X47_Y50_N0
\U1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~0_combout\ = (\U1|Mux46~9_combout\ & (\U1|Mux30~4_combout\ $ (VCC))) # (!\U1|Mux46~9_combout\ & (\U1|Mux30~4_combout\ & VCC))
-- \U1|Add2~1\ = CARRY((\U1|Mux46~9_combout\ & \U1|Mux30~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux46~9_combout\,
	datab => \U1|Mux30~4_combout\,
	datad => VCC,
	combout => \U1|Add2~0_combout\,
	cout => \U1|Add2~1\);

-- Location: LCCOMB_X45_Y49_N18
\U1|Mux322~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux322~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & ((\U1|Add2~0_combout\))) # (!\U1|Mux1~8_combout\ & (\U1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add0~0_combout\,
	datad => \U1|Add2~0_combout\,
	combout => \U1|Mux322~2_combout\);

-- Location: LCCOMB_X48_Y49_N0
\U1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = (\U1|Mux30~4_combout\ & ((GND) # (!\U1|Mux14~6_combout\))) # (!\U1|Mux30~4_combout\ & (\U1|Mux14~6_combout\ $ (GND)))
-- \U1|Add1~1\ = CARRY((\U1|Mux30~4_combout\) # (!\U1|Mux14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux30~4_combout\,
	datab => \U1|Mux14~6_combout\,
	datad => VCC,
	combout => \U1|Add1~0_combout\,
	cout => \U1|Add1~1\);

-- Location: LCCOMB_X47_Y49_N30
\U1|Mux322~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux322~4_combout\ = (\U1|Mux322~2_combout\) # ((\U1|Add1~0_combout\ & (\U1|Mux9~0_combout\ & \U1|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux322~2_combout\,
	datab => \U1|Add1~0_combout\,
	datac => \U1|Mux9~0_combout\,
	datad => \U1|Mux0~5_combout\,
	combout => \U1|Mux322~4_combout\);

-- Location: LCCOMB_X45_Y51_N10
\U1|registers[5].dataOrInstruction[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[5].dataOrInstruction[0]~feeder_combout\ = \U1|Mux322~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux322~4_combout\,
	combout => \U1|registers[5].dataOrInstruction[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y48_N8
\U1|registers[5].dataOrInstruction[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[5].dataOrInstruction[15]~0_combout\ = (\U1|Mux4~4_combout\ & (\U1|registers[6].dataOrInstruction[15]~0_combout\ & (!\U1|Mux5~3_combout\ & \U1|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datab => \U1|registers[6].dataOrInstruction[15]~0_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|Mux6~7_combout\,
	combout => \U1|registers[5].dataOrInstruction[15]~0_combout\);

-- Location: LCCOMB_X43_Y48_N28
\U1|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Decoder1~4_combout\ = (\U1|Mux8~6_combout\ & (\U1|Mux10~12_combout\ & (!\U1|Mux9~5_combout\ & !\U1|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~6_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|Mux9~5_combout\,
	datad => \U1|Mux7~7_combout\,
	combout => \U1|Decoder1~4_combout\);

-- Location: LCCOMB_X42_Y48_N16
\U1|registers[5].dataOrInstruction[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[5].dataOrInstruction[15]~1_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|registers[5].dataOrInstruction[15]~0_combout\) # ((\U1|Mux307~5_combout\ & \U1|Decoder1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[5].dataOrInstruction[15]~0_combout\,
	datab => \U1|Hex_Display_Data[28]~0_combout\,
	datac => \U1|Mux307~5_combout\,
	datad => \U1|Decoder1~4_combout\,
	combout => \U1|registers[5].dataOrInstruction[15]~1_combout\);

-- Location: FF_X45_Y51_N11
\U1|registers[5].dataOrInstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[5].dataOrInstruction[0]~feeder_combout\,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(0));

-- Location: LCCOMB_X45_Y51_N16
\U1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux30~0_combout\ = (\U1|Mux5~3_combout\ & (((\U1|registers[6].dataOrInstruction\(0)) # (\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(0) & ((!\U1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[4].dataOrInstruction\(0),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[6].dataOrInstruction\(0),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux30~0_combout\);

-- Location: LCCOMB_X45_Y51_N2
\U1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux30~1_combout\ = (\U1|Mux30~0_combout\ & (((\U1|registers[7].dataOrInstruction\(0)) # (!\U1|Mux6~7_combout\)))) # (!\U1|Mux30~0_combout\ & (\U1|registers[5].dataOrInstruction\(0) & ((\U1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[5].dataOrInstruction\(0),
	datab => \U1|Mux30~0_combout\,
	datac => \U1|registers[7].dataOrInstruction\(0),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux30~1_combout\);

-- Location: LCCOMB_X41_Y48_N12
\U1|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux30~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & (\U1|registers[1].dataOrInstruction\(0))) # (!\U1|Mux6~7_combout\ & ((\U1|registers[0].dataOrInstruction\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[1].dataOrInstruction\(0),
	datac => \U1|registers[0].dataOrInstruction\(0),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux30~2_combout\);

-- Location: LCCOMB_X41_Y48_N14
\U1|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux30~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux30~2_combout\ & ((\U1|registers[3].dataOrInstruction\(0)))) # (!\U1|Mux30~2_combout\ & (\U1|registers[2].dataOrInstruction\(0))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[2].dataOrInstruction\(0),
	datac => \U1|registers[3].dataOrInstruction\(0),
	datad => \U1|Mux30~2_combout\,
	combout => \U1|Mux30~3_combout\);

-- Location: LCCOMB_X42_Y48_N20
\U1|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux30~4_combout\ = (\U1|Mux4~4_combout\ & (\U1|Mux30~1_combout\)) # (!\U1|Mux4~4_combout\ & ((\U1|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux4~4_combout\,
	datac => \U1|Mux30~1_combout\,
	datad => \U1|Mux30~3_combout\,
	combout => \U1|Mux30~4_combout\);

-- Location: LCCOMB_X48_Y49_N2
\U1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux29~4_combout\ & (!\U1|Add1~1\)) # (!\U1|Mux29~4_combout\ & ((\U1|Add1~1\) # (GND))))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux29~4_combout\ & (\U1|Add1~1\ & VCC)) # (!\U1|Mux29~4_combout\ & 
-- (!\U1|Add1~1\))))
-- \U1|Add1~3\ = CARRY((\U1|Mux13~5_combout\ & ((!\U1|Add1~1\) # (!\U1|Mux29~4_combout\))) # (!\U1|Mux13~5_combout\ & (!\U1|Mux29~4_combout\ & !\U1|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux29~4_combout\,
	datad => VCC,
	cin => \U1|Add1~1\,
	combout => \U1|Add1~2_combout\,
	cout => \U1|Add1~3\);

-- Location: FF_X47_Y48_N31
\U1|registers[13].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~2_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(1));

-- Location: FF_X46_Y50_N5
\U1|registers[12].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~2_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(1));

-- Location: LCCOMB_X46_Y50_N4
\U1|Mux45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~7_combout\ = (\U1|Mux13~5_combout\ & (((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & (\U1|registers[13].dataOrInstruction\(1))) # (!\U1|Mux14~6_combout\ & ((\U1|registers[12].dataOrInstruction\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[13].dataOrInstruction\(1),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[12].dataOrInstruction\(1),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux45~7_combout\);

-- Location: FF_X48_Y50_N3
\U1|registers[14].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~2_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(1));

-- Location: FF_X47_Y50_N3
\U1|registers[15].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~2_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(1));

-- Location: LCCOMB_X48_Y50_N2
\U1|Mux45~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~8_combout\ = (\U1|Mux45~7_combout\ & (((\U1|registers[15].dataOrInstruction\(1))) # (!\U1|Mux13~5_combout\))) # (!\U1|Mux45~7_combout\ & (\U1|Mux13~5_combout\ & (\U1|registers[14].dataOrInstruction\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux45~7_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[14].dataOrInstruction\(1),
	datad => \U1|registers[15].dataOrInstruction\(1),
	combout => \U1|Mux45~8_combout\);

-- Location: FF_X49_Y51_N5
\U1|registers[6].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux321~4_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(1));

-- Location: FF_X48_Y51_N7
\U1|registers[7].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux321~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(1));

-- Location: FF_X47_Y47_N1
\U1|registers[5].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux321~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(1));

-- Location: FF_X49_Y51_N15
\U1|registers[4].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux321~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(1));

-- Location: LCCOMB_X49_Y51_N14
\U1|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~0_combout\ = (\U1|Mux14~6_combout\ & ((\U1|registers[5].dataOrInstruction\(1)) # ((\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & (((\U1|registers[4].dataOrInstruction\(1) & !\U1|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[5].dataOrInstruction\(1),
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[4].dataOrInstruction\(1),
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux45~0_combout\);

-- Location: LCCOMB_X48_Y51_N6
\U1|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~1_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux45~0_combout\ & ((\U1|registers[7].dataOrInstruction\(1)))) # (!\U1|Mux45~0_combout\ & (\U1|registers[6].dataOrInstruction\(1))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[6].dataOrInstruction\(1),
	datac => \U1|registers[7].dataOrInstruction\(1),
	datad => \U1|Mux45~0_combout\,
	combout => \U1|Mux45~1_combout\);

-- Location: FF_X47_Y49_N5
\U1|registers[3].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux321~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(1));

-- Location: FF_X47_Y47_N3
\U1|registers[2].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux321~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(1));

-- Location: FF_X46_Y51_N25
\U1|registers[0].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux321~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(1));

-- Location: LCCOMB_X46_Y51_N24
\U1|Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~4_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[2].dataOrInstruction\(1)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|registers[0].dataOrInstruction\(1) & !\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[2].dataOrInstruction\(1),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[0].dataOrInstruction\(1),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux45~4_combout\);

-- Location: LCCOMB_X46_Y51_N6
\U1|Mux45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~5_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux45~4_combout\ & (\U1|registers[3].dataOrInstruction\(1))) # (!\U1|Mux45~4_combout\ & ((\U1|registers[1].dataOrInstruction\(1)))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux45~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[3].dataOrInstruction\(1),
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[1].dataOrInstruction\(1),
	datad => \U1|Mux45~4_combout\,
	combout => \U1|Mux45~5_combout\);

-- Location: FF_X49_Y49_N15
\U1|registers[9].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~2_combout\,
	sload => VCC,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(1));

-- Location: FF_X45_Y50_N23
\U1|registers[11].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~2_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(1));

-- Location: LCCOMB_X48_Y50_N30
\U1|registers[10].dataOrInstruction[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[10].dataOrInstruction[1]~feeder_combout\ = \U1|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~2_combout\,
	combout => \U1|registers[10].dataOrInstruction[1]~feeder_combout\);

-- Location: FF_X48_Y50_N31
\U1|registers[10].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[10].dataOrInstruction[1]~feeder_combout\,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(1));

-- Location: FF_X45_Y50_N29
\U1|registers[8].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~2_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(1));

-- Location: LCCOMB_X45_Y50_N28
\U1|Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~2_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[10].dataOrInstruction\(1)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|registers[8].dataOrInstruction\(1) & !\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[10].dataOrInstruction\(1),
	datac => \U1|registers[8].dataOrInstruction\(1),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux45~2_combout\);

-- Location: LCCOMB_X45_Y50_N22
\U1|Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~3_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux45~2_combout\ & ((\U1|registers[11].dataOrInstruction\(1)))) # (!\U1|Mux45~2_combout\ & (\U1|registers[9].dataOrInstruction\(1))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|registers[9].dataOrInstruction\(1),
	datac => \U1|registers[11].dataOrInstruction\(1),
	datad => \U1|Mux45~2_combout\,
	combout => \U1|Mux45~3_combout\);

-- Location: LCCOMB_X48_Y50_N0
\U1|Mux45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~6_combout\ = (\U1|Mux12~3_combout\ & (\U1|Mux11~5_combout\)) # (!\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\ & ((\U1|Mux45~3_combout\))) # (!\U1|Mux11~5_combout\ & (\U1|Mux45~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux11~5_combout\,
	datac => \U1|Mux45~5_combout\,
	datad => \U1|Mux45~3_combout\,
	combout => \U1|Mux45~6_combout\);

-- Location: LCCOMB_X48_Y50_N4
\U1|Mux45~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux45~9_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux45~6_combout\ & (\U1|Mux45~8_combout\)) # (!\U1|Mux45~6_combout\ & ((\U1|Mux45~1_combout\))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux45~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux45~8_combout\,
	datac => \U1|Mux45~1_combout\,
	datad => \U1|Mux45~6_combout\,
	combout => \U1|Mux45~9_combout\);

-- Location: LCCOMB_X47_Y50_N2
\U1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~2_combout\ = (\U1|Mux29~4_combout\ & ((\U1|Mux45~9_combout\ & (\U1|Add2~1\ & VCC)) # (!\U1|Mux45~9_combout\ & (!\U1|Add2~1\)))) # (!\U1|Mux29~4_combout\ & ((\U1|Mux45~9_combout\ & (!\U1|Add2~1\)) # (!\U1|Mux45~9_combout\ & ((\U1|Add2~1\) # 
-- (GND)))))
-- \U1|Add2~3\ = CARRY((\U1|Mux29~4_combout\ & (!\U1|Mux45~9_combout\ & !\U1|Add2~1\)) # (!\U1|Mux29~4_combout\ & ((!\U1|Add2~1\) # (!\U1|Mux45~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux29~4_combout\,
	datab => \U1|Mux45~9_combout\,
	datad => VCC,
	cin => \U1|Add2~1\,
	combout => \U1|Add2~2_combout\,
	cout => \U1|Add2~3\);

-- Location: LCCOMB_X49_Y49_N2
\U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux29~4_combout\ & (\U1|Add0~1\ & VCC)) # (!\U1|Mux29~4_combout\ & (!\U1|Add0~1\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux29~4_combout\ & (!\U1|Add0~1\)) # (!\U1|Mux29~4_combout\ & ((\U1|Add0~1\) # 
-- (GND)))))
-- \U1|Add0~3\ = CARRY((\U1|Mux13~5_combout\ & (!\U1|Mux29~4_combout\ & !\U1|Add0~1\)) # (!\U1|Mux13~5_combout\ & ((!\U1|Add0~1\) # (!\U1|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux29~4_combout\,
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: LCCOMB_X45_Y49_N8
\U1|Mux321~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux321~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~2_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Add2~2_combout\,
	datac => \U1|Mux0~6_combout\,
	datad => \U1|Add0~2_combout\,
	combout => \U1|Mux321~2_combout\);

-- Location: LCCOMB_X47_Y49_N4
\U1|Mux321~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux321~4_combout\ = (\U1|Mux321~2_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux0~5_combout\,
	datac => \U1|Add1~2_combout\,
	datad => \U1|Mux321~2_combout\,
	combout => \U1|Mux321~4_combout\);

-- Location: FF_X46_Y51_N7
\U1|registers[1].dataOrInstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux321~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(1));

-- Location: LCCOMB_X45_Y51_N24
\U1|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux29~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & (\U1|registers[1].dataOrInstruction\(1))) # (!\U1|Mux6~7_combout\ & ((\U1|registers[0].dataOrInstruction\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(1),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[0].dataOrInstruction\(1),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux29~2_combout\);

-- Location: LCCOMB_X47_Y47_N2
\U1|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux29~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux29~2_combout\ & ((\U1|registers[3].dataOrInstruction\(1)))) # (!\U1|Mux29~2_combout\ & (\U1|registers[2].dataOrInstruction\(1))))) # (!\U1|Mux5~3_combout\ & (\U1|Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|Mux29~2_combout\,
	datac => \U1|registers[2].dataOrInstruction\(1),
	datad => \U1|registers[3].dataOrInstruction\(1),
	combout => \U1|Mux29~3_combout\);

-- Location: LCCOMB_X49_Y51_N4
\U1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux29~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & ((\U1|registers[6].dataOrInstruction\(1)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[4].dataOrInstruction\(1),
	datac => \U1|registers[6].dataOrInstruction\(1),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux29~0_combout\);

-- Location: LCCOMB_X47_Y47_N0
\U1|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux29~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux29~0_combout\ & (\U1|registers[7].dataOrInstruction\(1))) # (!\U1|Mux29~0_combout\ & ((\U1|registers[5].dataOrInstruction\(1)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[7].dataOrInstruction\(1),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[5].dataOrInstruction\(1),
	datad => \U1|Mux29~0_combout\,
	combout => \U1|Mux29~1_combout\);

-- Location: LCCOMB_X47_Y47_N12
\U1|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux29~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux29~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux29~3_combout\,
	datac => \U1|Mux4~4_combout\,
	datad => \U1|Mux29~1_combout\,
	combout => \U1|Mux29~4_combout\);

-- Location: LCCOMB_X49_Y49_N4
\U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = ((\U1|Mux12~3_combout\ $ (\U1|Mux28~4_combout\ $ (!\U1|Add0~3\)))) # (GND)
-- \U1|Add0~5\ = CARRY((\U1|Mux12~3_combout\ & ((\U1|Mux28~4_combout\) # (!\U1|Add0~3\))) # (!\U1|Mux12~3_combout\ & (\U1|Mux28~4_combout\ & !\U1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux28~4_combout\,
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X47_Y50_N5
\U1|registers[15].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~4_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(2));

-- Location: FF_X45_Y50_N11
\U1|registers[11].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~4_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(2));

-- Location: FF_X48_Y51_N29
\U1|registers[7].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux320~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(2));

-- Location: LCCOMB_X48_Y51_N28
\U1|Mux44~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~7_combout\ = (\U1|Mux12~3_combout\ & (((\U1|registers[7].dataOrInstruction\(2)) # (\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & (\U1|registers[3].dataOrInstruction\(2) & ((!\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[3].dataOrInstruction\(2),
	datac => \U1|registers[7].dataOrInstruction\(2),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux44~7_combout\);

-- Location: LCCOMB_X45_Y50_N10
\U1|Mux44~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~8_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux44~7_combout\ & (\U1|registers[15].dataOrInstruction\(2))) # (!\U1|Mux44~7_combout\ & ((\U1|registers[11].dataOrInstruction\(2)))))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux44~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[15].dataOrInstruction\(2),
	datac => \U1|registers[11].dataOrInstruction\(2),
	datad => \U1|Mux44~7_combout\,
	combout => \U1|Mux44~8_combout\);

-- Location: FF_X48_Y52_N9
\U1|registers[2].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux320~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(2));

-- Location: FF_X48_Y50_N23
\U1|registers[10].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~4_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(2));

-- Location: LCCOMB_X48_Y50_N22
\U1|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~0_combout\ = (\U1|Mux12~3_combout\ & (((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\ & ((\U1|registers[10].dataOrInstruction\(2)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[2].dataOrInstruction\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[2].dataOrInstruction\(2),
	datac => \U1|registers[10].dataOrInstruction\(2),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux44~0_combout\);

-- Location: LCCOMB_X42_Y51_N8
\U1|registers[6].dataOrInstruction[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[2]~feeder_combout\ = \U1|Mux320~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux320~4_combout\,
	combout => \U1|registers[6].dataOrInstruction[2]~feeder_combout\);

-- Location: FF_X42_Y51_N9
\U1|registers[6].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[6].dataOrInstruction[2]~feeder_combout\,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(2));

-- Location: FF_X48_Y50_N9
\U1|registers[14].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~4_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(2));

-- Location: LCCOMB_X48_Y50_N8
\U1|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~1_combout\ = (\U1|Mux44~0_combout\ & (((\U1|registers[14].dataOrInstruction\(2)) # (!\U1|Mux12~3_combout\)))) # (!\U1|Mux44~0_combout\ & (\U1|registers[6].dataOrInstruction\(2) & ((\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux44~0_combout\,
	datab => \U1|registers[6].dataOrInstruction\(2),
	datac => \U1|registers[14].dataOrInstruction\(2),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux44~1_combout\);

-- Location: FF_X42_Y51_N11
\U1|registers[4].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux320~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(2));

-- Location: FF_X43_Y50_N15
\U1|registers[12].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~4_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(2));

-- Location: FF_X48_Y52_N11
\U1|registers[0].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux320~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(2));

-- Location: FF_X43_Y50_N29
\U1|registers[8].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~4_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(2));

-- Location: LCCOMB_X43_Y50_N28
\U1|Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~4_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[8].dataOrInstruction\(2)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[0].dataOrInstruction\(2) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[0].dataOrInstruction\(2),
	datac => \U1|registers[8].dataOrInstruction\(2),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux44~4_combout\);

-- Location: LCCOMB_X43_Y50_N14
\U1|Mux44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~5_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux44~4_combout\ & ((\U1|registers[12].dataOrInstruction\(2)))) # (!\U1|Mux44~4_combout\ & (\U1|registers[4].dataOrInstruction\(2))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[4].dataOrInstruction\(2),
	datab => \U1|Mux12~3_combout\,
	datac => \U1|registers[12].dataOrInstruction\(2),
	datad => \U1|Mux44~4_combout\,
	combout => \U1|Mux44~5_combout\);

-- Location: LCCOMB_X46_Y52_N18
\U1|registers[1].dataOrInstruction[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[1].dataOrInstruction[2]~feeder_combout\ = \U1|Mux320~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux320~4_combout\,
	combout => \U1|registers[1].dataOrInstruction[2]~feeder_combout\);

-- Location: FF_X46_Y52_N19
\U1|registers[1].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[1].dataOrInstruction[2]~feeder_combout\,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(2));

-- Location: LCCOMB_X49_Y48_N8
\U1|registers[5].dataOrInstruction[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[5].dataOrInstruction[2]~feeder_combout\ = \U1|Mux320~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux320~4_combout\,
	combout => \U1|registers[5].dataOrInstruction[2]~feeder_combout\);

-- Location: FF_X49_Y48_N9
\U1|registers[5].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[5].dataOrInstruction[2]~feeder_combout\,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(2));

-- Location: FF_X50_Y50_N29
\U1|registers[13].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~4_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(2));

-- Location: LCCOMB_X50_Y50_N28
\U1|Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~2_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[13].dataOrInstruction\(2)) # (!\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[5].dataOrInstruction\(2) & ((\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[5].dataOrInstruction\(2),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[13].dataOrInstruction\(2),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux44~2_combout\);

-- Location: FF_X50_Y50_N3
\U1|registers[9].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~4_combout\,
	sload => VCC,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(2));

-- Location: LCCOMB_X50_Y50_N2
\U1|Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~3_combout\ = (\U1|Mux44~2_combout\ & (((\U1|registers[9].dataOrInstruction\(2)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux44~2_combout\ & (\U1|registers[1].dataOrInstruction\(2) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(2),
	datab => \U1|Mux44~2_combout\,
	datac => \U1|registers[9].dataOrInstruction\(2),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux44~3_combout\);

-- Location: LCCOMB_X48_Y50_N18
\U1|Mux44~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~6_combout\ = (\U1|Mux13~5_combout\ & (((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & ((\U1|Mux44~3_combout\))) # (!\U1|Mux14~6_combout\ & (\U1|Mux44~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux44~5_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|Mux14~6_combout\,
	datad => \U1|Mux44~3_combout\,
	combout => \U1|Mux44~6_combout\);

-- Location: LCCOMB_X48_Y50_N28
\U1|Mux44~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux44~9_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux44~6_combout\ & (\U1|Mux44~8_combout\)) # (!\U1|Mux44~6_combout\ & ((\U1|Mux44~1_combout\))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux44~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux44~8_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|Mux44~1_combout\,
	datad => \U1|Mux44~6_combout\,
	combout => \U1|Mux44~9_combout\);

-- Location: LCCOMB_X47_Y50_N4
\U1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~4_combout\ = ((\U1|Mux28~4_combout\ $ (\U1|Mux44~9_combout\ $ (!\U1|Add2~3\)))) # (GND)
-- \U1|Add2~5\ = CARRY((\U1|Mux28~4_combout\ & ((\U1|Mux44~9_combout\) # (!\U1|Add2~3\))) # (!\U1|Mux28~4_combout\ & (\U1|Mux44~9_combout\ & !\U1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux28~4_combout\,
	datab => \U1|Mux44~9_combout\,
	datad => VCC,
	cin => \U1|Add2~3\,
	combout => \U1|Add2~4_combout\,
	cout => \U1|Add2~5\);

-- Location: LCCOMB_X45_Y49_N22
\U1|Mux320~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux320~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & ((\U1|Add2~4_combout\))) # (!\U1|Mux1~8_combout\ & (\U1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Add0~4_combout\,
	datac => \U1|Mux0~6_combout\,
	datad => \U1|Add2~4_combout\,
	combout => \U1|Mux320~2_combout\);

-- Location: LCCOMB_X48_Y49_N4
\U1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~4_combout\ = ((\U1|Mux12~3_combout\ $ (\U1|Mux28~4_combout\ $ (\U1|Add1~3\)))) # (GND)
-- \U1|Add1~5\ = CARRY((\U1|Mux12~3_combout\ & (\U1|Mux28~4_combout\ & !\U1|Add1~3\)) # (!\U1|Mux12~3_combout\ & ((\U1|Mux28~4_combout\) # (!\U1|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux28~4_combout\,
	datad => VCC,
	cin => \U1|Add1~3\,
	combout => \U1|Add1~4_combout\,
	cout => \U1|Add1~5\);

-- Location: LCCOMB_X47_Y49_N6
\U1|Mux320~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux320~4_combout\ = (\U1|Mux320~2_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux320~2_combout\,
	datac => \U1|Mux0~5_combout\,
	datad => \U1|Add1~4_combout\,
	combout => \U1|Mux320~4_combout\);

-- Location: FF_X47_Y49_N11
\U1|registers[3].dataOrInstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux320~4_combout\,
	sload => VCC,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(2));

-- Location: LCCOMB_X48_Y52_N10
\U1|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux28~2_combout\ = (\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(2)) # ((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & (((\U1|registers[0].dataOrInstruction\(2) & !\U1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(2),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[0].dataOrInstruction\(2),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux28~2_combout\);

-- Location: LCCOMB_X48_Y52_N8
\U1|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux28~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux28~2_combout\ & (\U1|registers[3].dataOrInstruction\(2))) # (!\U1|Mux28~2_combout\ & ((\U1|registers[2].dataOrInstruction\(2)))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[3].dataOrInstruction\(2),
	datac => \U1|registers[2].dataOrInstruction\(2),
	datad => \U1|Mux28~2_combout\,
	combout => \U1|Mux28~3_combout\);

-- Location: LCCOMB_X42_Y51_N10
\U1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux28~0_combout\ = (\U1|Mux5~3_combout\ & ((\U1|registers[6].dataOrInstruction\(2)) # ((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & (((\U1|registers[4].dataOrInstruction\(2) & !\U1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[6].dataOrInstruction\(2),
	datac => \U1|registers[4].dataOrInstruction\(2),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux28~0_combout\);

-- Location: LCCOMB_X49_Y48_N10
\U1|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux28~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux28~0_combout\ & ((\U1|registers[7].dataOrInstruction\(2)))) # (!\U1|Mux28~0_combout\ & (\U1|registers[5].dataOrInstruction\(2))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[5].dataOrInstruction\(2),
	datab => \U1|registers[7].dataOrInstruction\(2),
	datac => \U1|Mux6~7_combout\,
	datad => \U1|Mux28~0_combout\,
	combout => \U1|Mux28~1_combout\);

-- Location: LCCOMB_X49_Y48_N4
\U1|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux28~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux28~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux28~3_combout\,
	datac => \U1|Mux4~4_combout\,
	datad => \U1|Mux28~1_combout\,
	combout => \U1|Mux28~4_combout\);

-- Location: LCCOMB_X48_Y49_N6
\U1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~6_combout\ = (\U1|Mux27~4_combout\ & ((\U1|Mux11~5_combout\ & (!\U1|Add1~5\)) # (!\U1|Mux11~5_combout\ & (\U1|Add1~5\ & VCC)))) # (!\U1|Mux27~4_combout\ & ((\U1|Mux11~5_combout\ & ((\U1|Add1~5\) # (GND))) # (!\U1|Mux11~5_combout\ & 
-- (!\U1|Add1~5\))))
-- \U1|Add1~7\ = CARRY((\U1|Mux27~4_combout\ & (\U1|Mux11~5_combout\ & !\U1|Add1~5\)) # (!\U1|Mux27~4_combout\ & ((\U1|Mux11~5_combout\) # (!\U1|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux27~4_combout\,
	datab => \U1|Mux11~5_combout\,
	datad => VCC,
	cin => \U1|Add1~5\,
	combout => \U1|Add1~6_combout\,
	cout => \U1|Add1~7\);

-- Location: FF_X47_Y49_N9
\U1|registers[3].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux319~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(3));

-- Location: FF_X46_Y49_N17
\U1|registers[2].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux319~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(3));

-- Location: FF_X46_Y51_N11
\U1|registers[1].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux319~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(3));

-- Location: FF_X46_Y51_N29
\U1|registers[0].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux319~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(3));

-- Location: LCCOMB_X46_Y51_N28
\U1|Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~4_combout\ = (\U1|Mux13~5_combout\ & (((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & (\U1|registers[1].dataOrInstruction\(3))) # (!\U1|Mux14~6_combout\ & ((\U1|registers[0].dataOrInstruction\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(3),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[0].dataOrInstruction\(3),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux43~4_combout\);

-- Location: LCCOMB_X46_Y49_N16
\U1|Mux43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~5_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux43~4_combout\ & (\U1|registers[3].dataOrInstruction\(3))) # (!\U1|Mux43~4_combout\ & ((\U1|registers[2].dataOrInstruction\(3)))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[3].dataOrInstruction\(3),
	datac => \U1|registers[2].dataOrInstruction\(3),
	datad => \U1|Mux43~4_combout\,
	combout => \U1|Mux43~5_combout\);

-- Location: FF_X48_Y51_N25
\U1|registers[5].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux319~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(3));

-- Location: FF_X49_Y51_N3
\U1|registers[4].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux319~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(3));

-- Location: FF_X49_Y51_N25
\U1|registers[6].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux319~4_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(3));

-- Location: LCCOMB_X49_Y51_N2
\U1|Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~2_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\) # ((\U1|registers[6].dataOrInstruction\(3))))) # (!\U1|Mux13~5_combout\ & (!\U1|Mux14~6_combout\ & (\U1|registers[4].dataOrInstruction\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[4].dataOrInstruction\(3),
	datad => \U1|registers[6].dataOrInstruction\(3),
	combout => \U1|Mux43~2_combout\);

-- Location: LCCOMB_X48_Y51_N26
\U1|Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~3_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux43~2_combout\ & ((\U1|registers[7].dataOrInstruction\(3)))) # (!\U1|Mux43~2_combout\ & (\U1|registers[5].dataOrInstruction\(3))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|registers[5].dataOrInstruction\(3),
	datac => \U1|registers[7].dataOrInstruction\(3),
	datad => \U1|Mux43~2_combout\,
	combout => \U1|Mux43~3_combout\);

-- Location: LCCOMB_X48_Y50_N10
\U1|Mux43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~6_combout\ = (\U1|Mux12~3_combout\ & (((\U1|Mux11~5_combout\) # (\U1|Mux43~3_combout\)))) # (!\U1|Mux12~3_combout\ & (\U1|Mux43~5_combout\ & (!\U1|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux43~5_combout\,
	datac => \U1|Mux11~5_combout\,
	datad => \U1|Mux43~3_combout\,
	combout => \U1|Mux43~6_combout\);

-- Location: LCCOMB_X45_Y50_N0
\U1|registers[11].dataOrInstruction[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[11].dataOrInstruction[3]~feeder_combout\ = \U1|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~6_combout\,
	combout => \U1|registers[11].dataOrInstruction[3]~feeder_combout\);

-- Location: FF_X45_Y50_N1
\U1|registers[11].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[11].dataOrInstruction[3]~feeder_combout\,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(3));

-- Location: FF_X48_Y50_N25
\U1|registers[10].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~6_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(3));

-- Location: LCCOMB_X50_Y47_N24
\U1|registers[9].dataOrInstruction[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[3]~feeder_combout\ = \U1|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~6_combout\,
	combout => \U1|registers[9].dataOrInstruction[3]~feeder_combout\);

-- Location: FF_X50_Y47_N25
\U1|registers[9].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[9].dataOrInstruction[3]~feeder_combout\,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(3));

-- Location: FF_X50_Y47_N27
\U1|registers[8].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~6_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(3));

-- Location: LCCOMB_X50_Y47_N26
\U1|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~0_combout\ = (\U1|Mux14~6_combout\ & ((\U1|registers[9].dataOrInstruction\(3)) # ((\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & (((\U1|registers[8].dataOrInstruction\(3) & !\U1|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|registers[9].dataOrInstruction\(3),
	datac => \U1|registers[8].dataOrInstruction\(3),
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux43~0_combout\);

-- Location: LCCOMB_X48_Y50_N24
\U1|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~1_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux43~0_combout\ & (\U1|registers[11].dataOrInstruction\(3))) # (!\U1|Mux43~0_combout\ & ((\U1|registers[10].dataOrInstruction\(3)))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[11].dataOrInstruction\(3),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[10].dataOrInstruction\(3),
	datad => \U1|Mux43~0_combout\,
	combout => \U1|Mux43~1_combout\);

-- Location: LCCOMB_X46_Y50_N8
\U1|registers[14].dataOrInstruction[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[14].dataOrInstruction[3]~feeder_combout\ = \U1|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~6_combout\,
	combout => \U1|registers[14].dataOrInstruction[3]~feeder_combout\);

-- Location: FF_X46_Y50_N9
\U1|registers[14].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[14].dataOrInstruction[3]~feeder_combout\,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(3));

-- Location: FF_X46_Y50_N27
\U1|registers[12].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~6_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(3));

-- Location: LCCOMB_X46_Y50_N26
\U1|Mux43~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~7_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[14].dataOrInstruction\(3)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|registers[12].dataOrInstruction\(3) & !\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[14].dataOrInstruction\(3),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[12].dataOrInstruction\(3),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux43~7_combout\);

-- Location: FF_X50_Y50_N25
\U1|registers[13].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~6_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(3));

-- Location: FF_X47_Y50_N7
\U1|registers[15].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~6_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(3));

-- Location: LCCOMB_X50_Y50_N24
\U1|Mux43~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~8_combout\ = (\U1|Mux43~7_combout\ & (((\U1|registers[15].dataOrInstruction\(3))) # (!\U1|Mux14~6_combout\))) # (!\U1|Mux43~7_combout\ & (\U1|Mux14~6_combout\ & (\U1|registers[13].dataOrInstruction\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux43~7_combout\,
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[13].dataOrInstruction\(3),
	datad => \U1|registers[15].dataOrInstruction\(3),
	combout => \U1|Mux43~8_combout\);

-- Location: LCCOMB_X48_Y50_N20
\U1|Mux43~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux43~9_combout\ = (\U1|Mux43~6_combout\ & (((\U1|Mux43~8_combout\)) # (!\U1|Mux11~5_combout\))) # (!\U1|Mux43~6_combout\ & (\U1|Mux11~5_combout\ & (\U1|Mux43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux43~6_combout\,
	datab => \U1|Mux11~5_combout\,
	datac => \U1|Mux43~1_combout\,
	datad => \U1|Mux43~8_combout\,
	combout => \U1|Mux43~9_combout\);

-- Location: LCCOMB_X47_Y50_N6
\U1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~6_combout\ = (\U1|Mux27~4_combout\ & ((\U1|Mux43~9_combout\ & (\U1|Add2~5\ & VCC)) # (!\U1|Mux43~9_combout\ & (!\U1|Add2~5\)))) # (!\U1|Mux27~4_combout\ & ((\U1|Mux43~9_combout\ & (!\U1|Add2~5\)) # (!\U1|Mux43~9_combout\ & ((\U1|Add2~5\) # 
-- (GND)))))
-- \U1|Add2~7\ = CARRY((\U1|Mux27~4_combout\ & (!\U1|Mux43~9_combout\ & !\U1|Add2~5\)) # (!\U1|Mux27~4_combout\ & ((!\U1|Add2~5\) # (!\U1|Mux43~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux27~4_combout\,
	datab => \U1|Mux43~9_combout\,
	datad => VCC,
	cin => \U1|Add2~5\,
	combout => \U1|Add2~6_combout\,
	cout => \U1|Add2~7\);

-- Location: LCCOMB_X49_Y49_N6
\U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|Mux27~4_combout\ & ((\U1|Mux11~5_combout\ & (\U1|Add0~5\ & VCC)) # (!\U1|Mux11~5_combout\ & (!\U1|Add0~5\)))) # (!\U1|Mux27~4_combout\ & ((\U1|Mux11~5_combout\ & (!\U1|Add0~5\)) # (!\U1|Mux11~5_combout\ & ((\U1|Add0~5\) # 
-- (GND)))))
-- \U1|Add0~7\ = CARRY((\U1|Mux27~4_combout\ & (!\U1|Mux11~5_combout\ & !\U1|Add0~5\)) # (!\U1|Mux27~4_combout\ & ((!\U1|Add0~5\) # (!\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux27~4_combout\,
	datab => \U1|Mux11~5_combout\,
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X46_Y49_N14
\U1|Mux319~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux319~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~6_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~6_combout\,
	datab => \U1|Add2~6_combout\,
	datac => \U1|Add0~6_combout\,
	datad => \U1|Mux1~8_combout\,
	combout => \U1|Mux319~2_combout\);

-- Location: LCCOMB_X47_Y49_N8
\U1|Mux319~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux319~4_combout\ = (\U1|Mux319~2_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux0~5_combout\,
	datac => \U1|Add1~6_combout\,
	datad => \U1|Mux319~2_combout\,
	combout => \U1|Mux319~4_combout\);

-- Location: FF_X48_Y51_N27
\U1|registers[7].dataOrInstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux319~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(3));

-- Location: LCCOMB_X49_Y51_N24
\U1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux27~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & ((\U1|registers[6].dataOrInstruction\(3)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[4].dataOrInstruction\(3),
	datac => \U1|registers[6].dataOrInstruction\(3),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux27~0_combout\);

-- Location: LCCOMB_X48_Y51_N24
\U1|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux27~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux27~0_combout\ & (\U1|registers[7].dataOrInstruction\(3))) # (!\U1|Mux27~0_combout\ & ((\U1|registers[5].dataOrInstruction\(3)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[7].dataOrInstruction\(3),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[5].dataOrInstruction\(3),
	datad => \U1|Mux27~0_combout\,
	combout => \U1|Mux27~1_combout\);

-- Location: LCCOMB_X46_Y51_N10
\U1|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux27~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(3)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[0].dataOrInstruction\(3),
	datac => \U1|registers[1].dataOrInstruction\(3),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux27~2_combout\);

-- Location: LCCOMB_X46_Y49_N2
\U1|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux27~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux27~2_combout\ & ((\U1|registers[3].dataOrInstruction\(3)))) # (!\U1|Mux27~2_combout\ & (\U1|registers[2].dataOrInstruction\(3))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[2].dataOrInstruction\(3),
	datac => \U1|registers[3].dataOrInstruction\(3),
	datad => \U1|Mux27~2_combout\,
	combout => \U1|Mux27~3_combout\);

-- Location: LCCOMB_X46_Y49_N4
\U1|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux27~4_combout\ = (\U1|Mux4~4_combout\ & (\U1|Mux27~1_combout\)) # (!\U1|Mux4~4_combout\ & ((\U1|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux27~1_combout\,
	datab => \U1|Mux4~4_combout\,
	datad => \U1|Mux27~3_combout\,
	combout => \U1|Mux27~4_combout\);

-- Location: LCCOMB_X48_Y49_N8
\U1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~8_combout\ = ((\U1|Mux10~12_combout\ $ (\U1|Mux26~4_combout\ $ (\U1|Add1~7\)))) # (GND)
-- \U1|Add1~9\ = CARRY((\U1|Mux10~12_combout\ & (\U1|Mux26~4_combout\ & !\U1|Add1~7\)) # (!\U1|Mux10~12_combout\ & ((\U1|Mux26~4_combout\) # (!\U1|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~12_combout\,
	datab => \U1|Mux26~4_combout\,
	datad => VCC,
	cin => \U1|Add1~7\,
	combout => \U1|Add1~8_combout\,
	cout => \U1|Add1~9\);

-- Location: FF_X47_Y50_N9
\U1|registers[15].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~8_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(4));

-- Location: FF_X48_Y48_N29
\U1|registers[7].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux318~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(4));

-- Location: FF_X45_Y50_N31
\U1|registers[11].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~8_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(4));

-- Location: LCCOMB_X45_Y50_N30
\U1|Mux42~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~7_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[11].dataOrInstruction\(4)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[3].dataOrInstruction\(4) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[3].dataOrInstruction\(4),
	datac => \U1|registers[11].dataOrInstruction\(4),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux42~7_combout\);

-- Location: LCCOMB_X48_Y48_N28
\U1|Mux42~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~8_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux42~7_combout\ & (\U1|registers[15].dataOrInstruction\(4))) # (!\U1|Mux42~7_combout\ & ((\U1|registers[7].dataOrInstruction\(4)))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux42~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[15].dataOrInstruction\(4),
	datac => \U1|registers[7].dataOrInstruction\(4),
	datad => \U1|Mux42~7_combout\,
	combout => \U1|Mux42~8_combout\);

-- Location: FF_X47_Y48_N15
\U1|registers[8].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~8_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(4));

-- Location: FF_X46_Y48_N23
\U1|registers[12].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~8_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(4));

-- Location: LCCOMB_X46_Y48_N2
\U1|registers[0].dataOrInstruction[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[0].dataOrInstruction[4]~feeder_combout\ = \U1|Mux318~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux318~4_combout\,
	combout => \U1|registers[0].dataOrInstruction[4]~feeder_combout\);

-- Location: FF_X46_Y48_N3
\U1|registers[0].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[0].dataOrInstruction[4]~feeder_combout\,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(4));

-- Location: FF_X42_Y51_N13
\U1|registers[4].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux318~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(4));

-- Location: LCCOMB_X46_Y48_N20
\U1|Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~4_combout\ = (\U1|Mux11~5_combout\ & (((\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & ((\U1|Mux12~3_combout\ & ((\U1|registers[4].dataOrInstruction\(4)))) # (!\U1|Mux12~3_combout\ & (\U1|registers[0].dataOrInstruction\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[0].dataOrInstruction\(4),
	datac => \U1|Mux12~3_combout\,
	datad => \U1|registers[4].dataOrInstruction\(4),
	combout => \U1|Mux42~4_combout\);

-- Location: LCCOMB_X46_Y48_N22
\U1|Mux42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~5_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux42~4_combout\ & ((\U1|registers[12].dataOrInstruction\(4)))) # (!\U1|Mux42~4_combout\ & (\U1|registers[8].dataOrInstruction\(4))))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[8].dataOrInstruction\(4),
	datac => \U1|registers[12].dataOrInstruction\(4),
	datad => \U1|Mux42~4_combout\,
	combout => \U1|Mux42~5_combout\);

-- Location: FF_X45_Y48_N31
\U1|registers[2].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux318~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(4));

-- Location: LCCOMB_X49_Y48_N22
\U1|registers[6].dataOrInstruction[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[4]~feeder_combout\ = \U1|Mux318~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux318~4_combout\,
	combout => \U1|registers[6].dataOrInstruction[4]~feeder_combout\);

-- Location: FF_X49_Y48_N23
\U1|registers[6].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[6].dataOrInstruction[4]~feeder_combout\,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(4));

-- Location: LCCOMB_X45_Y48_N30
\U1|Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~2_combout\ = (\U1|Mux11~5_combout\ & (\U1|Mux12~3_combout\)) # (!\U1|Mux11~5_combout\ & ((\U1|Mux12~3_combout\ & ((\U1|registers[6].dataOrInstruction\(4)))) # (!\U1|Mux12~3_combout\ & (\U1|registers[2].dataOrInstruction\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|Mux12~3_combout\,
	datac => \U1|registers[2].dataOrInstruction\(4),
	datad => \U1|registers[6].dataOrInstruction\(4),
	combout => \U1|Mux42~2_combout\);

-- Location: FF_X45_Y48_N1
\U1|registers[14].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~8_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(4));

-- Location: FF_X48_Y47_N11
\U1|registers[10].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~8_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(4));

-- Location: LCCOMB_X45_Y48_N0
\U1|Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~3_combout\ = (\U1|Mux42~2_combout\ & (((\U1|registers[14].dataOrInstruction\(4))) # (!\U1|Mux11~5_combout\))) # (!\U1|Mux42~2_combout\ & (\U1|Mux11~5_combout\ & ((\U1|registers[10].dataOrInstruction\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux42~2_combout\,
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[14].dataOrInstruction\(4),
	datad => \U1|registers[10].dataOrInstruction\(4),
	combout => \U1|Mux42~3_combout\);

-- Location: LCCOMB_X48_Y48_N26
\U1|Mux42~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~6_combout\ = (\U1|Mux14~6_combout\ & (\U1|Mux13~5_combout\)) # (!\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\ & ((\U1|Mux42~3_combout\))) # (!\U1|Mux13~5_combout\ & (\U1|Mux42~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|Mux42~5_combout\,
	datad => \U1|Mux42~3_combout\,
	combout => \U1|Mux42~6_combout\);

-- Location: FF_X48_Y48_N25
\U1|registers[5].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux318~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(4));

-- Location: FF_X50_Y50_N15
\U1|registers[13].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~8_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(4));

-- Location: FF_X46_Y51_N9
\U1|registers[1].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux318~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(4));

-- Location: FF_X50_Y50_N13
\U1|registers[9].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~8_combout\,
	sload => VCC,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(4));

-- Location: LCCOMB_X50_Y50_N12
\U1|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~0_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[9].dataOrInstruction\(4)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[1].dataOrInstruction\(4) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(4),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[9].dataOrInstruction\(4),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux42~0_combout\);

-- Location: LCCOMB_X50_Y50_N14
\U1|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~1_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux42~0_combout\ & ((\U1|registers[13].dataOrInstruction\(4)))) # (!\U1|Mux42~0_combout\ & (\U1|registers[5].dataOrInstruction\(4))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[5].dataOrInstruction\(4),
	datac => \U1|registers[13].dataOrInstruction\(4),
	datad => \U1|Mux42~0_combout\,
	combout => \U1|Mux42~1_combout\);

-- Location: LCCOMB_X48_Y48_N30
\U1|Mux42~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux42~9_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux42~6_combout\ & (\U1|Mux42~8_combout\)) # (!\U1|Mux42~6_combout\ & ((\U1|Mux42~1_combout\))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux42~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux42~8_combout\,
	datac => \U1|Mux42~6_combout\,
	datad => \U1|Mux42~1_combout\,
	combout => \U1|Mux42~9_combout\);

-- Location: LCCOMB_X47_Y50_N8
\U1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~8_combout\ = ((\U1|Mux42~9_combout\ $ (\U1|Mux26~4_combout\ $ (!\U1|Add2~7\)))) # (GND)
-- \U1|Add2~9\ = CARRY((\U1|Mux42~9_combout\ & ((\U1|Mux26~4_combout\) # (!\U1|Add2~7\))) # (!\U1|Mux42~9_combout\ & (\U1|Mux26~4_combout\ & !\U1|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux42~9_combout\,
	datab => \U1|Mux26~4_combout\,
	datad => VCC,
	cin => \U1|Add2~7\,
	combout => \U1|Add2~8_combout\,
	cout => \U1|Add2~9\);

-- Location: LCCOMB_X49_Y49_N8
\U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = ((\U1|Mux26~4_combout\ $ (\U1|Mux10~12_combout\ $ (!\U1|Add0~7\)))) # (GND)
-- \U1|Add0~9\ = CARRY((\U1|Mux26~4_combout\ & ((\U1|Mux10~12_combout\) # (!\U1|Add0~7\))) # (!\U1|Mux26~4_combout\ & (\U1|Mux10~12_combout\ & !\U1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux26~4_combout\,
	datab => \U1|Mux10~12_combout\,
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X47_Y49_N26
\U1|Mux318~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux318~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~8_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Add2~8_combout\,
	datac => \U1|Mux0~6_combout\,
	datad => \U1|Add0~8_combout\,
	combout => \U1|Mux318~2_combout\);

-- Location: LCCOMB_X46_Y49_N6
\U1|Mux318~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux318~4_combout\ = (\U1|Mux318~2_combout\) # ((\U1|Add1~8_combout\ & (\U1|Mux9~0_combout\ & \U1|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~8_combout\,
	datab => \U1|Mux9~0_combout\,
	datac => \U1|Mux0~5_combout\,
	datad => \U1|Mux318~2_combout\,
	combout => \U1|Mux318~4_combout\);

-- Location: FF_X46_Y49_N7
\U1|registers[3].dataOrInstruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux318~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(4));

-- Location: LCCOMB_X46_Y51_N8
\U1|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux26~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(4)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[0].dataOrInstruction\(4),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[1].dataOrInstruction\(4),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux26~2_combout\);

-- Location: LCCOMB_X45_Y48_N18
\U1|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux26~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux26~2_combout\ & (\U1|registers[3].dataOrInstruction\(4))) # (!\U1|Mux26~2_combout\ & ((\U1|registers[2].dataOrInstruction\(4)))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[3].dataOrInstruction\(4),
	datac => \U1|Mux26~2_combout\,
	datad => \U1|registers[2].dataOrInstruction\(4),
	combout => \U1|Mux26~3_combout\);

-- Location: LCCOMB_X42_Y51_N12
\U1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux26~0_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\) # ((\U1|registers[6].dataOrInstruction\(4))))) # (!\U1|Mux5~3_combout\ & (!\U1|Mux6~7_combout\ & (\U1|registers[4].dataOrInstruction\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[4].dataOrInstruction\(4),
	datad => \U1|registers[6].dataOrInstruction\(4),
	combout => \U1|Mux26~0_combout\);

-- Location: LCCOMB_X48_Y48_N24
\U1|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux26~1_combout\ = (\U1|Mux26~0_combout\ & (((\U1|registers[7].dataOrInstruction\(4))) # (!\U1|Mux6~7_combout\))) # (!\U1|Mux26~0_combout\ & (\U1|Mux6~7_combout\ & (\U1|registers[5].dataOrInstruction\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux26~0_combout\,
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[5].dataOrInstruction\(4),
	datad => \U1|registers[7].dataOrInstruction\(4),
	combout => \U1|Mux26~1_combout\);

-- Location: LCCOMB_X48_Y48_N16
\U1|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux26~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux26~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux26~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux4~4_combout\,
	datac => \U1|Mux26~3_combout\,
	datad => \U1|Mux26~1_combout\,
	combout => \U1|Mux26~4_combout\);

-- Location: LCCOMB_X48_Y49_N10
\U1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~10_combout\ = (\U1|Mux25~4_combout\ & ((\U1|Mux9~5_combout\ & (!\U1|Add1~9\)) # (!\U1|Mux9~5_combout\ & (\U1|Add1~9\ & VCC)))) # (!\U1|Mux25~4_combout\ & ((\U1|Mux9~5_combout\ & ((\U1|Add1~9\) # (GND))) # (!\U1|Mux9~5_combout\ & (!\U1|Add1~9\))))
-- \U1|Add1~11\ = CARRY((\U1|Mux25~4_combout\ & (\U1|Mux9~5_combout\ & !\U1|Add1~9\)) # (!\U1|Mux25~4_combout\ & ((\U1|Mux9~5_combout\) # (!\U1|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux25~4_combout\,
	datab => \U1|Mux9~5_combout\,
	datad => VCC,
	cin => \U1|Add1~9\,
	combout => \U1|Add1~10_combout\,
	cout => \U1|Add1~11\);

-- Location: FF_X47_Y50_N11
\U1|registers[15].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~10_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(5));

-- Location: FF_X46_Y50_N11
\U1|registers[14].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~10_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(5));

-- Location: FF_X46_Y50_N29
\U1|registers[12].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~10_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(5));

-- Location: LCCOMB_X47_Y51_N28
\U1|registers[13].dataOrInstruction[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[13].dataOrInstruction[5]~feeder_combout\ = \U1|Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~10_combout\,
	combout => \U1|registers[13].dataOrInstruction[5]~feeder_combout\);

-- Location: FF_X47_Y51_N29
\U1|registers[13].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[13].dataOrInstruction[5]~feeder_combout\,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(5));

-- Location: LCCOMB_X46_Y50_N28
\U1|Mux41~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~7_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\) # ((\U1|registers[13].dataOrInstruction\(5))))) # (!\U1|Mux14~6_combout\ & (!\U1|Mux13~5_combout\ & (\U1|registers[12].dataOrInstruction\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[12].dataOrInstruction\(5),
	datad => \U1|registers[13].dataOrInstruction\(5),
	combout => \U1|Mux41~7_combout\);

-- Location: LCCOMB_X46_Y50_N10
\U1|Mux41~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~8_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux41~7_combout\ & (\U1|registers[15].dataOrInstruction\(5))) # (!\U1|Mux41~7_combout\ & ((\U1|registers[14].dataOrInstruction\(5)))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux41~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[15].dataOrInstruction\(5),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[14].dataOrInstruction\(5),
	datad => \U1|Mux41~7_combout\,
	combout => \U1|Mux41~8_combout\);

-- Location: LCCOMB_X49_Y50_N28
\U1|registers[10].dataOrInstruction[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[10].dataOrInstruction[5]~feeder_combout\ = \U1|Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~10_combout\,
	combout => \U1|registers[10].dataOrInstruction[5]~feeder_combout\);

-- Location: FF_X49_Y50_N29
\U1|registers[10].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[10].dataOrInstruction[5]~feeder_combout\,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(5));

-- Location: FF_X45_Y50_N27
\U1|registers[8].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~10_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(5));

-- Location: LCCOMB_X45_Y50_N26
\U1|Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~2_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[10].dataOrInstruction\(5)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|registers[8].dataOrInstruction\(5) & !\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[10].dataOrInstruction\(5),
	datac => \U1|registers[8].dataOrInstruction\(5),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux41~2_combout\);

-- Location: FF_X45_Y49_N1
\U1|registers[9].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~10_combout\,
	sload => VCC,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(5));

-- Location: FF_X45_Y50_N13
\U1|registers[11].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~10_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(5));

-- Location: LCCOMB_X45_Y50_N12
\U1|Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~3_combout\ = (\U1|Mux41~2_combout\ & (((\U1|registers[11].dataOrInstruction\(5)) # (!\U1|Mux14~6_combout\)))) # (!\U1|Mux41~2_combout\ & (\U1|registers[9].dataOrInstruction\(5) & ((\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux41~2_combout\,
	datab => \U1|registers[9].dataOrInstruction\(5),
	datac => \U1|registers[11].dataOrInstruction\(5),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux41~3_combout\);

-- Location: FF_X45_Y49_N3
\U1|registers[3].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux317~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(5));

-- Location: FF_X46_Y51_N1
\U1|registers[1].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux317~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(5));

-- Location: FF_X45_Y48_N11
\U1|registers[2].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux317~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(5));

-- Location: LCCOMB_X46_Y48_N16
\U1|Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~4_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[2].dataOrInstruction\(5)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|registers[0].dataOrInstruction\(5) & !\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[2].dataOrInstruction\(5),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[0].dataOrInstruction\(5),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux41~4_combout\);

-- Location: LCCOMB_X46_Y51_N22
\U1|Mux41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~5_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux41~4_combout\ & (\U1|registers[3].dataOrInstruction\(5))) # (!\U1|Mux41~4_combout\ & ((\U1|registers[1].dataOrInstruction\(5)))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux41~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[3].dataOrInstruction\(5),
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[1].dataOrInstruction\(5),
	datad => \U1|Mux41~4_combout\,
	combout => \U1|Mux41~5_combout\);

-- Location: LCCOMB_X47_Y51_N26
\U1|Mux41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~6_combout\ = (\U1|Mux12~3_combout\ & (((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\ & (\U1|Mux41~3_combout\)) # (!\U1|Mux11~5_combout\ & ((\U1|Mux41~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux41~3_combout\,
	datab => \U1|Mux12~3_combout\,
	datac => \U1|Mux11~5_combout\,
	datad => \U1|Mux41~5_combout\,
	combout => \U1|Mux41~6_combout\);

-- Location: FF_X49_Y51_N17
\U1|registers[4].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux317~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(5));

-- Location: FF_X48_Y51_N21
\U1|registers[5].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux317~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(5));

-- Location: LCCOMB_X49_Y51_N16
\U1|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~0_combout\ = (\U1|Mux13~5_combout\ & (\U1|Mux14~6_combout\)) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & ((\U1|registers[5].dataOrInstruction\(5)))) # (!\U1|Mux14~6_combout\ & (\U1|registers[4].dataOrInstruction\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[4].dataOrInstruction\(5),
	datad => \U1|registers[5].dataOrInstruction\(5),
	combout => \U1|Mux41~0_combout\);

-- Location: FF_X48_Y51_N23
\U1|registers[7].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux317~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(5));

-- Location: FF_X49_Y51_N7
\U1|registers[6].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux317~4_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(5));

-- Location: LCCOMB_X48_Y51_N22
\U1|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~1_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux41~0_combout\ & (\U1|registers[7].dataOrInstruction\(5))) # (!\U1|Mux41~0_combout\ & ((\U1|registers[6].dataOrInstruction\(5)))))) # (!\U1|Mux13~5_combout\ & (\U1|Mux41~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux41~0_combout\,
	datac => \U1|registers[7].dataOrInstruction\(5),
	datad => \U1|registers[6].dataOrInstruction\(5),
	combout => \U1|Mux41~1_combout\);

-- Location: LCCOMB_X47_Y51_N30
\U1|Mux41~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux41~9_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux41~6_combout\ & (\U1|Mux41~8_combout\)) # (!\U1|Mux41~6_combout\ & ((\U1|Mux41~1_combout\))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux41~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux41~8_combout\,
	datac => \U1|Mux41~6_combout\,
	datad => \U1|Mux41~1_combout\,
	combout => \U1|Mux41~9_combout\);

-- Location: LCCOMB_X47_Y50_N10
\U1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~10_combout\ = (\U1|Mux41~9_combout\ & ((\U1|Mux25~4_combout\ & (\U1|Add2~9\ & VCC)) # (!\U1|Mux25~4_combout\ & (!\U1|Add2~9\)))) # (!\U1|Mux41~9_combout\ & ((\U1|Mux25~4_combout\ & (!\U1|Add2~9\)) # (!\U1|Mux25~4_combout\ & ((\U1|Add2~9\) # 
-- (GND)))))
-- \U1|Add2~11\ = CARRY((\U1|Mux41~9_combout\ & (!\U1|Mux25~4_combout\ & !\U1|Add2~9\)) # (!\U1|Mux41~9_combout\ & ((!\U1|Add2~9\) # (!\U1|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux41~9_combout\,
	datab => \U1|Mux25~4_combout\,
	datad => VCC,
	cin => \U1|Add2~9\,
	combout => \U1|Add2~10_combout\,
	cout => \U1|Add2~11\);

-- Location: LCCOMB_X49_Y49_N10
\U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|Mux25~4_combout\ & ((\U1|Mux9~5_combout\ & (\U1|Add0~9\ & VCC)) # (!\U1|Mux9~5_combout\ & (!\U1|Add0~9\)))) # (!\U1|Mux25~4_combout\ & ((\U1|Mux9~5_combout\ & (!\U1|Add0~9\)) # (!\U1|Mux9~5_combout\ & ((\U1|Add0~9\) # (GND)))))
-- \U1|Add0~11\ = CARRY((\U1|Mux25~4_combout\ & (!\U1|Mux9~5_combout\ & !\U1|Add0~9\)) # (!\U1|Mux25~4_combout\ & ((!\U1|Add0~9\) # (!\U1|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux25~4_combout\,
	datab => \U1|Mux9~5_combout\,
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: LCCOMB_X45_Y49_N0
\U1|Mux317~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux317~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~10_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add2~10_combout\,
	datad => \U1|Add0~10_combout\,
	combout => \U1|Mux317~2_combout\);

-- Location: LCCOMB_X45_Y49_N2
\U1|Mux317~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux317~4_combout\ = (\U1|Mux317~2_combout\) # ((\U1|Add1~10_combout\ & (\U1|Mux0~5_combout\ & \U1|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~10_combout\,
	datab => \U1|Mux317~2_combout\,
	datac => \U1|Mux0~5_combout\,
	datad => \U1|Mux9~0_combout\,
	combout => \U1|Mux317~4_combout\);

-- Location: FF_X46_Y48_N17
\U1|registers[0].dataOrInstruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux317~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(5));

-- Location: LCCOMB_X45_Y51_N28
\U1|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux25~2_combout\ = (\U1|Mux6~7_combout\ & (((\U1|registers[1].dataOrInstruction\(5)) # (\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(5) & ((!\U1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[0].dataOrInstruction\(5),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[1].dataOrInstruction\(5),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux25~2_combout\);

-- Location: LCCOMB_X45_Y48_N10
\U1|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux25~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux25~2_combout\ & ((\U1|registers[3].dataOrInstruction\(5)))) # (!\U1|Mux25~2_combout\ & (\U1|registers[2].dataOrInstruction\(5))))) # (!\U1|Mux5~3_combout\ & (\U1|Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|Mux25~2_combout\,
	datac => \U1|registers[2].dataOrInstruction\(5),
	datad => \U1|registers[3].dataOrInstruction\(5),
	combout => \U1|Mux25~3_combout\);

-- Location: LCCOMB_X49_Y51_N6
\U1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux25~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & ((\U1|registers[6].dataOrInstruction\(5)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[4].dataOrInstruction\(5),
	datac => \U1|registers[6].dataOrInstruction\(5),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux25~0_combout\);

-- Location: LCCOMB_X48_Y51_N20
\U1|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux25~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux25~0_combout\ & (\U1|registers[7].dataOrInstruction\(5))) # (!\U1|Mux25~0_combout\ & ((\U1|registers[5].dataOrInstruction\(5)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[7].dataOrInstruction\(5),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[5].dataOrInstruction\(5),
	datad => \U1|Mux25~0_combout\,
	combout => \U1|Mux25~1_combout\);

-- Location: LCCOMB_X45_Y48_N12
\U1|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux25~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux25~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datac => \U1|Mux25~3_combout\,
	datad => \U1|Mux25~1_combout\,
	combout => \U1|Mux25~4_combout\);

-- Location: LCCOMB_X48_Y49_N12
\U1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~12_combout\ = ((\U1|Mux24~4_combout\ $ (\U1|Mux8~6_combout\ $ (\U1|Add1~11\)))) # (GND)
-- \U1|Add1~13\ = CARRY((\U1|Mux24~4_combout\ & ((!\U1|Add1~11\) # (!\U1|Mux8~6_combout\))) # (!\U1|Mux24~4_combout\ & (!\U1|Mux8~6_combout\ & !\U1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux24~4_combout\,
	datab => \U1|Mux8~6_combout\,
	datad => VCC,
	cin => \U1|Add1~11\,
	combout => \U1|Add1~12_combout\,
	cout => \U1|Add1~13\);

-- Location: FF_X42_Y51_N27
\U1|registers[6].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux316~6_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(6));

-- Location: FF_X46_Y50_N25
\U1|registers[14].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~12_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(6));

-- Location: FF_X48_Y52_N13
\U1|registers[2].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux316~6_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(6));

-- Location: FF_X49_Y50_N19
\U1|registers[10].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~12_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(6));

-- Location: LCCOMB_X49_Y50_N18
\U1|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~0_combout\ = (\U1|Mux12~3_combout\ & (((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\ & ((\U1|registers[10].dataOrInstruction\(6)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[2].dataOrInstruction\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[2].dataOrInstruction\(6),
	datac => \U1|registers[10].dataOrInstruction\(6),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux40~0_combout\);

-- Location: LCCOMB_X46_Y50_N24
\U1|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~1_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux40~0_combout\ & ((\U1|registers[14].dataOrInstruction\(6)))) # (!\U1|Mux40~0_combout\ & (\U1|registers[6].dataOrInstruction\(6))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[6].dataOrInstruction\(6),
	datac => \U1|registers[14].dataOrInstruction\(6),
	datad => \U1|Mux40~0_combout\,
	combout => \U1|Mux40~1_combout\);

-- Location: FF_X47_Y50_N13
\U1|registers[15].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~12_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(6));

-- Location: FF_X47_Y49_N19
\U1|registers[3].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux316~6_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(6));

-- Location: LCCOMB_X48_Y51_N18
\U1|Mux40~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~7_combout\ = (\U1|Mux12~3_combout\ & (((\U1|registers[7].dataOrInstruction\(6)) # (\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & (\U1|registers[3].dataOrInstruction\(6) & ((!\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[3].dataOrInstruction\(6),
	datac => \U1|registers[7].dataOrInstruction\(6),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux40~7_combout\);

-- Location: FF_X47_Y52_N5
\U1|registers[11].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~12_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(6));

-- Location: LCCOMB_X47_Y52_N4
\U1|Mux40~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~8_combout\ = (\U1|Mux40~7_combout\ & ((\U1|registers[15].dataOrInstruction\(6)) # ((!\U1|Mux11~5_combout\)))) # (!\U1|Mux40~7_combout\ & (((\U1|registers[11].dataOrInstruction\(6) & \U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[15].dataOrInstruction\(6),
	datab => \U1|Mux40~7_combout\,
	datac => \U1|registers[11].dataOrInstruction\(6),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux40~8_combout\);

-- Location: LCCOMB_X42_Y51_N0
\U1|registers[4].dataOrInstruction[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[4].dataOrInstruction[6]~feeder_combout\ = \U1|Mux316~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux316~6_combout\,
	combout => \U1|registers[4].dataOrInstruction[6]~feeder_combout\);

-- Location: FF_X42_Y51_N1
\U1|registers[4].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[4].dataOrInstruction[6]~feeder_combout\,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(6));

-- Location: LCCOMB_X48_Y52_N22
\U1|registers[0].dataOrInstruction[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[0].dataOrInstruction[6]~feeder_combout\ = \U1|Mux316~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux316~6_combout\,
	combout => \U1|registers[0].dataOrInstruction[6]~feeder_combout\);

-- Location: FF_X48_Y52_N23
\U1|registers[0].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[0].dataOrInstruction[6]~feeder_combout\,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(6));

-- Location: FF_X43_Y50_N5
\U1|registers[8].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~12_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(6));

-- Location: LCCOMB_X43_Y50_N4
\U1|Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~4_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[8].dataOrInstruction\(6)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[0].dataOrInstruction\(6) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[0].dataOrInstruction\(6),
	datac => \U1|registers[8].dataOrInstruction\(6),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux40~4_combout\);

-- Location: FF_X43_Y50_N23
\U1|registers[12].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~12_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(6));

-- Location: LCCOMB_X43_Y50_N22
\U1|Mux40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~5_combout\ = (\U1|Mux40~4_combout\ & (((\U1|registers[12].dataOrInstruction\(6)) # (!\U1|Mux12~3_combout\)))) # (!\U1|Mux40~4_combout\ & (\U1|registers[4].dataOrInstruction\(6) & ((\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[4].dataOrInstruction\(6),
	datab => \U1|Mux40~4_combout\,
	datac => \U1|registers[12].dataOrInstruction\(6),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux40~5_combout\);

-- Location: FF_X47_Y51_N25
\U1|registers[5].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux316~6_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(6));

-- Location: FF_X46_Y52_N23
\U1|registers[1].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux316~6_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(6));

-- Location: LCCOMB_X46_Y52_N22
\U1|Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~2_combout\ = (\U1|Mux12~3_combout\ & ((\U1|registers[5].dataOrInstruction\(6)) # ((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & (((\U1|registers[1].dataOrInstruction\(6) & !\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[5].dataOrInstruction\(6),
	datac => \U1|registers[1].dataOrInstruction\(6),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux40~2_combout\);

-- Location: LCCOMB_X47_Y52_N18
\U1|registers[9].dataOrInstruction[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[6]~feeder_combout\ = \U1|Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~12_combout\,
	combout => \U1|registers[9].dataOrInstruction[6]~feeder_combout\);

-- Location: FF_X47_Y52_N19
\U1|registers[9].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[9].dataOrInstruction[6]~feeder_combout\,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(6));

-- Location: FF_X46_Y52_N9
\U1|registers[13].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~12_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(6));

-- Location: LCCOMB_X46_Y52_N8
\U1|Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~3_combout\ = (\U1|Mux40~2_combout\ & (((\U1|registers[13].dataOrInstruction\(6)) # (!\U1|Mux11~5_combout\)))) # (!\U1|Mux40~2_combout\ & (\U1|registers[9].dataOrInstruction\(6) & ((\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux40~2_combout\,
	datab => \U1|registers[9].dataOrInstruction\(6),
	datac => \U1|registers[13].dataOrInstruction\(6),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux40~3_combout\);

-- Location: LCCOMB_X46_Y52_N2
\U1|Mux40~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~6_combout\ = (\U1|Mux14~6_combout\ & (((\U1|Mux40~3_combout\) # (\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & (\U1|Mux40~5_combout\ & ((!\U1|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux40~5_combout\,
	datac => \U1|Mux40~3_combout\,
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux40~6_combout\);

-- Location: LCCOMB_X47_Y52_N22
\U1|Mux40~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux40~9_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux40~6_combout\ & ((\U1|Mux40~8_combout\))) # (!\U1|Mux40~6_combout\ & (\U1|Mux40~1_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux40~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux40~1_combout\,
	datab => \U1|Mux40~8_combout\,
	datac => \U1|Mux13~5_combout\,
	datad => \U1|Mux40~6_combout\,
	combout => \U1|Mux40~9_combout\);

-- Location: LCCOMB_X47_Y50_N12
\U1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~12_combout\ = ((\U1|Mux24~4_combout\ $ (\U1|Mux40~9_combout\ $ (!\U1|Add2~11\)))) # (GND)
-- \U1|Add2~13\ = CARRY((\U1|Mux24~4_combout\ & ((\U1|Mux40~9_combout\) # (!\U1|Add2~11\))) # (!\U1|Mux24~4_combout\ & (\U1|Mux40~9_combout\ & !\U1|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux24~4_combout\,
	datab => \U1|Mux40~9_combout\,
	datad => VCC,
	cin => \U1|Add2~11\,
	combout => \U1|Add2~12_combout\,
	cout => \U1|Add2~13\);

-- Location: LCCOMB_X49_Y49_N12
\U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = ((\U1|Mux8~6_combout\ $ (\U1|Mux24~4_combout\ $ (!\U1|Add0~11\)))) # (GND)
-- \U1|Add0~13\ = CARRY((\U1|Mux8~6_combout\ & ((\U1|Mux24~4_combout\) # (!\U1|Add0~11\))) # (!\U1|Mux8~6_combout\ & (\U1|Mux24~4_combout\ & !\U1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~6_combout\,
	datab => \U1|Mux24~4_combout\,
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: LCCOMB_X45_Y49_N24
\U1|Mux316~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux316~4_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~12_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add2~12_combout\,
	datad => \U1|Add0~12_combout\,
	combout => \U1|Mux316~4_combout\);

-- Location: LCCOMB_X47_Y49_N18
\U1|Mux316~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux316~6_combout\ = (\U1|Mux316~4_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux0~5_combout\,
	datac => \U1|Add1~12_combout\,
	datad => \U1|Mux316~4_combout\,
	combout => \U1|Mux316~6_combout\);

-- Location: FF_X48_Y51_N19
\U1|registers[7].dataOrInstruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux316~6_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(6));

-- Location: LCCOMB_X42_Y51_N18
\U1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux24~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & (\U1|registers[6].dataOrInstruction\(6))) # (!\U1|Mux5~3_combout\ & ((\U1|registers[4].dataOrInstruction\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[6].dataOrInstruction\(6),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|registers[4].dataOrInstruction\(6),
	combout => \U1|Mux24~0_combout\);

-- Location: LCCOMB_X47_Y51_N24
\U1|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux24~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux24~0_combout\ & (\U1|registers[7].dataOrInstruction\(6))) # (!\U1|Mux24~0_combout\ & ((\U1|registers[5].dataOrInstruction\(6)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[7].dataOrInstruction\(6),
	datac => \U1|registers[5].dataOrInstruction\(6),
	datad => \U1|Mux24~0_combout\,
	combout => \U1|Mux24~1_combout\);

-- Location: LCCOMB_X48_Y52_N24
\U1|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux24~2_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\) # (\U1|registers[1].dataOrInstruction\(6))))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(6) & (!\U1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[0].dataOrInstruction\(6),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|registers[1].dataOrInstruction\(6),
	combout => \U1|Mux24~2_combout\);

-- Location: LCCOMB_X48_Y52_N12
\U1|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux24~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux24~2_combout\ & (\U1|registers[3].dataOrInstruction\(6))) # (!\U1|Mux24~2_combout\ & ((\U1|registers[2].dataOrInstruction\(6)))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[3].dataOrInstruction\(6),
	datac => \U1|registers[2].dataOrInstruction\(6),
	datad => \U1|Mux24~2_combout\,
	combout => \U1|Mux24~3_combout\);

-- Location: LCCOMB_X48_Y52_N26
\U1|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux24~4_combout\ = (\U1|Mux4~4_combout\ & (\U1|Mux24~1_combout\)) # (!\U1|Mux4~4_combout\ & ((\U1|Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux24~1_combout\,
	datac => \U1|Mux4~4_combout\,
	datad => \U1|Mux24~3_combout\,
	combout => \U1|Mux24~4_combout\);

-- Location: LCCOMB_X48_Y49_N14
\U1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~14_combout\ = (\U1|Mux7~7_combout\ & ((\U1|Mux23~4_combout\ & (!\U1|Add1~13\)) # (!\U1|Mux23~4_combout\ & ((\U1|Add1~13\) # (GND))))) # (!\U1|Mux7~7_combout\ & ((\U1|Mux23~4_combout\ & (\U1|Add1~13\ & VCC)) # (!\U1|Mux23~4_combout\ & 
-- (!\U1|Add1~13\))))
-- \U1|Add1~15\ = CARRY((\U1|Mux7~7_combout\ & ((!\U1|Add1~13\) # (!\U1|Mux23~4_combout\))) # (!\U1|Mux7~7_combout\ & (!\U1|Mux23~4_combout\ & !\U1|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux7~7_combout\,
	datab => \U1|Mux23~4_combout\,
	datad => VCC,
	cin => \U1|Add1~13\,
	combout => \U1|Add1~14_combout\,
	cout => \U1|Add1~15\);

-- Location: LCCOMB_X49_Y49_N14
\U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|Mux23~4_combout\ & ((\U1|Mux7~7_combout\ & (\U1|Add0~13\ & VCC)) # (!\U1|Mux7~7_combout\ & (!\U1|Add0~13\)))) # (!\U1|Mux23~4_combout\ & ((\U1|Mux7~7_combout\ & (!\U1|Add0~13\)) # (!\U1|Mux7~7_combout\ & ((\U1|Add0~13\) # 
-- (GND)))))
-- \U1|Add0~15\ = CARRY((\U1|Mux23~4_combout\ & (!\U1|Mux7~7_combout\ & !\U1|Add0~13\)) # (!\U1|Mux23~4_combout\ & ((!\U1|Add0~13\) # (!\U1|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux23~4_combout\,
	datab => \U1|Mux7~7_combout\,
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X48_Y51_N13
\U1|registers[5].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux315~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(7));

-- Location: LCCOMB_X49_Y51_N12
\U1|registers[4].dataOrInstruction[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[4].dataOrInstruction[7]~feeder_combout\ = \U1|Mux315~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux315~4_combout\,
	combout => \U1|registers[4].dataOrInstruction[7]~feeder_combout\);

-- Location: FF_X49_Y51_N13
\U1|registers[4].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[4].dataOrInstruction[7]~feeder_combout\,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(7));

-- Location: FF_X49_Y51_N11
\U1|registers[6].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux315~4_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(7));

-- Location: LCCOMB_X48_Y51_N14
\U1|Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~2_combout\ = (\U1|Mux13~5_combout\ & (((\U1|registers[6].dataOrInstruction\(7)) # (\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (\U1|registers[4].dataOrInstruction\(7) & ((!\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[4].dataOrInstruction\(7),
	datac => \U1|registers[6].dataOrInstruction\(7),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux39~2_combout\);

-- Location: FF_X48_Y51_N1
\U1|registers[7].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux315~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(7));

-- Location: LCCOMB_X48_Y51_N0
\U1|Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~3_combout\ = (\U1|Mux39~2_combout\ & (((\U1|registers[7].dataOrInstruction\(7)) # (!\U1|Mux14~6_combout\)))) # (!\U1|Mux39~2_combout\ & (\U1|registers[5].dataOrInstruction\(7) & ((\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[5].dataOrInstruction\(7),
	datab => \U1|Mux39~2_combout\,
	datac => \U1|registers[7].dataOrInstruction\(7),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux39~3_combout\);

-- Location: FF_X46_Y51_N27
\U1|registers[1].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux315~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(7));

-- Location: FF_X46_Y51_N5
\U1|registers[0].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux315~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(7));

-- Location: LCCOMB_X46_Y51_N4
\U1|Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~4_combout\ = (\U1|Mux13~5_combout\ & (((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & (\U1|registers[1].dataOrInstruction\(7))) # (!\U1|Mux14~6_combout\ & ((\U1|registers[0].dataOrInstruction\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(7),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[0].dataOrInstruction\(7),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux39~4_combout\);

-- Location: FF_X47_Y49_N17
\U1|registers[3].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux315~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(7));

-- Location: LCCOMB_X46_Y49_N0
\U1|Mux39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~5_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux39~4_combout\ & ((\U1|registers[3].dataOrInstruction\(7)))) # (!\U1|Mux39~4_combout\ & (\U1|registers[2].dataOrInstruction\(7))))) # (!\U1|Mux13~5_combout\ & (\U1|Mux39~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux39~4_combout\,
	datac => \U1|registers[2].dataOrInstruction\(7),
	datad => \U1|registers[3].dataOrInstruction\(7),
	combout => \U1|Mux39~5_combout\);

-- Location: LCCOMB_X48_Y50_N26
\U1|Mux39~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~6_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\) # ((\U1|Mux39~3_combout\)))) # (!\U1|Mux12~3_combout\ & (!\U1|Mux11~5_combout\ & ((\U1|Mux39~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux11~5_combout\,
	datac => \U1|Mux39~3_combout\,
	datad => \U1|Mux39~5_combout\,
	combout => \U1|Mux39~6_combout\);

-- Location: LCCOMB_X45_Y50_N16
\U1|registers[11].dataOrInstruction[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[11].dataOrInstruction[7]~feeder_combout\ = \U1|Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~14_combout\,
	combout => \U1|registers[11].dataOrInstruction[7]~feeder_combout\);

-- Location: FF_X45_Y50_N17
\U1|registers[11].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[11].dataOrInstruction[7]~feeder_combout\,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(7));

-- Location: FF_X49_Y50_N1
\U1|registers[10].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~14_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(7));

-- Location: LCCOMB_X50_Y47_N12
\U1|registers[9].dataOrInstruction[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[7]~feeder_combout\ = \U1|Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~14_combout\,
	combout => \U1|registers[9].dataOrInstruction[7]~feeder_combout\);

-- Location: FF_X50_Y47_N13
\U1|registers[9].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[9].dataOrInstruction[7]~feeder_combout\,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(7));

-- Location: FF_X50_Y47_N7
\U1|registers[8].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~14_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(7));

-- Location: LCCOMB_X50_Y47_N6
\U1|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~0_combout\ = (\U1|Mux14~6_combout\ & ((\U1|registers[9].dataOrInstruction\(7)) # ((\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & (((\U1|registers[8].dataOrInstruction\(7) & !\U1|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[9].dataOrInstruction\(7),
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[8].dataOrInstruction\(7),
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux39~0_combout\);

-- Location: LCCOMB_X49_Y50_N0
\U1|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~1_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux39~0_combout\ & (\U1|registers[11].dataOrInstruction\(7))) # (!\U1|Mux39~0_combout\ & ((\U1|registers[10].dataOrInstruction\(7)))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[11].dataOrInstruction\(7),
	datac => \U1|registers[10].dataOrInstruction\(7),
	datad => \U1|Mux39~0_combout\,
	combout => \U1|Mux39~1_combout\);

-- Location: FF_X47_Y50_N15
\U1|registers[15].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~14_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(7));

-- Location: FF_X50_Y50_N19
\U1|registers[13].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~14_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(7));

-- Location: LCCOMB_X45_Y48_N8
\U1|registers[14].dataOrInstruction[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[14].dataOrInstruction[7]~feeder_combout\ = \U1|Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~14_combout\,
	combout => \U1|registers[14].dataOrInstruction[7]~feeder_combout\);

-- Location: FF_X45_Y48_N9
\U1|registers[14].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[14].dataOrInstruction[7]~feeder_combout\,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(7));

-- Location: FF_X46_Y50_N15
\U1|registers[12].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~14_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(7));

-- Location: LCCOMB_X46_Y50_N14
\U1|Mux39~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~7_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[14].dataOrInstruction\(7)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|registers[12].dataOrInstruction\(7) & !\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[14].dataOrInstruction\(7),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[12].dataOrInstruction\(7),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux39~7_combout\);

-- Location: LCCOMB_X50_Y50_N18
\U1|Mux39~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~8_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux39~7_combout\ & (\U1|registers[15].dataOrInstruction\(7))) # (!\U1|Mux39~7_combout\ & ((\U1|registers[13].dataOrInstruction\(7)))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux39~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|registers[15].dataOrInstruction\(7),
	datac => \U1|registers[13].dataOrInstruction\(7),
	datad => \U1|Mux39~7_combout\,
	combout => \U1|Mux39~8_combout\);

-- Location: LCCOMB_X48_Y50_N12
\U1|Mux39~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux39~9_combout\ = (\U1|Mux39~6_combout\ & (((\U1|Mux39~8_combout\)) # (!\U1|Mux11~5_combout\))) # (!\U1|Mux39~6_combout\ & (\U1|Mux11~5_combout\ & (\U1|Mux39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux39~6_combout\,
	datab => \U1|Mux11~5_combout\,
	datac => \U1|Mux39~1_combout\,
	datad => \U1|Mux39~8_combout\,
	combout => \U1|Mux39~9_combout\);

-- Location: LCCOMB_X47_Y50_N14
\U1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~14_combout\ = (\U1|Mux23~4_combout\ & ((\U1|Mux39~9_combout\ & (\U1|Add2~13\ & VCC)) # (!\U1|Mux39~9_combout\ & (!\U1|Add2~13\)))) # (!\U1|Mux23~4_combout\ & ((\U1|Mux39~9_combout\ & (!\U1|Add2~13\)) # (!\U1|Mux39~9_combout\ & ((\U1|Add2~13\) # 
-- (GND)))))
-- \U1|Add2~15\ = CARRY((\U1|Mux23~4_combout\ & (!\U1|Mux39~9_combout\ & !\U1|Add2~13\)) # (!\U1|Mux23~4_combout\ & ((!\U1|Add2~13\) # (!\U1|Mux39~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux23~4_combout\,
	datab => \U1|Mux39~9_combout\,
	datad => VCC,
	cin => \U1|Add2~13\,
	combout => \U1|Add2~14_combout\,
	cout => \U1|Add2~15\);

-- Location: LCCOMB_X46_Y49_N8
\U1|Mux315~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux315~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & ((\U1|Add2~14_combout\))) # (!\U1|Mux1~8_combout\ & (\U1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Add0~14_combout\,
	datac => \U1|Add2~14_combout\,
	datad => \U1|Mux0~6_combout\,
	combout => \U1|Mux315~2_combout\);

-- Location: LCCOMB_X47_Y49_N16
\U1|Mux315~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux315~4_combout\ = (\U1|Mux315~2_combout\) # ((\U1|Add1~14_combout\ & (\U1|Mux0~5_combout\ & \U1|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~14_combout\,
	datab => \U1|Mux0~5_combout\,
	datac => \U1|Mux9~0_combout\,
	datad => \U1|Mux315~2_combout\,
	combout => \U1|Mux315~4_combout\);

-- Location: FF_X46_Y49_N1
\U1|registers[2].dataOrInstruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux315~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(7));

-- Location: LCCOMB_X46_Y51_N26
\U1|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux23~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(7)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[0].dataOrInstruction\(7),
	datac => \U1|registers[1].dataOrInstruction\(7),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux23~2_combout\);

-- Location: LCCOMB_X46_Y49_N10
\U1|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux23~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux23~2_combout\ & ((\U1|registers[3].dataOrInstruction\(7)))) # (!\U1|Mux23~2_combout\ & (\U1|registers[2].dataOrInstruction\(7))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[2].dataOrInstruction\(7),
	datac => \U1|Mux23~2_combout\,
	datad => \U1|registers[3].dataOrInstruction\(7),
	combout => \U1|Mux23~3_combout\);

-- Location: LCCOMB_X49_Y51_N10
\U1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux23~0_combout\ = (\U1|Mux6~7_combout\ & (\U1|Mux5~3_combout\)) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & (\U1|registers[6].dataOrInstruction\(7))) # (!\U1|Mux5~3_combout\ & ((\U1|registers[4].dataOrInstruction\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[6].dataOrInstruction\(7),
	datad => \U1|registers[4].dataOrInstruction\(7),
	combout => \U1|Mux23~0_combout\);

-- Location: LCCOMB_X48_Y51_N12
\U1|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux23~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux23~0_combout\ & (\U1|registers[7].dataOrInstruction\(7))) # (!\U1|Mux23~0_combout\ & ((\U1|registers[5].dataOrInstruction\(7)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[7].dataOrInstruction\(7),
	datac => \U1|registers[5].dataOrInstruction\(7),
	datad => \U1|Mux23~0_combout\,
	combout => \U1|Mux23~1_combout\);

-- Location: LCCOMB_X46_Y49_N12
\U1|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux23~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux23~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux23~3_combout\,
	datab => \U1|Mux4~4_combout\,
	datad => \U1|Mux23~1_combout\,
	combout => \U1|Mux23~4_combout\);

-- Location: LCCOMB_X48_Y49_N16
\U1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~16_combout\ = (\U1|Mux22~4_combout\ & ((GND) # (!\U1|Add1~15\))) # (!\U1|Mux22~4_combout\ & (\U1|Add1~15\ $ (GND)))
-- \U1|Add1~17\ = CARRY((\U1|Mux22~4_combout\) # (!\U1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux22~4_combout\,
	datad => VCC,
	cin => \U1|Add1~15\,
	combout => \U1|Add1~16_combout\,
	cout => \U1|Add1~17\);

-- Location: LCCOMB_X47_Y49_N22
\U1|Mux314~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux314~4_combout\ = (\U1|Mux314~2_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux0~5_combout\,
	datac => \U1|Mux314~2_combout\,
	datad => \U1|Add1~16_combout\,
	combout => \U1|Mux314~4_combout\);

-- Location: FF_X48_Y48_N3
\U1|registers[7].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux314~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(8));

-- Location: FF_X48_Y48_N7
\U1|registers[5].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux314~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(8));

-- Location: FF_X42_Y51_N17
\U1|registers[6].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux314~4_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(8));

-- Location: FF_X42_Y51_N15
\U1|registers[4].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux314~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(8));

-- Location: LCCOMB_X42_Y51_N14
\U1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux22~0_combout\ = (\U1|Mux5~3_combout\ & ((\U1|registers[6].dataOrInstruction\(8)) # ((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & (((\U1|registers[4].dataOrInstruction\(8) & !\U1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[6].dataOrInstruction\(8),
	datac => \U1|registers[4].dataOrInstruction\(8),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux22~0_combout\);

-- Location: LCCOMB_X48_Y48_N6
\U1|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux22~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux22~0_combout\ & (\U1|registers[7].dataOrInstruction\(8))) # (!\U1|Mux22~0_combout\ & ((\U1|registers[5].dataOrInstruction\(8)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[7].dataOrInstruction\(8),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[5].dataOrInstruction\(8),
	datad => \U1|Mux22~0_combout\,
	combout => \U1|Mux22~1_combout\);

-- Location: FF_X45_Y48_N17
\U1|registers[2].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux314~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(8));

-- Location: FF_X47_Y49_N23
\U1|registers[3].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux314~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(8));

-- Location: FF_X47_Y49_N29
\U1|registers[1].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux314~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(8));

-- Location: FF_X46_Y48_N13
\U1|registers[0].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux314~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(8));

-- Location: LCCOMB_X47_Y49_N28
\U1|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux22~2_combout\ = (\U1|Mux5~3_combout\ & (\U1|Mux6~7_combout\)) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & (\U1|registers[1].dataOrInstruction\(8))) # (!\U1|Mux6~7_combout\ & ((\U1|registers[0].dataOrInstruction\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[1].dataOrInstruction\(8),
	datad => \U1|registers[0].dataOrInstruction\(8),
	combout => \U1|Mux22~2_combout\);

-- Location: LCCOMB_X48_Y48_N22
\U1|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux22~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux22~2_combout\ & ((\U1|registers[3].dataOrInstruction\(8)))) # (!\U1|Mux22~2_combout\ & (\U1|registers[2].dataOrInstruction\(8))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[2].dataOrInstruction\(8),
	datab => \U1|registers[3].dataOrInstruction\(8),
	datac => \U1|Mux5~3_combout\,
	datad => \U1|Mux22~2_combout\,
	combout => \U1|Mux22~3_combout\);

-- Location: LCCOMB_X48_Y48_N8
\U1|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux22~4_combout\ = (\U1|Mux4~4_combout\ & (\U1|Mux22~1_combout\)) # (!\U1|Mux4~4_combout\ & ((\U1|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux22~1_combout\,
	datab => \U1|Mux4~4_combout\,
	datad => \U1|Mux22~3_combout\,
	combout => \U1|Mux22~4_combout\);

-- Location: LCCOMB_X49_Y50_N16
\U1|registers[10].dataOrInstruction[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[10].dataOrInstruction[8]~feeder_combout\ = \U1|Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~16_combout\,
	combout => \U1|registers[10].dataOrInstruction[8]~feeder_combout\);

-- Location: FF_X49_Y50_N17
\U1|registers[10].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[10].dataOrInstruction[8]~feeder_combout\,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(8));

-- Location: FF_X45_Y48_N27
\U1|registers[14].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~16_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(8));

-- Location: LCCOMB_X45_Y48_N16
\U1|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~2_combout\ = (\U1|Mux11~5_combout\ & (((\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & ((\U1|Mux12~3_combout\ & (\U1|registers[6].dataOrInstruction\(8))) # (!\U1|Mux12~3_combout\ & ((\U1|registers[2].dataOrInstruction\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[6].dataOrInstruction\(8),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[2].dataOrInstruction\(8),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux38~2_combout\);

-- Location: LCCOMB_X45_Y48_N26
\U1|Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~3_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux38~2_combout\ & ((\U1|registers[14].dataOrInstruction\(8)))) # (!\U1|Mux38~2_combout\ & (\U1|registers[10].dataOrInstruction\(8))))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[10].dataOrInstruction\(8),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[14].dataOrInstruction\(8),
	datad => \U1|Mux38~2_combout\,
	combout => \U1|Mux38~3_combout\);

-- Location: FF_X46_Y47_N1
\U1|registers[8].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~16_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(8));

-- Location: FF_X46_Y48_N7
\U1|registers[12].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~16_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(8));

-- Location: LCCOMB_X46_Y48_N12
\U1|Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~4_combout\ = (\U1|Mux11~5_combout\ & (((\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & ((\U1|Mux12~3_combout\ & (\U1|registers[4].dataOrInstruction\(8))) # (!\U1|Mux12~3_combout\ & ((\U1|registers[0].dataOrInstruction\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[4].dataOrInstruction\(8),
	datac => \U1|registers[0].dataOrInstruction\(8),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux38~4_combout\);

-- Location: LCCOMB_X46_Y48_N6
\U1|Mux38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~5_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux38~4_combout\ & ((\U1|registers[12].dataOrInstruction\(8)))) # (!\U1|Mux38~4_combout\ & (\U1|registers[8].dataOrInstruction\(8))))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux38~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[8].dataOrInstruction\(8),
	datac => \U1|registers[12].dataOrInstruction\(8),
	datad => \U1|Mux38~4_combout\,
	combout => \U1|Mux38~5_combout\);

-- Location: LCCOMB_X48_Y48_N0
\U1|Mux38~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~6_combout\ = (\U1|Mux14~6_combout\ & (((\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\ & (\U1|Mux38~3_combout\)) # (!\U1|Mux13~5_combout\ & ((\U1|Mux38~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux38~3_combout\,
	datac => \U1|Mux13~5_combout\,
	datad => \U1|Mux38~5_combout\,
	combout => \U1|Mux38~6_combout\);

-- Location: FF_X50_Y50_N31
\U1|registers[13].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~16_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(8));

-- Location: FF_X50_Y50_N21
\U1|registers[9].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~16_combout\,
	sload => VCC,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(8));

-- Location: LCCOMB_X50_Y50_N20
\U1|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~0_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[9].dataOrInstruction\(8)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[1].dataOrInstruction\(8) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(8),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[9].dataOrInstruction\(8),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux38~0_combout\);

-- Location: LCCOMB_X50_Y50_N30
\U1|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~1_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux38~0_combout\ & ((\U1|registers[13].dataOrInstruction\(8)))) # (!\U1|Mux38~0_combout\ & (\U1|registers[5].dataOrInstruction\(8))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[5].dataOrInstruction\(8),
	datac => \U1|registers[13].dataOrInstruction\(8),
	datad => \U1|Mux38~0_combout\,
	combout => \U1|Mux38~1_combout\);

-- Location: FF_X47_Y50_N17
\U1|registers[15].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~16_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(8));

-- Location: FF_X47_Y52_N11
\U1|registers[11].dataOrInstruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~16_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(8));

-- Location: LCCOMB_X47_Y52_N10
\U1|Mux38~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~7_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[11].dataOrInstruction\(8)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[3].dataOrInstruction\(8) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[3].dataOrInstruction\(8),
	datac => \U1|registers[11].dataOrInstruction\(8),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux38~7_combout\);

-- Location: LCCOMB_X48_Y48_N2
\U1|Mux38~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~8_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux38~7_combout\ & (\U1|registers[15].dataOrInstruction\(8))) # (!\U1|Mux38~7_combout\ & ((\U1|registers[7].dataOrInstruction\(8)))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux38~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[15].dataOrInstruction\(8),
	datab => \U1|Mux12~3_combout\,
	datac => \U1|registers[7].dataOrInstruction\(8),
	datad => \U1|Mux38~7_combout\,
	combout => \U1|Mux38~8_combout\);

-- Location: LCCOMB_X48_Y48_N12
\U1|Mux38~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux38~9_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux38~6_combout\ & ((\U1|Mux38~8_combout\))) # (!\U1|Mux38~6_combout\ & (\U1|Mux38~1_combout\)))) # (!\U1|Mux14~6_combout\ & (\U1|Mux38~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux38~6_combout\,
	datac => \U1|Mux38~1_combout\,
	datad => \U1|Mux38~8_combout\,
	combout => \U1|Mux38~9_combout\);

-- Location: LCCOMB_X47_Y50_N16
\U1|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~16_combout\ = ((\U1|Mux22~4_combout\ $ (\U1|Mux38~9_combout\ $ (!\U1|Add2~15\)))) # (GND)
-- \U1|Add2~17\ = CARRY((\U1|Mux22~4_combout\ & ((\U1|Mux38~9_combout\) # (!\U1|Add2~15\))) # (!\U1|Mux22~4_combout\ & (\U1|Mux38~9_combout\ & !\U1|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux22~4_combout\,
	datab => \U1|Mux38~9_combout\,
	datad => VCC,
	cin => \U1|Add2~15\,
	combout => \U1|Add2~16_combout\,
	cout => \U1|Add2~17\);

-- Location: LCCOMB_X49_Y49_N16
\U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|Mux22~4_combout\ & (\U1|Add0~15\ $ (GND))) # (!\U1|Mux22~4_combout\ & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|Mux22~4_combout\ & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux22~4_combout\,
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: LCCOMB_X45_Y49_N6
\U1|Mux314~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux314~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~16_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Add2~16_combout\,
	datac => \U1|Mux0~6_combout\,
	datad => \U1|Add0~16_combout\,
	combout => \U1|Mux314~2_combout\);

-- Location: LCCOMB_X42_Y48_N14
\U1|Hex_Display_Data[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[17]~1_combout\ = (\U1|Mux10~4_combout\ & ((\U1|Mux3~7_combout\) # ((\U1|Mux1~7_combout\ & !\U1|PC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~7_combout\,
	datab => \U1|Mux3~7_combout\,
	datac => \U1|PC\(6),
	datad => \U1|Mux10~4_combout\,
	combout => \U1|Hex_Display_Data[17]~1_combout\);

-- Location: LCCOMB_X42_Y48_N28
\U1|Mux316~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux316~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux2~8_combout\ & ((!\U1|Mux3~9_combout\) # (!\U1|Mux1~8_combout\))) # (!\U1|Mux2~8_combout\ & ((\U1|Mux1~8_combout\) # (\U1|Mux3~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~6_combout\,
	datab => \U1|Mux2~8_combout\,
	datac => \U1|Mux1~8_combout\,
	datad => \U1|Mux3~9_combout\,
	combout => \U1|Mux316~2_combout\);

-- Location: LCCOMB_X42_Y48_N0
\U1|Mux316~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux316~3_combout\ = (\U1|Mux316~2_combout\) # ((\U1|Mux0~6_combout\ & ((\U1|Hex_Display_Data[17]~1_combout\) # (!\U1|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~6_combout\,
	datab => \U1|Mux2~8_combout\,
	datac => \U1|Hex_Display_Data[17]~1_combout\,
	datad => \U1|Mux316~2_combout\,
	combout => \U1|Mux316~3_combout\);

-- Location: LCCOMB_X41_Y49_N4
\U1|Mux314~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux314~3_combout\ = (\U1|Mux316~3_combout\) # ((!\U1|Mux314~2_combout\ & ((!\U1|Add1~16_combout\) # (!\U1|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux314~2_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add1~16_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux314~3_combout\);

-- Location: FF_X41_Y49_N5
\U1|Hex_Display_Data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux314~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(24));

-- Location: LCCOMB_X40_Y49_N10
\U2|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~11_combout\ = (\U2|CHAR_COUNT\(2) & (((\U2|CHAR_COUNT\(0) & !\U1|Hex_Display_Data\(24))) # (!\U2|CHAR_COUNT\(1)))) # (!\U2|CHAR_COUNT\(2) & (\U2|CHAR_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(1),
	datad => \U1|Hex_Display_Data\(24),
	combout => \U2|Mux6~11_combout\);

-- Location: FF_X47_Y50_N25
\U1|registers[15].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~24_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(12));

-- Location: LCCOMB_X50_Y48_N28
\U1|registers[7].dataOrInstruction[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[7].dataOrInstruction[12]~feeder_combout\ = \U1|Mux310~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux310~4_combout\,
	combout => \U1|registers[7].dataOrInstruction[12]~feeder_combout\);

-- Location: FF_X50_Y48_N29
\U1|registers[7].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[7].dataOrInstruction[12]~feeder_combout\,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(12));

-- Location: FF_X45_Y49_N5
\U1|registers[3].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux310~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(12));

-- Location: FF_X47_Y52_N31
\U1|registers[11].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~24_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(12));

-- Location: LCCOMB_X47_Y52_N30
\U1|Mux34~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~7_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[11].dataOrInstruction\(12)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[3].dataOrInstruction\(12) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[3].dataOrInstruction\(12),
	datac => \U1|registers[11].dataOrInstruction\(12),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux34~7_combout\);

-- Location: LCCOMB_X47_Y51_N2
\U1|Mux34~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~8_combout\ = (\U1|Mux34~7_combout\ & ((\U1|registers[15].dataOrInstruction\(12)) # ((!\U1|Mux12~3_combout\)))) # (!\U1|Mux34~7_combout\ & (((\U1|registers[7].dataOrInstruction\(12) & \U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[15].dataOrInstruction\(12),
	datab => \U1|registers[7].dataOrInstruction\(12),
	datac => \U1|Mux34~7_combout\,
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux34~8_combout\);

-- Location: FF_X48_Y49_N17
\U1|registers[10].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~24_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(12));

-- Location: FF_X45_Y48_N21
\U1|registers[14].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~24_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(12));

-- Location: LCCOMB_X49_Y51_N28
\U1|registers[6].dataOrInstruction[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[12]~feeder_combout\ = \U1|Mux310~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux310~4_combout\,
	combout => \U1|registers[6].dataOrInstruction[12]~feeder_combout\);

-- Location: FF_X49_Y51_N29
\U1|registers[6].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[6].dataOrInstruction[12]~feeder_combout\,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(12));

-- Location: LCCOMB_X45_Y48_N2
\U1|Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~2_combout\ = (\U1|Mux11~5_combout\ & (((\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & ((\U1|Mux12~3_combout\ & (\U1|registers[6].dataOrInstruction\(12))) # (!\U1|Mux12~3_combout\ & ((\U1|registers[2].dataOrInstruction\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[6].dataOrInstruction\(12),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[2].dataOrInstruction\(12),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux34~2_combout\);

-- Location: LCCOMB_X45_Y48_N20
\U1|Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~3_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux34~2_combout\ & ((\U1|registers[14].dataOrInstruction\(12)))) # (!\U1|Mux34~2_combout\ & (\U1|registers[10].dataOrInstruction\(12))))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[10].dataOrInstruction\(12),
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[14].dataOrInstruction\(12),
	datad => \U1|Mux34~2_combout\,
	combout => \U1|Mux34~3_combout\);

-- Location: LCCOMB_X45_Y50_N2
\U1|registers[8].dataOrInstruction[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[8].dataOrInstruction[12]~feeder_combout\ = \U1|Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~24_combout\,
	combout => \U1|registers[8].dataOrInstruction[12]~feeder_combout\);

-- Location: FF_X45_Y50_N3
\U1|registers[8].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[8].dataOrInstruction[12]~feeder_combout\,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(12));

-- Location: FF_X46_Y48_N11
\U1|registers[12].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~24_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(12));

-- Location: FF_X49_Y51_N23
\U1|registers[4].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux310~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(12));

-- Location: FF_X46_Y48_N1
\U1|registers[0].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux310~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(12));

-- Location: LCCOMB_X46_Y48_N0
\U1|Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~4_combout\ = (\U1|Mux12~3_combout\ & ((\U1|registers[4].dataOrInstruction\(12)) # ((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & (((\U1|registers[0].dataOrInstruction\(12) & !\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[4].dataOrInstruction\(12),
	datab => \U1|Mux12~3_combout\,
	datac => \U1|registers[0].dataOrInstruction\(12),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux34~4_combout\);

-- Location: LCCOMB_X46_Y48_N10
\U1|Mux34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~5_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux34~4_combout\ & ((\U1|registers[12].dataOrInstruction\(12)))) # (!\U1|Mux34~4_combout\ & (\U1|registers[8].dataOrInstruction\(12))))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[8].dataOrInstruction\(12),
	datac => \U1|registers[12].dataOrInstruction\(12),
	datad => \U1|Mux34~4_combout\,
	combout => \U1|Mux34~5_combout\);

-- Location: LCCOMB_X47_Y51_N8
\U1|Mux34~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~6_combout\ = (\U1|Mux14~6_combout\ & (\U1|Mux13~5_combout\)) # (!\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\ & (\U1|Mux34~3_combout\)) # (!\U1|Mux13~5_combout\ & ((\U1|Mux34~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|Mux34~3_combout\,
	datad => \U1|Mux34~5_combout\,
	combout => \U1|Mux34~6_combout\);

-- Location: FF_X47_Y51_N13
\U1|registers[5].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux310~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(12));

-- Location: FF_X47_Y51_N7
\U1|registers[13].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~24_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(12));

-- Location: FF_X46_Y51_N15
\U1|registers[1].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux310~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(12));

-- Location: FF_X47_Y52_N13
\U1|registers[9].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~24_combout\,
	sload => VCC,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(12));

-- Location: LCCOMB_X47_Y52_N12
\U1|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~0_combout\ = (\U1|Mux12~3_combout\ & (((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\ & ((\U1|registers[9].dataOrInstruction\(12)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[1].dataOrInstruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[1].dataOrInstruction\(12),
	datac => \U1|registers[9].dataOrInstruction\(12),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux34~0_combout\);

-- Location: LCCOMB_X47_Y51_N6
\U1|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~1_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux34~0_combout\ & ((\U1|registers[13].dataOrInstruction\(12)))) # (!\U1|Mux34~0_combout\ & (\U1|registers[5].dataOrInstruction\(12))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[5].dataOrInstruction\(12),
	datab => \U1|Mux12~3_combout\,
	datac => \U1|registers[13].dataOrInstruction\(12),
	datad => \U1|Mux34~0_combout\,
	combout => \U1|Mux34~1_combout\);

-- Location: LCCOMB_X47_Y51_N20
\U1|Mux34~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux34~9_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux34~6_combout\ & (\U1|Mux34~8_combout\)) # (!\U1|Mux34~6_combout\ & ((\U1|Mux34~1_combout\))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux34~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux34~8_combout\,
	datac => \U1|Mux34~6_combout\,
	datad => \U1|Mux34~1_combout\,
	combout => \U1|Mux34~9_combout\);

-- Location: FF_X46_Y49_N31
\U1|registers[2].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux311~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(11));

-- Location: FF_X46_Y51_N3
\U1|registers[0].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux311~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(11));

-- Location: FF_X46_Y51_N17
\U1|registers[1].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux311~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(11));

-- Location: LCCOMB_X46_Y51_N16
\U1|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux19~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(11)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[0].dataOrInstruction\(11),
	datac => \U1|registers[1].dataOrInstruction\(11),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux19~2_combout\);

-- Location: FF_X46_Y49_N25
\U1|registers[3].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux311~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(11));

-- Location: LCCOMB_X46_Y49_N26
\U1|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux19~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux19~2_combout\ & ((\U1|registers[3].dataOrInstruction\(11)))) # (!\U1|Mux19~2_combout\ & (\U1|registers[2].dataOrInstruction\(11))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[2].dataOrInstruction\(11),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|Mux19~2_combout\,
	datad => \U1|registers[3].dataOrInstruction\(11),
	combout => \U1|Mux19~3_combout\);

-- Location: FF_X50_Y48_N9
\U1|registers[7].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux311~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(11));

-- Location: FF_X50_Y48_N23
\U1|registers[4].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux311~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(11));

-- Location: FF_X49_Y48_N15
\U1|registers[6].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux311~4_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(11));

-- Location: LCCOMB_X49_Y48_N14
\U1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux19~0_combout\ = (\U1|Mux5~3_combout\ & (((\U1|registers[6].dataOrInstruction\(11)) # (\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(11) & ((!\U1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[4].dataOrInstruction\(11),
	datac => \U1|registers[6].dataOrInstruction\(11),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux19~0_combout\);

-- Location: LCCOMB_X49_Y48_N28
\U1|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux19~1_combout\ = (\U1|Mux19~0_combout\ & ((\U1|registers[7].dataOrInstruction\(11)) # ((!\U1|Mux6~7_combout\)))) # (!\U1|Mux19~0_combout\ & (((\U1|registers[5].dataOrInstruction\(11) & \U1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[7].dataOrInstruction\(11),
	datab => \U1|Mux19~0_combout\,
	datac => \U1|registers[5].dataOrInstruction\(11),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux19~1_combout\);

-- Location: LCCOMB_X48_Y48_N20
\U1|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux19~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux19~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux4~4_combout\,
	datac => \U1|Mux19~3_combout\,
	datad => \U1|Mux19~1_combout\,
	combout => \U1|Mux19~4_combout\);

-- Location: FF_X49_Y48_N31
\U1|registers[5].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux313~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(9));

-- Location: LCCOMB_X50_Y48_N30
\U1|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~0_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\) # ((\U1|registers[5].dataOrInstruction\(9))))) # (!\U1|Mux14~6_combout\ & (!\U1|Mux13~5_combout\ & (\U1|registers[4].dataOrInstruction\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[4].dataOrInstruction\(9),
	datad => \U1|registers[5].dataOrInstruction\(9),
	combout => \U1|Mux37~0_combout\);

-- Location: FF_X49_Y48_N21
\U1|registers[6].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux313~4_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(9));

-- Location: FF_X50_Y48_N17
\U1|registers[7].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux313~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(9));

-- Location: LCCOMB_X50_Y48_N16
\U1|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~1_combout\ = (\U1|Mux37~0_combout\ & (((\U1|registers[7].dataOrInstruction\(9)) # (!\U1|Mux13~5_combout\)))) # (!\U1|Mux37~0_combout\ & (\U1|registers[6].dataOrInstruction\(9) & ((\U1|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux37~0_combout\,
	datab => \U1|registers[6].dataOrInstruction\(9),
	datac => \U1|registers[7].dataOrInstruction\(9),
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux37~1_combout\);

-- Location: LCCOMB_X47_Y51_N14
\U1|registers[13].dataOrInstruction[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[13].dataOrInstruction[9]~feeder_combout\ = \U1|Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~18_combout\,
	combout => \U1|registers[13].dataOrInstruction[9]~feeder_combout\);

-- Location: FF_X47_Y51_N15
\U1|registers[13].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[13].dataOrInstruction[9]~feeder_combout\,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(9));

-- Location: FF_X46_Y50_N31
\U1|registers[12].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~18_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(9));

-- Location: LCCOMB_X46_Y50_N30
\U1|Mux37~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~7_combout\ = (\U1|Mux13~5_combout\ & (((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & (\U1|registers[13].dataOrInstruction\(9))) # (!\U1|Mux14~6_combout\ & ((\U1|registers[12].dataOrInstruction\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[13].dataOrInstruction\(9),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[12].dataOrInstruction\(9),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux37~7_combout\);

-- Location: FF_X46_Y50_N13
\U1|registers[14].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~18_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(9));

-- Location: FF_X47_Y50_N19
\U1|registers[15].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~18_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(9));

-- Location: LCCOMB_X46_Y50_N12
\U1|Mux37~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~8_combout\ = (\U1|Mux37~7_combout\ & (((\U1|registers[15].dataOrInstruction\(9))) # (!\U1|Mux13~5_combout\))) # (!\U1|Mux37~7_combout\ & (\U1|Mux13~5_combout\ & (\U1|registers[14].dataOrInstruction\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux37~7_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[14].dataOrInstruction\(9),
	datad => \U1|registers[15].dataOrInstruction\(9),
	combout => \U1|Mux37~8_combout\);

-- Location: LCCOMB_X47_Y52_N6
\U1|registers[9].dataOrInstruction[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[9]~feeder_combout\ = \U1|Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~18_combout\,
	combout => \U1|registers[9].dataOrInstruction[9]~feeder_combout\);

-- Location: FF_X47_Y52_N7
\U1|registers[9].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[9].dataOrInstruction[9]~feeder_combout\,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(9));

-- Location: LCCOMB_X49_Y50_N6
\U1|registers[8].dataOrInstruction[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[8].dataOrInstruction[9]~feeder_combout\ = \U1|Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~18_combout\,
	combout => \U1|registers[8].dataOrInstruction[9]~feeder_combout\);

-- Location: FF_X49_Y50_N7
\U1|registers[8].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[8].dataOrInstruction[9]~feeder_combout\,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(9));

-- Location: LCCOMB_X49_Y50_N12
\U1|registers[10].dataOrInstruction[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[10].dataOrInstruction[9]~feeder_combout\ = \U1|Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~18_combout\,
	combout => \U1|registers[10].dataOrInstruction[9]~feeder_combout\);

-- Location: FF_X49_Y50_N13
\U1|registers[10].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[10].dataOrInstruction[9]~feeder_combout\,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(9));

-- Location: LCCOMB_X48_Y52_N28
\U1|Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~2_combout\ = (\U1|Mux14~6_combout\ & (((\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\ & ((\U1|registers[10].dataOrInstruction\(9)))) # (!\U1|Mux13~5_combout\ & (\U1|registers[8].dataOrInstruction\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[8].dataOrInstruction\(9),
	datab => \U1|registers[10].dataOrInstruction\(9),
	datac => \U1|Mux14~6_combout\,
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux37~2_combout\);

-- Location: FF_X47_Y52_N1
\U1|registers[11].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~18_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(9));

-- Location: LCCOMB_X47_Y52_N0
\U1|Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~3_combout\ = (\U1|Mux37~2_combout\ & (((\U1|registers[11].dataOrInstruction\(9)) # (!\U1|Mux14~6_combout\)))) # (!\U1|Mux37~2_combout\ & (\U1|registers[9].dataOrInstruction\(9) & ((\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[9].dataOrInstruction\(9),
	datab => \U1|Mux37~2_combout\,
	datac => \U1|registers[11].dataOrInstruction\(9),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux37~3_combout\);

-- Location: FF_X46_Y51_N31
\U1|registers[0].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux313~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(9));

-- Location: FF_X48_Y52_N15
\U1|registers[2].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux313~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(9));

-- Location: LCCOMB_X46_Y51_N30
\U1|Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~4_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\) # ((\U1|registers[2].dataOrInstruction\(9))))) # (!\U1|Mux13~5_combout\ & (!\U1|Mux14~6_combout\ & (\U1|registers[0].dataOrInstruction\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[0].dataOrInstruction\(9),
	datad => \U1|registers[2].dataOrInstruction\(9),
	combout => \U1|Mux37~4_combout\);

-- Location: FF_X47_Y49_N3
\U1|registers[3].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux313~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(9));

-- Location: FF_X46_Y51_N13
\U1|registers[1].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux313~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(9));

-- Location: LCCOMB_X46_Y51_N12
\U1|Mux37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~5_combout\ = (\U1|Mux37~4_combout\ & ((\U1|registers[3].dataOrInstruction\(9)) # ((!\U1|Mux14~6_combout\)))) # (!\U1|Mux37~4_combout\ & (((\U1|registers[1].dataOrInstruction\(9) & \U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux37~4_combout\,
	datab => \U1|registers[3].dataOrInstruction\(9),
	datac => \U1|registers[1].dataOrInstruction\(9),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux37~5_combout\);

-- Location: LCCOMB_X46_Y48_N24
\U1|Mux37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~6_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux37~3_combout\) # ((\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux37~5_combout\ & !\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|Mux37~3_combout\,
	datac => \U1|Mux37~5_combout\,
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux37~6_combout\);

-- Location: LCCOMB_X46_Y48_N26
\U1|Mux37~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux37~9_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux37~6_combout\ & ((\U1|Mux37~8_combout\))) # (!\U1|Mux37~6_combout\ & (\U1|Mux37~1_combout\)))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux37~1_combout\,
	datac => \U1|Mux37~8_combout\,
	datad => \U1|Mux37~6_combout\,
	combout => \U1|Mux37~9_combout\);

-- Location: LCCOMB_X47_Y50_N18
\U1|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~18_combout\ = (\U1|Mux21~4_combout\ & ((\U1|Mux37~9_combout\ & (\U1|Add2~17\ & VCC)) # (!\U1|Mux37~9_combout\ & (!\U1|Add2~17\)))) # (!\U1|Mux21~4_combout\ & ((\U1|Mux37~9_combout\ & (!\U1|Add2~17\)) # (!\U1|Mux37~9_combout\ & ((\U1|Add2~17\) # 
-- (GND)))))
-- \U1|Add2~19\ = CARRY((\U1|Mux21~4_combout\ & (!\U1|Mux37~9_combout\ & !\U1|Add2~17\)) # (!\U1|Mux21~4_combout\ & ((!\U1|Add2~17\) # (!\U1|Mux37~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux21~4_combout\,
	datab => \U1|Mux37~9_combout\,
	datad => VCC,
	cin => \U1|Add2~17\,
	combout => \U1|Add2~18_combout\,
	cout => \U1|Add2~19\);

-- Location: LCCOMB_X49_Y49_N18
\U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|Mux21~4_combout\ & (!\U1|Add0~17\)) # (!\U1|Mux21~4_combout\ & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|Mux21~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux21~4_combout\,
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: LCCOMB_X45_Y49_N20
\U1|Mux313~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux313~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~18_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Add2~18_combout\,
	datac => \U1|Mux0~6_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|Mux313~2_combout\);

-- Location: LCCOMB_X48_Y49_N18
\U1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~18_combout\ = (\U1|Mux21~4_combout\ & (\U1|Add1~17\ & VCC)) # (!\U1|Mux21~4_combout\ & (!\U1|Add1~17\))
-- \U1|Add1~19\ = CARRY((!\U1|Mux21~4_combout\ & !\U1|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux21~4_combout\,
	datad => VCC,
	cin => \U1|Add1~17\,
	combout => \U1|Add1~18_combout\,
	cout => \U1|Add1~19\);

-- Location: LCCOMB_X47_Y49_N2
\U1|Mux313~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux313~4_combout\ = (\U1|Mux313~2_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux0~5_combout\,
	datac => \U1|Mux313~2_combout\,
	datad => \U1|Add1~18_combout\,
	combout => \U1|Mux313~4_combout\);

-- Location: FF_X50_Y48_N31
\U1|registers[4].dataOrInstruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux313~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(9));

-- Location: LCCOMB_X49_Y48_N20
\U1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux21~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & ((\U1|registers[6].dataOrInstruction\(9)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[4].dataOrInstruction\(9),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[6].dataOrInstruction\(9),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux21~0_combout\);

-- Location: LCCOMB_X49_Y48_N30
\U1|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux21~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux21~0_combout\ & ((\U1|registers[7].dataOrInstruction\(9)))) # (!\U1|Mux21~0_combout\ & (\U1|registers[5].dataOrInstruction\(9))))) # (!\U1|Mux6~7_combout\ & (\U1|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|Mux21~0_combout\,
	datac => \U1|registers[5].dataOrInstruction\(9),
	datad => \U1|registers[7].dataOrInstruction\(9),
	combout => \U1|Mux21~1_combout\);

-- Location: LCCOMB_X47_Y51_N16
\U1|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux21~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(9)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[0].dataOrInstruction\(9),
	datac => \U1|Mux6~7_combout\,
	datad => \U1|registers[1].dataOrInstruction\(9),
	combout => \U1|Mux21~2_combout\);

-- Location: LCCOMB_X48_Y52_N14
\U1|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux21~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux21~2_combout\ & (\U1|registers[3].dataOrInstruction\(9))) # (!\U1|Mux21~2_combout\ & ((\U1|registers[2].dataOrInstruction\(9)))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[3].dataOrInstruction\(9),
	datac => \U1|registers[2].dataOrInstruction\(9),
	datad => \U1|Mux21~2_combout\,
	combout => \U1|Mux21~3_combout\);

-- Location: LCCOMB_X47_Y47_N14
\U1|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux21~4_combout\ = (\U1|Mux4~4_combout\ & (\U1|Mux21~1_combout\)) # (!\U1|Mux4~4_combout\ & ((\U1|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux21~1_combout\,
	datac => \U1|Mux4~4_combout\,
	datad => \U1|Mux21~3_combout\,
	combout => \U1|Mux21~4_combout\);

-- Location: LCCOMB_X48_Y49_N20
\U1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~20_combout\ = (\U1|Mux20~4_combout\ & ((GND) # (!\U1|Add1~19\))) # (!\U1|Mux20~4_combout\ & (\U1|Add1~19\ $ (GND)))
-- \U1|Add1~21\ = CARRY((\U1|Mux20~4_combout\) # (!\U1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux20~4_combout\,
	datad => VCC,
	cin => \U1|Add1~19\,
	combout => \U1|Add1~20_combout\,
	cout => \U1|Add1~21\);

-- Location: FF_X50_Y48_N19
\U1|registers[4].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux312~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(10));

-- Location: FF_X43_Y48_N3
\U1|registers[12].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~20_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(10));

-- Location: FF_X48_Y52_N17
\U1|registers[0].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux312~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(10));

-- Location: FF_X43_Y48_N17
\U1|registers[8].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~20_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(10));

-- Location: LCCOMB_X43_Y48_N16
\U1|Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~4_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[8].dataOrInstruction\(10)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[0].dataOrInstruction\(10) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[0].dataOrInstruction\(10),
	datac => \U1|registers[8].dataOrInstruction\(10),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux36~4_combout\);

-- Location: LCCOMB_X43_Y48_N2
\U1|Mux36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~5_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux36~4_combout\ & ((\U1|registers[12].dataOrInstruction\(10)))) # (!\U1|Mux36~4_combout\ & (\U1|registers[4].dataOrInstruction\(10))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux36~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[4].dataOrInstruction\(10),
	datac => \U1|registers[12].dataOrInstruction\(10),
	datad => \U1|Mux36~4_combout\,
	combout => \U1|Mux36~5_combout\);

-- Location: FF_X49_Y48_N3
\U1|registers[5].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux312~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(10));

-- Location: LCCOMB_X46_Y52_N4
\U1|Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~2_combout\ = (\U1|Mux12~3_combout\ & ((\U1|registers[5].dataOrInstruction\(10)) # ((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & (((\U1|registers[1].dataOrInstruction\(10) & !\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[5].dataOrInstruction\(10),
	datac => \U1|registers[1].dataOrInstruction\(10),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux36~2_combout\);

-- Location: FF_X46_Y52_N31
\U1|registers[13].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~20_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(10));

-- Location: LCCOMB_X47_Y52_N16
\U1|registers[9].dataOrInstruction[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[10]~feeder_combout\ = \U1|Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~20_combout\,
	combout => \U1|registers[9].dataOrInstruction[10]~feeder_combout\);

-- Location: FF_X47_Y52_N17
\U1|registers[9].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[9].dataOrInstruction[10]~feeder_combout\,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(10));

-- Location: LCCOMB_X46_Y52_N30
\U1|Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~3_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux36~2_combout\ & (\U1|registers[13].dataOrInstruction\(10))) # (!\U1|Mux36~2_combout\ & ((\U1|registers[9].dataOrInstruction\(10)))))) # (!\U1|Mux11~5_combout\ & (\U1|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|Mux36~2_combout\,
	datac => \U1|registers[13].dataOrInstruction\(10),
	datad => \U1|registers[9].dataOrInstruction\(10),
	combout => \U1|Mux36~3_combout\);

-- Location: LCCOMB_X46_Y52_N0
\U1|Mux36~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~6_combout\ = (\U1|Mux14~6_combout\ & (((\U1|Mux36~3_combout\) # (\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & (\U1|Mux36~5_combout\ & ((!\U1|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux36~5_combout\,
	datac => \U1|Mux36~3_combout\,
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux36~6_combout\);

-- Location: FF_X47_Y50_N21
\U1|registers[15].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~20_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(10));

-- Location: FF_X47_Y52_N3
\U1|registers[11].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~20_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(10));

-- Location: FF_X47_Y49_N25
\U1|registers[3].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux312~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(10));

-- Location: FF_X50_Y48_N21
\U1|registers[7].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux312~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(10));

-- Location: LCCOMB_X50_Y48_N20
\U1|Mux36~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~7_combout\ = (\U1|Mux12~3_combout\ & (((\U1|registers[7].dataOrInstruction\(10)) # (\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & (\U1|registers[3].dataOrInstruction\(10) & ((!\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[3].dataOrInstruction\(10),
	datac => \U1|registers[7].dataOrInstruction\(10),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux36~7_combout\);

-- Location: LCCOMB_X47_Y52_N2
\U1|Mux36~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~8_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux36~7_combout\ & (\U1|registers[15].dataOrInstruction\(10))) # (!\U1|Mux36~7_combout\ & ((\U1|registers[11].dataOrInstruction\(10)))))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux36~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[15].dataOrInstruction\(10),
	datac => \U1|registers[11].dataOrInstruction\(10),
	datad => \U1|Mux36~7_combout\,
	combout => \U1|Mux36~8_combout\);

-- Location: FF_X48_Y52_N31
\U1|registers[2].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux312~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(10));

-- Location: FF_X49_Y50_N11
\U1|registers[10].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~20_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(10));

-- Location: LCCOMB_X49_Y50_N10
\U1|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~0_combout\ = (\U1|Mux12~3_combout\ & (((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\ & ((\U1|registers[10].dataOrInstruction\(10)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[2].dataOrInstruction\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[2].dataOrInstruction\(10),
	datac => \U1|registers[10].dataOrInstruction\(10),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux36~0_combout\);

-- Location: FF_X48_Y50_N7
\U1|registers[14].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~20_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(10));

-- Location: LCCOMB_X49_Y48_N16
\U1|registers[6].dataOrInstruction[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[10]~feeder_combout\ = \U1|Mux312~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux312~4_combout\,
	combout => \U1|registers[6].dataOrInstruction[10]~feeder_combout\);

-- Location: FF_X49_Y48_N17
\U1|registers[6].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[6].dataOrInstruction[10]~feeder_combout\,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(10));

-- Location: LCCOMB_X48_Y50_N6
\U1|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~1_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux36~0_combout\ & (\U1|registers[14].dataOrInstruction\(10))) # (!\U1|Mux36~0_combout\ & ((\U1|registers[6].dataOrInstruction\(10)))))) # (!\U1|Mux12~3_combout\ & (\U1|Mux36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux36~0_combout\,
	datac => \U1|registers[14].dataOrInstruction\(10),
	datad => \U1|registers[6].dataOrInstruction\(10),
	combout => \U1|Mux36~1_combout\);

-- Location: LCCOMB_X47_Y52_N28
\U1|Mux36~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux36~9_combout\ = (\U1|Mux36~6_combout\ & ((\U1|Mux36~8_combout\) # ((!\U1|Mux13~5_combout\)))) # (!\U1|Mux36~6_combout\ & (((\U1|Mux13~5_combout\ & \U1|Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux36~6_combout\,
	datab => \U1|Mux36~8_combout\,
	datac => \U1|Mux13~5_combout\,
	datad => \U1|Mux36~1_combout\,
	combout => \U1|Mux36~9_combout\);

-- Location: LCCOMB_X47_Y50_N20
\U1|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~20_combout\ = ((\U1|Mux36~9_combout\ $ (\U1|Mux20~4_combout\ $ (!\U1|Add2~19\)))) # (GND)
-- \U1|Add2~21\ = CARRY((\U1|Mux36~9_combout\ & ((\U1|Mux20~4_combout\) # (!\U1|Add2~19\))) # (!\U1|Mux36~9_combout\ & (\U1|Mux20~4_combout\ & !\U1|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux36~9_combout\,
	datab => \U1|Mux20~4_combout\,
	datad => VCC,
	cin => \U1|Add2~19\,
	combout => \U1|Add2~20_combout\,
	cout => \U1|Add2~21\);

-- Location: LCCOMB_X49_Y49_N20
\U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|Mux20~4_combout\ & (\U1|Add0~19\ $ (GND))) # (!\U1|Mux20~4_combout\ & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|Mux20~4_combout\ & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux20~4_combout\,
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: LCCOMB_X45_Y49_N10
\U1|Mux312~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux312~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~20_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add2~20_combout\,
	datad => \U1|Add0~20_combout\,
	combout => \U1|Mux312~2_combout\);

-- Location: LCCOMB_X47_Y49_N24
\U1|Mux312~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux312~4_combout\ = (\U1|Mux312~2_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux0~5_combout\,
	datac => \U1|Add1~20_combout\,
	datad => \U1|Mux312~2_combout\,
	combout => \U1|Mux312~4_combout\);

-- Location: FF_X46_Y52_N5
\U1|registers[1].dataOrInstruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux312~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(10));

-- Location: LCCOMB_X48_Y52_N16
\U1|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux20~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & (\U1|registers[1].dataOrInstruction\(10))) # (!\U1|Mux6~7_combout\ & ((\U1|registers[0].dataOrInstruction\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(10),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[0].dataOrInstruction\(10),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux20~2_combout\);

-- Location: LCCOMB_X48_Y52_N30
\U1|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux20~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux20~2_combout\ & ((\U1|registers[3].dataOrInstruction\(10)))) # (!\U1|Mux20~2_combout\ & (\U1|registers[2].dataOrInstruction\(10))))) # (!\U1|Mux5~3_combout\ & (\U1|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|Mux20~2_combout\,
	datac => \U1|registers[2].dataOrInstruction\(10),
	datad => \U1|registers[3].dataOrInstruction\(10),
	combout => \U1|Mux20~3_combout\);

-- Location: LCCOMB_X50_Y48_N18
\U1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux20~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & (\U1|registers[6].dataOrInstruction\(10))) # (!\U1|Mux5~3_combout\ & ((\U1|registers[4].dataOrInstruction\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[6].dataOrInstruction\(10),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[4].dataOrInstruction\(10),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux20~0_combout\);

-- Location: LCCOMB_X49_Y48_N2
\U1|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux20~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux20~0_combout\ & (\U1|registers[7].dataOrInstruction\(10))) # (!\U1|Mux20~0_combout\ & ((\U1|registers[5].dataOrInstruction\(10)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[7].dataOrInstruction\(10),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[5].dataOrInstruction\(10),
	datad => \U1|Mux20~0_combout\,
	combout => \U1|Mux20~1_combout\);

-- Location: LCCOMB_X48_Y52_N18
\U1|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux20~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux20~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux4~4_combout\,
	datac => \U1|Mux20~3_combout\,
	datad => \U1|Mux20~1_combout\,
	combout => \U1|Mux20~4_combout\);

-- Location: LCCOMB_X48_Y49_N22
\U1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~22_combout\ = (\U1|Mux19~4_combout\ & (\U1|Add1~21\ & VCC)) # (!\U1|Mux19~4_combout\ & (!\U1|Add1~21\))
-- \U1|Add1~23\ = CARRY((!\U1|Mux19~4_combout\ & !\U1|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux19~4_combout\,
	datad => VCC,
	cin => \U1|Add1~21\,
	combout => \U1|Add1~22_combout\,
	cout => \U1|Add1~23\);

-- Location: LCCOMB_X47_Y50_N22
\U1|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~22_combout\ = (\U1|Mux35~9_combout\ & ((\U1|Mux19~4_combout\ & (\U1|Add2~21\ & VCC)) # (!\U1|Mux19~4_combout\ & (!\U1|Add2~21\)))) # (!\U1|Mux35~9_combout\ & ((\U1|Mux19~4_combout\ & (!\U1|Add2~21\)) # (!\U1|Mux19~4_combout\ & ((\U1|Add2~21\) # 
-- (GND)))))
-- \U1|Add2~23\ = CARRY((\U1|Mux35~9_combout\ & (!\U1|Mux19~4_combout\ & !\U1|Add2~21\)) # (!\U1|Mux35~9_combout\ & ((!\U1|Add2~21\) # (!\U1|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux35~9_combout\,
	datab => \U1|Mux19~4_combout\,
	datad => VCC,
	cin => \U1|Add2~21\,
	combout => \U1|Add2~22_combout\,
	cout => \U1|Add2~23\);

-- Location: LCCOMB_X49_Y49_N22
\U1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|Mux19~4_combout\ & (!\U1|Add0~21\)) # (!\U1|Mux19~4_combout\ & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|Mux19~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux19~4_combout\,
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: LCCOMB_X46_Y49_N20
\U1|Mux311~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux311~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~22_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~6_combout\,
	datab => \U1|Add2~22_combout\,
	datac => \U1|Add0~22_combout\,
	datad => \U1|Mux1~8_combout\,
	combout => \U1|Mux311~2_combout\);

-- Location: LCCOMB_X46_Y49_N24
\U1|Mux311~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux311~4_combout\ = (\U1|Mux311~2_combout\) # ((\U1|Add1~22_combout\ & (\U1|Mux0~5_combout\ & \U1|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~22_combout\,
	datab => \U1|Mux311~2_combout\,
	datac => \U1|Mux0~5_combout\,
	datad => \U1|Mux9~0_combout\,
	combout => \U1|Mux311~4_combout\);

-- Location: FF_X49_Y48_N29
\U1|registers[5].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux311~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(11));

-- Location: LCCOMB_X50_Y48_N22
\U1|Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~2_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[6].dataOrInstruction\(11)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|registers[4].dataOrInstruction\(11) & !\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[6].dataOrInstruction\(11),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[4].dataOrInstruction\(11),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux35~2_combout\);

-- Location: LCCOMB_X50_Y48_N8
\U1|Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~3_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux35~2_combout\ & ((\U1|registers[7].dataOrInstruction\(11)))) # (!\U1|Mux35~2_combout\ & (\U1|registers[5].dataOrInstruction\(11))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|registers[5].dataOrInstruction\(11),
	datac => \U1|registers[7].dataOrInstruction\(11),
	datad => \U1|Mux35~2_combout\,
	combout => \U1|Mux35~3_combout\);

-- Location: LCCOMB_X46_Y51_N2
\U1|Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~4_combout\ = (\U1|Mux13~5_combout\ & (((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & (\U1|registers[1].dataOrInstruction\(11))) # (!\U1|Mux14~6_combout\ & ((\U1|registers[0].dataOrInstruction\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[1].dataOrInstruction\(11),
	datac => \U1|registers[0].dataOrInstruction\(11),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux35~4_combout\);

-- Location: LCCOMB_X46_Y49_N30
\U1|Mux35~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~5_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux35~4_combout\ & (\U1|registers[3].dataOrInstruction\(11))) # (!\U1|Mux35~4_combout\ & ((\U1|registers[2].dataOrInstruction\(11)))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux35~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[3].dataOrInstruction\(11),
	datac => \U1|registers[2].dataOrInstruction\(11),
	datad => \U1|Mux35~4_combout\,
	combout => \U1|Mux35~5_combout\);

-- Location: LCCOMB_X46_Y48_N28
\U1|Mux35~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~6_combout\ = (\U1|Mux11~5_combout\ & (((\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & ((\U1|Mux12~3_combout\ & (\U1|Mux35~3_combout\)) # (!\U1|Mux12~3_combout\ & ((\U1|Mux35~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|Mux35~3_combout\,
	datac => \U1|Mux12~3_combout\,
	datad => \U1|Mux35~5_combout\,
	combout => \U1|Mux35~6_combout\);

-- Location: FF_X49_Y50_N9
\U1|registers[8].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~22_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(11));

-- Location: LCCOMB_X50_Y47_N18
\U1|registers[9].dataOrInstruction[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[11]~feeder_combout\ = \U1|Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~22_combout\,
	combout => \U1|registers[9].dataOrInstruction[11]~feeder_combout\);

-- Location: FF_X50_Y47_N19
\U1|registers[9].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[9].dataOrInstruction[11]~feeder_combout\,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(11));

-- Location: LCCOMB_X49_Y50_N8
\U1|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~0_combout\ = (\U1|Mux13~5_combout\ & (\U1|Mux14~6_combout\)) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & ((\U1|registers[9].dataOrInstruction\(11)))) # (!\U1|Mux14~6_combout\ & (\U1|registers[8].dataOrInstruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[8].dataOrInstruction\(11),
	datad => \U1|registers[9].dataOrInstruction\(11),
	combout => \U1|Mux35~0_combout\);

-- Location: FF_X49_Y50_N31
\U1|registers[10].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~22_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(11));

-- Location: FF_X50_Y49_N11
\U1|registers[11].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~22_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(11));

-- Location: LCCOMB_X49_Y50_N30
\U1|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~1_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux35~0_combout\ & ((\U1|registers[11].dataOrInstruction\(11)))) # (!\U1|Mux35~0_combout\ & (\U1|registers[10].dataOrInstruction\(11))))) # (!\U1|Mux13~5_combout\ & (\U1|Mux35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux35~0_combout\,
	datac => \U1|registers[10].dataOrInstruction\(11),
	datad => \U1|registers[11].dataOrInstruction\(11),
	combout => \U1|Mux35~1_combout\);

-- Location: FF_X47_Y50_N23
\U1|registers[15].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~22_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(11));

-- Location: FF_X50_Y50_N11
\U1|registers[13].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~22_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(11));

-- Location: FF_X46_Y50_N19
\U1|registers[12].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~22_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(11));

-- Location: LCCOMB_X46_Y50_N0
\U1|registers[14].dataOrInstruction[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[14].dataOrInstruction[11]~feeder_combout\ = \U1|Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~22_combout\,
	combout => \U1|registers[14].dataOrInstruction[11]~feeder_combout\);

-- Location: FF_X46_Y50_N1
\U1|registers[14].dataOrInstruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[14].dataOrInstruction[11]~feeder_combout\,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(11));

-- Location: LCCOMB_X46_Y50_N18
\U1|Mux35~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~7_combout\ = (\U1|Mux14~6_combout\ & (\U1|Mux13~5_combout\)) # (!\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\ & ((\U1|registers[14].dataOrInstruction\(11)))) # (!\U1|Mux13~5_combout\ & (\U1|registers[12].dataOrInstruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[12].dataOrInstruction\(11),
	datad => \U1|registers[14].dataOrInstruction\(11),
	combout => \U1|Mux35~7_combout\);

-- Location: LCCOMB_X50_Y50_N10
\U1|Mux35~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~8_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux35~7_combout\ & (\U1|registers[15].dataOrInstruction\(11))) # (!\U1|Mux35~7_combout\ & ((\U1|registers[13].dataOrInstruction\(11)))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux35~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|registers[15].dataOrInstruction\(11),
	datac => \U1|registers[13].dataOrInstruction\(11),
	datad => \U1|Mux35~7_combout\,
	combout => \U1|Mux35~8_combout\);

-- Location: LCCOMB_X46_Y48_N14
\U1|Mux35~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux35~9_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux35~6_combout\ & ((\U1|Mux35~8_combout\))) # (!\U1|Mux35~6_combout\ & (\U1|Mux35~1_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|Mux35~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|Mux35~6_combout\,
	datac => \U1|Mux35~1_combout\,
	datad => \U1|Mux35~8_combout\,
	combout => \U1|Mux35~9_combout\);

-- Location: LCCOMB_X47_Y50_N24
\U1|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~24_combout\ = ((\U1|Mux18~4_combout\ $ (\U1|Mux34~9_combout\ $ (!\U1|Add2~23\)))) # (GND)
-- \U1|Add2~25\ = CARRY((\U1|Mux18~4_combout\ & ((\U1|Mux34~9_combout\) # (!\U1|Add2~23\))) # (!\U1|Mux18~4_combout\ & (\U1|Mux34~9_combout\ & !\U1|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux18~4_combout\,
	datab => \U1|Mux34~9_combout\,
	datad => VCC,
	cin => \U1|Add2~23\,
	combout => \U1|Add2~24_combout\,
	cout => \U1|Add2~25\);

-- Location: LCCOMB_X49_Y49_N24
\U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|Mux18~4_combout\ & (\U1|Add0~23\ $ (GND))) # (!\U1|Mux18~4_combout\ & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|Mux18~4_combout\ & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux18~4_combout\,
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: LCCOMB_X45_Y49_N28
\U1|Mux310~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux310~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~24_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add2~24_combout\,
	datad => \U1|Add0~24_combout\,
	combout => \U1|Mux310~2_combout\);

-- Location: LCCOMB_X45_Y49_N4
\U1|Mux310~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux310~4_combout\ = (\U1|Mux310~2_combout\) # ((\U1|Add1~24_combout\ & (\U1|Mux9~0_combout\ & \U1|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~24_combout\,
	datab => \U1|Mux9~0_combout\,
	datac => \U1|Mux0~5_combout\,
	datad => \U1|Mux310~2_combout\,
	combout => \U1|Mux310~4_combout\);

-- Location: FF_X45_Y48_N3
\U1|registers[2].dataOrInstruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux310~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(12));

-- Location: LCCOMB_X46_Y51_N14
\U1|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux18~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(12)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[0].dataOrInstruction\(12),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[1].dataOrInstruction\(12),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux18~2_combout\);

-- Location: LCCOMB_X45_Y48_N14
\U1|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux18~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux18~2_combout\ & ((\U1|registers[3].dataOrInstruction\(12)))) # (!\U1|Mux18~2_combout\ & (\U1|registers[2].dataOrInstruction\(12))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[2].dataOrInstruction\(12),
	datac => \U1|Mux18~2_combout\,
	datad => \U1|registers[3].dataOrInstruction\(12),
	combout => \U1|Mux18~3_combout\);

-- Location: LCCOMB_X49_Y51_N22
\U1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux18~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & (\U1|registers[6].dataOrInstruction\(12))) # (!\U1|Mux5~3_combout\ & ((\U1|registers[4].dataOrInstruction\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[6].dataOrInstruction\(12),
	datac => \U1|registers[4].dataOrInstruction\(12),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux18~0_combout\);

-- Location: LCCOMB_X47_Y51_N12
\U1|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux18~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux18~0_combout\ & (\U1|registers[7].dataOrInstruction\(12))) # (!\U1|Mux18~0_combout\ & ((\U1|registers[5].dataOrInstruction\(12)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[7].dataOrInstruction\(12),
	datac => \U1|registers[5].dataOrInstruction\(12),
	datad => \U1|Mux18~0_combout\,
	combout => \U1|Mux18~1_combout\);

-- Location: LCCOMB_X46_Y49_N28
\U1|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux18~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux18~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux18~3_combout\,
	datab => \U1|Mux4~4_combout\,
	datad => \U1|Mux18~1_combout\,
	combout => \U1|Mux18~4_combout\);

-- Location: LCCOMB_X48_Y49_N24
\U1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~24_combout\ = (\U1|Mux18~4_combout\ & ((GND) # (!\U1|Add1~23\))) # (!\U1|Mux18~4_combout\ & (\U1|Add1~23\ $ (GND)))
-- \U1|Add1~25\ = CARRY((\U1|Mux18~4_combout\) # (!\U1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux18~4_combout\,
	datad => VCC,
	cin => \U1|Add1~23\,
	combout => \U1|Add1~24_combout\,
	cout => \U1|Add1~25\);

-- Location: LCCOMB_X41_Y49_N18
\U1|Mux310~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux310~3_combout\ = (\U1|Mux316~3_combout\) # ((!\U1|Mux310~2_combout\ & ((!\U1|Mux0~6_combout\) # (!\U1|Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~24_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Mux310~2_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux310~3_combout\);

-- Location: FF_X41_Y49_N19
\U1|Hex_Display_Data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux310~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(28));

-- Location: LCCOMB_X40_Y49_N24
\U2|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~10_combout\ = (!\U2|CHAR_COUNT\(0) & (\U2|CHAR_COUNT\(2) & (\U2|CHAR_COUNT\(1) & !\U1|Hex_Display_Data\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(1),
	datad => \U1|Hex_Display_Data\(28),
	combout => \U2|Mux6~10_combout\);

-- Location: LCCOMB_X40_Y49_N0
\U2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~1_combout\ = (\U2|CHAR_COUNT\(3) & ((\U2|CHAR_COUNT\(0)) # (!\U2|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(3),
	datac => \U2|CHAR_COUNT\(1),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux6~1_combout\);

-- Location: LCCOMB_X42_Y50_N18
\U2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~2_combout\ = (\U2|Mux6~0_combout\ & (((\U2|CHAR_COUNT\(4) & \U2|CHAR_COUNT\(2))) # (!\U2|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~0_combout\,
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|CHAR_COUNT\(2),
	datad => \U2|Mux6~1_combout\,
	combout => \U2|Mux6~2_combout\);

-- Location: LCCOMB_X42_Y50_N30
\U1|Hex_Display_Data[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[4]~7_combout\ = !\U1|PC\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PC\(4),
	combout => \U1|Hex_Display_Data[4]~7_combout\);

-- Location: FF_X42_Y50_N31
\U1|Hex_Display_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[4]~7_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(4));

-- Location: LCCOMB_X42_Y50_N28
\U2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~3_combout\ = (!\U1|Hex_Display_Data\(4) & (\U2|CHAR_COUNT\(4) & \U2|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(4),
	datab => \U2|CHAR_COUNT\(4),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux6~3_combout\);

-- Location: LCCOMB_X43_Y46_N10
\U1|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux50~0_combout\ = (\U1|Mux1~9_combout\ & ((\U1|Mux0~6_combout\) # ((\U1|Mux2~7_combout\ & !\U1|PC\(15))))) # (!\U1|Mux1~9_combout\ & (\U1|Mux0~6_combout\ $ (((!\U1|Mux2~7_combout\ & !\U1|PC\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~9_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Mux2~7_combout\,
	datad => \U1|PC\(15),
	combout => \U1|Mux50~0_combout\);

-- Location: LCCOMB_X45_Y50_N8
\U1|registers[11].dataOrInstruction[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[11].dataOrInstruction[15]~feeder_combout\ = \U1|Add2~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~30_combout\,
	combout => \U1|registers[11].dataOrInstruction[15]~feeder_combout\);

-- Location: FF_X45_Y50_N9
\U1|registers[11].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[11].dataOrInstruction[15]~feeder_combout\,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(15));

-- Location: FF_X49_Y50_N23
\U1|registers[10].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~30_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(15));

-- Location: LCCOMB_X50_Y47_N8
\U1|registers[9].dataOrInstruction[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[15]~feeder_combout\ = \U1|Add2~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~30_combout\,
	combout => \U1|registers[9].dataOrInstruction[15]~feeder_combout\);

-- Location: FF_X50_Y47_N9
\U1|registers[9].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[9].dataOrInstruction[15]~feeder_combout\,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(15));

-- Location: FF_X49_Y50_N25
\U1|registers[8].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~30_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(15));

-- Location: LCCOMB_X49_Y50_N24
\U1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~0_combout\ = (\U1|Mux13~5_combout\ & (((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & (\U1|registers[9].dataOrInstruction\(15))) # (!\U1|Mux14~6_combout\ & ((\U1|registers[8].dataOrInstruction\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[9].dataOrInstruction\(15),
	datac => \U1|registers[8].dataOrInstruction\(15),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux31~0_combout\);

-- Location: LCCOMB_X49_Y50_N22
\U1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~1_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux31~0_combout\ & (\U1|registers[11].dataOrInstruction\(15))) # (!\U1|Mux31~0_combout\ & ((\U1|registers[10].dataOrInstruction\(15)))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|registers[11].dataOrInstruction\(15),
	datac => \U1|registers[10].dataOrInstruction\(15),
	datad => \U1|Mux31~0_combout\,
	combout => \U1|Mux31~1_combout\);

-- Location: FF_X47_Y50_N31
\U1|registers[15].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~30_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(15));

-- Location: FF_X47_Y51_N1
\U1|registers[13].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~30_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(15));

-- Location: FF_X46_Y50_N7
\U1|registers[12].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~30_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(15));

-- Location: LCCOMB_X45_Y48_N22
\U1|registers[14].dataOrInstruction[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[14].dataOrInstruction[15]~feeder_combout\ = \U1|Add2~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~30_combout\,
	combout => \U1|registers[14].dataOrInstruction[15]~feeder_combout\);

-- Location: FF_X45_Y48_N23
\U1|registers[14].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[14].dataOrInstruction[15]~feeder_combout\,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(15));

-- Location: LCCOMB_X46_Y50_N6
\U1|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~7_combout\ = (\U1|Mux14~6_combout\ & (\U1|Mux13~5_combout\)) # (!\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\ & ((\U1|registers[14].dataOrInstruction\(15)))) # (!\U1|Mux13~5_combout\ & (\U1|registers[12].dataOrInstruction\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[12].dataOrInstruction\(15),
	datad => \U1|registers[14].dataOrInstruction\(15),
	combout => \U1|Mux31~7_combout\);

-- Location: LCCOMB_X47_Y51_N0
\U1|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~8_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux31~7_combout\ & (\U1|registers[15].dataOrInstruction\(15))) # (!\U1|Mux31~7_combout\ & ((\U1|registers[13].dataOrInstruction\(15)))))) # (!\U1|Mux14~6_combout\ & (((\U1|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|registers[15].dataOrInstruction\(15),
	datac => \U1|registers[13].dataOrInstruction\(15),
	datad => \U1|Mux31~7_combout\,
	combout => \U1|Mux31~8_combout\);

-- Location: FF_X47_Y49_N21
\U1|registers[3].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux291~3_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(15));

-- Location: FF_X43_Y51_N7
\U1|registers[0].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux291~3_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(15));

-- Location: LCCOMB_X43_Y51_N28
\U1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux15~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(15)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[0].dataOrInstruction\(15),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[1].dataOrInstruction\(15),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux15~2_combout\);

-- Location: FF_X45_Y48_N29
\U1|registers[2].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux291~3_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(15));

-- Location: LCCOMB_X45_Y48_N24
\U1|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux15~3_combout\ = (\U1|Mux15~2_combout\ & ((\U1|registers[3].dataOrInstruction\(15)) # ((!\U1|Mux5~3_combout\)))) # (!\U1|Mux15~2_combout\ & (((\U1|Mux5~3_combout\ & \U1|registers[2].dataOrInstruction\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[3].dataOrInstruction\(15),
	datab => \U1|Mux15~2_combout\,
	datac => \U1|Mux5~3_combout\,
	datad => \U1|registers[2].dataOrInstruction\(15),
	combout => \U1|Mux15~3_combout\);

-- Location: FF_X49_Y51_N21
\U1|registers[4].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux291~3_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(15));

-- Location: FF_X49_Y51_N27
\U1|registers[6].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux291~3_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(15));

-- Location: LCCOMB_X49_Y51_N26
\U1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux15~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & ((\U1|registers[6].dataOrInstruction\(15)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[4].dataOrInstruction\(15),
	datac => \U1|registers[6].dataOrInstruction\(15),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux15~0_combout\);

-- Location: FF_X48_Y51_N3
\U1|registers[7].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux291~3_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(15));

-- Location: FF_X48_Y51_N17
\U1|registers[5].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux291~3_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(15));

-- Location: LCCOMB_X48_Y51_N16
\U1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux15~1_combout\ = (\U1|Mux15~0_combout\ & ((\U1|registers[7].dataOrInstruction\(15)) # ((!\U1|Mux6~7_combout\)))) # (!\U1|Mux15~0_combout\ & (((\U1|registers[5].dataOrInstruction\(15) & \U1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux15~0_combout\,
	datab => \U1|registers[7].dataOrInstruction\(15),
	datac => \U1|registers[5].dataOrInstruction\(15),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux15~1_combout\);

-- Location: LCCOMB_X48_Y48_N18
\U1|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux15~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux15~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux4~4_combout\,
	datac => \U1|Mux15~3_combout\,
	datad => \U1|Mux15~1_combout\,
	combout => \U1|Mux15~4_combout\);

-- Location: FF_X50_Y50_N9
\U1|registers[9].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~28_combout\,
	sload => VCC,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(14));

-- Location: FF_X46_Y52_N15
\U1|registers[13].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~28_combout\,
	sload => VCC,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(14));

-- Location: FF_X48_Y51_N5
\U1|registers[5].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux308~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(14));

-- Location: FF_X46_Y52_N13
\U1|registers[1].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux308~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(14));

-- Location: LCCOMB_X46_Y52_N12
\U1|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~2_combout\ = (\U1|Mux12~3_combout\ & ((\U1|registers[5].dataOrInstruction\(14)) # ((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & (((\U1|registers[1].dataOrInstruction\(14) & !\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[5].dataOrInstruction\(14),
	datac => \U1|registers[1].dataOrInstruction\(14),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux32~2_combout\);

-- Location: LCCOMB_X46_Y52_N14
\U1|Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~3_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux32~2_combout\ & ((\U1|registers[13].dataOrInstruction\(14)))) # (!\U1|Mux32~2_combout\ & (\U1|registers[9].dataOrInstruction\(14))))) # (!\U1|Mux11~5_combout\ & (((\U1|Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[9].dataOrInstruction\(14),
	datac => \U1|registers[13].dataOrInstruction\(14),
	datad => \U1|Mux32~2_combout\,
	combout => \U1|Mux32~3_combout\);

-- Location: LCCOMB_X49_Y51_N0
\U1|registers[4].dataOrInstruction[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[4].dataOrInstruction[14]~feeder_combout\ = \U1|Mux308~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux308~4_combout\,
	combout => \U1|registers[4].dataOrInstruction[14]~feeder_combout\);

-- Location: FF_X49_Y51_N1
\U1|registers[4].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[4].dataOrInstruction[14]~feeder_combout\,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(14));

-- Location: FF_X46_Y50_N3
\U1|registers[12].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~28_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(14));

-- Location: FF_X48_Y52_N7
\U1|registers[0].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux308~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(14));

-- Location: FF_X45_Y50_N19
\U1|registers[8].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~28_combout\,
	sload => VCC,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(14));

-- Location: LCCOMB_X45_Y50_N18
\U1|Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~4_combout\ = (\U1|Mux11~5_combout\ & (((\U1|registers[8].dataOrInstruction\(14)) # (\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[0].dataOrInstruction\(14) & ((!\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|registers[0].dataOrInstruction\(14),
	datac => \U1|registers[8].dataOrInstruction\(14),
	datad => \U1|Mux12~3_combout\,
	combout => \U1|Mux32~4_combout\);

-- Location: LCCOMB_X46_Y50_N2
\U1|Mux32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~5_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux32~4_combout\ & ((\U1|registers[12].dataOrInstruction\(14)))) # (!\U1|Mux32~4_combout\ & (\U1|registers[4].dataOrInstruction\(14))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[4].dataOrInstruction\(14),
	datac => \U1|registers[12].dataOrInstruction\(14),
	datad => \U1|Mux32~4_combout\,
	combout => \U1|Mux32~5_combout\);

-- Location: LCCOMB_X46_Y52_N24
\U1|Mux32~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~6_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\) # ((\U1|Mux32~3_combout\)))) # (!\U1|Mux14~6_combout\ & (!\U1|Mux13~5_combout\ & ((\U1|Mux32~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|Mux32~3_combout\,
	datad => \U1|Mux32~5_combout\,
	combout => \U1|Mux32~6_combout\);

-- Location: FF_X47_Y49_N15
\U1|registers[3].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux308~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(14));

-- Location: LCCOMB_X48_Y51_N30
\U1|Mux32~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~7_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\) # ((\U1|registers[7].dataOrInstruction\(14))))) # (!\U1|Mux12~3_combout\ & (!\U1|Mux11~5_combout\ & ((\U1|registers[3].dataOrInstruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|Mux11~5_combout\,
	datac => \U1|registers[7].dataOrInstruction\(14),
	datad => \U1|registers[3].dataOrInstruction\(14),
	combout => \U1|Mux32~7_combout\);

-- Location: FF_X45_Y50_N21
\U1|registers[11].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~28_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(14));

-- Location: FF_X47_Y50_N29
\U1|registers[15].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~28_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(14));

-- Location: LCCOMB_X45_Y50_N20
\U1|Mux32~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~8_combout\ = (\U1|Mux11~5_combout\ & ((\U1|Mux32~7_combout\ & ((\U1|registers[15].dataOrInstruction\(14)))) # (!\U1|Mux32~7_combout\ & (\U1|registers[11].dataOrInstruction\(14))))) # (!\U1|Mux11~5_combout\ & (\U1|Mux32~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|Mux32~7_combout\,
	datac => \U1|registers[11].dataOrInstruction\(14),
	datad => \U1|registers[15].dataOrInstruction\(14),
	combout => \U1|Mux32~8_combout\);

-- Location: LCCOMB_X49_Y51_N30
\U1|registers[6].dataOrInstruction[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[6].dataOrInstruction[14]~feeder_combout\ = \U1|Mux308~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux308~4_combout\,
	combout => \U1|registers[6].dataOrInstruction[14]~feeder_combout\);

-- Location: FF_X49_Y51_N31
\U1|registers[6].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[6].dataOrInstruction[14]~feeder_combout\,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(14));

-- Location: FF_X46_Y50_N17
\U1|registers[14].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~28_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(14));

-- Location: FF_X48_Y52_N21
\U1|registers[2].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux308~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(14));

-- Location: FF_X49_Y50_N27
\U1|registers[10].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~28_combout\,
	sload => VCC,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(14));

-- Location: LCCOMB_X49_Y50_N26
\U1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~0_combout\ = (\U1|Mux12~3_combout\ & (((\U1|Mux11~5_combout\)))) # (!\U1|Mux12~3_combout\ & ((\U1|Mux11~5_combout\ & ((\U1|registers[10].dataOrInstruction\(14)))) # (!\U1|Mux11~5_combout\ & (\U1|registers[2].dataOrInstruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[2].dataOrInstruction\(14),
	datac => \U1|registers[10].dataOrInstruction\(14),
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux32~0_combout\);

-- Location: LCCOMB_X46_Y50_N16
\U1|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~1_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux32~0_combout\ & ((\U1|registers[14].dataOrInstruction\(14)))) # (!\U1|Mux32~0_combout\ & (\U1|registers[6].dataOrInstruction\(14))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux12~3_combout\,
	datab => \U1|registers[6].dataOrInstruction\(14),
	datac => \U1|registers[14].dataOrInstruction\(14),
	datad => \U1|Mux32~0_combout\,
	combout => \U1|Mux32~1_combout\);

-- Location: LCCOMB_X45_Y50_N6
\U1|Mux32~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux32~9_combout\ = (\U1|Mux32~6_combout\ & ((\U1|Mux32~8_combout\) # ((!\U1|Mux13~5_combout\)))) # (!\U1|Mux32~6_combout\ & (((\U1|Mux13~5_combout\ & \U1|Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux32~6_combout\,
	datab => \U1|Mux32~8_combout\,
	datac => \U1|Mux13~5_combout\,
	datad => \U1|Mux32~1_combout\,
	combout => \U1|Mux32~9_combout\);

-- Location: LCCOMB_X49_Y49_N26
\U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|Mux17~4_combout\ & (!\U1|Add0~25\)) # (!\U1|Mux17~4_combout\ & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux17~4_combout\,
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: FF_X46_Y50_N23
\U1|registers[12].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~26_combout\,
	sload => VCC,
	ena => \U1|registers[12].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[12].dataOrInstruction\(13));

-- Location: LCCOMB_X47_Y51_N18
\U1|registers[13].dataOrInstruction[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[13].dataOrInstruction[13]~feeder_combout\ = \U1|Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~26_combout\,
	combout => \U1|registers[13].dataOrInstruction[13]~feeder_combout\);

-- Location: FF_X47_Y51_N19
\U1|registers[13].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[13].dataOrInstruction[13]~feeder_combout\,
	ena => \U1|registers[13].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[13].dataOrInstruction\(13));

-- Location: LCCOMB_X46_Y50_N22
\U1|Mux33~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~7_combout\ = (\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\) # ((\U1|registers[13].dataOrInstruction\(13))))) # (!\U1|Mux14~6_combout\ & (!\U1|Mux13~5_combout\ & (\U1|registers[12].dataOrInstruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[12].dataOrInstruction\(13),
	datad => \U1|registers[13].dataOrInstruction\(13),
	combout => \U1|Mux33~7_combout\);

-- Location: FF_X46_Y50_N21
\U1|registers[14].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~26_combout\,
	sload => VCC,
	ena => \U1|registers[14].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[14].dataOrInstruction\(13));

-- Location: FF_X47_Y50_N27
\U1|registers[15].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~26_combout\,
	ena => \U1|registers[15].dataOrInstruction[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[15].dataOrInstruction\(13));

-- Location: LCCOMB_X46_Y50_N20
\U1|Mux33~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~8_combout\ = (\U1|Mux33~7_combout\ & (((\U1|registers[15].dataOrInstruction\(13))) # (!\U1|Mux13~5_combout\))) # (!\U1|Mux33~7_combout\ & (\U1|Mux13~5_combout\ & (\U1|registers[14].dataOrInstruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux33~7_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[14].dataOrInstruction\(13),
	datad => \U1|registers[15].dataOrInstruction\(13),
	combout => \U1|Mux33~8_combout\);

-- Location: FF_X48_Y52_N3
\U1|registers[2].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux309~4_combout\,
	sload => VCC,
	ena => \U1|registers[2].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[2].dataOrInstruction\(13));

-- Location: FF_X46_Y51_N21
\U1|registers[0].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux309~4_combout\,
	sload => VCC,
	ena => \U1|registers[0].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[0].dataOrInstruction\(13));

-- Location: LCCOMB_X46_Y51_N20
\U1|Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~4_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[2].dataOrInstruction\(13)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((\U1|registers[0].dataOrInstruction\(13) & !\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[2].dataOrInstruction\(13),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[0].dataOrInstruction\(13),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux33~4_combout\);

-- Location: FF_X46_Y51_N19
\U1|registers[1].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux309~4_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(13));

-- Location: LCCOMB_X46_Y51_N18
\U1|Mux33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~5_combout\ = (\U1|Mux33~4_combout\ & ((\U1|registers[3].dataOrInstruction\(13)) # ((!\U1|Mux14~6_combout\)))) # (!\U1|Mux33~4_combout\ & (((\U1|registers[1].dataOrInstruction\(13) & \U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[3].dataOrInstruction\(13),
	datab => \U1|Mux33~4_combout\,
	datac => \U1|registers[1].dataOrInstruction\(13),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux33~5_combout\);

-- Location: LCCOMB_X49_Y50_N20
\U1|registers[10].dataOrInstruction[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[10].dataOrInstruction[13]~feeder_combout\ = \U1|Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~26_combout\,
	combout => \U1|registers[10].dataOrInstruction[13]~feeder_combout\);

-- Location: FF_X49_Y50_N21
\U1|registers[10].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[10].dataOrInstruction[13]~feeder_combout\,
	ena => \U1|registers[10].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[10].dataOrInstruction\(13));

-- Location: LCCOMB_X45_Y50_N24
\U1|registers[8].dataOrInstruction[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[8].dataOrInstruction[13]~feeder_combout\ = \U1|Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~26_combout\,
	combout => \U1|registers[8].dataOrInstruction[13]~feeder_combout\);

-- Location: FF_X45_Y50_N25
\U1|registers[8].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[8].dataOrInstruction[13]~feeder_combout\,
	ena => \U1|registers[8].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[8].dataOrInstruction\(13));

-- Location: LCCOMB_X46_Y52_N26
\U1|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~2_combout\ = (\U1|Mux13~5_combout\ & ((\U1|registers[10].dataOrInstruction\(13)) # ((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & (((!\U1|Mux14~6_combout\ & \U1|registers[8].dataOrInstruction\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[10].dataOrInstruction\(13),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|Mux14~6_combout\,
	datad => \U1|registers[8].dataOrInstruction\(13),
	combout => \U1|Mux33~2_combout\);

-- Location: LCCOMB_X47_Y52_N24
\U1|registers[9].dataOrInstruction[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|registers[9].dataOrInstruction[13]~feeder_combout\ = \U1|Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~26_combout\,
	combout => \U1|registers[9].dataOrInstruction[13]~feeder_combout\);

-- Location: FF_X47_Y52_N25
\U1|registers[9].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|registers[9].dataOrInstruction[13]~feeder_combout\,
	ena => \U1|registers[9].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[9].dataOrInstruction\(13));

-- Location: FF_X47_Y52_N27
\U1|registers[11].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Add2~26_combout\,
	sload => VCC,
	ena => \U1|registers[11].dataOrInstruction[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[11].dataOrInstruction\(13));

-- Location: LCCOMB_X47_Y52_N26
\U1|Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~3_combout\ = (\U1|Mux33~2_combout\ & (((\U1|registers[11].dataOrInstruction\(13)) # (!\U1|Mux14~6_combout\)))) # (!\U1|Mux33~2_combout\ & (\U1|registers[9].dataOrInstruction\(13) & ((\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux33~2_combout\,
	datab => \U1|registers[9].dataOrInstruction\(13),
	datac => \U1|registers[11].dataOrInstruction\(13),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux33~3_combout\);

-- Location: LCCOMB_X46_Y48_N4
\U1|Mux33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~6_combout\ = (\U1|Mux11~5_combout\ & (((\U1|Mux12~3_combout\) # (\U1|Mux33~3_combout\)))) # (!\U1|Mux11~5_combout\ & (\U1|Mux33~5_combout\ & (!\U1|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|Mux33~5_combout\,
	datac => \U1|Mux12~3_combout\,
	datad => \U1|Mux33~3_combout\,
	combout => \U1|Mux33~6_combout\);

-- Location: FF_X49_Y48_N25
\U1|registers[6].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux309~4_combout\,
	sload => VCC,
	ena => \U1|registers[6].dataOrInstruction[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[6].dataOrInstruction\(13));

-- Location: FF_X50_Y48_N11
\U1|registers[7].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux309~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(13));

-- Location: FF_X49_Y48_N27
\U1|registers[5].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux309~4_combout\,
	sload => VCC,
	ena => \U1|registers[5].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[5].dataOrInstruction\(13));

-- Location: FF_X50_Y48_N1
\U1|registers[4].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux309~4_combout\,
	sload => VCC,
	ena => \U1|registers[4].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[4].dataOrInstruction\(13));

-- Location: LCCOMB_X50_Y48_N0
\U1|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~0_combout\ = (\U1|Mux13~5_combout\ & (((\U1|Mux14~6_combout\)))) # (!\U1|Mux13~5_combout\ & ((\U1|Mux14~6_combout\ & (\U1|registers[5].dataOrInstruction\(13))) # (!\U1|Mux14~6_combout\ & ((\U1|registers[4].dataOrInstruction\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[5].dataOrInstruction\(13),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[4].dataOrInstruction\(13),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux33~0_combout\);

-- Location: LCCOMB_X50_Y48_N10
\U1|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~1_combout\ = (\U1|Mux13~5_combout\ & ((\U1|Mux33~0_combout\ & ((\U1|registers[7].dataOrInstruction\(13)))) # (!\U1|Mux33~0_combout\ & (\U1|registers[6].dataOrInstruction\(13))))) # (!\U1|Mux13~5_combout\ & (((\U1|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[6].dataOrInstruction\(13),
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[7].dataOrInstruction\(13),
	datad => \U1|Mux33~0_combout\,
	combout => \U1|Mux33~1_combout\);

-- Location: LCCOMB_X46_Y48_N30
\U1|Mux33~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux33~9_combout\ = (\U1|Mux12~3_combout\ & ((\U1|Mux33~6_combout\ & (\U1|Mux33~8_combout\)) # (!\U1|Mux33~6_combout\ & ((\U1|Mux33~1_combout\))))) # (!\U1|Mux12~3_combout\ & (((\U1|Mux33~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux33~8_combout\,
	datab => \U1|Mux12~3_combout\,
	datac => \U1|Mux33~6_combout\,
	datad => \U1|Mux33~1_combout\,
	combout => \U1|Mux33~9_combout\);

-- Location: LCCOMB_X47_Y50_N26
\U1|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~26_combout\ = (\U1|Mux17~4_combout\ & ((\U1|Mux33~9_combout\ & (\U1|Add2~25\ & VCC)) # (!\U1|Mux33~9_combout\ & (!\U1|Add2~25\)))) # (!\U1|Mux17~4_combout\ & ((\U1|Mux33~9_combout\ & (!\U1|Add2~25\)) # (!\U1|Mux33~9_combout\ & ((\U1|Add2~25\) # 
-- (GND)))))
-- \U1|Add2~27\ = CARRY((\U1|Mux17~4_combout\ & (!\U1|Mux33~9_combout\ & !\U1|Add2~25\)) # (!\U1|Mux17~4_combout\ & ((!\U1|Add2~25\) # (!\U1|Mux33~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux17~4_combout\,
	datab => \U1|Mux33~9_combout\,
	datad => VCC,
	cin => \U1|Add2~25\,
	combout => \U1|Add2~26_combout\,
	cout => \U1|Add2~27\);

-- Location: LCCOMB_X45_Y49_N14
\U1|Mux309~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux309~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & ((\U1|Add2~26_combout\))) # (!\U1|Mux1~8_combout\ & (\U1|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add0~26_combout\,
	datad => \U1|Add2~26_combout\,
	combout => \U1|Mux309~2_combout\);

-- Location: LCCOMB_X48_Y49_N26
\U1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~26_combout\ = (\U1|Mux17~4_combout\ & (\U1|Add1~25\ & VCC)) # (!\U1|Mux17~4_combout\ & (!\U1|Add1~25\))
-- \U1|Add1~27\ = CARRY((!\U1|Mux17~4_combout\ & !\U1|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux17~4_combout\,
	datad => VCC,
	cin => \U1|Add1~25\,
	combout => \U1|Add1~26_combout\,
	cout => \U1|Add1~27\);

-- Location: LCCOMB_X46_Y49_N18
\U1|Mux309~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux309~4_combout\ = (\U1|Mux309~2_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux309~2_combout\,
	datab => \U1|Mux9~0_combout\,
	datac => \U1|Mux0~5_combout\,
	datad => \U1|Add1~26_combout\,
	combout => \U1|Mux309~4_combout\);

-- Location: FF_X46_Y49_N19
\U1|registers[3].dataOrInstruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux309~4_combout\,
	ena => \U1|registers[3].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[3].dataOrInstruction\(13));

-- Location: LCCOMB_X45_Y51_N22
\U1|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux17~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & ((\U1|registers[1].dataOrInstruction\(13)))) # (!\U1|Mux6~7_combout\ & (\U1|registers[0].dataOrInstruction\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[0].dataOrInstruction\(13),
	datac => \U1|registers[1].dataOrInstruction\(13),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux17~2_combout\);

-- Location: LCCOMB_X48_Y52_N2
\U1|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux17~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux17~2_combout\ & (\U1|registers[3].dataOrInstruction\(13))) # (!\U1|Mux17~2_combout\ & ((\U1|registers[2].dataOrInstruction\(13)))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[3].dataOrInstruction\(13),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[2].dataOrInstruction\(13),
	datad => \U1|Mux17~2_combout\,
	combout => \U1|Mux17~3_combout\);

-- Location: LCCOMB_X49_Y48_N24
\U1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux17~0_combout\ = (\U1|Mux5~3_combout\ & (((\U1|registers[6].dataOrInstruction\(13)) # (\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(13) & ((!\U1|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~3_combout\,
	datab => \U1|registers[4].dataOrInstruction\(13),
	datac => \U1|registers[6].dataOrInstruction\(13),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux17~0_combout\);

-- Location: LCCOMB_X49_Y48_N26
\U1|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux17~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux17~0_combout\ & (\U1|registers[7].dataOrInstruction\(13))) # (!\U1|Mux17~0_combout\ & ((\U1|registers[5].dataOrInstruction\(13)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[7].dataOrInstruction\(13),
	datac => \U1|registers[5].dataOrInstruction\(13),
	datad => \U1|Mux17~0_combout\,
	combout => \U1|Mux17~1_combout\);

-- Location: LCCOMB_X48_Y52_N4
\U1|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux17~4_combout\ = (\U1|Mux4~4_combout\ & ((\U1|Mux17~1_combout\))) # (!\U1|Mux4~4_combout\ & (\U1|Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux17~3_combout\,
	datac => \U1|Mux4~4_combout\,
	datad => \U1|Mux17~1_combout\,
	combout => \U1|Mux17~4_combout\);

-- Location: LCCOMB_X47_Y50_N28
\U1|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~28_combout\ = ((\U1|Mux32~9_combout\ $ (\U1|Mux16~4_combout\ $ (!\U1|Add2~27\)))) # (GND)
-- \U1|Add2~29\ = CARRY((\U1|Mux32~9_combout\ & ((\U1|Mux16~4_combout\) # (!\U1|Add2~27\))) # (!\U1|Mux32~9_combout\ & (\U1|Mux16~4_combout\ & !\U1|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux32~9_combout\,
	datab => \U1|Mux16~4_combout\,
	datad => VCC,
	cin => \U1|Add2~27\,
	combout => \U1|Add2~28_combout\,
	cout => \U1|Add2~29\);

-- Location: LCCOMB_X49_Y49_N28
\U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|Mux16~4_combout\ & (\U1|Add0~27\ $ (GND))) # (!\U1|Mux16~4_combout\ & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|Mux16~4_combout\ & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux16~4_combout\,
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X47_Y49_N0
\U1|Mux308~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux308~2_combout\ = (!\U1|Mux0~6_combout\ & ((\U1|Mux1~8_combout\ & (\U1|Add2~28_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add2~28_combout\,
	datad => \U1|Add0~28_combout\,
	combout => \U1|Mux308~2_combout\);

-- Location: LCCOMB_X48_Y49_N28
\U1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~28_combout\ = (\U1|Mux16~4_combout\ & ((GND) # (!\U1|Add1~27\))) # (!\U1|Mux16~4_combout\ & (\U1|Add1~27\ $ (GND)))
-- \U1|Add1~29\ = CARRY((\U1|Mux16~4_combout\) # (!\U1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux16~4_combout\,
	datad => VCC,
	cin => \U1|Add1~27\,
	combout => \U1|Add1~28_combout\,
	cout => \U1|Add1~29\);

-- Location: LCCOMB_X47_Y49_N14
\U1|Mux308~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux308~4_combout\ = (\U1|Mux308~2_combout\) # ((\U1|Mux9~0_combout\ & (\U1|Mux0~5_combout\ & \U1|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux308~2_combout\,
	datac => \U1|Mux0~5_combout\,
	datad => \U1|Add1~28_combout\,
	combout => \U1|Mux308~4_combout\);

-- Location: FF_X48_Y51_N31
\U1|registers[7].dataOrInstruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux308~4_combout\,
	sload => VCC,
	ena => \U1|registers[7].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[7].dataOrInstruction\(14));

-- Location: LCCOMB_X49_Y51_N18
\U1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux16~0_combout\ = (\U1|Mux6~7_combout\ & (((\U1|Mux5~3_combout\)))) # (!\U1|Mux6~7_combout\ & ((\U1|Mux5~3_combout\ & ((\U1|registers[6].dataOrInstruction\(14)))) # (!\U1|Mux5~3_combout\ & (\U1|registers[4].dataOrInstruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux6~7_combout\,
	datab => \U1|registers[4].dataOrInstruction\(14),
	datac => \U1|registers[6].dataOrInstruction\(14),
	datad => \U1|Mux5~3_combout\,
	combout => \U1|Mux16~0_combout\);

-- Location: LCCOMB_X48_Y51_N4
\U1|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux16~1_combout\ = (\U1|Mux6~7_combout\ & ((\U1|Mux16~0_combout\ & (\U1|registers[7].dataOrInstruction\(14))) # (!\U1|Mux16~0_combout\ & ((\U1|registers[5].dataOrInstruction\(14)))))) # (!\U1|Mux6~7_combout\ & (((\U1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[7].dataOrInstruction\(14),
	datab => \U1|Mux6~7_combout\,
	datac => \U1|registers[5].dataOrInstruction\(14),
	datad => \U1|Mux16~0_combout\,
	combout => \U1|Mux16~1_combout\);

-- Location: LCCOMB_X48_Y52_N6
\U1|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux16~2_combout\ = (\U1|Mux5~3_combout\ & (((\U1|Mux6~7_combout\)))) # (!\U1|Mux5~3_combout\ & ((\U1|Mux6~7_combout\ & (\U1|registers[1].dataOrInstruction\(14))) # (!\U1|Mux6~7_combout\ & ((\U1|registers[0].dataOrInstruction\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[1].dataOrInstruction\(14),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[0].dataOrInstruction\(14),
	datad => \U1|Mux6~7_combout\,
	combout => \U1|Mux16~2_combout\);

-- Location: LCCOMB_X48_Y52_N20
\U1|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux16~3_combout\ = (\U1|Mux5~3_combout\ & ((\U1|Mux16~2_combout\ & (\U1|registers[3].dataOrInstruction\(14))) # (!\U1|Mux16~2_combout\ & ((\U1|registers[2].dataOrInstruction\(14)))))) # (!\U1|Mux5~3_combout\ & (((\U1|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[3].dataOrInstruction\(14),
	datab => \U1|Mux5~3_combout\,
	datac => \U1|registers[2].dataOrInstruction\(14),
	datad => \U1|Mux16~2_combout\,
	combout => \U1|Mux16~3_combout\);

-- Location: LCCOMB_X48_Y52_N0
\U1|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux16~4_combout\ = (\U1|Mux4~4_combout\ & (\U1|Mux16~1_combout\)) # (!\U1|Mux4~4_combout\ & ((\U1|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux16~1_combout\,
	datac => \U1|Mux4~4_combout\,
	datad => \U1|Mux16~3_combout\,
	combout => \U1|Mux16~4_combout\);

-- Location: LCCOMB_X48_Y49_N30
\U1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~30_combout\ = \U1|Add1~29\ $ (!\U1|Mux15~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|Mux15~4_combout\,
	cin => \U1|Add1~29\,
	combout => \U1|Add1~30_combout\);

-- Location: LCCOMB_X47_Y49_N20
\U1|Mux291~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux291~3_combout\ = (\U1|Mux9~0_combout\ & ((\U1|Mux0~5_combout\ & (\U1|Add1~30_combout\)) # (!\U1|Mux0~5_combout\ & ((\U1|Mux291~2_combout\))))) # (!\U1|Mux9~0_combout\ & (((\U1|Mux291~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux0~5_combout\,
	datac => \U1|Add1~30_combout\,
	datad => \U1|Mux291~2_combout\,
	combout => \U1|Mux291~3_combout\);

-- Location: FF_X43_Y51_N29
\U1|registers[1].dataOrInstruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|Mux291~3_combout\,
	sload => VCC,
	ena => \U1|registers[1].dataOrInstruction[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|registers[1].dataOrInstruction\(15));

-- Location: LCCOMB_X43_Y51_N6
\U1|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~4_combout\ = (\U1|Mux14~6_combout\ & ((\U1|registers[1].dataOrInstruction\(15)) # ((\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & (((\U1|registers[0].dataOrInstruction\(15) & !\U1|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~6_combout\,
	datab => \U1|registers[1].dataOrInstruction\(15),
	datac => \U1|registers[0].dataOrInstruction\(15),
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux31~4_combout\);

-- Location: LCCOMB_X45_Y48_N28
\U1|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~5_combout\ = (\U1|Mux31~4_combout\ & (((\U1|registers[3].dataOrInstruction\(15))) # (!\U1|Mux13~5_combout\))) # (!\U1|Mux31~4_combout\ & (\U1|Mux13~5_combout\ & (\U1|registers[2].dataOrInstruction\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux31~4_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|registers[2].dataOrInstruction\(15),
	datad => \U1|registers[3].dataOrInstruction\(15),
	combout => \U1|Mux31~5_combout\);

-- Location: LCCOMB_X49_Y51_N20
\U1|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~2_combout\ = (\U1|Mux14~6_combout\ & (((\U1|Mux13~5_combout\)))) # (!\U1|Mux14~6_combout\ & ((\U1|Mux13~5_combout\ & (\U1|registers[6].dataOrInstruction\(15))) # (!\U1|Mux13~5_combout\ & ((\U1|registers[4].dataOrInstruction\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|registers[6].dataOrInstruction\(15),
	datab => \U1|Mux14~6_combout\,
	datac => \U1|registers[4].dataOrInstruction\(15),
	datad => \U1|Mux13~5_combout\,
	combout => \U1|Mux31~2_combout\);

-- Location: LCCOMB_X48_Y51_N2
\U1|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~3_combout\ = (\U1|Mux31~2_combout\ & (((\U1|registers[7].dataOrInstruction\(15)) # (!\U1|Mux14~6_combout\)))) # (!\U1|Mux31~2_combout\ & (\U1|registers[5].dataOrInstruction\(15) & ((\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux31~2_combout\,
	datab => \U1|registers[5].dataOrInstruction\(15),
	datac => \U1|registers[7].dataOrInstruction\(15),
	datad => \U1|Mux14~6_combout\,
	combout => \U1|Mux31~3_combout\);

-- Location: LCCOMB_X46_Y48_N8
\U1|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~6_combout\ = (\U1|Mux11~5_combout\ & (((\U1|Mux12~3_combout\)))) # (!\U1|Mux11~5_combout\ & ((\U1|Mux12~3_combout\ & ((\U1|Mux31~3_combout\))) # (!\U1|Mux12~3_combout\ & (\U1|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|Mux31~5_combout\,
	datac => \U1|Mux12~3_combout\,
	datad => \U1|Mux31~3_combout\,
	combout => \U1|Mux31~6_combout\);

-- Location: LCCOMB_X46_Y48_N18
\U1|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux31~9_combout\ = (\U1|Mux31~6_combout\ & (((\U1|Mux31~8_combout\) # (!\U1|Mux11~5_combout\)))) # (!\U1|Mux31~6_combout\ & (\U1|Mux31~1_combout\ & ((\U1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux31~1_combout\,
	datab => \U1|Mux31~8_combout\,
	datac => \U1|Mux31~6_combout\,
	datad => \U1|Mux11~5_combout\,
	combout => \U1|Mux31~9_combout\);

-- Location: LCCOMB_X47_Y50_N30
\U1|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~30_combout\ = \U1|Mux31~9_combout\ $ (\U1|Add2~29\ $ (\U1|Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux31~9_combout\,
	datad => \U1|Mux15~4_combout\,
	cin => \U1|Add2~29\,
	combout => \U1|Add2~30_combout\);

-- Location: LCCOMB_X49_Y49_N30
\U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = \U1|Mux15~4_combout\ $ (\U1|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux15~4_combout\,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\);

-- Location: LCCOMB_X47_Y49_N12
\U1|Mux291~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux291~2_combout\ = (\U1|Mux1~8_combout\ & (\U1|Add2~30_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datac => \U1|Add2~30_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|Mux291~2_combout\);

-- Location: LCCOMB_X43_Y46_N28
\U1|fl_negative~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_negative~0_combout\ = (\U1|Mux307~2_combout\ & (\U1|Mux3~9_combout\ $ (!\U1|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux3~9_combout\,
	datac => \U1|Mux1~8_combout\,
	datad => \U1|Mux307~2_combout\,
	combout => \U1|fl_negative~0_combout\);

-- Location: LCCOMB_X43_Y46_N6
\U1|fl_negative~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_negative~3_combout\ = (!\U1|Mux50~0_combout\ & (\U1|Mux291~2_combout\ & (\U1|Hex_Display_Data[28]~0_combout\ & \U1|fl_negative~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux50~0_combout\,
	datab => \U1|Mux291~2_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|fl_negative~0_combout\,
	combout => \U1|fl_negative~3_combout\);

-- Location: LCCOMB_X42_Y48_N6
\U1|Mux307~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux307~7_combout\ = (\U1|Mux9~0_combout\ & (!\U1|Mux2~7_combout\ & (!\U1|PC\(15) & \U1|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~0_combout\,
	datab => \U1|Mux2~7_combout\,
	datac => \U1|PC\(15),
	datad => \U1|Mux0~5_combout\,
	combout => \U1|Mux307~7_combout\);

-- Location: LCCOMB_X43_Y46_N16
\U1|fl_negative~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_negative~1_combout\ = (\U1|Mux307~2_combout\ & (\U1|Mux3~9_combout\ $ (\U1|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux3~9_combout\,
	datac => \U1|Mux1~8_combout\,
	datad => \U1|Mux307~2_combout\,
	combout => \U1|fl_negative~1_combout\);

-- Location: LCCOMB_X43_Y46_N4
\U1|fl_negative~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_negative~2_combout\ = (\U1|fl_negative~q\ & ((\U1|Mux50~0_combout\) # ((\U1|fl_negative~1_combout\) # (!\U1|Hex_Display_Data[28]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux50~0_combout\,
	datab => \U1|fl_negative~1_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|fl_negative~q\,
	combout => \U1|fl_negative~2_combout\);

-- Location: LCCOMB_X43_Y46_N8
\U1|fl_negative~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_negative~4_combout\ = (!\U1|Mux50~0_combout\ & (\U1|Add1~30_combout\ & (\U1|Hex_Display_Data[28]~0_combout\ & !\U1|Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux50~0_combout\,
	datab => \U1|Add1~30_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|Mux3~9_combout\,
	combout => \U1|fl_negative~4_combout\);

-- Location: LCCOMB_X43_Y46_N18
\U1|fl_negative~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_negative~5_combout\ = (!\U1|Mux1~8_combout\ & ((\U1|fl_negative~4_combout\) # ((\U1|Mux3~9_combout\ & \U1|fl_negative~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~8_combout\,
	datab => \U1|Mux3~9_combout\,
	datac => \U1|fl_negative~4_combout\,
	datad => \U1|fl_negative~q\,
	combout => \U1|fl_negative~5_combout\);

-- Location: LCCOMB_X43_Y46_N24
\U1|fl_negative~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_negative~6_combout\ = (\U1|fl_negative~3_combout\) # ((\U1|fl_negative~2_combout\) # ((\U1|Mux307~7_combout\ & \U1|fl_negative~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|fl_negative~3_combout\,
	datab => \U1|Mux307~7_combout\,
	datac => \U1|fl_negative~2_combout\,
	datad => \U1|fl_negative~5_combout\,
	combout => \U1|fl_negative~6_combout\);

-- Location: FF_X43_Y46_N25
\U1|fl_negative\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|fl_negative~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|fl_negative~q\);

-- Location: LCCOMB_X40_Y49_N26
\U1|Hex_Display_Data[60]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[60]~12_combout\ = !\U1|fl_negative~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|fl_negative~q\,
	combout => \U1|Hex_Display_Data[60]~12_combout\);

-- Location: FF_X40_Y49_N27
\U1|Hex_Display_Data[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[60]~12_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(60));

-- Location: LCCOMB_X40_Y49_N4
\U2|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~7_combout\ = (\U2|CHAR_COUNT\(1)) # ((\U2|CHAR_COUNT\(2)) # ((\U2|CHAR_COUNT\(0)) # (!\U1|Hex_Display_Data\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U1|Hex_Display_Data\(60),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux6~7_combout\);

-- Location: LCCOMB_X42_Y49_N10
\U1|Hex_Display_Data[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[8]~11_combout\ = !\U1|PC\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PC\(8),
	combout => \U1|Hex_Display_Data[8]~11_combout\);

-- Location: FF_X42_Y49_N11
\U1|Hex_Display_Data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[8]~11_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(8));

-- Location: LCCOMB_X42_Y49_N28
\U1|Hex_Display_Data[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[12]~8_combout\ = !\U1|PC\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|PC\(12),
	combout => \U1|Hex_Display_Data[12]~8_combout\);

-- Location: FF_X42_Y49_N29
\U1|Hex_Display_Data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[12]~8_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(12));

-- Location: LCCOMB_X41_Y49_N22
\U1|Mux322~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux322~3_combout\ = (\U1|Mux316~3_combout\) # ((!\U1|Mux322~2_combout\ & ((!\U1|Mux0~6_combout\) # (!\U1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~0_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Mux322~2_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux322~3_combout\);

-- Location: FF_X41_Y49_N23
\U1|Hex_Display_Data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux322~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(16));

-- Location: LCCOMB_X42_Y49_N22
\U1|Mux318~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux318~3_combout\ = (\U1|Mux316~3_combout\) # ((!\U1|Mux318~2_combout\ & ((!\U1|Add1~8_combout\) # (!\U1|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux318~2_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add1~8_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux318~3_combout\);

-- Location: FF_X42_Y49_N23
\U1|Hex_Display_Data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux318~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(20));

-- Location: LCCOMB_X42_Y49_N0
\U2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~4_combout\ = (\U2|CHAR_COUNT\(4) & (((\U2|CHAR_COUNT\(0))))) # (!\U2|CHAR_COUNT\(4) & ((\U2|CHAR_COUNT\(0) & (!\U1|Hex_Display_Data\(16))) # (!\U2|CHAR_COUNT\(0) & ((!\U1|Hex_Display_Data\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U1|Hex_Display_Data\(16),
	datac => \U1|Hex_Display_Data\(20),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux6~4_combout\);

-- Location: LCCOMB_X42_Y49_N20
\U2|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~5_combout\ = (\U2|CHAR_COUNT\(4) & ((\U2|Mux6~4_combout\ & (!\U1|Hex_Display_Data\(8))) # (!\U2|Mux6~4_combout\ & ((!\U1|Hex_Display_Data\(12)))))) # (!\U2|CHAR_COUNT\(4) & (((\U2|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(8),
	datab => \U1|Hex_Display_Data\(12),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|Mux6~4_combout\,
	combout => \U2|Mux6~5_combout\);

-- Location: LCCOMB_X41_Y49_N24
\U2|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~6_combout\ = (\U2|Mux6~5_combout\ & (\U2|CHAR_COUNT\(2) $ (!\U2|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~5_combout\,
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(4),
	combout => \U2|Mux6~6_combout\);

-- Location: LCCOMB_X40_Y49_N6
\U2|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~8_combout\ = (\U2|Mux6~0_combout\ & (!\U2|Mux6~1_combout\)) # (!\U2|Mux6~0_combout\ & ((\U2|Mux6~1_combout\ & ((\U2|Mux6~6_combout\))) # (!\U2|Mux6~1_combout\ & (\U2|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~0_combout\,
	datab => \U2|Mux6~1_combout\,
	datac => \U2|Mux6~7_combout\,
	datad => \U2|Mux6~6_combout\,
	combout => \U2|Mux6~8_combout\);

-- Location: LCCOMB_X42_Y47_N0
\U2|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~9_combout\ = (\U2|Mux6~2_combout\ & ((\U2|Mux6~8_combout\ & (\U2|Mux6~3_combout\)) # (!\U2|Mux6~8_combout\ & ((!\U1|Hex_Display_Data\(0)))))) # (!\U2|Mux6~2_combout\ & (((\U2|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~2_combout\,
	datab => \U2|Mux6~3_combout\,
	datac => \U2|Mux6~8_combout\,
	datad => \U1|Hex_Display_Data\(0),
	combout => \U2|Mux6~9_combout\);

-- Location: LCCOMB_X35_Y49_N26
\U2|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux6~12_combout\ = (\U2|Mux3~7_combout\ & ((\U2|Mux6~11_combout\) # ((\U2|Mux6~10_combout\)))) # (!\U2|Mux3~7_combout\ & (((\U2|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~7_combout\,
	datab => \U2|Mux6~11_combout\,
	datac => \U2|Mux6~10_combout\,
	datad => \U2|Mux6~9_combout\,
	combout => \U2|Mux6~12_combout\);

-- Location: LCCOMB_X35_Y49_N8
\U2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (\U2|CHAR_COUNT\(1) & (((\U2|CHAR_COUNT\(3))) # (!\U2|CHAR_COUNT\(2)))) # (!\U2|CHAR_COUNT\(1) & ((\U2|CHAR_COUNT\(2)) # ((!\U2|CHAR_COUNT\(3) & \U2|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(3),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y49_N18
\U2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux1~1_combout\ = (\U2|CHAR_COUNT\(4) & (\U2|CHAR_COUNT\(3) & ((!\U2|CHAR_COUNT\(2))))) # (!\U2|CHAR_COUNT\(4) & (((\U2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(3),
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|Mux1~0_combout\,
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux1~1_combout\);

-- Location: LCCOMB_X35_Y49_N12
\U2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\U2|CHAR_COUNT\(3)) # ((\U2|CHAR_COUNT\(1) & ((\U2|CHAR_COUNT\(2)) # (!\U2|CHAR_COUNT\(0)))) # (!\U2|CHAR_COUNT\(1) & (\U2|CHAR_COUNT\(2) $ (\U2|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(3),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y49_N30
\U2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = (\U2|CHAR_COUNT\(3)) # ((\U2|CHAR_COUNT\(2) & ((\U2|CHAR_COUNT\(1)) # (\U2|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(3),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y48_N22
\U2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (!\U2|Mux1~1_combout\ & ((\U2|CHAR_COUNT\(4)) # ((\U2|Mux2~0_combout\ & \U2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux1~1_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux0~0_combout\,
	datad => \U2|CHAR_COUNT\(4),
	combout => \U2|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y49_N22
\U1|Mux312~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux312~3_combout\ = (!\U1|Mux312~2_combout\ & (!\U1|Mux316~3_combout\ & ((!\U1|Mux0~6_combout\) # (!\U1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~20_combout\,
	datab => \U1|Mux312~2_combout\,
	datac => \U1|Mux0~6_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux312~3_combout\);

-- Location: FF_X40_Y49_N23
\U1|Hex_Display_Data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux312~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(26));

-- Location: LCCOMB_X35_Y49_N28
\U2|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~7_combout\ = (\U2|CHAR_COUNT\(1) & (\U2|CHAR_COUNT\(2) & (!\U1|Hex_Display_Data\(26) & \U2|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U1|Hex_Display_Data\(26),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux4~7_combout\);

-- Location: LCCOMB_X41_Y49_N8
\U1|Mux308~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux308~3_combout\ = (\U1|Mux308~2_combout\) # ((\U1|Mux316~3_combout\) # ((\U1|Mux0~6_combout\ & \U1|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~6_combout\,
	datab => \U1|Add1~28_combout\,
	datac => \U1|Mux308~2_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux308~3_combout\);

-- Location: FF_X41_Y49_N9
\U1|Hex_Display_Data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux308~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(30));

-- Location: LCCOMB_X35_Y49_N22
\U2|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~8_combout\ = (\U2|CHAR_COUNT\(0) & (\U2|CHAR_COUNT\(2) $ (((\U2|CHAR_COUNT\(1)))))) # (!\U2|CHAR_COUNT\(0) & (((\U1|Hex_Display_Data\(30)) # (!\U2|CHAR_COUNT\(1))) # (!\U2|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U1|Hex_Display_Data\(30),
	datad => \U2|CHAR_COUNT\(1),
	combout => \U2|Mux4~8_combout\);

-- Location: FF_X41_Y47_N13
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
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(6));

-- Location: LCCOMB_X41_Y47_N12
\U2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~0_combout\ = (\U2|CHAR_COUNT\(4) & (\U1|Hex_Display_Data\(6) & \U2|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(4),
	datac => \U1|Hex_Display_Data\(6),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux4~0_combout\);

-- Location: LCCOMB_X41_Y49_N26
\U1|Mux316~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux316~5_combout\ = (\U1|Mux316~3_combout\) # ((\U1|Mux316~4_combout\) # ((\U1|Add1~12_combout\ & \U1|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~12_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Mux316~3_combout\,
	datad => \U1|Mux316~4_combout\,
	combout => \U1|Mux316~5_combout\);

-- Location: FF_X41_Y49_N27
\U1|Hex_Display_Data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux316~5_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(22));

-- Location: LCCOMB_X41_Y49_N0
\U1|Mux320~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux320~3_combout\ = (!\U1|Mux320~2_combout\ & (!\U1|Mux316~3_combout\ & ((!\U1|Add1~4_combout\) # (!\U1|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux320~2_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add1~4_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux320~3_combout\);

-- Location: FF_X41_Y49_N1
\U1|Hex_Display_Data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux320~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(18));

-- Location: LCCOMB_X41_Y49_N20
\U2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~1_combout\ = (\U2|CHAR_COUNT\(0) & (((\U2|CHAR_COUNT\(4)) # (!\U1|Hex_Display_Data\(18))))) # (!\U2|CHAR_COUNT\(0) & (\U1|Hex_Display_Data\(22) & (!\U2|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(22),
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U1|Hex_Display_Data\(18),
	combout => \U2|Mux4~1_combout\);

-- Location: FF_X42_Y49_N7
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
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(14));

-- Location: LCCOMB_X42_Y49_N8
\U1|Hex_Display_Data[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[10]~4_combout\ = !\U1|PC\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|PC\(10),
	combout => \U1|Hex_Display_Data[10]~4_combout\);

-- Location: FF_X42_Y49_N9
\U1|Hex_Display_Data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[10]~4_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(10));

-- Location: LCCOMB_X42_Y49_N6
\U2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~2_combout\ = (\U2|CHAR_COUNT\(4) & ((\U2|Mux4~1_combout\ & ((!\U1|Hex_Display_Data\(10)))) # (!\U2|Mux4~1_combout\ & (\U1|Hex_Display_Data\(14))))) # (!\U2|CHAR_COUNT\(4) & (\U2|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|Mux4~1_combout\,
	datac => \U1|Hex_Display_Data\(14),
	datad => \U1|Hex_Display_Data\(10),
	combout => \U2|Mux4~2_combout\);

-- Location: LCCOMB_X41_Y49_N6
\U2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~3_combout\ = (\U2|Mux4~2_combout\ & (\U2|CHAR_COUNT\(2) $ (!\U2|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|Mux4~2_combout\,
	combout => \U2|Mux4~3_combout\);

-- Location: LCCOMB_X50_Y50_N26
\U1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal2~2_combout\ = (!\U1|Add2~22_combout\ & (!\U1|Add2~6_combout\ & (!\U1|Add2~14_combout\ & !\U1|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~22_combout\,
	datab => \U1|Add2~6_combout\,
	datac => \U1|Add2~14_combout\,
	datad => \U1|Add2~30_combout\,
	combout => \U1|Equal2~2_combout\);

-- Location: LCCOMB_X50_Y50_N8
\U1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal2~0_combout\ = (!\U1|Add2~12_combout\ & (!\U1|Add2~4_combout\ & (!\U1|Add2~28_combout\ & !\U1|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~12_combout\,
	datab => \U1|Add2~4_combout\,
	datac => \U1|Add2~28_combout\,
	datad => \U1|Add2~20_combout\,
	combout => \U1|Equal2~0_combout\);

-- Location: LCCOMB_X50_Y50_N4
\U1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal2~3_combout\ = (!\U1|Add2~8_combout\ & (!\U1|Add2~0_combout\ & (!\U1|Add2~16_combout\ & !\U1|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~8_combout\,
	datab => \U1|Add2~0_combout\,
	datac => \U1|Add2~16_combout\,
	datad => \U1|Add2~24_combout\,
	combout => \U1|Equal2~3_combout\);

-- Location: LCCOMB_X50_Y50_N16
\U1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal2~1_combout\ = (!\U1|Add2~10_combout\ & (!\U1|Add2~18_combout\ & (!\U1|Add2~2_combout\ & !\U1|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~10_combout\,
	datab => \U1|Add2~18_combout\,
	datac => \U1|Add2~2_combout\,
	datad => \U1|Add2~26_combout\,
	combout => \U1|Equal2~1_combout\);

-- Location: LCCOMB_X50_Y50_N6
\U1|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal2~4_combout\ = (\U1|Equal2~2_combout\ & (\U1|Equal2~0_combout\ & (\U1|Equal2~3_combout\ & \U1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal2~2_combout\,
	datab => \U1|Equal2~0_combout\,
	datac => \U1|Equal2~3_combout\,
	datad => \U1|Equal2~1_combout\,
	combout => \U1|Equal2~4_combout\);

-- Location: LCCOMB_X45_Y49_N12
\U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (!\U1|Add0~24_combout\ & (!\U1|Add0~8_combout\ & (!\U1|Add0~0_combout\ & !\U1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~24_combout\,
	datab => \U1|Add0~8_combout\,
	datac => \U1|Add0~0_combout\,
	datad => \U1|Add0~16_combout\,
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y49_N16
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|Add0~28_combout\ & (!\U1|Add0~20_combout\ & (!\U1|Add0~4_combout\ & !\U1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~28_combout\,
	datab => \U1|Add0~20_combout\,
	datac => \U1|Add0~4_combout\,
	datad => \U1|Add0~12_combout\,
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y49_N26
\U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|Add0~2_combout\ & (!\U1|Add0~10_combout\ & (!\U1|Add0~26_combout\ & !\U1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~2_combout\,
	datab => \U1|Add0~10_combout\,
	datac => \U1|Add0~26_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y49_N22
\U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (!\U1|Add0~22_combout\ & (!\U1|Add0~6_combout\ & (!\U1|Add0~14_combout\ & !\U1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~22_combout\,
	datab => \U1|Add0~6_combout\,
	datac => \U1|Add0~14_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y49_N30
\U1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = (\U1|Equal0~3_combout\ & (\U1|Equal0~0_combout\ & (\U1|Equal0~1_combout\ & \U1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~3_combout\,
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|Equal0~2_combout\,
	combout => \U1|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y47_N26
\U1|fl_zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_zero~0_combout\ = (\U1|Mux1~8_combout\ & (\U1|Equal2~4_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal2~4_combout\,
	datab => \U1|Mux1~8_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|fl_zero~0_combout\);

-- Location: LCCOMB_X49_Y45_N0
\U1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal1~1_combout\ = (!\U1|Add1~12_combout\ & (!\U1|Add1~20_combout\ & (!\U1|Add1~4_combout\ & !\U1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~12_combout\,
	datab => \U1|Add1~20_combout\,
	datac => \U1|Add1~4_combout\,
	datad => \U1|Add1~18_combout\,
	combout => \U1|Equal1~1_combout\);

-- Location: LCCOMB_X49_Y45_N28
\U1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal1~3_combout\ = (!\U1|Add1~0_combout\ & (!\U1|Add1~8_combout\ & (!\U1|Add1~16_combout\ & !\U1|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~0_combout\,
	datab => \U1|Add1~8_combout\,
	datac => \U1|Add1~16_combout\,
	datad => \U1|Add1~14_combout\,
	combout => \U1|Equal1~3_combout\);

-- Location: LCCOMB_X41_Y49_N14
\U1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal1~0_combout\ = (!\U1|Add1~30_combout\ & (!\U1|Add1~26_combout\ & (!\U1|Add1~24_combout\ & !\U1|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~30_combout\,
	datab => \U1|Add1~26_combout\,
	datac => \U1|Add1~24_combout\,
	datad => \U1|Add1~28_combout\,
	combout => \U1|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y45_N2
\U1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal1~2_combout\ = (!\U1|Add1~22_combout\ & (!\U1|Add1~10_combout\ & (!\U1|Add1~2_combout\ & !\U1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~22_combout\,
	datab => \U1|Add1~10_combout\,
	datac => \U1|Add1~2_combout\,
	datad => \U1|Add1~6_combout\,
	combout => \U1|Equal1~2_combout\);

-- Location: LCCOMB_X49_Y45_N30
\U1|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal1~4_combout\ = (\U1|Equal1~1_combout\ & (\U1|Equal1~3_combout\ & (\U1|Equal1~0_combout\ & \U1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~1_combout\,
	datab => \U1|Equal1~3_combout\,
	datac => \U1|Equal1~0_combout\,
	datad => \U1|Equal1~2_combout\,
	combout => \U1|Equal1~4_combout\);

-- Location: LCCOMB_X43_Y46_N22
\U1|fl_zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_zero~1_combout\ = (\U1|Hex_Display_Data[28]~0_combout\ & ((\U1|fl_negative~0_combout\) # ((!\U1|Hex_Display_Data[17]~1_combout\ & \U1|Mux307~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data[17]~1_combout\,
	datab => \U1|Mux307~7_combout\,
	datac => \U1|Hex_Display_Data[28]~0_combout\,
	datad => \U1|fl_negative~0_combout\,
	combout => \U1|fl_zero~1_combout\);

-- Location: FF_X49_Y47_N27
\U1|fl_zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|fl_zero~0_combout\,
	asdata => \U1|Equal1~4_combout\,
	sload => \U1|Mux0~6_combout\,
	ena => \U1|fl_zero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|fl_zero~q\);

-- Location: FF_X41_Y47_N15
\U1|Hex_Display_Data[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|fl_zero~q\,
	sload => VCC,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(62));

-- Location: LCCOMB_X41_Y47_N14
\U2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~4_combout\ = (\U2|CHAR_COUNT\(0)) # ((!\U2|CHAR_COUNT\(1) & (\U1|Hex_Display_Data\(62) & !\U2|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U1|Hex_Display_Data\(62),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux4~4_combout\);

-- Location: LCCOMB_X41_Y47_N8
\U2|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~5_combout\ = (\U2|Mux6~1_combout\ & (\U2|Mux4~3_combout\ & ((!\U2|Mux6~0_combout\)))) # (!\U2|Mux6~1_combout\ & (((\U2|Mux4~4_combout\) # (\U2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~3_combout\,
	datab => \U2|Mux6~1_combout\,
	datac => \U2|Mux4~4_combout\,
	datad => \U2|Mux6~0_combout\,
	combout => \U2|Mux4~5_combout\);

-- Location: LCCOMB_X41_Y47_N10
\U1|Hex_Display_Data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[2]~2_combout\ = !\U1|PC\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PC\(2),
	combout => \U1|Hex_Display_Data[2]~2_combout\);

-- Location: FF_X41_Y47_N11
\U1|Hex_Display_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[2]~2_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(2));

-- Location: LCCOMB_X41_Y47_N2
\U2|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~6_combout\ = (\U2|Mux6~2_combout\ & ((\U2|Mux4~5_combout\ & (\U2|Mux4~0_combout\)) # (!\U2|Mux4~5_combout\ & ((!\U1|Hex_Display_Data\(2)))))) # (!\U2|Mux6~2_combout\ & (((\U2|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~0_combout\,
	datab => \U2|Mux6~2_combout\,
	datac => \U2|Mux4~5_combout\,
	datad => \U1|Hex_Display_Data\(2),
	combout => \U2|Mux4~6_combout\);

-- Location: LCCOMB_X35_Y49_N24
\U2|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux4~9_combout\ = (\U2|Mux3~7_combout\ & ((\U2|Mux4~7_combout\) # ((\U2|Mux4~8_combout\)))) # (!\U2|Mux3~7_combout\ & (((\U2|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~7_combout\,
	datab => \U2|Mux4~7_combout\,
	datac => \U2|Mux4~8_combout\,
	datad => \U2|Mux4~6_combout\,
	combout => \U2|Mux4~9_combout\);

-- Location: LCCOMB_X41_Y49_N10
\U1|Mux313~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux313~3_combout\ = (\U1|Mux316~3_combout\) # ((\U1|Mux313~2_combout\) # ((\U1|Add1~18_combout\ & \U1|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~18_combout\,
	datab => \U1|Mux316~3_combout\,
	datac => \U1|Mux313~2_combout\,
	datad => \U1|Mux0~6_combout\,
	combout => \U1|Mux313~3_combout\);

-- Location: FF_X41_Y49_N11
\U1|Hex_Display_Data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux313~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(25));

-- Location: LCCOMB_X41_Y49_N28
\U1|Mux309~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux309~3_combout\ = (\U1|Mux316~3_combout\) # ((\U1|Mux309~2_combout\) # ((\U1|Mux0~6_combout\ & \U1|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~6_combout\,
	datab => \U1|Mux316~3_combout\,
	datac => \U1|Mux309~2_combout\,
	datad => \U1|Add1~26_combout\,
	combout => \U1|Mux309~3_combout\);

-- Location: FF_X41_Y49_N29
\U1|Hex_Display_Data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux309~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(29));

-- Location: LCCOMB_X40_Y49_N16
\U2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~2_combout\ = (\U2|CHAR_COUNT\(0) & (\U1|Hex_Display_Data\(25))) # (!\U2|CHAR_COUNT\(0) & ((\U1|Hex_Display_Data\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datac => \U1|Hex_Display_Data\(25),
	datad => \U1|Hex_Display_Data\(29),
	combout => \U2|Mux5~2_combout\);

-- Location: LCCOMB_X39_Y49_N0
\U2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~3_combout\ = (\U2|CHAR_COUNT\(2) & (\U2|CHAR_COUNT\(1) & ((\U2|Mux5~2_combout\)))) # (!\U2|CHAR_COUNT\(2) & (!\U2|CHAR_COUNT\(1) & (!\U2|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U2|CHAR_COUNT\(0),
	datad => \U2|Mux5~2_combout\,
	combout => \U2|Mux5~3_combout\);

-- Location: FF_X41_Y47_N23
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
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(5));

-- Location: LCCOMB_X41_Y47_N22
\U2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~4_combout\ = (\U2|CHAR_COUNT\(4) & (\U1|Hex_Display_Data\(5) & \U2|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(4),
	datac => \U1|Hex_Display_Data\(5),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux5~4_combout\);

-- Location: LCCOMB_X42_Y49_N14
\U1|Mux317~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux317~3_combout\ = (\U1|Mux316~3_combout\) # ((\U1|Mux317~2_combout\) # ((\U1|Add1~10_combout\ & \U1|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~10_combout\,
	datab => \U1|Mux316~3_combout\,
	datac => \U1|Mux317~2_combout\,
	datad => \U1|Mux0~6_combout\,
	combout => \U1|Mux317~3_combout\);

-- Location: FF_X42_Y49_N15
\U1|Hex_Display_Data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux317~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(21));

-- Location: LCCOMB_X42_Y49_N12
\U1|Mux321~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux321~3_combout\ = (\U1|Mux321~2_combout\) # ((\U1|Mux316~3_combout\) # ((\U1|Add1~2_combout\ & \U1|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux321~2_combout\,
	datab => \U1|Mux316~3_combout\,
	datac => \U1|Add1~2_combout\,
	datad => \U1|Mux0~6_combout\,
	combout => \U1|Mux321~3_combout\);

-- Location: FF_X42_Y49_N13
\U1|Hex_Display_Data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux321~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(17));

-- Location: LCCOMB_X42_Y49_N24
\U2|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~5_combout\ = (\U2|CHAR_COUNT\(0) & (((\U2|CHAR_COUNT\(4)) # (\U1|Hex_Display_Data\(17))))) # (!\U2|CHAR_COUNT\(0) & (\U1|Hex_Display_Data\(21) & (!\U2|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U1|Hex_Display_Data\(21),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U1|Hex_Display_Data\(17),
	combout => \U2|Mux5~5_combout\);

-- Location: FF_X42_Y49_N27
\U1|Hex_Display_Data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|PC\(9),
	sload => VCC,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(9));

-- Location: LCCOMB_X42_Y49_N2
\U1|Hex_Display_Data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[13]~feeder_combout\ = \U1|PC\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PC\(13),
	combout => \U1|Hex_Display_Data[13]~feeder_combout\);

-- Location: FF_X42_Y49_N3
\U1|Hex_Display_Data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[13]~feeder_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(13));

-- Location: LCCOMB_X42_Y49_N26
\U2|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~6_combout\ = (\U2|CHAR_COUNT\(4) & ((\U2|Mux5~5_combout\ & (\U1|Hex_Display_Data\(9))) # (!\U2|Mux5~5_combout\ & ((\U1|Hex_Display_Data\(13)))))) # (!\U2|CHAR_COUNT\(4) & (\U2|Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|Mux5~5_combout\,
	datac => \U1|Hex_Display_Data\(9),
	datad => \U1|Hex_Display_Data\(13),
	combout => \U2|Mux5~6_combout\);

-- Location: LCCOMB_X41_Y47_N0
\U2|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~7_combout\ = (\U2|Mux5~6_combout\ & (\U2|CHAR_COUNT\(2) $ (!\U2|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datab => \U2|Mux5~6_combout\,
	datac => \U2|CHAR_COUNT\(4),
	combout => \U2|Mux5~7_combout\);

-- Location: LCCOMB_X49_Y47_N10
\U1|p_updateFlagsForAddAndSubCommon~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|p_updateFlagsForAddAndSubCommon~4_combout\ = (\U1|Mux31~9_combout\ & ((\U1|Add2~30_combout\) # (!\U1|Mux15~4_combout\))) # (!\U1|Mux31~9_combout\ & ((\U1|Mux15~4_combout\) # (!\U1|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux31~9_combout\,
	datac => \U1|Add2~30_combout\,
	datad => \U1|Mux15~4_combout\,
	combout => \U1|p_updateFlagsForAddAndSubCommon~4_combout\);

-- Location: LCCOMB_X49_Y47_N20
\U1|p_updateFlagsForAddAndSubCommon~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|p_updateFlagsForAddAndSubCommon~5_combout\ = (\U1|Add0~30_combout\ & ((\U1|Mux4~4_combout\ & ((!\U1|Mux15~1_combout\))) # (!\U1|Mux4~4_combout\ & (!\U1|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~30_combout\,
	datab => \U1|Mux4~4_combout\,
	datac => \U1|Mux15~3_combout\,
	datad => \U1|Mux15~1_combout\,
	combout => \U1|p_updateFlagsForAddAndSubCommon~5_combout\);

-- Location: LCCOMB_X49_Y47_N28
\U1|fl_signedCarry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_signedCarry~0_combout\ = (\U1|Mux1~8_combout\ & (!\U1|p_updateFlagsForAddAndSubCommon~4_combout\)) # (!\U1|Mux1~8_combout\ & ((\U1|p_updateFlagsForAddAndSubCommon~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|p_updateFlagsForAddAndSubCommon~4_combout\,
	datab => \U1|Mux1~8_combout\,
	datad => \U1|p_updateFlagsForAddAndSubCommon~5_combout\,
	combout => \U1|fl_signedCarry~0_combout\);

-- Location: LCCOMB_X49_Y47_N30
\U1|p_updateFlagsForAddAndSubCommon~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|p_updateFlagsForAddAndSubCommon~6_combout\ = (\U1|Add1~30_combout\ & ((\U1|Mux4~4_combout\ & ((!\U1|Mux15~1_combout\))) # (!\U1|Mux4~4_combout\ & (!\U1|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~30_combout\,
	datab => \U1|Mux4~4_combout\,
	datac => \U1|Mux15~3_combout\,
	datad => \U1|Mux15~1_combout\,
	combout => \U1|p_updateFlagsForAddAndSubCommon~6_combout\);

-- Location: FF_X49_Y47_N29
\U1|fl_signedCarry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|fl_signedCarry~0_combout\,
	asdata => \U1|p_updateFlagsForAddAndSubCommon~6_combout\,
	sload => \U1|Mux0~6_combout\,
	ena => \U1|fl_zero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|fl_signedCarry~q\);

-- Location: FF_X41_Y47_N27
\U1|Hex_Display_Data[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|fl_signedCarry~q\,
	sload => VCC,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(61));

-- Location: LCCOMB_X41_Y47_N26
\U2|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~8_combout\ = (!\U2|CHAR_COUNT\(0) & (!\U2|CHAR_COUNT\(1) & (\U1|Hex_Display_Data\(61) & !\U2|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U1|Hex_Display_Data\(61),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux5~8_combout\);

-- Location: LCCOMB_X41_Y47_N28
\U2|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~9_combout\ = (\U2|Mux6~1_combout\ & (\U2|Mux5~7_combout\ & ((!\U2|Mux6~0_combout\)))) # (!\U2|Mux6~1_combout\ & (((\U2|Mux5~8_combout\) # (\U2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~7_combout\,
	datab => \U2|Mux6~1_combout\,
	datac => \U2|Mux5~8_combout\,
	datad => \U2|Mux6~0_combout\,
	combout => \U2|Mux5~9_combout\);

-- Location: FF_X41_Y47_N5
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
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(1));

-- Location: LCCOMB_X41_Y47_N4
\U2|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~10_combout\ = (\U2|Mux5~9_combout\ & ((\U2|Mux5~4_combout\) # ((!\U2|Mux6~2_combout\)))) # (!\U2|Mux5~9_combout\ & (((\U1|Hex_Display_Data\(1) & \U2|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~4_combout\,
	datab => \U2|Mux5~9_combout\,
	datac => \U1|Hex_Display_Data\(1),
	datad => \U2|Mux6~2_combout\,
	combout => \U2|Mux5~10_combout\);

-- Location: LCCOMB_X35_Y49_N6
\U2|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux5~11_combout\ = (\U2|CHAR_COUNT\(4) & (((\U2|Mux5~10_combout\)))) # (!\U2|CHAR_COUNT\(4) & ((\U2|CHAR_COUNT\(3) & ((\U2|Mux5~10_combout\))) # (!\U2|CHAR_COUNT\(3) & (\U2|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~3_combout\,
	datab => \U2|CHAR_COUNT\(4),
	datac => \U2|CHAR_COUNT\(3),
	datad => \U2|Mux5~10_combout\,
	combout => \U2|Mux5~11_combout\);

-- Location: FF_X41_Y47_N19
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
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(7));

-- Location: LCCOMB_X41_Y47_N18
\U2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (\U2|CHAR_COUNT\(4) & (\U1|Hex_Display_Data\(7) & \U2|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CHAR_COUNT\(4),
	datac => \U1|Hex_Display_Data\(7),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y46_N16
\U1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_cout\ = CARRY((\U1|Mux30~4_combout\ & !\U1|Mux14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux30~4_combout\,
	datab => \U1|Mux14~6_combout\,
	datad => VCC,
	cout => \U1|LessThan0~1_cout\);

-- Location: LCCOMB_X50_Y46_N18
\U1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~3_cout\ = CARRY((\U1|Mux29~4_combout\ & (\U1|Mux13~5_combout\ & !\U1|LessThan0~1_cout\)) # (!\U1|Mux29~4_combout\ & ((\U1|Mux13~5_combout\) # (!\U1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux29~4_combout\,
	datab => \U1|Mux13~5_combout\,
	datad => VCC,
	cin => \U1|LessThan0~1_cout\,
	cout => \U1|LessThan0~3_cout\);

-- Location: LCCOMB_X50_Y46_N20
\U1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~5_cout\ = CARRY((\U1|Mux28~4_combout\ & ((!\U1|LessThan0~3_cout\) # (!\U1|Mux12~3_combout\))) # (!\U1|Mux28~4_combout\ & (!\U1|Mux12~3_combout\ & !\U1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux28~4_combout\,
	datab => \U1|Mux12~3_combout\,
	datad => VCC,
	cin => \U1|LessThan0~3_cout\,
	cout => \U1|LessThan0~5_cout\);

-- Location: LCCOMB_X50_Y46_N22
\U1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~7_cout\ = CARRY((\U1|Mux27~4_combout\ & (\U1|Mux11~5_combout\ & !\U1|LessThan0~5_cout\)) # (!\U1|Mux27~4_combout\ & ((\U1|Mux11~5_combout\) # (!\U1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux27~4_combout\,
	datab => \U1|Mux11~5_combout\,
	datad => VCC,
	cin => \U1|LessThan0~5_cout\,
	cout => \U1|LessThan0~7_cout\);

-- Location: LCCOMB_X50_Y46_N24
\U1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~9_cout\ = CARRY((\U1|Mux26~4_combout\ & ((!\U1|LessThan0~7_cout\) # (!\U1|Mux10~12_combout\))) # (!\U1|Mux26~4_combout\ & (!\U1|Mux10~12_combout\ & !\U1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux26~4_combout\,
	datab => \U1|Mux10~12_combout\,
	datad => VCC,
	cin => \U1|LessThan0~7_cout\,
	cout => \U1|LessThan0~9_cout\);

-- Location: LCCOMB_X50_Y46_N26
\U1|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~11_cout\ = CARRY((\U1|Mux25~4_combout\ & (\U1|Mux9~5_combout\ & !\U1|LessThan0~9_cout\)) # (!\U1|Mux25~4_combout\ & ((\U1|Mux9~5_combout\) # (!\U1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux25~4_combout\,
	datab => \U1|Mux9~5_combout\,
	datad => VCC,
	cin => \U1|LessThan0~9_cout\,
	cout => \U1|LessThan0~11_cout\);

-- Location: LCCOMB_X50_Y46_N28
\U1|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~13_cout\ = CARRY((\U1|Mux24~4_combout\ & ((!\U1|LessThan0~11_cout\) # (!\U1|Mux8~6_combout\))) # (!\U1|Mux24~4_combout\ & (!\U1|Mux8~6_combout\ & !\U1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux24~4_combout\,
	datab => \U1|Mux8~6_combout\,
	datad => VCC,
	cin => \U1|LessThan0~11_cout\,
	cout => \U1|LessThan0~13_cout\);

-- Location: LCCOMB_X50_Y46_N30
\U1|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~14_combout\ = (\U1|Mux7~7_combout\ & (\U1|Mux23~4_combout\ & \U1|LessThan0~13_cout\)) # (!\U1|Mux7~7_combout\ & ((\U1|Mux23~4_combout\) # (\U1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux7~7_combout\,
	datab => \U1|Mux23~4_combout\,
	cin => \U1|LessThan0~13_cout\,
	combout => \U1|LessThan0~14_combout\);

-- Location: LCCOMB_X47_Y47_N8
\U1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~0_combout\ = (!\U1|Mux17~4_combout\ & (!\U1|Mux18~4_combout\ & (!\U1|Mux19~4_combout\ & !\U1|Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux17~4_combout\,
	datab => \U1|Mux18~4_combout\,
	datac => \U1|Mux19~4_combout\,
	datad => \U1|Mux16~4_combout\,
	combout => \U1|LessThan2~0_combout\);

-- Location: LCCOMB_X49_Y47_N16
\U1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~1_combout\ = (!\U1|Mux22~4_combout\ & ((\U1|Mux4~4_combout\ & ((!\U1|Mux15~1_combout\))) # (!\U1|Mux4~4_combout\ & (!\U1|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux15~3_combout\,
	datab => \U1|Mux15~1_combout\,
	datac => \U1|Mux4~4_combout\,
	datad => \U1|Mux22~4_combout\,
	combout => \U1|LessThan2~1_combout\);

-- Location: LCCOMB_X47_Y47_N26
\U1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~2_combout\ = (!\U1|Mux20~4_combout\ & (!\U1|Mux21~4_combout\ & (\U1|LessThan2~0_combout\ & \U1|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux20~4_combout\,
	datab => \U1|Mux21~4_combout\,
	datac => \U1|LessThan2~0_combout\,
	datad => \U1|LessThan2~1_combout\,
	combout => \U1|LessThan2~2_combout\);

-- Location: LCCOMB_X50_Y46_N10
\U1|v_res~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~0_combout\ = (\U1|LessThan0~14_combout\ & (((\U1|Mux23~4_combout\)))) # (!\U1|LessThan0~14_combout\ & ((\U1|LessThan2~2_combout\ & (\U1|Mux7~7_combout\)) # (!\U1|LessThan2~2_combout\ & ((\U1|Mux23~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux7~7_combout\,
	datab => \U1|Mux23~4_combout\,
	datac => \U1|LessThan0~14_combout\,
	datad => \U1|LessThan2~2_combout\,
	combout => \U1|v_res~0_combout\);

-- Location: LCCOMB_X50_Y46_N4
\U1|v_res~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~1_combout\ = (\U1|LessThan0~14_combout\ & (\U1|Mux24~4_combout\)) # (!\U1|LessThan0~14_combout\ & ((\U1|LessThan2~2_combout\ & ((\U1|Mux8~6_combout\))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux24~4_combout\,
	datab => \U1|Mux8~6_combout\,
	datac => \U1|LessThan0~14_combout\,
	datad => \U1|LessThan2~2_combout\,
	combout => \U1|v_res~1_combout\);

-- Location: LCCOMB_X50_Y46_N14
\U1|v_res~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~2_combout\ = (\U1|LessThan0~14_combout\ & (\U1|Mux25~4_combout\)) # (!\U1|LessThan0~14_combout\ & ((\U1|LessThan2~2_combout\ & ((\U1|Mux9~5_combout\))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux25~4_combout\,
	datab => \U1|Mux9~5_combout\,
	datac => \U1|LessThan0~14_combout\,
	datad => \U1|LessThan2~2_combout\,
	combout => \U1|v_res~2_combout\);

-- Location: LCCOMB_X50_Y46_N0
\U1|v_res~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~3_combout\ = (\U1|LessThan2~2_combout\ & ((\U1|LessThan0~14_combout\ & ((\U1|Mux26~4_combout\))) # (!\U1|LessThan0~14_combout\ & (\U1|Mux10~12_combout\)))) # (!\U1|LessThan2~2_combout\ & (((\U1|Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan2~2_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|LessThan0~14_combout\,
	datad => \U1|Mux26~4_combout\,
	combout => \U1|v_res~3_combout\);

-- Location: LCCOMB_X50_Y46_N2
\U1|v_res~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~4_combout\ = (\U1|LessThan0~14_combout\ & (\U1|Mux27~4_combout\)) # (!\U1|LessThan0~14_combout\ & ((\U1|LessThan2~2_combout\ & ((\U1|Mux11~5_combout\))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux27~4_combout\,
	datab => \U1|Mux11~5_combout\,
	datac => \U1|LessThan0~14_combout\,
	datad => \U1|LessThan2~2_combout\,
	combout => \U1|v_res~4_combout\);

-- Location: LCCOMB_X50_Y46_N12
\U1|v_res~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~5_combout\ = (\U1|LessThan0~14_combout\ & (\U1|Mux28~4_combout\)) # (!\U1|LessThan0~14_combout\ & ((\U1|LessThan2~2_combout\ & ((\U1|Mux12~3_combout\))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux28~4_combout\,
	datab => \U1|Mux12~3_combout\,
	datac => \U1|LessThan0~14_combout\,
	datad => \U1|LessThan2~2_combout\,
	combout => \U1|v_res~5_combout\);

-- Location: LCCOMB_X50_Y46_N6
\U1|v_res~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~6_combout\ = (\U1|LessThan0~14_combout\ & (\U1|Mux29~4_combout\)) # (!\U1|LessThan0~14_combout\ & ((\U1|LessThan2~2_combout\ & ((\U1|Mux13~5_combout\))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux29~4_combout\,
	datab => \U1|Mux13~5_combout\,
	datac => \U1|LessThan0~14_combout\,
	datad => \U1|LessThan2~2_combout\,
	combout => \U1|v_res~6_combout\);

-- Location: LCCOMB_X49_Y46_N16
\U1|v_res~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~7_combout\ = (\U1|LessThan0~14_combout\ & (\U1|Mux30~4_combout\)) # (!\U1|LessThan0~14_combout\ & ((\U1|LessThan2~2_combout\ & ((\U1|Mux14~6_combout\))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux30~4_combout\,
	datab => \U1|Mux14~6_combout\,
	datac => \U1|LessThan0~14_combout\,
	datad => \U1|LessThan2~2_combout\,
	combout => \U1|v_res~7_combout\);

-- Location: LCCOMB_X50_Y49_N0
\U1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~1_cout\ = CARRY((\U1|v_res~7_combout\ & !\U1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~7_combout\,
	datab => \U1|Add0~0_combout\,
	datad => VCC,
	cout => \U1|LessThan1~1_cout\);

-- Location: LCCOMB_X50_Y49_N2
\U1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~3_cout\ = CARRY((\U1|Add0~2_combout\ & ((!\U1|LessThan1~1_cout\) # (!\U1|v_res~6_combout\))) # (!\U1|Add0~2_combout\ & (!\U1|v_res~6_combout\ & !\U1|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~2_combout\,
	datab => \U1|v_res~6_combout\,
	datad => VCC,
	cin => \U1|LessThan1~1_cout\,
	cout => \U1|LessThan1~3_cout\);

-- Location: LCCOMB_X50_Y49_N4
\U1|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~5_cout\ = CARRY((\U1|v_res~5_combout\ & ((!\U1|LessThan1~3_cout\) # (!\U1|Add0~4_combout\))) # (!\U1|v_res~5_combout\ & (!\U1|Add0~4_combout\ & !\U1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~5_combout\,
	datab => \U1|Add0~4_combout\,
	datad => VCC,
	cin => \U1|LessThan1~3_cout\,
	cout => \U1|LessThan1~5_cout\);

-- Location: LCCOMB_X50_Y49_N6
\U1|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~7_cout\ = CARRY((\U1|v_res~4_combout\ & (\U1|Add0~6_combout\ & !\U1|LessThan1~5_cout\)) # (!\U1|v_res~4_combout\ & ((\U1|Add0~6_combout\) # (!\U1|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~4_combout\,
	datab => \U1|Add0~6_combout\,
	datad => VCC,
	cin => \U1|LessThan1~5_cout\,
	cout => \U1|LessThan1~7_cout\);

-- Location: LCCOMB_X50_Y49_N8
\U1|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~9_cout\ = CARRY((\U1|v_res~3_combout\ & ((!\U1|LessThan1~7_cout\) # (!\U1|Add0~8_combout\))) # (!\U1|v_res~3_combout\ & (!\U1|Add0~8_combout\ & !\U1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~3_combout\,
	datab => \U1|Add0~8_combout\,
	datad => VCC,
	cin => \U1|LessThan1~7_cout\,
	cout => \U1|LessThan1~9_cout\);

-- Location: LCCOMB_X50_Y49_N10
\U1|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~11_cout\ = CARRY((\U1|Add0~10_combout\ & ((!\U1|LessThan1~9_cout\) # (!\U1|v_res~2_combout\))) # (!\U1|Add0~10_combout\ & (!\U1|v_res~2_combout\ & !\U1|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~10_combout\,
	datab => \U1|v_res~2_combout\,
	datad => VCC,
	cin => \U1|LessThan1~9_cout\,
	cout => \U1|LessThan1~11_cout\);

-- Location: LCCOMB_X50_Y49_N12
\U1|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~13_cout\ = CARRY((\U1|v_res~1_combout\ & ((!\U1|LessThan1~11_cout\) # (!\U1|Add0~12_combout\))) # (!\U1|v_res~1_combout\ & (!\U1|Add0~12_combout\ & !\U1|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~1_combout\,
	datab => \U1|Add0~12_combout\,
	datad => VCC,
	cin => \U1|LessThan1~11_cout\,
	cout => \U1|LessThan1~13_cout\);

-- Location: LCCOMB_X50_Y49_N14
\U1|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~15_cout\ = CARRY((\U1|Add0~14_combout\ & ((!\U1|LessThan1~13_cout\) # (!\U1|v_res~0_combout\))) # (!\U1|Add0~14_combout\ & (!\U1|v_res~0_combout\ & !\U1|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~14_combout\,
	datab => \U1|v_res~0_combout\,
	datad => VCC,
	cin => \U1|LessThan1~13_cout\,
	cout => \U1|LessThan1~15_cout\);

-- Location: LCCOMB_X50_Y49_N16
\U1|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~17_cout\ = CARRY((\U1|Add0~16_combout\ & (\U1|Mux22~4_combout\ & !\U1|LessThan1~15_cout\)) # (!\U1|Add0~16_combout\ & ((\U1|Mux22~4_combout\) # (!\U1|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~16_combout\,
	datab => \U1|Mux22~4_combout\,
	datad => VCC,
	cin => \U1|LessThan1~15_cout\,
	cout => \U1|LessThan1~17_cout\);

-- Location: LCCOMB_X50_Y49_N18
\U1|LessThan1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~19_cout\ = CARRY((\U1|Mux21~4_combout\ & (\U1|Add0~18_combout\ & !\U1|LessThan1~17_cout\)) # (!\U1|Mux21~4_combout\ & ((\U1|Add0~18_combout\) # (!\U1|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux21~4_combout\,
	datab => \U1|Add0~18_combout\,
	datad => VCC,
	cin => \U1|LessThan1~17_cout\,
	cout => \U1|LessThan1~19_cout\);

-- Location: LCCOMB_X50_Y49_N20
\U1|LessThan1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~21_cout\ = CARRY((\U1|Mux20~4_combout\ & ((!\U1|LessThan1~19_cout\) # (!\U1|Add0~20_combout\))) # (!\U1|Mux20~4_combout\ & (!\U1|Add0~20_combout\ & !\U1|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux20~4_combout\,
	datab => \U1|Add0~20_combout\,
	datad => VCC,
	cin => \U1|LessThan1~19_cout\,
	cout => \U1|LessThan1~21_cout\);

-- Location: LCCOMB_X50_Y49_N22
\U1|LessThan1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~23_cout\ = CARRY((\U1|Mux19~4_combout\ & (\U1|Add0~22_combout\ & !\U1|LessThan1~21_cout\)) # (!\U1|Mux19~4_combout\ & ((\U1|Add0~22_combout\) # (!\U1|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux19~4_combout\,
	datab => \U1|Add0~22_combout\,
	datad => VCC,
	cin => \U1|LessThan1~21_cout\,
	cout => \U1|LessThan1~23_cout\);

-- Location: LCCOMB_X50_Y49_N24
\U1|LessThan1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~25_cout\ = CARRY((\U1|Mux18~4_combout\ & ((!\U1|LessThan1~23_cout\) # (!\U1|Add0~24_combout\))) # (!\U1|Mux18~4_combout\ & (!\U1|Add0~24_combout\ & !\U1|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux18~4_combout\,
	datab => \U1|Add0~24_combout\,
	datad => VCC,
	cin => \U1|LessThan1~23_cout\,
	cout => \U1|LessThan1~25_cout\);

-- Location: LCCOMB_X50_Y49_N26
\U1|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~27_cout\ = CARRY((\U1|Add0~26_combout\ & ((!\U1|LessThan1~25_cout\) # (!\U1|Mux17~4_combout\))) # (!\U1|Add0~26_combout\ & (!\U1|Mux17~4_combout\ & !\U1|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~26_combout\,
	datab => \U1|Mux17~4_combout\,
	datad => VCC,
	cin => \U1|LessThan1~25_cout\,
	cout => \U1|LessThan1~27_cout\);

-- Location: LCCOMB_X50_Y49_N28
\U1|LessThan1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~29_cout\ = CARRY((\U1|Mux16~4_combout\ & ((!\U1|LessThan1~27_cout\) # (!\U1|Add0~28_combout\))) # (!\U1|Mux16~4_combout\ & (!\U1|Add0~28_combout\ & !\U1|LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux16~4_combout\,
	datab => \U1|Add0~28_combout\,
	datad => VCC,
	cin => \U1|LessThan1~27_cout\,
	cout => \U1|LessThan1~29_cout\);

-- Location: LCCOMB_X50_Y49_N30
\U1|LessThan1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~30_combout\ = (\U1|Mux15~4_combout\ & ((\U1|LessThan1~29_cout\) # (!\U1|Add0~30_combout\))) # (!\U1|Mux15~4_combout\ & (\U1|LessThan1~29_cout\ & !\U1|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux15~4_combout\,
	datad => \U1|Add0~30_combout\,
	cin => \U1|LessThan1~29_cout\,
	combout => \U1|LessThan1~30_combout\);

-- Location: LCCOMB_X47_Y48_N0
\U1|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~1_cout\ = CARRY((\U1|Mux30~4_combout\ & !\U1|Mux46~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux30~4_combout\,
	datab => \U1|Mux46~9_combout\,
	datad => VCC,
	cout => \U1|LessThan4~1_cout\);

-- Location: LCCOMB_X47_Y48_N2
\U1|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~3_cout\ = CARRY((\U1|Mux45~9_combout\ & ((!\U1|LessThan4~1_cout\) # (!\U1|Mux29~4_combout\))) # (!\U1|Mux45~9_combout\ & (!\U1|Mux29~4_combout\ & !\U1|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux45~9_combout\,
	datab => \U1|Mux29~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~1_cout\,
	cout => \U1|LessThan4~3_cout\);

-- Location: LCCOMB_X47_Y48_N4
\U1|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~5_cout\ = CARRY((\U1|Mux28~4_combout\ & ((!\U1|LessThan4~3_cout\) # (!\U1|Mux44~9_combout\))) # (!\U1|Mux28~4_combout\ & (!\U1|Mux44~9_combout\ & !\U1|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux28~4_combout\,
	datab => \U1|Mux44~9_combout\,
	datad => VCC,
	cin => \U1|LessThan4~3_cout\,
	cout => \U1|LessThan4~5_cout\);

-- Location: LCCOMB_X47_Y48_N6
\U1|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~7_cout\ = CARRY((\U1|Mux43~9_combout\ & ((!\U1|LessThan4~5_cout\) # (!\U1|Mux27~4_combout\))) # (!\U1|Mux43~9_combout\ & (!\U1|Mux27~4_combout\ & !\U1|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux43~9_combout\,
	datab => \U1|Mux27~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~5_cout\,
	cout => \U1|LessThan4~7_cout\);

-- Location: LCCOMB_X47_Y48_N8
\U1|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~9_cout\ = CARRY((\U1|Mux42~9_combout\ & (\U1|Mux26~4_combout\ & !\U1|LessThan4~7_cout\)) # (!\U1|Mux42~9_combout\ & ((\U1|Mux26~4_combout\) # (!\U1|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux42~9_combout\,
	datab => \U1|Mux26~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~7_cout\,
	cout => \U1|LessThan4~9_cout\);

-- Location: LCCOMB_X47_Y48_N10
\U1|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~11_cout\ = CARRY((\U1|Mux41~9_combout\ & ((!\U1|LessThan4~9_cout\) # (!\U1|Mux25~4_combout\))) # (!\U1|Mux41~9_combout\ & (!\U1|Mux25~4_combout\ & !\U1|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux41~9_combout\,
	datab => \U1|Mux25~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~9_cout\,
	cout => \U1|LessThan4~11_cout\);

-- Location: LCCOMB_X47_Y48_N12
\U1|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~13_cout\ = CARRY((\U1|Mux40~9_combout\ & (\U1|Mux24~4_combout\ & !\U1|LessThan4~11_cout\)) # (!\U1|Mux40~9_combout\ & ((\U1|Mux24~4_combout\) # (!\U1|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux40~9_combout\,
	datab => \U1|Mux24~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~11_cout\,
	cout => \U1|LessThan4~13_cout\);

-- Location: LCCOMB_X47_Y48_N14
\U1|LessThan4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~15_cout\ = CARRY((\U1|Mux23~4_combout\ & (\U1|Mux39~9_combout\ & !\U1|LessThan4~13_cout\)) # (!\U1|Mux23~4_combout\ & ((\U1|Mux39~9_combout\) # (!\U1|LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux23~4_combout\,
	datab => \U1|Mux39~9_combout\,
	datad => VCC,
	cin => \U1|LessThan4~13_cout\,
	cout => \U1|LessThan4~15_cout\);

-- Location: LCCOMB_X47_Y48_N16
\U1|LessThan4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~17_cout\ = CARRY((\U1|Mux38~9_combout\ & (\U1|Mux22~4_combout\ & !\U1|LessThan4~15_cout\)) # (!\U1|Mux38~9_combout\ & ((\U1|Mux22~4_combout\) # (!\U1|LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux38~9_combout\,
	datab => \U1|Mux22~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~15_cout\,
	cout => \U1|LessThan4~17_cout\);

-- Location: LCCOMB_X47_Y48_N18
\U1|LessThan4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~19_cout\ = CARRY((\U1|Mux21~4_combout\ & (\U1|Mux37~9_combout\ & !\U1|LessThan4~17_cout\)) # (!\U1|Mux21~4_combout\ & ((\U1|Mux37~9_combout\) # (!\U1|LessThan4~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux21~4_combout\,
	datab => \U1|Mux37~9_combout\,
	datad => VCC,
	cin => \U1|LessThan4~17_cout\,
	cout => \U1|LessThan4~19_cout\);

-- Location: LCCOMB_X47_Y48_N20
\U1|LessThan4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~21_cout\ = CARRY((\U1|Mux20~4_combout\ & ((!\U1|LessThan4~19_cout\) # (!\U1|Mux36~9_combout\))) # (!\U1|Mux20~4_combout\ & (!\U1|Mux36~9_combout\ & !\U1|LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux20~4_combout\,
	datab => \U1|Mux36~9_combout\,
	datad => VCC,
	cin => \U1|LessThan4~19_cout\,
	cout => \U1|LessThan4~21_cout\);

-- Location: LCCOMB_X47_Y48_N22
\U1|LessThan4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~23_cout\ = CARRY((\U1|Mux35~9_combout\ & ((!\U1|LessThan4~21_cout\) # (!\U1|Mux19~4_combout\))) # (!\U1|Mux35~9_combout\ & (!\U1|Mux19~4_combout\ & !\U1|LessThan4~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux35~9_combout\,
	datab => \U1|Mux19~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~21_cout\,
	cout => \U1|LessThan4~23_cout\);

-- Location: LCCOMB_X47_Y48_N24
\U1|LessThan4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~25_cout\ = CARRY((\U1|Mux34~9_combout\ & (\U1|Mux18~4_combout\ & !\U1|LessThan4~23_cout\)) # (!\U1|Mux34~9_combout\ & ((\U1|Mux18~4_combout\) # (!\U1|LessThan4~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux34~9_combout\,
	datab => \U1|Mux18~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~23_cout\,
	cout => \U1|LessThan4~25_cout\);

-- Location: LCCOMB_X47_Y48_N26
\U1|LessThan4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~27_cout\ = CARRY((\U1|Mux17~4_combout\ & (\U1|Mux33~9_combout\ & !\U1|LessThan4~25_cout\)) # (!\U1|Mux17~4_combout\ & ((\U1|Mux33~9_combout\) # (!\U1|LessThan4~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux17~4_combout\,
	datab => \U1|Mux33~9_combout\,
	datad => VCC,
	cin => \U1|LessThan4~25_cout\,
	cout => \U1|LessThan4~27_cout\);

-- Location: LCCOMB_X47_Y48_N28
\U1|LessThan4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~29_cout\ = CARRY((\U1|Mux32~9_combout\ & (\U1|Mux16~4_combout\ & !\U1|LessThan4~27_cout\)) # (!\U1|Mux32~9_combout\ & ((\U1|Mux16~4_combout\) # (!\U1|LessThan4~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux32~9_combout\,
	datab => \U1|Mux16~4_combout\,
	datad => VCC,
	cin => \U1|LessThan4~27_cout\,
	cout => \U1|LessThan4~29_cout\);

-- Location: LCCOMB_X47_Y48_N30
\U1|LessThan4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan4~30_combout\ = (\U1|Mux31~9_combout\ & (\U1|LessThan4~29_cout\ & \U1|Mux15~4_combout\)) # (!\U1|Mux31~9_combout\ & ((\U1|LessThan4~29_cout\) # (\U1|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux31~9_combout\,
	datad => \U1|Mux15~4_combout\,
	cin => \U1|LessThan4~29_cout\,
	combout => \U1|LessThan4~30_combout\);

-- Location: LCCOMB_X49_Y47_N18
\U1|v_res~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~8_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux15~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux31~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux31~9_combout\,
	datac => \U1|LessThan4~30_combout\,
	datad => \U1|Mux15~4_combout\,
	combout => \U1|v_res~8_combout\);

-- Location: LCCOMB_X49_Y47_N12
\U1|v_res~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~9_combout\ = (\U1|LessThan4~30_combout\ & (\U1|Mux16~4_combout\)) # (!\U1|LessThan4~30_combout\ & ((\U1|Mux32~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux16~4_combout\,
	datab => \U1|Mux32~9_combout\,
	datac => \U1|LessThan4~30_combout\,
	combout => \U1|v_res~9_combout\);

-- Location: LCCOMB_X47_Y51_N10
\U1|v_res~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~10_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux17~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux33~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux33~9_combout\,
	datac => \U1|LessThan4~30_combout\,
	datad => \U1|Mux17~4_combout\,
	combout => \U1|v_res~10_combout\);

-- Location: LCCOMB_X47_Y47_N20
\U1|v_res~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~11_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux18~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux34~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux34~9_combout\,
	datac => \U1|LessThan4~30_combout\,
	datad => \U1|Mux18~4_combout\,
	combout => \U1|v_res~11_combout\);

-- Location: LCCOMB_X49_Y47_N22
\U1|v_res~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~12_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux19~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux35~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux35~9_combout\,
	datac => \U1|LessThan4~30_combout\,
	datad => \U1|Mux19~4_combout\,
	combout => \U1|v_res~12_combout\);

-- Location: LCCOMB_X47_Y47_N22
\U1|v_res~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~13_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux20~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux36~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux36~9_combout\,
	datab => \U1|LessThan4~30_combout\,
	datac => \U1|Mux20~4_combout\,
	combout => \U1|v_res~13_combout\);

-- Location: LCCOMB_X47_Y47_N24
\U1|v_res~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~14_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux21~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux37~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux37~9_combout\,
	datab => \U1|Mux21~4_combout\,
	datac => \U1|LessThan4~30_combout\,
	combout => \U1|v_res~14_combout\);

-- Location: LCCOMB_X48_Y48_N10
\U1|v_res~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~15_combout\ = (\U1|LessThan4~30_combout\ & (\U1|Mux22~4_combout\)) # (!\U1|LessThan4~30_combout\ & ((\U1|Mux38~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan4~30_combout\,
	datac => \U1|Mux22~4_combout\,
	datad => \U1|Mux38~9_combout\,
	combout => \U1|v_res~15_combout\);

-- Location: LCCOMB_X47_Y47_N18
\U1|v_res~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~16_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux23~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux39~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux39~9_combout\,
	datab => \U1|Mux23~4_combout\,
	datac => \U1|LessThan4~30_combout\,
	combout => \U1|v_res~16_combout\);

-- Location: LCCOMB_X47_Y47_N28
\U1|v_res~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~17_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux24~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux40~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux40~9_combout\,
	datac => \U1|LessThan4~30_combout\,
	datad => \U1|Mux24~4_combout\,
	combout => \U1|v_res~17_combout\);

-- Location: LCCOMB_X47_Y47_N30
\U1|v_res~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~18_combout\ = (\U1|LessThan4~30_combout\ & (\U1|Mux25~4_combout\)) # (!\U1|LessThan4~30_combout\ & ((\U1|Mux41~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux25~4_combout\,
	datac => \U1|LessThan4~30_combout\,
	datad => \U1|Mux41~9_combout\,
	combout => \U1|v_res~18_combout\);

-- Location: LCCOMB_X48_Y48_N4
\U1|v_res~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~19_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux26~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux42~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan4~30_combout\,
	datac => \U1|Mux42~9_combout\,
	datad => \U1|Mux26~4_combout\,
	combout => \U1|v_res~19_combout\);

-- Location: LCCOMB_X47_Y47_N16
\U1|v_res~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~20_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux27~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux43~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux43~9_combout\,
	datab => \U1|Mux27~4_combout\,
	datac => \U1|LessThan4~30_combout\,
	combout => \U1|v_res~20_combout\);

-- Location: LCCOMB_X47_Y47_N10
\U1|v_res~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~21_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux28~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux44~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux44~9_combout\,
	datab => \U1|LessThan4~30_combout\,
	datac => \U1|Mux28~4_combout\,
	combout => \U1|v_res~21_combout\);

-- Location: LCCOMB_X47_Y47_N4
\U1|v_res~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~22_combout\ = (\U1|LessThan4~30_combout\ & (\U1|Mux29~4_combout\)) # (!\U1|LessThan4~30_combout\ & ((\U1|Mux45~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux29~4_combout\,
	datab => \U1|Mux45~9_combout\,
	datac => \U1|LessThan4~30_combout\,
	combout => \U1|v_res~22_combout\);

-- Location: LCCOMB_X47_Y47_N6
\U1|v_res~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~23_combout\ = (\U1|LessThan4~30_combout\ & ((\U1|Mux30~4_combout\))) # (!\U1|LessThan4~30_combout\ & (\U1|Mux46~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan4~30_combout\,
	datac => \U1|Mux46~9_combout\,
	datad => \U1|Mux30~4_combout\,
	combout => \U1|v_res~23_combout\);

-- Location: LCCOMB_X48_Y47_N0
\U1|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~1_cout\ = CARRY((!\U1|Add2~0_combout\ & \U1|v_res~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~0_combout\,
	datab => \U1|v_res~23_combout\,
	datad => VCC,
	cout => \U1|LessThan5~1_cout\);

-- Location: LCCOMB_X48_Y47_N2
\U1|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~3_cout\ = CARRY((\U1|Add2~2_combout\ & ((!\U1|LessThan5~1_cout\) # (!\U1|v_res~22_combout\))) # (!\U1|Add2~2_combout\ & (!\U1|v_res~22_combout\ & !\U1|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~2_combout\,
	datab => \U1|v_res~22_combout\,
	datad => VCC,
	cin => \U1|LessThan5~1_cout\,
	cout => \U1|LessThan5~3_cout\);

-- Location: LCCOMB_X48_Y47_N4
\U1|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~5_cout\ = CARRY((\U1|v_res~21_combout\ & ((!\U1|LessThan5~3_cout\) # (!\U1|Add2~4_combout\))) # (!\U1|v_res~21_combout\ & (!\U1|Add2~4_combout\ & !\U1|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~21_combout\,
	datab => \U1|Add2~4_combout\,
	datad => VCC,
	cin => \U1|LessThan5~3_cout\,
	cout => \U1|LessThan5~5_cout\);

-- Location: LCCOMB_X48_Y47_N6
\U1|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~7_cout\ = CARRY((\U1|v_res~20_combout\ & (\U1|Add2~6_combout\ & !\U1|LessThan5~5_cout\)) # (!\U1|v_res~20_combout\ & ((\U1|Add2~6_combout\) # (!\U1|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~20_combout\,
	datab => \U1|Add2~6_combout\,
	datad => VCC,
	cin => \U1|LessThan5~5_cout\,
	cout => \U1|LessThan5~7_cout\);

-- Location: LCCOMB_X48_Y47_N8
\U1|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~9_cout\ = CARRY((\U1|Add2~8_combout\ & (\U1|v_res~19_combout\ & !\U1|LessThan5~7_cout\)) # (!\U1|Add2~8_combout\ & ((\U1|v_res~19_combout\) # (!\U1|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~8_combout\,
	datab => \U1|v_res~19_combout\,
	datad => VCC,
	cin => \U1|LessThan5~7_cout\,
	cout => \U1|LessThan5~9_cout\);

-- Location: LCCOMB_X48_Y47_N10
\U1|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~11_cout\ = CARRY((\U1|Add2~10_combout\ & ((!\U1|LessThan5~9_cout\) # (!\U1|v_res~18_combout\))) # (!\U1|Add2~10_combout\ & (!\U1|v_res~18_combout\ & !\U1|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~10_combout\,
	datab => \U1|v_res~18_combout\,
	datad => VCC,
	cin => \U1|LessThan5~9_cout\,
	cout => \U1|LessThan5~11_cout\);

-- Location: LCCOMB_X48_Y47_N12
\U1|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~13_cout\ = CARRY((\U1|Add2~12_combout\ & (\U1|v_res~17_combout\ & !\U1|LessThan5~11_cout\)) # (!\U1|Add2~12_combout\ & ((\U1|v_res~17_combout\) # (!\U1|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~12_combout\,
	datab => \U1|v_res~17_combout\,
	datad => VCC,
	cin => \U1|LessThan5~11_cout\,
	cout => \U1|LessThan5~13_cout\);

-- Location: LCCOMB_X48_Y47_N14
\U1|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~15_cout\ = CARRY((\U1|Add2~14_combout\ & ((!\U1|LessThan5~13_cout\) # (!\U1|v_res~16_combout\))) # (!\U1|Add2~14_combout\ & (!\U1|v_res~16_combout\ & !\U1|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~14_combout\,
	datab => \U1|v_res~16_combout\,
	datad => VCC,
	cin => \U1|LessThan5~13_cout\,
	cout => \U1|LessThan5~15_cout\);

-- Location: LCCOMB_X48_Y47_N16
\U1|LessThan5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~17_cout\ = CARRY((\U1|Add2~16_combout\ & (\U1|v_res~15_combout\ & !\U1|LessThan5~15_cout\)) # (!\U1|Add2~16_combout\ & ((\U1|v_res~15_combout\) # (!\U1|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~16_combout\,
	datab => \U1|v_res~15_combout\,
	datad => VCC,
	cin => \U1|LessThan5~15_cout\,
	cout => \U1|LessThan5~17_cout\);

-- Location: LCCOMB_X48_Y47_N18
\U1|LessThan5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~19_cout\ = CARRY((\U1|Add2~18_combout\ & ((!\U1|LessThan5~17_cout\) # (!\U1|v_res~14_combout\))) # (!\U1|Add2~18_combout\ & (!\U1|v_res~14_combout\ & !\U1|LessThan5~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~18_combout\,
	datab => \U1|v_res~14_combout\,
	datad => VCC,
	cin => \U1|LessThan5~17_cout\,
	cout => \U1|LessThan5~19_cout\);

-- Location: LCCOMB_X48_Y47_N20
\U1|LessThan5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~21_cout\ = CARRY((\U1|Add2~20_combout\ & (\U1|v_res~13_combout\ & !\U1|LessThan5~19_cout\)) # (!\U1|Add2~20_combout\ & ((\U1|v_res~13_combout\) # (!\U1|LessThan5~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~20_combout\,
	datab => \U1|v_res~13_combout\,
	datad => VCC,
	cin => \U1|LessThan5~19_cout\,
	cout => \U1|LessThan5~21_cout\);

-- Location: LCCOMB_X48_Y47_N22
\U1|LessThan5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~23_cout\ = CARRY((\U1|Add2~22_combout\ & ((!\U1|LessThan5~21_cout\) # (!\U1|v_res~12_combout\))) # (!\U1|Add2~22_combout\ & (!\U1|v_res~12_combout\ & !\U1|LessThan5~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~22_combout\,
	datab => \U1|v_res~12_combout\,
	datad => VCC,
	cin => \U1|LessThan5~21_cout\,
	cout => \U1|LessThan5~23_cout\);

-- Location: LCCOMB_X48_Y47_N24
\U1|LessThan5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~25_cout\ = CARRY((\U1|Add2~24_combout\ & (\U1|v_res~11_combout\ & !\U1|LessThan5~23_cout\)) # (!\U1|Add2~24_combout\ & ((\U1|v_res~11_combout\) # (!\U1|LessThan5~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~24_combout\,
	datab => \U1|v_res~11_combout\,
	datad => VCC,
	cin => \U1|LessThan5~23_cout\,
	cout => \U1|LessThan5~25_cout\);

-- Location: LCCOMB_X48_Y47_N26
\U1|LessThan5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~27_cout\ = CARRY((\U1|v_res~10_combout\ & (\U1|Add2~26_combout\ & !\U1|LessThan5~25_cout\)) # (!\U1|v_res~10_combout\ & ((\U1|Add2~26_combout\) # (!\U1|LessThan5~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~10_combout\,
	datab => \U1|Add2~26_combout\,
	datad => VCC,
	cin => \U1|LessThan5~25_cout\,
	cout => \U1|LessThan5~27_cout\);

-- Location: LCCOMB_X48_Y47_N28
\U1|LessThan5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~29_cout\ = CARRY((\U1|Add2~28_combout\ & (\U1|v_res~9_combout\ & !\U1|LessThan5~27_cout\)) # (!\U1|Add2~28_combout\ & ((\U1|v_res~9_combout\) # (!\U1|LessThan5~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~28_combout\,
	datab => \U1|v_res~9_combout\,
	datad => VCC,
	cin => \U1|LessThan5~27_cout\,
	cout => \U1|LessThan5~29_cout\);

-- Location: LCCOMB_X48_Y47_N30
\U1|LessThan5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~30_combout\ = (\U1|Add2~30_combout\ & (\U1|LessThan5~29_cout\ & \U1|v_res~8_combout\)) # (!\U1|Add2~30_combout\ & ((\U1|LessThan5~29_cout\) # (\U1|v_res~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~30_combout\,
	datad => \U1|v_res~8_combout\,
	cin => \U1|LessThan5~29_cout\,
	combout => \U1|LessThan5~30_combout\);

-- Location: LCCOMB_X49_Y47_N0
\U1|fl_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|fl_carry~0_combout\ = (\U1|Mux1~8_combout\ & ((\U1|LessThan5~30_combout\))) # (!\U1|Mux1~8_combout\ & (\U1|LessThan1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan1~30_combout\,
	datab => \U1|Mux1~8_combout\,
	datad => \U1|LessThan5~30_combout\,
	combout => \U1|fl_carry~0_combout\);

-- Location: LCCOMB_X48_Y46_N14
\U1|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~4_cout\ = CARRY((!\U1|Mux30~4_combout\ & \U1|Mux14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux30~4_combout\,
	datab => \U1|Mux14~6_combout\,
	datad => VCC,
	cout => \U1|LessThan2~4_cout\);

-- Location: LCCOMB_X48_Y46_N16
\U1|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~6_cout\ = CARRY((\U1|Mux13~5_combout\ & (\U1|Mux29~4_combout\ & !\U1|LessThan2~4_cout\)) # (!\U1|Mux13~5_combout\ & ((\U1|Mux29~4_combout\) # (!\U1|LessThan2~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux29~4_combout\,
	datad => VCC,
	cin => \U1|LessThan2~4_cout\,
	cout => \U1|LessThan2~6_cout\);

-- Location: LCCOMB_X48_Y46_N18
\U1|LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~8_cout\ = CARRY((\U1|Mux28~4_combout\ & (\U1|Mux12~3_combout\ & !\U1|LessThan2~6_cout\)) # (!\U1|Mux28~4_combout\ & ((\U1|Mux12~3_combout\) # (!\U1|LessThan2~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux28~4_combout\,
	datab => \U1|Mux12~3_combout\,
	datad => VCC,
	cin => \U1|LessThan2~6_cout\,
	cout => \U1|LessThan2~8_cout\);

-- Location: LCCOMB_X48_Y46_N20
\U1|LessThan2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~10_cout\ = CARRY((\U1|Mux27~4_combout\ & ((!\U1|LessThan2~8_cout\) # (!\U1|Mux11~5_combout\))) # (!\U1|Mux27~4_combout\ & (!\U1|Mux11~5_combout\ & !\U1|LessThan2~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux27~4_combout\,
	datab => \U1|Mux11~5_combout\,
	datad => VCC,
	cin => \U1|LessThan2~8_cout\,
	cout => \U1|LessThan2~10_cout\);

-- Location: LCCOMB_X48_Y46_N22
\U1|LessThan2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~12_cout\ = CARRY((\U1|Mux10~12_combout\ & ((!\U1|LessThan2~10_cout\) # (!\U1|Mux26~4_combout\))) # (!\U1|Mux10~12_combout\ & (!\U1|Mux26~4_combout\ & !\U1|LessThan2~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux10~12_combout\,
	datab => \U1|Mux26~4_combout\,
	datad => VCC,
	cin => \U1|LessThan2~10_cout\,
	cout => \U1|LessThan2~12_cout\);

-- Location: LCCOMB_X48_Y46_N24
\U1|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~14_cout\ = CARRY((\U1|Mux9~5_combout\ & (\U1|Mux25~4_combout\ & !\U1|LessThan2~12_cout\)) # (!\U1|Mux9~5_combout\ & ((\U1|Mux25~4_combout\) # (!\U1|LessThan2~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux25~4_combout\,
	datad => VCC,
	cin => \U1|LessThan2~12_cout\,
	cout => \U1|LessThan2~14_cout\);

-- Location: LCCOMB_X48_Y46_N26
\U1|LessThan2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~16_cout\ = CARRY((\U1|Mux8~6_combout\ & ((!\U1|LessThan2~14_cout\) # (!\U1|Mux24~4_combout\))) # (!\U1|Mux8~6_combout\ & (!\U1|Mux24~4_combout\ & !\U1|LessThan2~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~6_combout\,
	datab => \U1|Mux24~4_combout\,
	datad => VCC,
	cin => \U1|LessThan2~14_cout\,
	cout => \U1|LessThan2~16_cout\);

-- Location: LCCOMB_X48_Y46_N28
\U1|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~17_combout\ = (\U1|Mux7~7_combout\ & ((\U1|LessThan2~16_cout\) # (!\U1|Mux23~4_combout\))) # (!\U1|Mux7~7_combout\ & (\U1|LessThan2~16_cout\ & !\U1|Mux23~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux7~7_combout\,
	datad => \U1|Mux23~4_combout\,
	cin => \U1|LessThan2~16_cout\,
	combout => \U1|LessThan2~17_combout\);

-- Location: LCCOMB_X48_Y46_N8
\U1|v_res~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~24_combout\ = (\U1|LessThan2~2_combout\ & ((\U1|LessThan2~17_combout\ & ((\U1|Mux23~4_combout\))) # (!\U1|LessThan2~17_combout\ & (\U1|Mux7~7_combout\)))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux7~7_combout\,
	datab => \U1|Mux23~4_combout\,
	datac => \U1|LessThan2~2_combout\,
	datad => \U1|LessThan2~17_combout\,
	combout => \U1|v_res~24_combout\);

-- Location: LCCOMB_X48_Y46_N10
\U1|v_res~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~25_combout\ = (\U1|LessThan2~2_combout\ & ((\U1|LessThan2~17_combout\ & ((\U1|Mux24~4_combout\))) # (!\U1|LessThan2~17_combout\ & (\U1|Mux8~6_combout\)))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux8~6_combout\,
	datab => \U1|LessThan2~2_combout\,
	datac => \U1|Mux24~4_combout\,
	datad => \U1|LessThan2~17_combout\,
	combout => \U1|v_res~25_combout\);

-- Location: LCCOMB_X48_Y46_N4
\U1|v_res~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~26_combout\ = (\U1|LessThan2~2_combout\ & ((\U1|LessThan2~17_combout\ & ((\U1|Mux25~4_combout\))) # (!\U1|LessThan2~17_combout\ & (\U1|Mux9~5_combout\)))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux9~5_combout\,
	datab => \U1|Mux25~4_combout\,
	datac => \U1|LessThan2~2_combout\,
	datad => \U1|LessThan2~17_combout\,
	combout => \U1|v_res~26_combout\);

-- Location: LCCOMB_X48_Y45_N16
\U1|v_res~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~27_combout\ = (\U1|LessThan2~17_combout\ & ((\U1|LessThan2~2_combout\ & ((\U1|Mux26~4_combout\))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux10~12_combout\)))) # (!\U1|LessThan2~17_combout\ & (\U1|Mux10~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan2~17_combout\,
	datab => \U1|Mux10~12_combout\,
	datac => \U1|LessThan2~2_combout\,
	datad => \U1|Mux26~4_combout\,
	combout => \U1|v_res~27_combout\);

-- Location: LCCOMB_X48_Y46_N6
\U1|v_res~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~28_combout\ = (\U1|LessThan2~2_combout\ & ((\U1|LessThan2~17_combout\ & ((\U1|Mux27~4_combout\))) # (!\U1|LessThan2~17_combout\ & (\U1|Mux11~5_combout\)))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux11~5_combout\,
	datab => \U1|LessThan2~2_combout\,
	datac => \U1|Mux27~4_combout\,
	datad => \U1|LessThan2~17_combout\,
	combout => \U1|v_res~28_combout\);

-- Location: LCCOMB_X48_Y46_N0
\U1|v_res~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~29_combout\ = (\U1|LessThan2~2_combout\ & ((\U1|LessThan2~17_combout\ & (\U1|Mux28~4_combout\)) # (!\U1|LessThan2~17_combout\ & ((\U1|Mux12~3_combout\))))) # (!\U1|LessThan2~2_combout\ & (((\U1|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux28~4_combout\,
	datab => \U1|LessThan2~2_combout\,
	datac => \U1|Mux12~3_combout\,
	datad => \U1|LessThan2~17_combout\,
	combout => \U1|v_res~29_combout\);

-- Location: LCCOMB_X48_Y46_N2
\U1|v_res~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~30_combout\ = (\U1|LessThan2~2_combout\ & ((\U1|LessThan2~17_combout\ & ((\U1|Mux29~4_combout\))) # (!\U1|LessThan2~17_combout\ & (\U1|Mux13~5_combout\)))) # (!\U1|LessThan2~2_combout\ & (\U1|Mux13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux13~5_combout\,
	datab => \U1|Mux29~4_combout\,
	datac => \U1|LessThan2~2_combout\,
	datad => \U1|LessThan2~17_combout\,
	combout => \U1|v_res~30_combout\);

-- Location: LCCOMB_X48_Y46_N12
\U1|v_res~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_res~31_combout\ = (\U1|LessThan2~2_combout\ & ((\U1|LessThan2~17_combout\ & (\U1|Mux30~4_combout\)) # (!\U1|LessThan2~17_combout\ & ((\U1|Mux14~6_combout\))))) # (!\U1|LessThan2~2_combout\ & (((\U1|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux30~4_combout\,
	datab => \U1|Mux14~6_combout\,
	datac => \U1|LessThan2~2_combout\,
	datad => \U1|LessThan2~17_combout\,
	combout => \U1|v_res~31_combout\);

-- Location: LCCOMB_X49_Y45_N4
\U1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~1_cout\ = CARRY((!\U1|v_res~31_combout\ & \U1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~31_combout\,
	datab => \U1|Add1~0_combout\,
	datad => VCC,
	cout => \U1|LessThan3~1_cout\);

-- Location: LCCOMB_X49_Y45_N6
\U1|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~3_cout\ = CARRY((\U1|v_res~30_combout\ & ((!\U1|LessThan3~1_cout\) # (!\U1|Add1~2_combout\))) # (!\U1|v_res~30_combout\ & (!\U1|Add1~2_combout\ & !\U1|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~30_combout\,
	datab => \U1|Add1~2_combout\,
	datad => VCC,
	cin => \U1|LessThan3~1_cout\,
	cout => \U1|LessThan3~3_cout\);

-- Location: LCCOMB_X49_Y45_N8
\U1|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~5_cout\ = CARRY((\U1|Add1~4_combout\ & ((!\U1|LessThan3~3_cout\) # (!\U1|v_res~29_combout\))) # (!\U1|Add1~4_combout\ & (!\U1|v_res~29_combout\ & !\U1|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~4_combout\,
	datab => \U1|v_res~29_combout\,
	datad => VCC,
	cin => \U1|LessThan3~3_cout\,
	cout => \U1|LessThan3~5_cout\);

-- Location: LCCOMB_X49_Y45_N10
\U1|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~7_cout\ = CARRY((\U1|Add1~6_combout\ & (\U1|v_res~28_combout\ & !\U1|LessThan3~5_cout\)) # (!\U1|Add1~6_combout\ & ((\U1|v_res~28_combout\) # (!\U1|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~6_combout\,
	datab => \U1|v_res~28_combout\,
	datad => VCC,
	cin => \U1|LessThan3~5_cout\,
	cout => \U1|LessThan3~7_cout\);

-- Location: LCCOMB_X49_Y45_N12
\U1|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~9_cout\ = CARRY((\U1|v_res~27_combout\ & (\U1|Add1~8_combout\ & !\U1|LessThan3~7_cout\)) # (!\U1|v_res~27_combout\ & ((\U1|Add1~8_combout\) # (!\U1|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~27_combout\,
	datab => \U1|Add1~8_combout\,
	datad => VCC,
	cin => \U1|LessThan3~7_cout\,
	cout => \U1|LessThan3~9_cout\);

-- Location: LCCOMB_X49_Y45_N14
\U1|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~11_cout\ = CARRY((\U1|v_res~26_combout\ & ((!\U1|LessThan3~9_cout\) # (!\U1|Add1~10_combout\))) # (!\U1|v_res~26_combout\ & (!\U1|Add1~10_combout\ & !\U1|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_res~26_combout\,
	datab => \U1|Add1~10_combout\,
	datad => VCC,
	cin => \U1|LessThan3~9_cout\,
	cout => \U1|LessThan3~11_cout\);

-- Location: LCCOMB_X49_Y45_N16
\U1|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~13_cout\ = CARRY((\U1|Add1~12_combout\ & ((!\U1|LessThan3~11_cout\) # (!\U1|v_res~25_combout\))) # (!\U1|Add1~12_combout\ & (!\U1|v_res~25_combout\ & !\U1|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~12_combout\,
	datab => \U1|v_res~25_combout\,
	datad => VCC,
	cin => \U1|LessThan3~11_cout\,
	cout => \U1|LessThan3~13_cout\);

-- Location: LCCOMB_X49_Y45_N18
\U1|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~15_cout\ = CARRY((\U1|Add1~14_combout\ & (\U1|v_res~24_combout\ & !\U1|LessThan3~13_cout\)) # (!\U1|Add1~14_combout\ & ((\U1|v_res~24_combout\) # (!\U1|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~14_combout\,
	datab => \U1|v_res~24_combout\,
	datad => VCC,
	cin => \U1|LessThan3~13_cout\,
	cout => \U1|LessThan3~15_cout\);

-- Location: LCCOMB_X49_Y45_N20
\U1|LessThan3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~17_cout\ = CARRY((\U1|Add1~16_combout\) # (!\U1|LessThan3~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add1~16_combout\,
	datad => VCC,
	cin => \U1|LessThan3~15_cout\,
	cout => \U1|LessThan3~17_cout\);

-- Location: LCCOMB_X49_Y45_N22
\U1|LessThan3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~19_cout\ = CARRY((!\U1|Add1~18_combout\ & !\U1|LessThan3~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add1~18_combout\,
	datad => VCC,
	cin => \U1|LessThan3~17_cout\,
	cout => \U1|LessThan3~19_cout\);

-- Location: LCCOMB_X49_Y45_N24
\U1|LessThan3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~21_cout\ = CARRY((\U1|Add1~20_combout\) # (!\U1|LessThan3~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add1~20_combout\,
	datad => VCC,
	cin => \U1|LessThan3~19_cout\,
	cout => \U1|LessThan3~21_cout\);

-- Location: LCCOMB_X49_Y45_N26
\U1|LessThan3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~22_combout\ = (\U1|Add1~22_combout\) # (\U1|LessThan3~21_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~22_combout\,
	cin => \U1|LessThan3~21_cout\,
	combout => \U1|LessThan3~22_combout\);

-- Location: LCCOMB_X49_Y47_N8
\U1|LessThan3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan3~24_combout\ = (\U1|LessThan3~22_combout\) # (!\U1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~0_combout\,
	datad => \U1|LessThan3~22_combout\,
	combout => \U1|LessThan3~24_combout\);

-- Location: FF_X49_Y47_N1
\U1|fl_carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|fl_carry~0_combout\,
	asdata => \U1|LessThan3~24_combout\,
	sload => \U1|Mux0~6_combout\,
	ena => \U1|fl_zero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|fl_carry~q\);

-- Location: FF_X41_Y47_N31
\U1|Hex_Display_Data[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|fl_carry~q\,
	sload => VCC,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(63));

-- Location: LCCOMB_X41_Y47_N30
\U2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~4_combout\ = (!\U2|CHAR_COUNT\(0) & (!\U2|CHAR_COUNT\(1) & (\U1|Hex_Display_Data\(63) & !\U2|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(0),
	datab => \U2|CHAR_COUNT\(1),
	datac => \U1|Hex_Display_Data\(63),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux3~4_combout\);

-- Location: LCCOMB_X42_Y49_N18
\U1|Mux315~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux315~3_combout\ = (!\U1|Mux316~3_combout\ & ((\U1|Mux315~2_combout\) # ((\U1|Mux0~6_combout\ & \U1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux315~2_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add1~14_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux315~3_combout\);

-- Location: FF_X42_Y49_N19
\U1|Hex_Display_Data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux315~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(23));

-- Location: LCCOMB_X42_Y49_N16
\U1|Mux319~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux319~3_combout\ = (!\U1|Mux316~3_combout\ & ((\U1|Mux319~2_combout\) # ((\U1|Mux0~6_combout\ & \U1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux319~2_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => \U1|Add1~6_combout\,
	datad => \U1|Mux316~3_combout\,
	combout => \U1|Mux319~3_combout\);

-- Location: FF_X42_Y49_N17
\U1|Hex_Display_Data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux319~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(19));

-- Location: LCCOMB_X41_Y49_N2
\U2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~1_combout\ = (\U2|CHAR_COUNT\(4) & (((\U2|CHAR_COUNT\(0))))) # (!\U2|CHAR_COUNT\(4) & ((\U2|CHAR_COUNT\(0) & ((\U1|Hex_Display_Data\(19)))) # (!\U2|CHAR_COUNT\(0) & (\U1|Hex_Display_Data\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U1|Hex_Display_Data\(23),
	datac => \U2|CHAR_COUNT\(0),
	datad => \U1|Hex_Display_Data\(19),
	combout => \U2|Mux3~1_combout\);

-- Location: FF_X41_Y49_N13
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
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(11));

-- Location: LCCOMB_X41_Y49_N16
\U1|Hex_Display_Data[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Hex_Display_Data[15]~feeder_combout\ = \U1|PC\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PC\(15),
	combout => \U1|Hex_Display_Data[15]~feeder_combout\);

-- Location: FF_X41_Y49_N17
\U1|Hex_Display_Data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Hex_Display_Data[15]~feeder_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(15));

-- Location: LCCOMB_X41_Y49_N12
\U2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~2_combout\ = (\U2|CHAR_COUNT\(4) & ((\U2|Mux3~1_combout\ & (\U1|Hex_Display_Data\(11))) # (!\U2|Mux3~1_combout\ & ((\U1|Hex_Display_Data\(15)))))) # (!\U2|CHAR_COUNT\(4) & (\U2|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|Mux3~1_combout\,
	datac => \U1|Hex_Display_Data\(11),
	datad => \U1|Hex_Display_Data\(15),
	combout => \U2|Mux3~2_combout\);

-- Location: LCCOMB_X41_Y47_N20
\U2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~3_combout\ = (\U2|Mux3~2_combout\ & (\U2|CHAR_COUNT\(2) $ (!\U2|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(2),
	datac => \U2|CHAR_COUNT\(4),
	datad => \U2|Mux3~2_combout\,
	combout => \U2|Mux3~3_combout\);

-- Location: LCCOMB_X41_Y47_N16
\U2|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~5_combout\ = (\U2|Mux6~0_combout\ & (!\U2|Mux6~1_combout\)) # (!\U2|Mux6~0_combout\ & ((\U2|Mux6~1_combout\ & ((\U2|Mux3~3_combout\))) # (!\U2|Mux6~1_combout\ & (\U2|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux6~0_combout\,
	datab => \U2|Mux6~1_combout\,
	datac => \U2|Mux3~4_combout\,
	datad => \U2|Mux3~3_combout\,
	combout => \U2|Mux3~5_combout\);

-- Location: FF_X41_Y47_N25
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
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(3));

-- Location: LCCOMB_X41_Y47_N24
\U2|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~6_combout\ = (\U2|Mux3~5_combout\ & ((\U2|Mux3~0_combout\) # ((!\U2|Mux6~2_combout\)))) # (!\U2|Mux3~5_combout\ & (((\U1|Hex_Display_Data\(3) & \U2|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux3~5_combout\,
	datac => \U1|Hex_Display_Data\(3),
	datad => \U2|Mux6~2_combout\,
	combout => \U2|Mux3~6_combout\);

-- Location: LCCOMB_X42_Y49_N4
\U1|Mux311~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux311~3_combout\ = (!\U1|Mux316~3_combout\ & ((\U1|Mux311~2_combout\) # ((\U1|Mux0~6_combout\ & \U1|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~6_combout\,
	datab => \U1|Mux316~3_combout\,
	datac => \U1|Add1~22_combout\,
	datad => \U1|Mux311~2_combout\,
	combout => \U1|Mux311~3_combout\);

-- Location: FF_X42_Y49_N5
\U1|Hex_Display_Data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux311~3_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(27));

-- Location: LCCOMB_X41_Y49_N30
\U2|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~9_combout\ = (\U2|CHAR_COUNT\(0) & (\U2|CHAR_COUNT\(2) & ((\U1|Hex_Display_Data\(27)) # (!\U2|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Hex_Display_Data\(27),
	datab => \U2|CHAR_COUNT\(0),
	datac => \U2|CHAR_COUNT\(1),
	datad => \U2|CHAR_COUNT\(2),
	combout => \U2|Mux3~9_combout\);

-- Location: LCCOMB_X42_Y48_N12
\U1|Mux307~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux307~4_combout\ = (!\U1|Mux1~8_combout\ & ((!\U1|Mux10~4_combout\) # (!\U1|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux3~7_combout\,
	datac => \U1|Mux1~8_combout\,
	datad => \U1|Mux10~4_combout\,
	combout => \U1|Mux307~4_combout\);

-- Location: LCCOMB_X42_Y48_N10
\U1|Mux307~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux307~3_combout\ = (\U1|Add1~30_combout\ & ((\U1|Mux307~7_combout\) # ((\U1|Mux307~2_combout\ & \U1|Add0~30_combout\)))) # (!\U1|Add1~30_combout\ & (((\U1|Mux307~2_combout\ & \U1|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~30_combout\,
	datab => \U1|Mux307~7_combout\,
	datac => \U1|Mux307~2_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|Mux307~3_combout\);

-- Location: LCCOMB_X42_Y48_N24
\U1|Mux307~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux307~6_combout\ = (\U1|Mux307~4_combout\ & ((\U1|Mux307~3_combout\) # ((\U1|Mux307~5_combout\ & \U1|Add2~30_combout\)))) # (!\U1|Mux307~4_combout\ & (\U1|Mux307~5_combout\ & (\U1|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux307~4_combout\,
	datab => \U1|Mux307~5_combout\,
	datac => \U1|Add2~30_combout\,
	datad => \U1|Mux307~3_combout\,
	combout => \U1|Mux307~6_combout\);

-- Location: FF_X42_Y48_N25
\U1|Hex_Display_Data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Mux307~6_combout\,
	ena => \U1|Hex_Display_Data[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Hex_Display_Data\(31));

-- Location: LCCOMB_X40_Y49_N18
\U2|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~8_combout\ = (\U2|CHAR_COUNT\(1) & (!\U2|CHAR_COUNT\(0) & ((\U1|Hex_Display_Data\(31)) # (!\U2|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(1),
	datab => \U2|CHAR_COUNT\(2),
	datac => \U1|Hex_Display_Data\(31),
	datad => \U2|CHAR_COUNT\(0),
	combout => \U2|Mux3~8_combout\);

-- Location: LCCOMB_X40_Y49_N12
\U2|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mux3~10_combout\ = (\U2|Mux3~7_combout\ & (((\U2|Mux3~9_combout\) # (\U2|Mux3~8_combout\)))) # (!\U2|Mux3~7_combout\ & (\U2|Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~7_combout\,
	datab => \U2|Mux3~6_combout\,
	datac => \U2|Mux3~9_combout\,
	datad => \U2|Mux3~8_combout\,
	combout => \U2|Mux3~10_combout\);

-- Location: LCCOMB_X31_Y48_N16
\U2|DATA_BUS_VALUE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|DATA_BUS_VALUE~0_combout\ = (\U2|Equal0~0_combout\ & (\U2|Mux3~10_combout\ & ((\U2|Mux4~9_combout\) # (\U2|Mux5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~0_combout\,
	datab => \U2|Mux4~9_combout\,
	datac => \U2|Mux5~11_combout\,
	datad => \U2|Mux3~10_combout\,
	combout => \U2|DATA_BUS_VALUE~0_combout\);

-- Location: LCCOMB_X31_Y48_N24
\U2|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector9~1_combout\ = (\U2|Selector9~0_combout\) # ((\U2|state.Print_String~q\ & (\U2|Mux6~12_combout\ $ (\U2|DATA_BUS_VALUE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.Print_String~q\,
	datab => \U2|Selector9~0_combout\,
	datac => \U2|Mux6~12_combout\,
	datad => \U2|DATA_BUS_VALUE~0_combout\,
	combout => \U2|Selector9~1_combout\);

-- Location: FF_X31_Y48_N25
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

-- Location: LCCOMB_X31_Y48_N18
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

-- Location: LCCOMB_X31_Y48_N14
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

-- Location: FF_X31_Y48_N19
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

-- Location: LCCOMB_X31_Y48_N26
\U2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~0_combout\ = (\U2|state.Print_String~q\ & (\U2|Mux5~11_combout\ $ (((!\U2|Mux6~12_combout\ & \U2|DATA_BUS_VALUE~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~11_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Mux6~12_combout\,
	datad => \U2|DATA_BUS_VALUE~0_combout\,
	combout => \U2|Selector8~0_combout\);

-- Location: LCCOMB_X30_Y48_N24
\U2|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~1_combout\ = (\U2|state.MODE_SET~q\) # ((\U2|Selector8~0_combout\) # ((!\U2|LCD_RS~0_combout\ & \U2|DATA_BUS_VALUE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LCD_RS~0_combout\,
	datab => \U2|state.MODE_SET~q\,
	datac => \U2|DATA_BUS_VALUE\(1),
	datad => \U2|Selector8~0_combout\,
	combout => \U2|Selector8~1_combout\);

-- Location: FF_X30_Y48_N25
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

-- Location: LCCOMB_X30_Y48_N6
\U2|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~1_combout\ = (\U2|state.DISPLAY_ON~q\) # ((\U2|state.MODE_SET~q\) # ((\U2|DATA_BUS_VALUE\(2) & !\U2|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|DATA_BUS_VALUE\(2),
	datab => \U2|state.DISPLAY_ON~q\,
	datac => \U2|state.MODE_SET~q\,
	datad => \U2|LCD_RS~0_combout\,
	combout => \U2|Selector7~1_combout\);

-- Location: LCCOMB_X35_Y49_N20
\U2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = (\U2|Mux6~12_combout\) # ((\U2|Mux3~7_combout\ & (\U2|Mux5~3_combout\)) # (!\U2|Mux3~7_combout\ & ((\U2|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~7_combout\,
	datab => \U2|Mux6~12_combout\,
	datac => \U2|Mux5~3_combout\,
	datad => \U2|Mux5~10_combout\,
	combout => \U2|Add1~0_combout\);

-- Location: LCCOMB_X31_Y48_N20
\U2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~0_combout\ = (\U2|state.Print_String~q\ & (\U2|Mux4~9_combout\ $ (((!\U2|Add1~0_combout\ & \U2|DATA_BUS_VALUE~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~0_combout\,
	datab => \U2|DATA_BUS_VALUE~0_combout\,
	datac => \U2|Mux4~9_combout\,
	datad => \U2|state.Print_String~q\,
	combout => \U2|Selector7~0_combout\);

-- Location: LCCOMB_X30_Y48_N10
\U2|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~2_combout\ = (\U2|Selector7~1_combout\) # (\U2|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector7~1_combout\,
	datac => \U2|Selector7~0_combout\,
	combout => \U2|Selector7~2_combout\);

-- Location: FF_X30_Y48_N11
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

-- Location: LCCOMB_X30_Y49_N6
\U2|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~1_combout\ = ((!\U2|DATA_BUS_VALUE\(3) & ((\U2|state.DROP_LCD_E~q\) # (\U2|state.HOLD~q\)))) # (!\U2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DROP_LCD_E~q\,
	datab => \U2|DATA_BUS_VALUE\(3),
	datac => \U2|state.HOLD~q\,
	datad => \U2|state.RESET1~q\,
	combout => \U2|Selector6~1_combout\);

-- Location: LCCOMB_X30_Y49_N8
\U2|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~2_combout\ = (\U2|state.DISPLAY_OFF~q\) # ((\U2|state.FUNC_SET~q\) # ((\U2|state.RESET2~q\) # (\U2|state.DISPLAY_ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DISPLAY_OFF~q\,
	datab => \U2|state.FUNC_SET~q\,
	datac => \U2|state.RESET2~q\,
	datad => \U2|state.DISPLAY_ON~q\,
	combout => \U2|Selector6~2_combout\);

-- Location: LCCOMB_X31_Y48_N30
\U2|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add1~1_combout\ = \U2|Mux3~10_combout\ $ (((\U2|Mux5~11_combout\) # ((\U2|Mux6~12_combout\) # (\U2|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux5~11_combout\,
	datab => \U2|Mux6~12_combout\,
	datac => \U2|Mux4~9_combout\,
	datad => \U2|Mux3~10_combout\,
	combout => \U2|Add1~1_combout\);

-- Location: LCCOMB_X31_Y48_N0
\U2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~0_combout\ = (\U2|state.Print_String~q\ & ((\U2|DATA_BUS_VALUE~0_combout\ & (\U2|Add1~1_combout\)) # (!\U2|DATA_BUS_VALUE~0_combout\ & ((\U2|Mux3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.Print_String~q\,
	datab => \U2|DATA_BUS_VALUE~0_combout\,
	datac => \U2|Add1~1_combout\,
	datad => \U2|Mux3~10_combout\,
	combout => \U2|Selector6~0_combout\);

-- Location: LCCOMB_X30_Y49_N24
\U2|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~3_combout\ = (!\U2|Selector6~1_combout\ & (!\U2|state.RESET3~q\ & (!\U2|Selector6~2_combout\ & !\U2|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector6~1_combout\,
	datab => \U2|state.RESET3~q\,
	datac => \U2|Selector6~2_combout\,
	datad => \U2|Selector6~0_combout\,
	combout => \U2|Selector6~3_combout\);

-- Location: FF_X30_Y49_N25
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

-- Location: LCCOMB_X31_Y48_N10
\U2|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~3_combout\ = (\U2|CHAR_COUNT\(4) & (!\U2|Mux1~1_combout\)) # (!\U2|CHAR_COUNT\(4) & (((!\U2|Mux1~1_combout\ & \U2|Mux0~0_combout\)) # (!\U2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux1~1_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux0~0_combout\,
	datad => \U2|CHAR_COUNT\(4),
	combout => \U2|Selector5~3_combout\);

-- Location: LCCOMB_X30_Y48_N0
\U2|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~1_combout\ = (!\U2|state.RETURN_HOME~q\ & (!\U2|state.LINE2~q\ & (!\U2|state.MODE_SET~q\ & !\U2|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.RETURN_HOME~q\,
	datab => \U2|state.LINE2~q\,
	datac => \U2|state.MODE_SET~q\,
	datad => \U2|state.Print_String~q\,
	combout => \U2|Selector5~1_combout\);

-- Location: LCCOMB_X30_Y49_N26
\U2|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~2_combout\ = (!\U2|state.DISPLAY_OFF~q\ & (!\U2|state.DISPLAY_CLEAR~q\ & (\U2|Selector5~1_combout\ & !\U2|state.DISPLAY_ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.DISPLAY_OFF~q\,
	datab => \U2|state.DISPLAY_CLEAR~q\,
	datac => \U2|Selector5~1_combout\,
	datad => \U2|state.DISPLAY_ON~q\,
	combout => \U2|Selector5~2_combout\);

-- Location: LCCOMB_X31_Y48_N2
\U2|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~4_combout\ = (!\U2|Selector5~2_combout\ & (((\U2|DATA_BUS_VALUE~0_combout\) # (!\U2|state.Print_String~q\)) # (!\U2|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector5~3_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Selector5~2_combout\,
	datad => \U2|DATA_BUS_VALUE~0_combout\,
	combout => \U2|Selector5~4_combout\);

-- Location: FF_X31_Y48_N3
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

-- Location: LCCOMB_X31_Y48_N12
\U2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector4~0_combout\ = (\U2|Equal0~0_combout\ & (((!\U2|Mux4~9_combout\ & !\U2|Mux5~11_combout\)) # (!\U2|Mux3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~0_combout\,
	datab => \U2|Mux4~9_combout\,
	datac => \U2|Mux5~11_combout\,
	datad => \U2|Mux3~10_combout\,
	combout => \U2|Selector4~0_combout\);

-- Location: LCCOMB_X31_Y48_N4
\U2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector4~1_combout\ = (!\U2|Selector5~2_combout\ & (((!\U2|Selector4~0_combout\ & !\U2|Mux1~1_combout\)) # (!\U2|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector4~0_combout\,
	datab => \U2|state.Print_String~q\,
	datac => \U2|Selector5~2_combout\,
	datad => \U2|Mux1~1_combout\,
	combout => \U2|Selector4~1_combout\);

-- Location: FF_X31_Y48_N5
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

-- Location: LCCOMB_X31_Y48_N6
\U2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~0_combout\ = (\U2|state.Print_String~q\ & ((\U2|DATA_BUS_VALUE~0_combout\) # ((!\U2|CHAR_COUNT\(4) & !\U2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CHAR_COUNT\(4),
	datab => \U2|state.Print_String~q\,
	datac => \U2|Mux0~0_combout\,
	datad => \U2|DATA_BUS_VALUE~0_combout\,
	combout => \U2|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y48_N20
\U2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~1_combout\ = (\U2|state.LINE2~q\) # ((\U2|Selector3~0_combout\) # ((!\U2|LCD_RS~0_combout\ & \U2|DATA_BUS_VALUE\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.LINE2~q\,
	datab => \U2|LCD_RS~0_combout\,
	datac => \U2|DATA_BUS_VALUE\(6),
	datad => \U2|Selector3~0_combout\,
	combout => \U2|Selector3~1_combout\);

-- Location: FF_X30_Y48_N21
\U2|DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|Selector3~1_combout\,
	clrn => \ALT_INV_SW[7]~input_o\,
	ena => \U2|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X30_Y48_N30
\U2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector2~0_combout\ = (\U2|state.LINE2~q\) # ((\U2|state.RETURN_HOME~q\) # ((!\U2|LCD_RS~0_combout\ & \U2|DATA_BUS_VALUE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.LINE2~q\,
	datab => \U2|LCD_RS~0_combout\,
	datac => \U2|DATA_BUS_VALUE\(7),
	datad => \U2|state.RETURN_HOME~q\,
	combout => \U2|Selector2~0_combout\);

-- Location: FF_X30_Y48_N31
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

-- Location: LCCOMB_X34_Y49_N16
\U2|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LCD_E~0_combout\ = (\U2|state.HOLD~q\ & (((\U2|LCD_E~q\)))) # (!\U2|state.HOLD~q\ & ((\U2|CLK_400HZ_Enable~q\ & (\U2|state.DROP_LCD_E~q\)) # (!\U2|CLK_400HZ_Enable~q\ & ((\U2|LCD_E~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|state.HOLD~q\,
	datab => \U2|state.DROP_LCD_E~q\,
	datac => \U2|LCD_E~q\,
	datad => \U2|CLK_400HZ_Enable~q\,
	combout => \U2|LCD_E~0_combout\);

-- Location: FF_X34_Y49_N17
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

-- Location: LCCOMB_X31_Y48_N8
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

-- Location: FF_X31_Y48_N9
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


