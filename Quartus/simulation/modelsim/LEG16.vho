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

-- DATE "05/05/2022 18:24:28"

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
	VGA_B : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END VGA_Test;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
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
SIGNAL \SW[7]~input_o\ : std_logic;
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
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|clk\ : std_logic_vector(4 DOWNTO 0);

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

\U1|video_PLL_inst|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|video_PLL_inst|altpll_component|auto_generated|clk\(0));

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
END structure;


