-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/06/2019 17:15:16"

-- 
-- Device: Altera 5CGXFC9D6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	net_encoder IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	pkt32bseg_i : IN std_logic_vector(31 DOWNTO 0);
	pkt32bseg_o : OUT std_logic_vector(31 DOWNTO 0)
	);
END net_encoder;

-- Design Ports Information
-- clk	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[4]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[5]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[8]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[9]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[10]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[11]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[12]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[13]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[14]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[16]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[17]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[18]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[19]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[20]	=>  Location: PIN_E23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[21]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[22]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[23]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[24]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[25]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[26]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[27]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[28]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[29]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[30]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_i[31]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[0]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[2]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[5]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[6]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[7]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[9]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[11]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[12]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[13]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[14]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[15]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[16]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[17]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[18]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[19]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[20]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[21]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[22]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[23]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[24]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[25]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[26]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[27]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[28]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[29]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[30]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pkt32bseg_o[31]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF net_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_pkt32bseg_i : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pkt32bseg_o : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[0]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[1]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[2]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[3]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[4]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[5]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[6]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[7]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[8]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[9]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[10]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[11]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[12]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[13]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[14]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[15]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[16]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[17]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[18]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[19]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[20]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[21]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[22]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[23]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[24]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[25]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[26]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[27]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[28]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[29]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[30]~input_o\ : std_logic;
SIGNAL \pkt32bseg_i[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_pkt32bseg_i <= pkt32bseg_i;
pkt32bseg_o <= ww_pkt32bseg_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X121_Y16_N56
\pkt32bseg_o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(0));

-- Location: IOOBUF_X88_Y115_N19
\pkt32bseg_o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(1));

-- Location: IOOBUF_X121_Y70_N22
\pkt32bseg_o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(2));

-- Location: IOOBUF_X69_Y0_N2
\pkt32bseg_o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(3));

-- Location: IOOBUF_X46_Y0_N53
\pkt32bseg_o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(4));

-- Location: IOOBUF_X86_Y0_N19
\pkt32bseg_o[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(5));

-- Location: IOOBUF_X121_Y16_N5
\pkt32bseg_o[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(6));

-- Location: IOOBUF_X94_Y0_N2
\pkt32bseg_o[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(7));

-- Location: IOOBUF_X46_Y0_N2
\pkt32bseg_o[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(8));

-- Location: IOOBUF_X121_Y70_N56
\pkt32bseg_o[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(9));

-- Location: IOOBUF_X44_Y0_N19
\pkt32bseg_o[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(10));

-- Location: IOOBUF_X121_Y13_N62
\pkt32bseg_o[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(11));

-- Location: IOOBUF_X121_Y63_N22
\pkt32bseg_o[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(12));

-- Location: IOOBUF_X75_Y115_N19
\pkt32bseg_o[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(13));

-- Location: IOOBUF_X121_Y85_N22
\pkt32bseg_o[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(14));

-- Location: IOOBUF_X121_Y55_N39
\pkt32bseg_o[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(15));

-- Location: IOOBUF_X79_Y0_N2
\pkt32bseg_o[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(16));

-- Location: IOOBUF_X84_Y0_N53
\pkt32bseg_o[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(17));

-- Location: IOOBUF_X121_Y46_N39
\pkt32bseg_o[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(18));

-- Location: IOOBUF_X121_Y45_N22
\pkt32bseg_o[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(19));

-- Location: IOOBUF_X42_Y0_N36
\pkt32bseg_o[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(20));

-- Location: IOOBUF_X121_Y48_N22
\pkt32bseg_o[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(21));

-- Location: IOOBUF_X50_Y0_N36
\pkt32bseg_o[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(22));

-- Location: IOOBUF_X121_Y69_N22
\pkt32bseg_o[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(23));

-- Location: IOOBUF_X42_Y0_N19
\pkt32bseg_o[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(24));

-- Location: IOOBUF_X69_Y115_N36
\pkt32bseg_o[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(25));

-- Location: IOOBUF_X82_Y0_N93
\pkt32bseg_o[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(26));

-- Location: IOOBUF_X121_Y67_N62
\pkt32bseg_o[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(27));

-- Location: IOOBUF_X102_Y115_N2
\pkt32bseg_o[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(28));

-- Location: IOOBUF_X52_Y115_N19
\pkt32bseg_o[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(29));

-- Location: IOOBUF_X121_Y84_N39
\pkt32bseg_o[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(30));

-- Location: IOOBUF_X65_Y0_N76
\pkt32bseg_o[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pkt32bseg_o(31));

-- Location: IOIBUF_X98_Y0_N58
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X121_Y87_N38
\pkt32bseg_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(0),
	o => \pkt32bseg_i[0]~input_o\);

