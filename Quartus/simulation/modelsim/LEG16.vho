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

-- DATE "05/04/2022 09:30:05"

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
	VGA_BLANK_N : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0)
	);
END VGA_Test;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U1|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U1|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U1|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
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
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U1|Add5~0_combout\ : std_logic;
SIGNAL \U1|h_count~3_combout\ : std_logic;
SIGNAL \U1|Add5~1\ : std_logic;
SIGNAL \U1|Add5~2_combout\ : std_logic;
SIGNAL \U1|Add5~3\ : std_logic;
SIGNAL \U1|Add5~4_combout\ : std_logic;
SIGNAL \U1|Add5~5\ : std_logic;
SIGNAL \U1|Add5~6_combout\ : std_logic;
SIGNAL \U1|Add5~7\ : std_logic;
SIGNAL \U1|Add5~8_combout\ : std_logic;
SIGNAL \U1|Add5~9\ : std_logic;
SIGNAL \U1|Add5~10_combout\ : std_logic;
SIGNAL \U1|h_count~2_combout\ : std_logic;
SIGNAL \U1|Add5~11\ : std_logic;
SIGNAL \U1|Add5~12_combout\ : std_logic;
SIGNAL \U1|Add5~13\ : std_logic;
SIGNAL \U1|Add5~14_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Add5~15\ : std_logic;
SIGNAL \U1|Add5~16_combout\ : std_logic;
SIGNAL \U1|h_count~1_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Add5~17\ : std_logic;
SIGNAL \U1|Add5~18_combout\ : std_logic;
SIGNAL \U1|h_count~0_combout\ : std_logic;
SIGNAL \U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|video_on_h~q\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|Equal1~1_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|process_0~1_combout\ : std_logic;
SIGNAL \U1|Add6~11\ : std_logic;
SIGNAL \U1|Add6~12_combout\ : std_logic;
SIGNAL \U1|LessThan1~1_combout\ : std_logic;
SIGNAL \U1|Add6~0_combout\ : std_logic;
SIGNAL \U1|v_count~8_combout\ : std_logic;
SIGNAL \U1|Add6~1\ : std_logic;
SIGNAL \U1|Add6~2_combout\ : std_logic;
SIGNAL \U1|v_count~9_combout\ : std_logic;
SIGNAL \U1|Add6~3\ : std_logic;
SIGNAL \U1|Add6~4_combout\ : std_logic;
SIGNAL \U1|v_count[2]~10_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~2_combout\ : std_logic;
SIGNAL \U1|v_count[4]~0_combout\ : std_logic;
SIGNAL \U1|v_count[6]~4_combout\ : std_logic;
SIGNAL \U1|Add6~13\ : std_logic;
SIGNAL \U1|Add6~14_combout\ : std_logic;
SIGNAL \U1|v_count[7]~5_combout\ : std_logic;
SIGNAL \U1|Add6~15\ : std_logic;
SIGNAL \U1|Add6~16_combout\ : std_logic;
SIGNAL \U1|v_count[8]~6_combout\ : std_logic;
SIGNAL \U1|Add6~17\ : std_logic;
SIGNAL \U1|Add6~18_combout\ : std_logic;
SIGNAL \U1|v_count[9]~2_combout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|v_count[9]~1_combout\ : std_logic;
SIGNAL \U1|Add6~5\ : std_logic;
SIGNAL \U1|Add6~6_combout\ : std_logic;
SIGNAL \U1|v_count[3]~11_combout\ : std_logic;
SIGNAL \U1|Add6~7\ : std_logic;
SIGNAL \U1|Add6~8_combout\ : std_logic;
SIGNAL \U1|v_count[4]~7_combout\ : std_logic;
SIGNAL \U1|Add6~9\ : std_logic;
SIGNAL \U1|Add6~10_combout\ : std_logic;
SIGNAL \U1|v_count[5]~3_combout\ : std_logic;
SIGNAL \U1|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|LessThan6~1_combout\ : std_logic;
SIGNAL \U1|LessThan6~2_combout\ : std_logic;
SIGNAL \U1|video_on_v~q\ : std_logic;
SIGNAL \U1|video_on~combout\ : std_logic;
SIGNAL \U1|process_0~5_combout\ : std_logic;
SIGNAL \U1|process_0~4_combout\ : std_logic;
SIGNAL \U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|process_0~6_combout\ : std_logic;
SIGNAL \U1|horiz_sync~q\ : std_logic;
SIGNAL \U1|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \U1|horiz_sync_out~q\ : std_logic;
SIGNAL \U1|process_0~7_combout\ : std_logic;
SIGNAL \U1|process_0~8_combout\ : std_logic;
SIGNAL \U1|vert_sync~q\ : std_logic;
SIGNAL \U1|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \U1|vert_sync_out~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \U1|enableSwitch~0_combout\ : std_logic;
SIGNAL \U1|enableSwitch~q\ : std_logic;
SIGNAL \U1|currentColor[0]~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \U1|enableCircleSwitch~0_combout\ : std_logic;
SIGNAL \U1|enableCircleSwitch~q\ : std_logic;
SIGNAL \U1|currentCircleColor[0]~0_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|Add1~1_combout\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|Add1~3_combout\ : std_logic;
SIGNAL \U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|Add1~5_combout\ : std_logic;
SIGNAL \U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~1_combout\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3_combout\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~11_cout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~13_cout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~15_cout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~17_cout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~19_cout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~21_cout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~23_cout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~25_cout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~27\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[11]~29\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[12]~31\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[13]~33\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[14]~34_combout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[10]~26_combout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[12]~30_combout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[13]~32_combout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[11]~28_combout\ : std_logic;
SIGNAL \U1|LessThan7~1_combout\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[14]~35\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[15]~37\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[16]~39\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[17]~40_combout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[15]~36_combout\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[17]~41\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[18]~42_combout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[16]~38_combout\ : std_logic;
SIGNAL \U1|LessThan7~0_combout\ : std_logic;
SIGNAL \U1|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \U1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[18]~43\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared[19]~44_combout\ : std_logic;
SIGNAL \U1|LessThan7~2_combout\ : std_logic;
SIGNAL \U1|red_out~0_combout\ : std_logic;
SIGNAL \U1|currentCircleColor[1]~1_combout\ : std_logic;
SIGNAL \U1|currentColor[1]~1_combout\ : std_logic;
SIGNAL \U1|green_out~0_combout\ : std_logic;
SIGNAL \U1|currentColor[2]~2_combout\ : std_logic;
SIGNAL \U1|currentColor[2]~3_combout\ : std_logic;
SIGNAL \U1|currentCircleColor[2]~2_combout\ : std_logic;
SIGNAL \U1|currentCircleColor[2]~3_combout\ : std_logic;
SIGNAL \U1|blue_out~0_combout\ : std_logic;
SIGNAL \U1|distToCircleCenterSquared\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|red_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|green_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|blue_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|currentCircleColor\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|currentColor\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|ALT_INV_h_count\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \U1|ALT_INV_v_count\ : std_logic_vector(4 DOWNTO 4);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|video_PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\U1|video_PLL_inst|altpll_component|auto_generated|clk\(0) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U1|video_PLL_inst|altpll_component|auto_generated|clk\(1) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U1|video_PLL_inst|altpll_component|auto_generated|clk\(2) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U1|video_PLL_inst|altpll_component|auto_generated|clk\(3) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U1|video_PLL_inst|altpll_component|auto_generated|clk\(4) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\U1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\U1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\U1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\U1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\U1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\U1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \U1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \U1|Mult0|auto_generated|mac_mult1~dataout\ & \U1|Mult0|auto_generated|mac_mult1~13\ & \U1|Mult0|auto_generated|mac_mult1~12\ & 
\U1|Mult0|auto_generated|mac_mult1~11\ & \U1|Mult0|auto_generated|mac_mult1~10\ & \U1|Mult0|auto_generated|mac_mult1~9\ & \U1|Mult0|auto_generated|mac_mult1~8\ & \U1|Mult0|auto_generated|mac_mult1~7\ & \U1|Mult0|auto_generated|mac_mult1~6\ & 
\U1|Mult0|auto_generated|mac_mult1~5\ & \U1|Mult0|auto_generated|mac_mult1~4\ & \U1|Mult0|auto_generated|mac_mult1~3\ & \U1|Mult0|auto_generated|mac_mult1~2\ & \U1|Mult0|auto_generated|mac_mult1~1\ & \U1|Mult0|auto_generated|mac_mult1~0\);

