-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "07/20/2021 10:46:48"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FA_4_bits IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	cin : IN std_logic;
	cout : OUT std_logic;
	z : OUT std_logic_vector(3 DOWNTO 0)
	);
END FA_4_bits;

ARCHITECTURE structure OF FA_4_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_z : std_logic_vector(3 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \z[0]~output_o\ : std_logic;
SIGNAL \z[1]~output_o\ : std_logic;
SIGNAL \z[2]~output_o\ : std_logic;
SIGNAL \z[3]~output_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \a0|C_out~0_combout\ : std_logic;
SIGNAL \a1|C_out~0_combout\ : std_logic;
SIGNAL \a2|C_out~0_combout\ : std_logic;
SIGNAL \a3|C_out~0_combout\ : std_logic;
SIGNAL \a0|S~0_combout\ : std_logic;
SIGNAL \a1|S~combout\ : std_logic;
SIGNAL \a2|S~combout\ : std_logic;
SIGNAL \a3|S~combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_cin <= cin;
cout <= ww_cout;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a3|C_out~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0|S~0_combout\,
	devoe => ww_devoe,
	o => \z[0]~output_o\);

\z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a1|S~combout\,
	devoe => ww_devoe,
	o => \z[1]~output_o\);

\z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a2|S~combout\,
	devoe => ww_devoe,
	o => \z[2]~output_o\);

\z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a3|S~combout\,
	devoe => ww_devoe,
	o => \z[3]~output_o\);

\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

\a0|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|C_out~0_combout\ = (\y[0]~input_o\ & ((\cin~input_o\) # (\x[0]~input_o\))) # (!\y[0]~input_o\ & (\cin~input_o\ & \x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \cin~input_o\,
	datac => \x[0]~input_o\,
	combout => \a0|C_out~0_combout\);

\a1|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a1|C_out~0_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\) # (\a0|C_out~0_combout\))) # (!\x[1]~input_o\ & (\y[1]~input_o\ & \a0|C_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datac => \a0|C_out~0_combout\,
	combout => \a1|C_out~0_combout\);

\a2|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a2|C_out~0_combout\ = (\x[2]~input_o\ & ((\y[2]~input_o\) # (\a1|C_out~0_combout\))) # (!\x[2]~input_o\ & (\y[2]~input_o\ & \a1|C_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \y[2]~input_o\,
	datac => \a1|C_out~0_combout\,
	combout => \a2|C_out~0_combout\);

\a3|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|C_out~0_combout\ = (\x[3]~input_o\ & ((\y[3]~input_o\) # (\a2|C_out~0_combout\))) # (!\x[3]~input_o\ & (\y[3]~input_o\ & \a2|C_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \y[3]~input_o\,
	datac => \a2|C_out~0_combout\,
	combout => \a3|C_out~0_combout\);

\a0|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|S~0_combout\ = \y[0]~input_o\ $ (\cin~input_o\ $ (\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \cin~input_o\,
	datac => \x[0]~input_o\,
	combout => \a0|S~0_combout\);

\a1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \a1|S~combout\ = \x[1]~input_o\ $ (\y[1]~input_o\ $ (\a0|C_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datac => \a0|C_out~0_combout\,
	combout => \a1|S~combout\);

\a2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \a2|S~combout\ = \x[2]~input_o\ $ (\y[2]~input_o\ $ (\a1|C_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \y[2]~input_o\,
	datac => \a1|C_out~0_combout\,
	combout => \a2|S~combout\);

\a3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|S~combout\ = \x[3]~input_o\ $ (\y[3]~input_o\ $ (\a2|C_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \y[3]~input_o\,
	datac => \a2|C_out~0_combout\,
	combout => \a3|S~combout\);

ww_cout <= \cout~output_o\;

ww_z(0) <= \z[0]~output_o\;

ww_z(1) <= \z[1]~output_o\;

ww_z(2) <= \z[2]~output_o\;

ww_z(3) <= \z[3]~output_o\;
END structure;