-- Location: IOIBUF_X121_Y85_N38
\pkt32bseg_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(1),
	o => \pkt32bseg_i[1]~input_o\);

-- Location: IOIBUF_X94_Y115_N18
\pkt32bseg_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(2),
	o => \pkt32bseg_i[2]~input_o\);

-- Location: IOIBUF_X40_Y115_N41
\pkt32bseg_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(3),
	o => \pkt32bseg_i[3]~input_o\);

-- Location: IOIBUF_X121_Y57_N55
\pkt32bseg_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(4),
	o => \pkt32bseg_i[4]~input_o\);

-- Location: IOIBUF_X67_Y115_N1
\pkt32bseg_i[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(5),
	o => \pkt32bseg_i[5]~input_o\);

-- Location: IOIBUF_X121_Y43_N78
\pkt32bseg_i[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(6),
	o => \pkt32bseg_i[6]~input_o\);

-- Location: IOIBUF_X71_Y115_N35
\pkt32bseg_i[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(7),
	o => \pkt32bseg_i[7]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\pkt32bseg_i[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(8),
	o => \pkt32bseg_i[8]~input_o\);

-- Location: IOIBUF_X100_Y0_N18
\pkt32bseg_i[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(9),
	o => \pkt32bseg_i[9]~input_o\);

-- Location: IOIBUF_X50_Y115_N1
\pkt32bseg_i[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(10),
	o => \pkt32bseg_i[10]~input_o\);

-- Location: IOIBUF_X48_Y0_N75
\pkt32bseg_i[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(11),
	o => \pkt32bseg_i[11]~input_o\);

-- Location: IOIBUF_X42_Y115_N18
\pkt32bseg_i[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(12),
	o => \pkt32bseg_i[12]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\pkt32bseg_i[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(13),
	o => \pkt32bseg_i[13]~input_o\);

-- Location: IOIBUF_X94_Y0_N35
\pkt32bseg_i[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(14),
	o => \pkt32bseg_i[14]~input_o\);

-- Location: IOIBUF_X104_Y115_N1
\pkt32bseg_i[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(15),
	o => \pkt32bseg_i[15]~input_o\);

-- Location: IOIBUF_X10_Y0_N35
\pkt32bseg_i[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(16),
	o => \pkt32bseg_i[16]~input_o\);

-- Location: IOIBUF_X71_Y0_N52
\pkt32bseg_i[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(17),
	o => \pkt32bseg_i[17]~input_o\);

-- Location: IOIBUF_X69_Y115_N18
\pkt32bseg_i[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(18),
	o => \pkt32bseg_i[18]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\pkt32bseg_i[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(19),
	o => \pkt32bseg_i[19]~input_o\);

-- Location: IOIBUF_X121_Y85_N55
\pkt32bseg_i[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(20),
	o => \pkt32bseg_i[20]~input_o\);

-- Location: IOIBUF_X121_Y46_N55
\pkt32bseg_i[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(21),
	o => \pkt32bseg_i[21]~input_o\);

-- Location: IOIBUF_X121_Y51_N61
\pkt32bseg_i[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(22),
	o => \pkt32bseg_i[22]~input_o\);

-- Location: IOIBUF_X79_Y115_N52
\pkt32bseg_i[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(23),
	o => \pkt32bseg_i[23]~input_o\);

-- Location: IOIBUF_X10_Y0_N52
\pkt32bseg_i[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(24),
	o => \pkt32bseg_i[24]~input_o\);

-- Location: IOIBUF_X75_Y0_N52
\pkt32bseg_i[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(25),
	o => \pkt32bseg_i[25]~input_o\);

-- Location: IOIBUF_X92_Y115_N35
\pkt32bseg_i[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(26),
	o => \pkt32bseg_i[26]~input_o\);

-- Location: IOIBUF_X50_Y0_N18
\pkt32bseg_i[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(27),
	o => \pkt32bseg_i[27]~input_o\);

-- Location: IOIBUF_X88_Y0_N35
\pkt32bseg_i[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(28),
	o => \pkt32bseg_i[28]~input_o\);

-- Location: IOIBUF_X121_Y45_N38
\pkt32bseg_i[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(29),
	o => \pkt32bseg_i[29]~input_o\);

-- Location: IOIBUF_X65_Y0_N41
\pkt32bseg_i[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(30),
	o => \pkt32bseg_i[30]~input_o\);

-- Location: IOIBUF_X69_Y115_N1
\pkt32bseg_i[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pkt32bseg_i(31),
	o => \pkt32bseg_i[31]~input_o\);

-- Location: MLABCELL_X6_Y12_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;