\U1|Mult0|auto_generated|mac_out2~0\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\U1|Mult0|auto_generated|mac_out2~1\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\U1|Mult0|auto_generated|mac_out2~2\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\U1|Mult0|auto_generated|mac_out2~3\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\U1|Mult0|auto_generated|mac_out2~4\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\U1|Mult0|auto_generated|mac_out2~5\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\U1|Mult0|auto_generated|mac_out2~6\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\U1|Mult0|auto_generated|mac_out2~7\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\U1|Mult0|auto_generated|mac_out2~8\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\U1|Mult0|auto_generated|mac_out2~9\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\U1|Mult0|auto_generated|mac_out2~10\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\U1|Mult0|auto_generated|mac_out2~11\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\U1|Mult0|auto_generated|mac_out2~12\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\U1|Mult0|auto_generated|mac_out2~13\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\U1|Mult0|auto_generated|mac_out2~dataout\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\U1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\U1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\U1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\U1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\U1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\U1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\U1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\U1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\U1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\U1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\U1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\U1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\U1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\U1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\U1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\U1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\U1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\U1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\U1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\U1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\U1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\U1|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\U1|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT18\ & 
\U1|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\U1|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT8\ & 
\U1|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT3\ & 
\U1|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \U1|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \U1|Mult1|auto_generated|mac_mult1~dataout\ & \U1|Mult1|auto_generated|mac_mult1~13\ & \U1|Mult1|auto_generated|mac_mult1~12\ & 
\U1|Mult1|auto_generated|mac_mult1~11\ & \U1|Mult1|auto_generated|mac_mult1~10\ & \U1|Mult1|auto_generated|mac_mult1~9\ & \U1|Mult1|auto_generated|mac_mult1~8\ & \U1|Mult1|auto_generated|mac_mult1~7\ & \U1|Mult1|auto_generated|mac_mult1~6\ & 
\U1|Mult1|auto_generated|mac_mult1~5\ & \U1|Mult1|auto_generated|mac_mult1~4\ & \U1|Mult1|auto_generated|mac_mult1~3\ & \U1|Mult1|auto_generated|mac_mult1~2\ & \U1|Mult1|auto_generated|mac_mult1~1\ & \U1|Mult1|auto_generated|mac_mult1~0\);

\U1|Mult1|auto_generated|mac_out2~0\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\U1|Mult1|auto_generated|mac_out2~1\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\U1|Mult1|auto_generated|mac_out2~2\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\U1|Mult1|auto_generated|mac_out2~3\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\U1|Mult1|auto_generated|mac_out2~4\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\U1|Mult1|auto_generated|mac_out2~5\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\U1|Mult1|auto_generated|mac_out2~6\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\U1|Mult1|auto_generated|mac_out2~7\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\U1|Mult1|auto_generated|mac_out2~8\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\U1|Mult1|auto_generated|mac_out2~9\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\U1|Mult1|auto_generated|mac_out2~10\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\U1|Mult1|auto_generated|mac_out2~11\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\U1|Mult1|auto_generated|mac_out2~12\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\U1|Mult1|auto_generated|mac_out2~13\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\U1|Mult1|auto_generated|mac_out2~dataout\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\U1|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\U1|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\U1|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\U1|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\U1|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\U1|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\U1|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\U1|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\U1|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\U1|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\U1|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\U1|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\U1|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\U1|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\U1|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\U1|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\U1|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\U1|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\U1|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\U1|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\U1|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\U1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\U1|Add0~3_combout\ & \U1|Add0~2_combout\ & \U1|Add0~1_combout\ & \U1|Add0~0_combout\ & NOT \U1|h_count\(6) & \U1|h_count\(5) & \U1|h_count\(4) & \U1|h_count\(3) & \U1|h_count\(2) & 
\U1|h_count\(1) & \U1|h_count\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\U1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\U1|Add0~3_combout\ & \U1|Add0~2_combout\ & \U1|Add0~1_combout\ & \U1|Add0~0_combout\ & NOT \U1|h_count\(6) & \U1|h_count\(5) & \U1|h_count\(4) & \U1|h_count\(3) & \U1|h_count\(2) & 
\U1|h_count\(1) & \U1|h_count\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\U1|Mult0|auto_generated|mac_mult1~0\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\U1|Mult0|auto_generated|mac_mult1~1\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\U1|Mult0|auto_generated|mac_mult1~2\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\U1|Mult0|auto_generated|mac_mult1~3\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\U1|Mult0|auto_generated|mac_mult1~4\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\U1|Mult0|auto_generated|mac_mult1~5\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\U1|Mult0|auto_generated|mac_mult1~6\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\U1|Mult0|auto_generated|mac_mult1~7\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\U1|Mult0|auto_generated|mac_mult1~8\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\U1|Mult0|auto_generated|mac_mult1~9\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\U1|Mult0|auto_generated|mac_mult1~10\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\U1|Mult0|auto_generated|mac_mult1~11\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\U1|Mult0|auto_generated|mac_mult1~12\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\U1|Mult0|auto_generated|mac_mult1~13\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\U1|Mult0|auto_generated|mac_mult1~dataout\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\U1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\U1|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\U1|Add1~6_combout\ & \U1|Add1~5_combout\ & \U1|Add1~4_combout\ & \U1|Add1~2_combout\ & \U1|Add1~1_combout\ & \U1|Add1~0_combout\ & NOT \U1|v_count\(4) & \U1|v_count\(3) & \U1|v_count\(2) & 
\U1|v_count\(1) & \U1|v_count\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\U1|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\U1|Add1~6_combout\ & \U1|Add1~5_combout\ & \U1|Add1~4_combout\ & \U1|Add1~2_combout\ & \U1|Add1~1_combout\ & \U1|Add1~0_combout\ & NOT \U1|v_count\(4) & \U1|v_count\(3) & \U1|v_count\(2) & 
\U1|v_count\(1) & \U1|v_count\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\U1|Mult1|auto_generated|mac_mult1~0\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\U1|Mult1|auto_generated|mac_mult1~1\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\U1|Mult1|auto_generated|mac_mult1~2\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\U1|Mult1|auto_generated|mac_mult1~3\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\U1|Mult1|auto_generated|mac_mult1~4\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\U1|Mult1|auto_generated|mac_mult1~5\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\U1|Mult1|auto_generated|mac_mult1~6\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\U1|Mult1|auto_generated|mac_mult1~7\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\U1|Mult1|auto_generated|mac_mult1~8\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\U1|Mult1|auto_generated|mac_mult1~9\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\U1|Mult1|auto_generated|mac_mult1~10\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\U1|Mult1|auto_generated|mac_mult1~11\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\U1|Mult1|auto_generated|mac_mult1~12\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\U1|Mult1|auto_generated|mac_mult1~13\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\U1|Mult1|auto_generated|mac_mult1~dataout\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\U1|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|video_PLL_inst|altpll_component|auto_generated|clk\(0));
\U1|ALT_INV_h_count\(6) <= NOT \U1|h_count\(6);
\U1|ALT_INV_v_count\(4) <= NOT \U1|v_count\(4);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|video_on~combout\,
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
	i => \U1|horiz_sync_out~q\,
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
	i => \U1|vert_sync_out~q\,
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
	i => \U1|red_out\(7),
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
	i => \U1|green_out\(7),
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
	i => \U1|blue_out\(7),
	devoe => ww_devoe,
	o => ww_VGA_B(7));

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

-- Location: LCCOMB_X43_Y71_N8
\U1|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~0_combout\ = \U1|h_count\(0) $ (VCC)
-- \U1|Add5~1\ = CARRY(\U1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(0),
	datad => VCC,
	combout => \U1|Add5~0_combout\,
	cout => \U1|Add5~1\);

-- Location: LCCOMB_X42_Y71_N16
\U1|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|h_count~3_combout\ = (\U1|Add5~0_combout\ & !\U1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add5~0_combout\,
	datad => \U1|Equal0~2_combout\,
	combout => \U1|h_count~3_combout\);

-- Location: FF_X42_Y71_N17
\U1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(0));

-- Location: LCCOMB_X43_Y71_N10
\U1|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~2_combout\ = (\U1|h_count\(1) & (!\U1|Add5~1\)) # (!\U1|h_count\(1) & ((\U1|Add5~1\) # (GND)))
-- \U1|Add5~3\ = CARRY((!\U1|Add5~1\) # (!\U1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(1),
	datad => VCC,
	cin => \U1|Add5~1\,
	combout => \U1|Add5~2_combout\,
	cout => \U1|Add5~3\);

-- Location: FF_X43_Y71_N11
\U1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|Add5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(1));

-- Location: LCCOMB_X43_Y71_N12
\U1|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~4_combout\ = (\U1|h_count\(2) & (\U1|Add5~3\ $ (GND))) # (!\U1|h_count\(2) & (!\U1|Add5~3\ & VCC))
-- \U1|Add5~5\ = CARRY((\U1|h_count\(2) & !\U1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(2),
	datad => VCC,
	cin => \U1|Add5~3\,
	combout => \U1|Add5~4_combout\,
	cout => \U1|Add5~5\);

-- Location: FF_X43_Y71_N13
\U1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(2));

-- Location: LCCOMB_X43_Y71_N14
\U1|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~6_combout\ = (\U1|h_count\(3) & (!\U1|Add5~5\)) # (!\U1|h_count\(3) & ((\U1|Add5~5\) # (GND)))
-- \U1|Add5~7\ = CARRY((!\U1|Add5~5\) # (!\U1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(3),
	datad => VCC,
	cin => \U1|Add5~5\,
	combout => \U1|Add5~6_combout\,
	cout => \U1|Add5~7\);

-- Location: FF_X43_Y71_N15
\U1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(3));

-- Location: LCCOMB_X43_Y71_N16
\U1|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~8_combout\ = (\U1|h_count\(4) & (\U1|Add5~7\ $ (GND))) # (!\U1|h_count\(4) & (!\U1|Add5~7\ & VCC))
-- \U1|Add5~9\ = CARRY((\U1|h_count\(4) & !\U1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(4),
	datad => VCC,
	cin => \U1|Add5~7\,
	combout => \U1|Add5~8_combout\,
	cout => \U1|Add5~9\);

-- Location: FF_X43_Y71_N17
\U1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(4));

-- Location: LCCOMB_X43_Y71_N18
\U1|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~10_combout\ = (\U1|h_count\(5) & (!\U1|Add5~9\)) # (!\U1|h_count\(5) & ((\U1|Add5~9\) # (GND)))
-- \U1|Add5~11\ = CARRY((!\U1|Add5~9\) # (!\U1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(5),
	datad => VCC,
	cin => \U1|Add5~9\,
	combout => \U1|Add5~10_combout\,
	cout => \U1|Add5~11\);

-- Location: LCCOMB_X43_Y71_N2
\U1|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|h_count~2_combout\ = (!\U1|Equal0~2_combout\ & \U1|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~2_combout\,
	datad => \U1|Add5~10_combout\,
	combout => \U1|h_count~2_combout\);

-- Location: FF_X43_Y71_N3
\U1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(5));

-- Location: LCCOMB_X43_Y71_N20
\U1|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~12_combout\ = (\U1|h_count\(6) & (\U1|Add5~11\ $ (GND))) # (!\U1|h_count\(6) & (!\U1|Add5~11\ & VCC))
-- \U1|Add5~13\ = CARRY((\U1|h_count\(6) & !\U1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(6),
	datad => VCC,
	cin => \U1|Add5~11\,
	combout => \U1|Add5~12_combout\,
	cout => \U1|Add5~13\);

-- Location: FF_X43_Y71_N21
\U1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(6));

-- Location: LCCOMB_X43_Y71_N22
\U1|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~14_combout\ = (\U1|h_count\(7) & (!\U1|Add5~13\)) # (!\U1|h_count\(7) & ((\U1|Add5~13\) # (GND)))
-- \U1|Add5~15\ = CARRY((!\U1|Add5~13\) # (!\U1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(7),
	datad => VCC,
	cin => \U1|Add5~13\,
	combout => \U1|Add5~14_combout\,
	cout => \U1|Add5~15\);

-- Location: FF_X43_Y71_N23
\U1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(7));

-- Location: LCCOMB_X42_Y71_N30
\U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|h_count\(5) & (!\U1|h_count\(7) & (!\U1|h_count\(3) & !\U1|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(5),
	datab => \U1|h_count\(7),
	datac => \U1|h_count\(3),
	datad => \U1|h_count\(4),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y71_N2
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|h_count\(6) & (!\U1|h_count\(0) & (!\U1|h_count\(1) & !\U1|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(6),
	datab => \U1|h_count\(0),
	datac => \U1|h_count\(1),
	datad => \U1|h_count\(2),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y71_N24
\U1|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~16_combout\ = (\U1|h_count\(8) & (\U1|Add5~15\ $ (GND))) # (!\U1|h_count\(8) & (!\U1|Add5~15\ & VCC))
-- \U1|Add5~17\ = CARRY((\U1|h_count\(8) & !\U1|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(8),
	datad => VCC,
	cin => \U1|Add5~15\,
	combout => \U1|Add5~16_combout\,
	cout => \U1|Add5~17\);

-- Location: LCCOMB_X43_Y71_N0
\U1|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|h_count~1_combout\ = (!\U1|Equal0~2_combout\ & \U1|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~2_combout\,
	datad => \U1|Add5~16_combout\,
	combout => \U1|h_count~1_combout\);

-- Location: FF_X43_Y71_N1
\U1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(8));

-- Location: LCCOMB_X42_Y71_N0
\U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|Equal0~1_combout\ & (\U1|Equal0~0_combout\ & (\U1|h_count\(8) & \U1|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~1_combout\,
	datab => \U1|Equal0~0_combout\,
	datac => \U1|h_count\(8),
	datad => \U1|h_count\(9),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y71_N26
\U1|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add5~18_combout\ = \U1|Add5~17\ $ (\U1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|h_count\(9),
	cin => \U1|Add5~17\,
	combout => \U1|Add5~18_combout\);

-- Location: LCCOMB_X42_Y71_N20
\U1|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|h_count~0_combout\ = (!\U1|Equal0~2_combout\ & \U1|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~2_combout\,
	datad => \U1|Add5~18_combout\,
	combout => \U1|h_count~0_combout\);

-- Location: FF_X42_Y71_N21
\U1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(9));

-- Location: LCCOMB_X42_Y71_N24
\U1|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~0_combout\ = ((!\U1|h_count\(8) & !\U1|h_count\(7))) # (!\U1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(9),
	datac => \U1|h_count\(8),
	datad => \U1|h_count\(7),
	combout => \U1|LessThan5~0_combout\);

-- Location: FF_X42_Y71_N25
\U1|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|video_on_h~q\);

-- Location: LCCOMB_X42_Y71_N22
\U1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal1~0_combout\ = (\U1|h_count\(8)) # (((!\U1|h_count\(4)) # (!\U1|h_count\(3))) # (!\U1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(8),
	datab => \U1|h_count\(7),
	datac => \U1|h_count\(3),
	datad => \U1|h_count\(4),
	combout => \U1|Equal1~0_combout\);

-- Location: LCCOMB_X42_Y71_N4
\U1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal1~1_combout\ = (\U1|h_count\(5)) # (((\U1|Equal1~0_combout\) # (!\U1|h_count\(9))) # (!\U1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(5),
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal1~0_combout\,
	datad => \U1|h_count\(9),
	combout => \U1|Equal1~1_combout\);

-- Location: LCCOMB_X42_Y71_N8
\U1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = (!\U1|h_count\(6) & (!\U1|h_count\(5) & ((!\U1|h_count\(3)) # (!\U1|h_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(6),
	datab => \U1|h_count\(4),
	datac => \U1|h_count\(3),
	datad => \U1|h_count\(5),
	combout => \U1|process_0~0_combout\);

-- Location: LCCOMB_X42_Y71_N10
\U1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~1_combout\ = (!\U1|h_count\(8) & \U1|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(8),
	datac => \U1|process_0~0_combout\,
	combout => \U1|process_0~1_combout\);

-- Location: LCCOMB_X42_Y69_N16
\U1|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~10_combout\ = (\U1|v_count\(5) & (!\U1|Add6~9\)) # (!\U1|v_count\(5) & ((\U1|Add6~9\) # (GND)))
-- \U1|Add6~11\ = CARRY((!\U1|Add6~9\) # (!\U1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(5),
	datad => VCC,
	cin => \U1|Add6~9\,
	combout => \U1|Add6~10_combout\,
	cout => \U1|Add6~11\);

-- Location: LCCOMB_X42_Y69_N18
\U1|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~12_combout\ = (\U1|v_count\(6) & (\U1|Add6~11\ $ (GND))) # (!\U1|v_count\(6) & (!\U1|Add6~11\ & VCC))
-- \U1|Add6~13\ = CARRY((\U1|v_count\(6) & !\U1|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(6),
	datad => VCC,
	cin => \U1|Add6~11\,
	combout => \U1|Add6~12_combout\,
	cout => \U1|Add6~13\);

-- Location: LCCOMB_X43_Y69_N30
\U1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~1_combout\ = (!\U1|v_count\(4) & (!\U1|v_count\(5) & (!\U1|v_count\(7) & !\U1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(4),
	datab => \U1|v_count\(5),
	datac => \U1|v_count\(7),
	datad => \U1|v_count\(6),
	combout => \U1|LessThan1~1_combout\);

-- Location: LCCOMB_X42_Y69_N6
\U1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~0_combout\ = \U1|v_count\(0) $ (VCC)
-- \U1|Add6~1\ = CARRY(\U1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(0),
	datad => VCC,
	combout => \U1|Add6~0_combout\,
	cout => \U1|Add6~1\);

-- Location: LCCOMB_X42_Y69_N0
\U1|v_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count~8_combout\ = (\U1|Add6~0_combout\ & ((\U1|process_0~1_combout\) # ((\U1|process_0~2_combout\) # (\U1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add6~0_combout\,
	datab => \U1|process_0~1_combout\,
	datac => \U1|process_0~2_combout\,
	datad => \U1|LessThan1~2_combout\,
	combout => \U1|v_count~8_combout\);

-- Location: FF_X42_Y69_N1
\U1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count~8_combout\,
	ena => \U1|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(0));

-- Location: LCCOMB_X42_Y69_N8
\U1|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~2_combout\ = (\U1|v_count\(1) & (!\U1|Add6~1\)) # (!\U1|v_count\(1) & ((\U1|Add6~1\) # (GND)))
-- \U1|Add6~3\ = CARRY((!\U1|Add6~1\) # (!\U1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(1),
	datad => VCC,
	cin => \U1|Add6~1\,
	combout => \U1|Add6~2_combout\,
	cout => \U1|Add6~3\);

-- Location: LCCOMB_X42_Y69_N2
\U1|v_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count~9_combout\ = (\U1|Add6~2_combout\ & ((\U1|process_0~2_combout\) # ((\U1|process_0~1_combout\) # (\U1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~2_combout\,
	datab => \U1|process_0~1_combout\,
	datac => \U1|Add6~2_combout\,
	datad => \U1|LessThan1~2_combout\,
	combout => \U1|v_count~9_combout\);

-- Location: FF_X42_Y69_N3
\U1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count~9_combout\,
	ena => \U1|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(1));

-- Location: LCCOMB_X42_Y69_N10
\U1|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~4_combout\ = (\U1|v_count\(2) & (\U1|Add6~3\ $ (GND))) # (!\U1|v_count\(2) & (!\U1|Add6~3\ & VCC))
-- \U1|Add6~5\ = CARRY((\U1|v_count\(2) & !\U1|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(2),
	datad => VCC,
	cin => \U1|Add6~3\,
	combout => \U1|Add6~4_combout\,
	cout => \U1|Add6~5\);

-- Location: LCCOMB_X42_Y69_N4
\U1|v_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[2]~10_combout\ = (\U1|v_count[9]~1_combout\ & (\U1|Add6~4_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[9]~1_combout\ & ((\U1|v_count\(2)) # ((\U1|Add6~4_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[9]~1_combout\,
	datab => \U1|Add6~4_combout\,
	datac => \U1|v_count\(2),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[2]~10_combout\);

-- Location: FF_X42_Y69_N5
\U1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(2));

-- Location: LCCOMB_X45_Y69_N14
\U1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = (((!\U1|v_count\(1) & !\U1|v_count\(0))) # (!\U1|v_count\(3))) # (!\U1|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(2),
	datab => \U1|v_count\(3),
	datac => \U1|v_count\(1),
	datad => \U1|v_count\(0),
	combout => \U1|LessThan1~0_combout\);

-- Location: LCCOMB_X43_Y69_N16
\U1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~2_combout\ = (!\U1|v_count\(8) & (\U1|LessThan1~1_combout\ & \U1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(8),
	datac => \U1|LessThan1~1_combout\,
	datad => \U1|LessThan1~0_combout\,
	combout => \U1|LessThan1~2_combout\);

-- Location: LCCOMB_X42_Y69_N28
\U1|v_count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[4]~0_combout\ = (!\U1|Equal1~1_combout\ & ((\U1|process_0~1_combout\) # ((\U1|process_0~2_combout\) # (\U1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~1_combout\,
	datab => \U1|process_0~1_combout\,
	datac => \U1|process_0~2_combout\,
	datad => \U1|LessThan1~2_combout\,
	combout => \U1|v_count[4]~0_combout\);

-- Location: LCCOMB_X43_Y69_N28
\U1|v_count[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[6]~4_combout\ = (\U1|v_count[9]~1_combout\ & (\U1|Add6~12_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[9]~1_combout\ & ((\U1|v_count\(6)) # ((\U1|Add6~12_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[9]~1_combout\,
	datab => \U1|Add6~12_combout\,
	datac => \U1|v_count\(6),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[6]~4_combout\);

-- Location: FF_X43_Y69_N29
\U1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(6));

-- Location: LCCOMB_X42_Y69_N20
\U1|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~14_combout\ = (\U1|v_count\(7) & (!\U1|Add6~13\)) # (!\U1|v_count\(7) & ((\U1|Add6~13\) # (GND)))
-- \U1|Add6~15\ = CARRY((!\U1|Add6~13\) # (!\U1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(7),
	datad => VCC,
	cin => \U1|Add6~13\,
	combout => \U1|Add6~14_combout\,
	cout => \U1|Add6~15\);

-- Location: LCCOMB_X43_Y69_N14
\U1|v_count[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[7]~5_combout\ = (\U1|Add6~14_combout\ & ((\U1|v_count[4]~0_combout\) # ((!\U1|v_count[9]~1_combout\ & \U1|v_count\(7))))) # (!\U1|Add6~14_combout\ & (!\U1|v_count[9]~1_combout\ & (\U1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add6~14_combout\,
	datab => \U1|v_count[9]~1_combout\,
	datac => \U1|v_count\(7),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[7]~5_combout\);

-- Location: FF_X43_Y69_N15
\U1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(7));

-- Location: LCCOMB_X42_Y69_N22
\U1|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~16_combout\ = (\U1|v_count\(8) & (\U1|Add6~15\ $ (GND))) # (!\U1|v_count\(8) & (!\U1|Add6~15\ & VCC))
-- \U1|Add6~17\ = CARRY((\U1|v_count\(8) & !\U1|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(8),
	datad => VCC,
	cin => \U1|Add6~15\,
	combout => \U1|Add6~16_combout\,
	cout => \U1|Add6~17\);

-- Location: LCCOMB_X43_Y69_N0
\U1|v_count[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[8]~6_combout\ = (\U1|v_count[9]~1_combout\ & (\U1|Add6~16_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[9]~1_combout\ & ((\U1|v_count\(8)) # ((\U1|Add6~16_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[9]~1_combout\,
	datab => \U1|Add6~16_combout\,
	datac => \U1|v_count\(8),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[8]~6_combout\);

-- Location: FF_X43_Y69_N1
\U1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(8));

-- Location: LCCOMB_X42_Y69_N24
\U1|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~18_combout\ = \U1|Add6~17\ $ (\U1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|v_count\(9),
	cin => \U1|Add6~17\,
	combout => \U1|Add6~18_combout\);

-- Location: LCCOMB_X43_Y69_N24
\U1|v_count[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[9]~2_combout\ = (\U1|v_count[9]~1_combout\ & (\U1|Add6~18_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[9]~1_combout\ & ((\U1|v_count\(9)) # ((\U1|Add6~18_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[9]~1_combout\,
	datab => \U1|Add6~18_combout\,
	datac => \U1|v_count\(9),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[9]~2_combout\);

-- Location: FF_X43_Y69_N25
\U1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(9));

-- Location: LCCOMB_X42_Y71_N12
\U1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = (((!\U1|h_count\(8) & !\U1|h_count\(7))) # (!\U1|h_count\(9))) # (!\U1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(9),
	datab => \U1|h_count\(9),
	datac => \U1|h_count\(8),
	datad => \U1|h_count\(7),
	combout => \U1|process_0~2_combout\);

-- Location: LCCOMB_X42_Y69_N30
\U1|v_count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[9]~1_combout\ = ((!\U1|process_0~1_combout\ & (!\U1|process_0~2_combout\ & !\U1|LessThan1~2_combout\))) # (!\U1|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~1_combout\,
	datab => \U1|process_0~1_combout\,
	datac => \U1|process_0~2_combout\,
	datad => \U1|LessThan1~2_combout\,
	combout => \U1|v_count[9]~1_combout\);

-- Location: LCCOMB_X42_Y69_N12
\U1|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~6_combout\ = (\U1|v_count\(3) & (!\U1|Add6~5\)) # (!\U1|v_count\(3) & ((\U1|Add6~5\) # (GND)))
-- \U1|Add6~7\ = CARRY((!\U1|Add6~5\) # (!\U1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(3),
	datad => VCC,
	cin => \U1|Add6~5\,
	combout => \U1|Add6~6_combout\,
	cout => \U1|Add6~7\);

-- Location: LCCOMB_X42_Y69_N26
\U1|v_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[3]~11_combout\ = (\U1|v_count[9]~1_combout\ & (\U1|v_count[4]~0_combout\ & ((\U1|Add6~6_combout\)))) # (!\U1|v_count[9]~1_combout\ & ((\U1|v_count\(3)) # ((\U1|v_count[4]~0_combout\ & \U1|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[9]~1_combout\,
	datab => \U1|v_count[4]~0_combout\,
	datac => \U1|v_count\(3),
	datad => \U1|Add6~6_combout\,
	combout => \U1|v_count[3]~11_combout\);

-- Location: FF_X42_Y69_N27
\U1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(3));

-- Location: LCCOMB_X42_Y69_N14
\U1|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add6~8_combout\ = (\U1|v_count\(4) & (\U1|Add6~7\ $ (GND))) # (!\U1|v_count\(4) & (!\U1|Add6~7\ & VCC))
-- \U1|Add6~9\ = CARRY((\U1|v_count\(4) & !\U1|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(4),
	datad => VCC,
	cin => \U1|Add6~7\,
	combout => \U1|Add6~8_combout\,
	cout => \U1|Add6~9\);

-- Location: LCCOMB_X43_Y69_N4
\U1|v_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[4]~7_combout\ = (\U1|Add6~8_combout\ & ((\U1|v_count[4]~0_combout\) # ((!\U1|v_count[9]~1_combout\ & \U1|v_count\(4))))) # (!\U1|Add6~8_combout\ & (!\U1|v_count[9]~1_combout\ & (\U1|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add6~8_combout\,
	datab => \U1|v_count[9]~1_combout\,
	datac => \U1|v_count\(4),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[4]~7_combout\);

-- Location: FF_X43_Y69_N5
\U1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(4));

-- Location: LCCOMB_X43_Y69_N2
\U1|v_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[5]~3_combout\ = (\U1|Add6~10_combout\ & ((\U1|v_count[4]~0_combout\) # ((!\U1|v_count[9]~1_combout\ & \U1|v_count\(5))))) # (!\U1|Add6~10_combout\ & (!\U1|v_count[9]~1_combout\ & (\U1|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add6~10_combout\,
	datab => \U1|v_count[9]~1_combout\,
	datac => \U1|v_count\(5),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[5]~3_combout\);

-- Location: FF_X43_Y69_N3
\U1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(5));

-- Location: LCCOMB_X43_Y69_N26
\U1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan6~0_combout\ = (\U1|v_count\(5) & (\U1|v_count\(8) & (\U1|v_count\(7) & \U1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(5),
	datab => \U1|v_count\(8),
	datac => \U1|v_count\(7),
	datad => \U1|v_count\(6),
	combout => \U1|LessThan6~0_combout\);

-- Location: LCCOMB_X45_Y69_N10
\U1|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan6~1_combout\ = (\U1|v_count\(2)) # ((\U1|v_count\(3)) # ((\U1|v_count\(1)) # (\U1|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(2),
	datab => \U1|v_count\(3),
	datac => \U1|v_count\(1),
	datad => \U1|v_count\(0),
	combout => \U1|LessThan6~1_combout\);

-- Location: LCCOMB_X45_Y69_N24
\U1|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan6~2_combout\ = (!\U1|v_count\(9) & (((!\U1|v_count\(4) & !\U1|LessThan6~1_combout\)) # (!\U1|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan6~0_combout\,
	datab => \U1|v_count\(9),
	datac => \U1|v_count\(4),
	datad => \U1|LessThan6~1_combout\,
	combout => \U1|LessThan6~2_combout\);

-- Location: FF_X45_Y69_N25
\U1|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|video_on_v~q\);

-- Location: LCCOMB_X41_Y69_N24
\U1|video_on\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|video_on~combout\ = (\U1|video_on_h~q\ & \U1|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|video_on_h~q\,
	datad => \U1|video_on_v~q\,
	combout => \U1|video_on~combout\);

-- Location: LCCOMB_X42_Y71_N14
\U1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~5_combout\ = (\U1|h_count\(6) & (\U1|h_count\(3) & \U1|h_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(6),
	datac => \U1|h_count\(3),
	datad => \U1|h_count\(4),
	combout => \U1|process_0~5_combout\);

-- Location: LCCOMB_X42_Y71_N28
\U1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~4_combout\ = (\U1|h_count\(5) & ((\U1|h_count\(2)) # ((\U1|h_count\(0)) # (\U1|h_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(2),
	datab => \U1|h_count\(0),
	datac => \U1|h_count\(1),
	datad => \U1|h_count\(5),
	combout => \U1|process_0~4_combout\);

-- Location: LCCOMB_X42_Y71_N18
\U1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~3_combout\ = ((\U1|h_count\(8)) # (!\U1|h_count\(7))) # (!\U1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(9),
	datac => \U1|h_count\(8),
	datad => \U1|h_count\(7),
	combout => \U1|process_0~3_combout\);

-- Location: LCCOMB_X42_Y71_N6
\U1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~6_combout\ = (\U1|process_0~0_combout\) # ((\U1|process_0~3_combout\) # ((\U1|process_0~5_combout\ & \U1|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~5_combout\,
	datab => \U1|process_0~4_combout\,
	datac => \U1|process_0~0_combout\,
	datad => \U1|process_0~3_combout\,
	combout => \U1|process_0~6_combout\);

-- Location: FF_X42_Y71_N7
\U1|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|horiz_sync~q\);

-- Location: LCCOMB_X42_Y71_N26
\U1|horiz_sync_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|horiz_sync_out~feeder_combout\ = \U1|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|horiz_sync~q\,
	combout => \U1|horiz_sync_out~feeder_combout\);

-- Location: FF_X42_Y71_N27
\U1|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|horiz_sync_out~q\);

-- Location: LCCOMB_X45_Y69_N16
\U1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~7_combout\ = ((\U1|v_count\(2) & (\U1|v_count\(1))) # (!\U1|v_count\(2) & ((!\U1|v_count\(0)) # (!\U1|v_count\(1))))) # (!\U1|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(2),
	datab => \U1|v_count\(3),
	datac => \U1|v_count\(1),
	datad => \U1|v_count\(0),
	combout => \U1|process_0~7_combout\);

-- Location: LCCOMB_X45_Y69_N12
\U1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~8_combout\ = ((\U1|v_count\(9)) # ((\U1|v_count\(4)) # (\U1|process_0~7_combout\))) # (!\U1|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan6~0_combout\,
	datab => \U1|v_count\(9),
	datac => \U1|v_count\(4),
	datad => \U1|process_0~7_combout\,
	combout => \U1|process_0~8_combout\);

-- Location: FF_X45_Y69_N13
\U1|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vert_sync~q\);

-- Location: LCCOMB_X52_Y69_N24
\U1|vert_sync_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|vert_sync_out~feeder_combout\ = \U1|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|vert_sync~q\,
	combout => \U1|vert_sync_out~feeder_combout\);

-- Location: FF_X52_Y69_N25
\U1|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vert_sync_out~q\);

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

-- Location: LCCOMB_X41_Y69_N6
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

-- Location: FF_X41_Y69_N7
\U1|enableSwitch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|enableSwitch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|enableSwitch~q\);

-- Location: LCCOMB_X41_Y69_N10
\U1|currentColor[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|currentColor[0]~0_combout\ = \U1|currentColor\(0) $ (((!\U1|enableSwitch~q\ & !\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|enableSwitch~q\,
	datac => \U1|currentColor\(0),
	datad => \KEY[0]~input_o\,
	combout => \U1|currentColor[0]~0_combout\);

-- Location: FF_X41_Y69_N11
\U1|currentColor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|currentColor[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|currentColor\(0));

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

-- Location: LCCOMB_X41_Y69_N4
\U1|enableCircleSwitch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|enableCircleSwitch~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \U1|enableCircleSwitch~0_combout\);

-- Location: FF_X41_Y69_N5
\U1|enableCircleSwitch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|enableCircleSwitch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|enableCircleSwitch~q\);

-- Location: LCCOMB_X41_Y69_N0
\U1|currentCircleColor[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|currentCircleColor[0]~0_combout\ = \U1|currentCircleColor\(0) $ (((!\KEY[1]~input_o\ & !\U1|enableCircleSwitch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \U1|enableCircleSwitch~q\,
	datac => \U1|currentCircleColor\(0),
	combout => \U1|currentCircleColor[0]~0_combout\);

-- Location: FF_X41_Y69_N1
\U1|currentCircleColor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|currentCircleColor[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|currentCircleColor\(0));

-- Location: LCCOMB_X43_Y69_N10
\U1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = \U1|v_count\(4) $ (\U1|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|v_count\(4),
	datad => \U1|v_count\(5),
	combout => \U1|Add1~0_combout\);

-- Location: LCCOMB_X43_Y69_N12
\U1|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~1_combout\ = \U1|v_count\(6) $ (((\U1|v_count\(5) & \U1|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(5),
	datac => \U1|v_count\(4),
	datad => \U1|v_count\(6),
	combout => \U1|Add1~1_combout\);

-- Location: LCCOMB_X43_Y69_N22
\U1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = \U1|v_count\(7) $ (((\U1|v_count\(4) & (\U1|v_count\(5) & \U1|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(4),
	datab => \U1|v_count\(5),
	datac => \U1|v_count\(7),
	datad => \U1|v_count\(6),
	combout => \U1|Add1~2_combout\);

-- Location: LCCOMB_X43_Y69_N8
\U1|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~3_combout\ = (\U1|v_count\(5) & (\U1|v_count\(4) & (\U1|v_count\(7) & \U1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(5),
	datab => \U1|v_count\(4),
	datac => \U1|v_count\(7),
	datad => \U1|v_count\(6),
	combout => \U1|Add1~3_combout\);

-- Location: LCCOMB_X43_Y69_N18
\U1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~4_combout\ = \U1|Add1~3_combout\ $ (!\U1|v_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add1~3_combout\,
	datad => \U1|v_count\(8),
	combout => \U1|Add1~4_combout\);

-- Location: LCCOMB_X43_Y69_N20
\U1|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~5_combout\ = \U1|v_count\(9) $ (((!\U1|Add1~3_combout\ & !\U1|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(9),
	datac => \U1|Add1~3_combout\,
	datad => \U1|v_count\(8),
	combout => \U1|Add1~5_combout\);

-- Location: LCCOMB_X43_Y69_N6
\U1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~6_combout\ = (!\U1|v_count\(9) & (!\U1|Add1~3_combout\ & !\U1|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(9),
	datac => \U1|Add1~3_combout\,
	datad => \U1|v_count\(8),
	combout => \U1|Add1~6_combout\);

-- Location: DSPMULT_X44_Y69_N0
\U1|Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \U1|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \U1|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y69_N2
\U1|Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U1|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X43_Y71_N4
\U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|h_count\(7) $ (!\U1|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|h_count\(7),
	datad => \U1|h_count\(6),
	combout => \U1|Add0~0_combout\);

-- Location: LCCOMB_X43_Y71_N30
\U1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~1_combout\ = \U1|h_count\(8) $ (((\U1|h_count\(7)) # (\U1|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(8),
	datac => \U1|h_count\(7),
	datad => \U1|h_count\(6),
	combout => \U1|Add0~1_combout\);

-- Location: LCCOMB_X43_Y71_N28
\U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = \U1|h_count\(9) $ ((((!\U1|h_count\(7) & !\U1|h_count\(6))) # (!\U1|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(9),
	datab => \U1|h_count\(8),
	datac => \U1|h_count\(7),
	datad => \U1|h_count\(6),
	combout => \U1|Add0~2_combout\);

-- Location: LCCOMB_X43_Y71_N6
\U1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~3_combout\ = (!\U1|h_count\(9) & (((!\U1|h_count\(7) & !\U1|h_count\(6))) # (!\U1|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(9),
	datab => \U1|h_count\(8),
	datac => \U1|h_count\(7),
	datad => \U1|h_count\(6),
	combout => \U1|Add0~3_combout\);

-- Location: DSPMULT_X44_Y71_N0
\U1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \U1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \U1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y71_N2
\U1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X45_Y71_N14
\U1|distToCircleCenterSquared[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~11_cout\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT2\ & \U1|Mult1|auto_generated|mac_out2~DATAOUT2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cout => \U1|distToCircleCenterSquared[10]~11_cout\);

-- Location: LCCOMB_X45_Y71_N16
\U1|distToCircleCenterSquared[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~13_cout\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\U1|Mult1|auto_generated|mac_out2~DATAOUT3\ & !\U1|distToCircleCenterSquared[10]~11_cout\)) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- ((!\U1|distToCircleCenterSquared[10]~11_cout\) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~11_cout\,
	cout => \U1|distToCircleCenterSquared[10]~13_cout\);

-- Location: LCCOMB_X45_Y71_N18
\U1|distToCircleCenterSquared[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~15_cout\ = CARRY((\U1|Mult1|auto_generated|mac_out2~DATAOUT4\ & ((\U1|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\U1|distToCircleCenterSquared[10]~13_cout\))) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT4\ & 
-- (\U1|Mult0|auto_generated|mac_out2~DATAOUT4\ & !\U1|distToCircleCenterSquared[10]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datab => \U1|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~13_cout\,
	cout => \U1|distToCircleCenterSquared[10]~15_cout\);

-- Location: LCCOMB_X45_Y71_N20
\U1|distToCircleCenterSquared[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~17_cout\ = CARRY((\U1|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\U1|Mult0|auto_generated|mac_out2~DATAOUT5\ & !\U1|distToCircleCenterSquared[10]~15_cout\)) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT5\ & 
-- ((!\U1|distToCircleCenterSquared[10]~15_cout\) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datab => \U1|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~15_cout\,
	cout => \U1|distToCircleCenterSquared[10]~17_cout\);

-- Location: LCCOMB_X45_Y71_N22
\U1|distToCircleCenterSquared[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~19_cout\ = CARRY((\U1|Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\U1|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\U1|distToCircleCenterSquared[10]~17_cout\))) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT6\ & 
-- (\U1|Mult0|auto_generated|mac_out2~DATAOUT6\ & !\U1|distToCircleCenterSquared[10]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \U1|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~17_cout\,
	cout => \U1|distToCircleCenterSquared[10]~19_cout\);

-- Location: LCCOMB_X45_Y71_N24
\U1|distToCircleCenterSquared[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~21_cout\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\U1|Mult1|auto_generated|mac_out2~DATAOUT7\ & !\U1|distToCircleCenterSquared[10]~19_cout\)) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- ((!\U1|distToCircleCenterSquared[10]~19_cout\) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~19_cout\,
	cout => \U1|distToCircleCenterSquared[10]~21_cout\);

-- Location: LCCOMB_X45_Y71_N26
\U1|distToCircleCenterSquared[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~23_cout\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT8\) # (!\U1|distToCircleCenterSquared[10]~21_cout\))) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT8\ & 
-- (\U1|Mult1|auto_generated|mac_out2~DATAOUT8\ & !\U1|distToCircleCenterSquared[10]~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~21_cout\,
	cout => \U1|distToCircleCenterSquared[10]~23_cout\);

-- Location: LCCOMB_X45_Y71_N28
\U1|distToCircleCenterSquared[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~25_cout\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\U1|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\U1|distToCircleCenterSquared[10]~23_cout\)) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- ((!\U1|distToCircleCenterSquared[10]~23_cout\) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~23_cout\,
	cout => \U1|distToCircleCenterSquared[10]~25_cout\);

-- Location: LCCOMB_X45_Y71_N30
\U1|distToCircleCenterSquared[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[10]~26_combout\ = ((\U1|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (\U1|Mult1|auto_generated|mac_out2~DATAOUT10\ $ (!\U1|distToCircleCenterSquared[10]~25_cout\)))) # (GND)
-- \U1|distToCircleCenterSquared[10]~27\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT10\) # (!\U1|distToCircleCenterSquared[10]~25_cout\))) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- (\U1|Mult1|auto_generated|mac_out2~DATAOUT10\ & !\U1|distToCircleCenterSquared[10]~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~25_cout\,
	combout => \U1|distToCircleCenterSquared[10]~26_combout\,
	cout => \U1|distToCircleCenterSquared[10]~27\);

-- Location: LCCOMB_X45_Y70_N0
\U1|distToCircleCenterSquared[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[11]~28_combout\ = (\U1|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\U1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (\U1|distToCircleCenterSquared[10]~27\ & VCC)) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- (!\U1|distToCircleCenterSquared[10]~27\)))) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\U1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\U1|distToCircleCenterSquared[10]~27\)) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- ((\U1|distToCircleCenterSquared[10]~27\) # (GND)))))
-- \U1|distToCircleCenterSquared[11]~29\ = CARRY((\U1|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\U1|Mult0|auto_generated|mac_out2~DATAOUT11\ & !\U1|distToCircleCenterSquared[10]~27\)) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT11\ & 
-- ((!\U1|distToCircleCenterSquared[10]~27\) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \U1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[10]~27\,
	combout => \U1|distToCircleCenterSquared[11]~28_combout\,
	cout => \U1|distToCircleCenterSquared[11]~29\);

-- Location: LCCOMB_X45_Y70_N2
\U1|distToCircleCenterSquared[12]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[12]~30_combout\ = ((\U1|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (\U1|Mult1|auto_generated|mac_out2~DATAOUT12\ $ (!\U1|distToCircleCenterSquared[11]~29\)))) # (GND)
-- \U1|distToCircleCenterSquared[12]~31\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT12\) # (!\U1|distToCircleCenterSquared[11]~29\))) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT12\ & 
-- (\U1|Mult1|auto_generated|mac_out2~DATAOUT12\ & !\U1|distToCircleCenterSquared[11]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[11]~29\,
	combout => \U1|distToCircleCenterSquared[12]~30_combout\,
	cout => \U1|distToCircleCenterSquared[12]~31\);

-- Location: LCCOMB_X45_Y70_N4
\U1|distToCircleCenterSquared[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[13]~32_combout\ = (\U1|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT13\ & (\U1|distToCircleCenterSquared[12]~31\ & VCC)) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\U1|distToCircleCenterSquared[12]~31\)))) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\U1|distToCircleCenterSquared[12]~31\)) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- ((\U1|distToCircleCenterSquared[12]~31\) # (GND)))))
-- \U1|distToCircleCenterSquared[13]~33\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\U1|Mult1|auto_generated|mac_out2~DATAOUT13\ & !\U1|distToCircleCenterSquared[12]~31\)) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- ((!\U1|distToCircleCenterSquared[12]~31\) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[12]~31\,
	combout => \U1|distToCircleCenterSquared[13]~32_combout\,
	cout => \U1|distToCircleCenterSquared[13]~33\);

-- Location: LCCOMB_X45_Y70_N6
\U1|distToCircleCenterSquared[14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[14]~34_combout\ = ((\U1|Mult1|auto_generated|mac_out2~DATAOUT14\ $ (\U1|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (!\U1|distToCircleCenterSquared[13]~33\)))) # (GND)
-- \U1|distToCircleCenterSquared[14]~35\ = CARRY((\U1|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\U1|Mult0|auto_generated|mac_out2~DATAOUT14\) # (!\U1|distToCircleCenterSquared[13]~33\))) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- (\U1|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\U1|distToCircleCenterSquared[13]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \U1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[13]~33\,
	combout => \U1|distToCircleCenterSquared[14]~34_combout\,
	cout => \U1|distToCircleCenterSquared[14]~35\);

-- Location: FF_X45_Y70_N7
\U1|distToCircleCenterSquared[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(14));

-- Location: FF_X45_Y71_N31
\U1|distToCircleCenterSquared[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(10));

-- Location: FF_X45_Y70_N3
\U1|distToCircleCenterSquared[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(12));

-- Location: FF_X45_Y70_N5
\U1|distToCircleCenterSquared[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(13));

-- Location: FF_X45_Y70_N1
\U1|distToCircleCenterSquared[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(11));

-- Location: LCCOMB_X45_Y70_N28
\U1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan7~1_combout\ = ((!\U1|distToCircleCenterSquared\(10) & (!\U1|distToCircleCenterSquared\(12) & !\U1|distToCircleCenterSquared\(11)))) # (!\U1|distToCircleCenterSquared\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|distToCircleCenterSquared\(10),
	datab => \U1|distToCircleCenterSquared\(12),
	datac => \U1|distToCircleCenterSquared\(13),
	datad => \U1|distToCircleCenterSquared\(11),
	combout => \U1|LessThan7~1_combout\);

-- Location: LCCOMB_X45_Y70_N8
\U1|distToCircleCenterSquared[15]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[15]~36_combout\ = (\U1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT15\ & (\U1|distToCircleCenterSquared[14]~35\ & VCC)) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\U1|distToCircleCenterSquared[14]~35\)))) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\U1|distToCircleCenterSquared[14]~35\)) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\U1|distToCircleCenterSquared[14]~35\) # (GND)))))
-- \U1|distToCircleCenterSquared[15]~37\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\U1|Mult1|auto_generated|mac_out2~DATAOUT15\ & !\U1|distToCircleCenterSquared[14]~35\)) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- ((!\U1|distToCircleCenterSquared[14]~35\) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[14]~35\,
	combout => \U1|distToCircleCenterSquared[15]~36_combout\,
	cout => \U1|distToCircleCenterSquared[15]~37\);

-- Location: LCCOMB_X45_Y70_N10
\U1|distToCircleCenterSquared[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[16]~38_combout\ = ((\U1|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (\U1|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (!\U1|distToCircleCenterSquared[15]~37\)))) # (GND)
-- \U1|distToCircleCenterSquared[16]~39\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT16\) # (!\U1|distToCircleCenterSquared[15]~37\))) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT16\ & 
-- (\U1|Mult1|auto_generated|mac_out2~DATAOUT16\ & !\U1|distToCircleCenterSquared[15]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[15]~37\,
	combout => \U1|distToCircleCenterSquared[16]~38_combout\,
	cout => \U1|distToCircleCenterSquared[16]~39\);

-- Location: LCCOMB_X45_Y70_N12
\U1|distToCircleCenterSquared[17]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[17]~40_combout\ = (\U1|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT17\ & (\U1|distToCircleCenterSquared[16]~39\ & VCC)) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT17\ & 
-- (!\U1|distToCircleCenterSquared[16]~39\)))) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\U1|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\U1|distToCircleCenterSquared[16]~39\)) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\U1|distToCircleCenterSquared[16]~39\) # (GND)))))
-- \U1|distToCircleCenterSquared[17]~41\ = CARRY((\U1|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\U1|Mult1|auto_generated|mac_out2~DATAOUT17\ & !\U1|distToCircleCenterSquared[16]~39\)) # (!\U1|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- ((!\U1|distToCircleCenterSquared[16]~39\) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[16]~39\,
	combout => \U1|distToCircleCenterSquared[17]~40_combout\,
	cout => \U1|distToCircleCenterSquared[17]~41\);

-- Location: FF_X45_Y70_N13
\U1|distToCircleCenterSquared[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(17));

-- Location: FF_X45_Y70_N9
\U1|distToCircleCenterSquared[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(15));

-- Location: LCCOMB_X45_Y70_N14
\U1|distToCircleCenterSquared[18]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[18]~42_combout\ = ((\U1|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (\U1|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (!\U1|distToCircleCenterSquared[17]~41\)))) # (GND)
-- \U1|distToCircleCenterSquared[18]~43\ = CARRY((\U1|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\U1|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\U1|distToCircleCenterSquared[17]~41\))) # (!\U1|Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- (\U1|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\U1|distToCircleCenterSquared[17]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \U1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \U1|distToCircleCenterSquared[17]~41\,
	combout => \U1|distToCircleCenterSquared[18]~42_combout\,
	cout => \U1|distToCircleCenterSquared[18]~43\);

-- Location: FF_X45_Y70_N15
\U1|distToCircleCenterSquared[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[18]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(18));

-- Location: FF_X45_Y70_N11
\U1|distToCircleCenterSquared[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[16]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(16));

-- Location: LCCOMB_X45_Y70_N26
\U1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan7~0_combout\ = (!\U1|distToCircleCenterSquared\(17) & (!\U1|distToCircleCenterSquared\(15) & (!\U1|distToCircleCenterSquared\(18) & !\U1|distToCircleCenterSquared\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|distToCircleCenterSquared\(17),
	datab => \U1|distToCircleCenterSquared\(15),
	datac => \U1|distToCircleCenterSquared\(18),
	datad => \U1|distToCircleCenterSquared\(16),
	combout => \U1|LessThan7~0_combout\);

-- Location: LCCOMB_X45_Y70_N16
\U1|distToCircleCenterSquared[19]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|distToCircleCenterSquared[19]~44_combout\ = \U1|Mult1|auto_generated|mac_out2~DATAOUT19\ $ (\U1|distToCircleCenterSquared[18]~43\ $ (\U1|Mult0|auto_generated|mac_out2~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => \U1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	cin => \U1|distToCircleCenterSquared[18]~43\,
	combout => \U1|distToCircleCenterSquared[19]~44_combout\);

-- Location: FF_X45_Y70_N17
\U1|distToCircleCenterSquared[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|distToCircleCenterSquared[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|distToCircleCenterSquared\(19));

-- Location: LCCOMB_X45_Y70_N30
\U1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan7~2_combout\ = (\U1|LessThan7~0_combout\ & (!\U1|distToCircleCenterSquared\(19) & ((\U1|LessThan7~1_combout\) # (!\U1|distToCircleCenterSquared\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|distToCircleCenterSquared\(14),
	datab => \U1|LessThan7~1_combout\,
	datac => \U1|LessThan7~0_combout\,
	datad => \U1|distToCircleCenterSquared\(19),
	combout => \U1|LessThan7~2_combout\);

-- Location: LCCOMB_X41_Y69_N18
\U1|red_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|red_out~0_combout\ = (\U1|video_on~combout\ & ((\U1|LessThan7~2_combout\ & ((\U1|currentCircleColor\(0)))) # (!\U1|LessThan7~2_combout\ & (\U1|currentColor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|currentColor\(0),
	datab => \U1|currentCircleColor\(0),
	datac => \U1|video_on~combout\,
	datad => \U1|LessThan7~2_combout\,
	combout => \U1|red_out~0_combout\);

-- Location: FF_X41_Y69_N19
\U1|red_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|red_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|red_out\(7));

-- Location: LCCOMB_X41_Y69_N28
\U1|currentCircleColor[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|currentCircleColor[1]~1_combout\ = \U1|currentCircleColor\(1) $ (((!\KEY[1]~input_o\ & (!\U1|enableCircleSwitch~q\ & \U1|currentCircleColor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \U1|enableCircleSwitch~q\,
	datac => \U1|currentCircleColor\(1),
	datad => \U1|currentCircleColor\(0),
	combout => \U1|currentCircleColor[1]~1_combout\);

-- Location: FF_X41_Y69_N29
\U1|currentCircleColor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|currentCircleColor[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|currentCircleColor\(1));

-- Location: LCCOMB_X41_Y69_N30
\U1|currentColor[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|currentColor[1]~1_combout\ = \U1|currentColor\(1) $ (((!\U1|enableSwitch~q\ & (!\KEY[0]~input_o\ & \U1|currentColor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|enableSwitch~q\,
	datab => \KEY[0]~input_o\,
	datac => \U1|currentColor\(1),
	datad => \U1|currentColor\(0),
	combout => \U1|currentColor[1]~1_combout\);

-- Location: FF_X41_Y69_N31
\U1|currentColor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|currentColor[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|currentColor\(1));

-- Location: LCCOMB_X41_Y69_N20
\U1|green_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out~0_combout\ = (\U1|video_on~combout\ & ((\U1|LessThan7~2_combout\ & (\U1|currentCircleColor\(1))) # (!\U1|LessThan7~2_combout\ & ((\U1|currentColor\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|video_on~combout\,
	datab => \U1|currentCircleColor\(1),
	datac => \U1|currentColor\(1),
	datad => \U1|LessThan7~2_combout\,
	combout => \U1|green_out~0_combout\);

-- Location: FF_X41_Y69_N21
\U1|green_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|green_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|green_out\(7));

-- Location: LCCOMB_X41_Y69_N26
\U1|currentColor[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|currentColor[2]~2_combout\ = (!\U1|enableSwitch~q\ & (!\KEY[0]~input_o\ & (\U1|currentColor\(1) & \U1|currentColor\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|enableSwitch~q\,
	datab => \KEY[0]~input_o\,
	datac => \U1|currentColor\(1),
	datad => \U1|currentColor\(0),
	combout => \U1|currentColor[2]~2_combout\);

-- Location: LCCOMB_X41_Y69_N2
\U1|currentColor[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|currentColor[2]~3_combout\ = \U1|currentColor[2]~2_combout\ $ (\U1|currentColor\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|currentColor[2]~2_combout\,
	datac => \U1|currentColor\(2),
	combout => \U1|currentColor[2]~3_combout\);

-- Location: FF_X41_Y69_N3
\U1|currentColor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|currentColor[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|currentColor\(2));

-- Location: LCCOMB_X41_Y69_N16
\U1|currentCircleColor[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|currentCircleColor[2]~2_combout\ = (!\KEY[1]~input_o\ & (\U1|currentCircleColor\(0) & (!\U1|enableCircleSwitch~q\ & \U1|currentCircleColor\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \U1|currentCircleColor\(0),
	datac => \U1|enableCircleSwitch~q\,
	datad => \U1|currentCircleColor\(1),
	combout => \U1|currentCircleColor[2]~2_combout\);

-- Location: LCCOMB_X41_Y69_N8
\U1|currentCircleColor[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|currentCircleColor[2]~3_combout\ = \U1|currentCircleColor\(2) $ (\U1|currentCircleColor[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|currentCircleColor\(2),
	datad => \U1|currentCircleColor[2]~2_combout\,
	combout => \U1|currentCircleColor[2]~3_combout\);

-- Location: FF_X41_Y69_N9
\U1|currentCircleColor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|currentCircleColor[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|currentCircleColor\(2));

-- Location: LCCOMB_X41_Y69_N14
\U1|blue_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|blue_out~0_combout\ = (\U1|video_on~combout\ & ((\U1|LessThan7~2_combout\ & ((\U1|currentCircleColor\(2)))) # (!\U1|LessThan7~2_combout\ & (\U1|currentColor\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|video_on~combout\,
	datab => \U1|currentColor\(2),
	datac => \U1|currentCircleColor\(2),
	datad => \U1|LessThan7~2_combout\,
	combout => \U1|blue_out~0_combout\);

-- Location: FF_X41_Y69_N15
\U1|blue_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \U1|blue_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|blue_out\(7));

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
END structure;


