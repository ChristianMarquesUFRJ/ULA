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

-- DATE "07/30/2021 23:20:34"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_2_numbers IS
    PORT (
	clk : IN std_logic;
	A : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter_2_numbers;

ARCHITECTURE structure OF counter_2_numbers IS
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
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[0]~q\ : std_logic;
SIGNAL \A_counter|Add0~0_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[1]~q\ : std_logic;
SIGNAL \A_counter|Add0~1\ : std_logic;
SIGNAL \A_counter|Add0~2_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[2]~q\ : std_logic;
SIGNAL \A_counter|Add0~3\ : std_logic;
SIGNAL \A_counter|Add0~4_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[3]~q\ : std_logic;
SIGNAL \A_counter|Add0~5\ : std_logic;
SIGNAL \A_counter|Add0~6_combout\ : std_logic;
SIGNAL \A_counter|Equal0~0_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[16]~q\ : std_logic;
SIGNAL \A_counter|Add0~7\ : std_logic;
SIGNAL \A_counter|Add0~8_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[4]~q\ : std_logic;
SIGNAL \A_counter|Add0~9\ : std_logic;
SIGNAL \A_counter|Add0~11\ : std_logic;
SIGNAL \A_counter|Add0~12_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[6]~q\ : std_logic;
SIGNAL \A_counter|Add0~13\ : std_logic;
SIGNAL \A_counter|Add0~14_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[20]~q\ : std_logic;
SIGNAL \A_counter|Add0~33\ : std_logic;
SIGNAL \A_counter|Add0~34_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[17]~q\ : std_logic;
SIGNAL \A_counter|Add0~35\ : std_logic;
SIGNAL \A_counter|Add0~36_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[18]~q\ : std_logic;
SIGNAL \A_counter|Add0~37\ : std_logic;
SIGNAL \A_counter|Add0~38_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[19]~q\ : std_logic;
SIGNAL \A_counter|Add0~39\ : std_logic;
SIGNAL \A_counter|Add0~40_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[21]~q\ : std_logic;
SIGNAL \A_counter|Add0~41\ : std_logic;
SIGNAL \A_counter|Add0~42_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[22]~q\ : std_logic;
SIGNAL \A_counter|Add0~43\ : std_logic;
SIGNAL \A_counter|Add0~44_combout\ : std_logic;
SIGNAL \A_counter|Equal0~6_combout\ : std_logic;
SIGNAL \A_counter|prescaler~1_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[7]~q\ : std_logic;
SIGNAL \A_counter|Add0~15\ : std_logic;
SIGNAL \A_counter|Add0~16_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[8]~q\ : std_logic;
SIGNAL \A_counter|Add0~17\ : std_logic;
SIGNAL \A_counter|Add0~18_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[9]~q\ : std_logic;
SIGNAL \A_counter|Add0~19\ : std_logic;
SIGNAL \A_counter|Add0~20_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[10]~q\ : std_logic;
SIGNAL \A_counter|Add0~21\ : std_logic;
SIGNAL \A_counter|Add0~22_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[11]~q\ : std_logic;
SIGNAL \A_counter|Add0~23\ : std_logic;
SIGNAL \A_counter|Add0~24_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[12]~q\ : std_logic;
SIGNAL \A_counter|Add0~25\ : std_logic;
SIGNAL \A_counter|Add0~26_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[13]~q\ : std_logic;
SIGNAL \A_counter|Add0~27\ : std_logic;
SIGNAL \A_counter|Add0~28_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[14]~q\ : std_logic;
SIGNAL \A_counter|Add0~29\ : std_logic;
SIGNAL \A_counter|Add0~30_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[15]~q\ : std_logic;
SIGNAL \A_counter|Add0~31\ : std_logic;
SIGNAL \A_counter|Add0~32_combout\ : std_logic;
SIGNAL \A_counter|Equal0~5_combout\ : std_logic;
SIGNAL \A_counter|prescaler~0_combout\ : std_logic;
SIGNAL \A_counter|counter_process:prescaler[5]~q\ : std_logic;
SIGNAL \A_counter|Add0~10_combout\ : std_logic;
SIGNAL \A_counter|Equal0~1_combout\ : std_logic;
SIGNAL \A_counter|Equal0~2_combout\ : std_logic;
SIGNAL \A_counter|Equal0~3_combout\ : std_logic;
SIGNAL \A_counter|Equal0~4_combout\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[0]~0_combout\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[0]~q\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[1]~0_combout\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[1]~1_combout\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[1]~q\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[2]~0_combout\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[2]~q\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[3]~0_combout\ : std_logic;
SIGNAL \A_counter|counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[16]~q\ : std_logic;
SIGNAL \B_counter|Add0~1\ : std_logic;
SIGNAL \B_counter|Add0~3\ : std_logic;
SIGNAL \B_counter|Add0~4_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[2]~q\ : std_logic;
SIGNAL \B_counter|Add0~5\ : std_logic;
SIGNAL \B_counter|Add0~6_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[20]~q\ : std_logic;
SIGNAL \B_counter|Add0~33\ : std_logic;
SIGNAL \B_counter|Add0~34_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[17]~q\ : std_logic;
SIGNAL \B_counter|Add0~35\ : std_logic;
SIGNAL \B_counter|Add0~36_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[18]~q\ : std_logic;
SIGNAL \B_counter|Add0~37\ : std_logic;
SIGNAL \B_counter|Add0~38_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[19]~q\ : std_logic;
SIGNAL \B_counter|Add0~39\ : std_logic;
SIGNAL \B_counter|Add0~40_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[21]~q\ : std_logic;
SIGNAL \B_counter|Add0~41\ : std_logic;
SIGNAL \B_counter|Add0~42_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[22]~q\ : std_logic;
SIGNAL \B_counter|Add0~43\ : std_logic;
SIGNAL \B_counter|Add0~44_combout\ : std_logic;
SIGNAL \B_counter|Equal0~6_combout\ : std_logic;
SIGNAL \B_counter|prescaler~1_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[3]~q\ : std_logic;
SIGNAL \B_counter|Add0~7\ : std_logic;
SIGNAL \B_counter|Add0~8_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[4]~q\ : std_logic;
SIGNAL \B_counter|Add0~9\ : std_logic;
SIGNAL \B_counter|Add0~10_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[5]~q\ : std_logic;
SIGNAL \B_counter|Add0~11\ : std_logic;
SIGNAL \B_counter|Add0~12_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[6]~q\ : std_logic;
SIGNAL \B_counter|Add0~13\ : std_logic;
SIGNAL \B_counter|Add0~14_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[7]~q\ : std_logic;
SIGNAL \B_counter|Add0~15\ : std_logic;
SIGNAL \B_counter|Add0~16_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[8]~q\ : std_logic;
SIGNAL \B_counter|Add0~17\ : std_logic;
SIGNAL \B_counter|Add0~18_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[9]~q\ : std_logic;
SIGNAL \B_counter|Add0~19\ : std_logic;
SIGNAL \B_counter|Add0~20_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[10]~q\ : std_logic;
SIGNAL \B_counter|Add0~21\ : std_logic;
SIGNAL \B_counter|Add0~22_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[11]~q\ : std_logic;
SIGNAL \B_counter|Add0~23\ : std_logic;
SIGNAL \B_counter|Add0~24_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[12]~q\ : std_logic;
SIGNAL \B_counter|Add0~25\ : std_logic;
SIGNAL \B_counter|Add0~26_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[13]~q\ : std_logic;
SIGNAL \B_counter|Add0~27\ : std_logic;
SIGNAL \B_counter|Add0~28_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[14]~q\ : std_logic;
SIGNAL \B_counter|Add0~29\ : std_logic;
SIGNAL \B_counter|Add0~30_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[15]~q\ : std_logic;
SIGNAL \B_counter|Add0~31\ : std_logic;
SIGNAL \B_counter|Add0~32_combout\ : std_logic;
SIGNAL \B_counter|Equal0~5_combout\ : std_logic;
SIGNAL \B_counter|prescaler~0_combout\ : std_logic;
SIGNAL \B_counter|counter_process:prescaler[1]~q\ : std_logic;
SIGNAL \B_counter|Add0~2_combout\ : std_logic;
SIGNAL \B_counter|Add0~0_combout\ : std_logic;
SIGNAL \B_counter|Equal0~0_combout\ : std_logic;
SIGNAL \B_counter|Equal0~1_combout\ : std_logic;
SIGNAL \B_counter|Equal0~2_combout\ : std_logic;
SIGNAL \B_counter|Equal0~3_combout\ : std_logic;
SIGNAL \B_counter|Equal0~4_combout\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[0]~0_combout\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[0]~q\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[1]~0_combout\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[1]~1_combout\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[1]~2_combout\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[1]~q\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[2]~0_combout\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[2]~q\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[3]~0_combout\ : std_logic;
SIGNAL \B_counter|counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \B_counter|ALT_INV_counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \A_counter|ALT_INV_counter_process:counter_output[3]~q\ : std_logic;

BEGIN

ww_clk <= clk;
A <= ww_A;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\B_counter|ALT_INV_counter_process:counter_output[3]~q\ <= NOT \B_counter|counter_process:counter_output[3]~q\;
\A_counter|ALT_INV_counter_process:counter_output[3]~q\ <= NOT \A_counter|counter_process:counter_output[3]~q\;

\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_counter|counter_process:counter_output[0]~q\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_counter|counter_process:counter_output[1]~q\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_counter|counter_process:counter_output[2]~q\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_counter|ALT_INV_counter_process:counter_output[3]~q\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_counter|counter_process:counter_output[0]~q\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_counter|counter_process:counter_output[1]~q\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_counter|counter_process:counter_output[2]~q\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_counter|ALT_INV_counter_process:counter_output[3]~q\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\A_counter|counter_process:prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[0]~q\);

\A_counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~0_combout\ = \A_counter|counter_process:prescaler[0]~q\ $ (VCC)
-- \A_counter|Add0~1\ = CARRY(\A_counter|counter_process:prescaler[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[0]~q\,
	datad => VCC,
	combout => \A_counter|Add0~0_combout\,
	cout => \A_counter|Add0~1\);

\A_counter|counter_process:prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[1]~q\);

\A_counter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~2_combout\ = (\A_counter|counter_process:prescaler[1]~q\ & (!\A_counter|Add0~1\)) # (!\A_counter|counter_process:prescaler[1]~q\ & ((\A_counter|Add0~1\) # (GND)))
-- \A_counter|Add0~3\ = CARRY((!\A_counter|Add0~1\) # (!\A_counter|counter_process:prescaler[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[1]~q\,
	datad => VCC,
	cin => \A_counter|Add0~1\,
	combout => \A_counter|Add0~2_combout\,
	cout => \A_counter|Add0~3\);

\A_counter|counter_process:prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[2]~q\);

\A_counter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~4_combout\ = (\A_counter|counter_process:prescaler[2]~q\ & (\A_counter|Add0~3\ $ (GND))) # (!\A_counter|counter_process:prescaler[2]~q\ & (!\A_counter|Add0~3\ & VCC))
-- \A_counter|Add0~5\ = CARRY((\A_counter|counter_process:prescaler[2]~q\ & !\A_counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[2]~q\,
	datad => VCC,
	cin => \A_counter|Add0~3\,
	combout => \A_counter|Add0~4_combout\,
	cout => \A_counter|Add0~5\);

\A_counter|counter_process:prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[3]~q\);

\A_counter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~6_combout\ = (\A_counter|counter_process:prescaler[3]~q\ & (!\A_counter|Add0~5\)) # (!\A_counter|counter_process:prescaler[3]~q\ & ((\A_counter|Add0~5\) # (GND)))
-- \A_counter|Add0~7\ = CARRY((!\A_counter|Add0~5\) # (!\A_counter|counter_process:prescaler[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[3]~q\,
	datad => VCC,
	cin => \A_counter|Add0~5\,
	combout => \A_counter|Add0~6_combout\,
	cout => \A_counter|Add0~7\);

\A_counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Equal0~0_combout\ = (!\A_counter|Add0~0_combout\ & (!\A_counter|Add0~2_combout\ & (!\A_counter|Add0~4_combout\ & !\A_counter|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|Add0~0_combout\,
	datab => \A_counter|Add0~2_combout\,
	datac => \A_counter|Add0~4_combout\,
	datad => \A_counter|Add0~6_combout\,
	combout => \A_counter|Equal0~0_combout\);

\A_counter|counter_process:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[16]~q\);

\A_counter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~8_combout\ = (\A_counter|counter_process:prescaler[4]~q\ & (\A_counter|Add0~7\ $ (GND))) # (!\A_counter|counter_process:prescaler[4]~q\ & (!\A_counter|Add0~7\ & VCC))
-- \A_counter|Add0~9\ = CARRY((\A_counter|counter_process:prescaler[4]~q\ & !\A_counter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[4]~q\,
	datad => VCC,
	cin => \A_counter|Add0~7\,
	combout => \A_counter|Add0~8_combout\,
	cout => \A_counter|Add0~9\);

\A_counter|counter_process:prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[4]~q\);

\A_counter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~10_combout\ = (\A_counter|counter_process:prescaler[5]~q\ & (!\A_counter|Add0~9\)) # (!\A_counter|counter_process:prescaler[5]~q\ & ((\A_counter|Add0~9\) # (GND)))
-- \A_counter|Add0~11\ = CARRY((!\A_counter|Add0~9\) # (!\A_counter|counter_process:prescaler[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[5]~q\,
	datad => VCC,
	cin => \A_counter|Add0~9\,
	combout => \A_counter|Add0~10_combout\,
	cout => \A_counter|Add0~11\);

\A_counter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~12_combout\ = (\A_counter|counter_process:prescaler[6]~q\ & (\A_counter|Add0~11\ $ (GND))) # (!\A_counter|counter_process:prescaler[6]~q\ & (!\A_counter|Add0~11\ & VCC))
-- \A_counter|Add0~13\ = CARRY((\A_counter|counter_process:prescaler[6]~q\ & !\A_counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[6]~q\,
	datad => VCC,
	cin => \A_counter|Add0~11\,
	combout => \A_counter|Add0~12_combout\,
	cout => \A_counter|Add0~13\);

\A_counter|counter_process:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[6]~q\);

\A_counter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~14_combout\ = (\A_counter|counter_process:prescaler[7]~q\ & (!\A_counter|Add0~13\)) # (!\A_counter|counter_process:prescaler[7]~q\ & ((\A_counter|Add0~13\) # (GND)))
-- \A_counter|Add0~15\ = CARRY((!\A_counter|Add0~13\) # (!\A_counter|counter_process:prescaler[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[7]~q\,
	datad => VCC,
	cin => \A_counter|Add0~13\,
	combout => \A_counter|Add0~14_combout\,
	cout => \A_counter|Add0~15\);

\A_counter|counter_process:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[20]~q\);

\A_counter|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~32_combout\ = (\A_counter|counter_process:prescaler[16]~q\ & (\A_counter|Add0~31\ $ (GND))) # (!\A_counter|counter_process:prescaler[16]~q\ & (!\A_counter|Add0~31\ & VCC))
-- \A_counter|Add0~33\ = CARRY((\A_counter|counter_process:prescaler[16]~q\ & !\A_counter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[16]~q\,
	datad => VCC,
	cin => \A_counter|Add0~31\,
	combout => \A_counter|Add0~32_combout\,
	cout => \A_counter|Add0~33\);

\A_counter|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~34_combout\ = (\A_counter|counter_process:prescaler[17]~q\ & (!\A_counter|Add0~33\)) # (!\A_counter|counter_process:prescaler[17]~q\ & ((\A_counter|Add0~33\) # (GND)))
-- \A_counter|Add0~35\ = CARRY((!\A_counter|Add0~33\) # (!\A_counter|counter_process:prescaler[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[17]~q\,
	datad => VCC,
	cin => \A_counter|Add0~33\,
	combout => \A_counter|Add0~34_combout\,
	cout => \A_counter|Add0~35\);

\A_counter|counter_process:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[17]~q\);

\A_counter|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~36_combout\ = (\A_counter|counter_process:prescaler[18]~q\ & (\A_counter|Add0~35\ $ (GND))) # (!\A_counter|counter_process:prescaler[18]~q\ & (!\A_counter|Add0~35\ & VCC))
-- \A_counter|Add0~37\ = CARRY((\A_counter|counter_process:prescaler[18]~q\ & !\A_counter|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[18]~q\,
	datad => VCC,
	cin => \A_counter|Add0~35\,
	combout => \A_counter|Add0~36_combout\,
	cout => \A_counter|Add0~37\);

\A_counter|counter_process:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[18]~q\);

\A_counter|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~38_combout\ = (\A_counter|counter_process:prescaler[19]~q\ & (!\A_counter|Add0~37\)) # (!\A_counter|counter_process:prescaler[19]~q\ & ((\A_counter|Add0~37\) # (GND)))
-- \A_counter|Add0~39\ = CARRY((!\A_counter|Add0~37\) # (!\A_counter|counter_process:prescaler[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[19]~q\,
	datad => VCC,
	cin => \A_counter|Add0~37\,
	combout => \A_counter|Add0~38_combout\,
	cout => \A_counter|Add0~39\);

\A_counter|counter_process:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[19]~q\);

\A_counter|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~40_combout\ = (\A_counter|counter_process:prescaler[20]~q\ & (\A_counter|Add0~39\ $ (GND))) # (!\A_counter|counter_process:prescaler[20]~q\ & (!\A_counter|Add0~39\ & VCC))
-- \A_counter|Add0~41\ = CARRY((\A_counter|counter_process:prescaler[20]~q\ & !\A_counter|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[20]~q\,
	datad => VCC,
	cin => \A_counter|Add0~39\,
	combout => \A_counter|Add0~40_combout\,
	cout => \A_counter|Add0~41\);

\A_counter|counter_process:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[21]~q\);

\A_counter|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~42_combout\ = (\A_counter|counter_process:prescaler[21]~q\ & (!\A_counter|Add0~41\)) # (!\A_counter|counter_process:prescaler[21]~q\ & ((\A_counter|Add0~41\) # (GND)))
-- \A_counter|Add0~43\ = CARRY((!\A_counter|Add0~41\) # (!\A_counter|counter_process:prescaler[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[21]~q\,
	datad => VCC,
	cin => \A_counter|Add0~41\,
	combout => \A_counter|Add0~42_combout\,
	cout => \A_counter|Add0~43\);

\A_counter|counter_process:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[22]~q\);

\A_counter|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~44_combout\ = \A_counter|counter_process:prescaler[22]~q\ $ (!\A_counter|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[22]~q\,
	cin => \A_counter|Add0~43\,
	combout => \A_counter|Add0~44_combout\);

\A_counter|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Equal0~6_combout\ = (!\A_counter|Add0~40_combout\ & (!\A_counter|Add0~42_combout\ & !\A_counter|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_counter|Add0~40_combout\,
	datac => \A_counter|Add0~42_combout\,
	datad => \A_counter|Add0~44_combout\,
	combout => \A_counter|Equal0~6_combout\);

\A_counter|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|prescaler~1_combout\ = (\A_counter|Add0~14_combout\ & (((!\A_counter|Equal0~6_combout\) # (!\A_counter|Equal0~5_combout\)) # (!\A_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|Add0~14_combout\,
	datab => \A_counter|Equal0~4_combout\,
	datac => \A_counter|Equal0~5_combout\,
	datad => \A_counter|Equal0~6_combout\,
	combout => \A_counter|prescaler~1_combout\);

\A_counter|counter_process:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|prescaler~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[7]~q\);

\A_counter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~16_combout\ = (\A_counter|counter_process:prescaler[8]~q\ & (\A_counter|Add0~15\ $ (GND))) # (!\A_counter|counter_process:prescaler[8]~q\ & (!\A_counter|Add0~15\ & VCC))
-- \A_counter|Add0~17\ = CARRY((\A_counter|counter_process:prescaler[8]~q\ & !\A_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[8]~q\,
	datad => VCC,
	cin => \A_counter|Add0~15\,
	combout => \A_counter|Add0~16_combout\,
	cout => \A_counter|Add0~17\);

\A_counter|counter_process:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[8]~q\);

\A_counter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~18_combout\ = (\A_counter|counter_process:prescaler[9]~q\ & (!\A_counter|Add0~17\)) # (!\A_counter|counter_process:prescaler[9]~q\ & ((\A_counter|Add0~17\) # (GND)))
-- \A_counter|Add0~19\ = CARRY((!\A_counter|Add0~17\) # (!\A_counter|counter_process:prescaler[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[9]~q\,
	datad => VCC,
	cin => \A_counter|Add0~17\,
	combout => \A_counter|Add0~18_combout\,
	cout => \A_counter|Add0~19\);

\A_counter|counter_process:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[9]~q\);

\A_counter|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~20_combout\ = (\A_counter|counter_process:prescaler[10]~q\ & (\A_counter|Add0~19\ $ (GND))) # (!\A_counter|counter_process:prescaler[10]~q\ & (!\A_counter|Add0~19\ & VCC))
-- \A_counter|Add0~21\ = CARRY((\A_counter|counter_process:prescaler[10]~q\ & !\A_counter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[10]~q\,
	datad => VCC,
	cin => \A_counter|Add0~19\,
	combout => \A_counter|Add0~20_combout\,
	cout => \A_counter|Add0~21\);

\A_counter|counter_process:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[10]~q\);

\A_counter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~22_combout\ = (\A_counter|counter_process:prescaler[11]~q\ & (!\A_counter|Add0~21\)) # (!\A_counter|counter_process:prescaler[11]~q\ & ((\A_counter|Add0~21\) # (GND)))
-- \A_counter|Add0~23\ = CARRY((!\A_counter|Add0~21\) # (!\A_counter|counter_process:prescaler[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[11]~q\,
	datad => VCC,
	cin => \A_counter|Add0~21\,
	combout => \A_counter|Add0~22_combout\,
	cout => \A_counter|Add0~23\);

\A_counter|counter_process:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[11]~q\);

\A_counter|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~24_combout\ = (\A_counter|counter_process:prescaler[12]~q\ & (\A_counter|Add0~23\ $ (GND))) # (!\A_counter|counter_process:prescaler[12]~q\ & (!\A_counter|Add0~23\ & VCC))
-- \A_counter|Add0~25\ = CARRY((\A_counter|counter_process:prescaler[12]~q\ & !\A_counter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[12]~q\,
	datad => VCC,
	cin => \A_counter|Add0~23\,
	combout => \A_counter|Add0~24_combout\,
	cout => \A_counter|Add0~25\);

\A_counter|counter_process:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[12]~q\);

\A_counter|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~26_combout\ = (\A_counter|counter_process:prescaler[13]~q\ & (!\A_counter|Add0~25\)) # (!\A_counter|counter_process:prescaler[13]~q\ & ((\A_counter|Add0~25\) # (GND)))
-- \A_counter|Add0~27\ = CARRY((!\A_counter|Add0~25\) # (!\A_counter|counter_process:prescaler[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[13]~q\,
	datad => VCC,
	cin => \A_counter|Add0~25\,
	combout => \A_counter|Add0~26_combout\,
	cout => \A_counter|Add0~27\);

\A_counter|counter_process:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[13]~q\);

\A_counter|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~28_combout\ = (\A_counter|counter_process:prescaler[14]~q\ & (\A_counter|Add0~27\ $ (GND))) # (!\A_counter|counter_process:prescaler[14]~q\ & (!\A_counter|Add0~27\ & VCC))
-- \A_counter|Add0~29\ = CARRY((\A_counter|counter_process:prescaler[14]~q\ & !\A_counter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[14]~q\,
	datad => VCC,
	cin => \A_counter|Add0~27\,
	combout => \A_counter|Add0~28_combout\,
	cout => \A_counter|Add0~29\);

\A_counter|counter_process:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[14]~q\);

\A_counter|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Add0~30_combout\ = (\A_counter|counter_process:prescaler[15]~q\ & (!\A_counter|Add0~29\)) # (!\A_counter|counter_process:prescaler[15]~q\ & ((\A_counter|Add0~29\) # (GND)))
-- \A_counter|Add0~31\ = CARRY((!\A_counter|Add0~29\) # (!\A_counter|counter_process:prescaler[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[15]~q\,
	datad => VCC,
	cin => \A_counter|Add0~29\,
	combout => \A_counter|Add0~30_combout\,
	cout => \A_counter|Add0~31\);

\A_counter|counter_process:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[15]~q\);

\A_counter|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Equal0~5_combout\ = (!\A_counter|Add0~32_combout\ & (!\A_counter|Add0~34_combout\ & (!\A_counter|Add0~36_combout\ & !\A_counter|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|Add0~32_combout\,
	datab => \A_counter|Add0~34_combout\,
	datac => \A_counter|Add0~36_combout\,
	datad => \A_counter|Add0~38_combout\,
	combout => \A_counter|Equal0~5_combout\);

\A_counter|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|prescaler~0_combout\ = (\A_counter|Add0~10_combout\ & (((!\A_counter|Equal0~6_combout\) # (!\A_counter|Equal0~5_combout\)) # (!\A_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|Add0~10_combout\,
	datab => \A_counter|Equal0~4_combout\,
	datac => \A_counter|Equal0~5_combout\,
	datad => \A_counter|Equal0~6_combout\,
	combout => \A_counter|prescaler~0_combout\);

\A_counter|counter_process:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|prescaler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:prescaler[5]~q\);

\A_counter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Equal0~1_combout\ = (\A_counter|Add0~10_combout\ & (\A_counter|Add0~14_combout\ & (!\A_counter|Add0~8_combout\ & !\A_counter|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|Add0~10_combout\,
	datab => \A_counter|Add0~14_combout\,
	datac => \A_counter|Add0~8_combout\,
	datad => \A_counter|Add0~12_combout\,
	combout => \A_counter|Equal0~1_combout\);

\A_counter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Equal0~2_combout\ = (!\A_counter|Add0~16_combout\ & (!\A_counter|Add0~18_combout\ & (!\A_counter|Add0~20_combout\ & !\A_counter|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|Add0~16_combout\,
	datab => \A_counter|Add0~18_combout\,
	datac => \A_counter|Add0~20_combout\,
	datad => \A_counter|Add0~22_combout\,
	combout => \A_counter|Equal0~2_combout\);

\A_counter|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Equal0~3_combout\ = (!\A_counter|Add0~24_combout\ & (!\A_counter|Add0~26_combout\ & (!\A_counter|Add0~28_combout\ & !\A_counter|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|Add0~24_combout\,
	datab => \A_counter|Add0~26_combout\,
	datac => \A_counter|Add0~28_combout\,
	datad => \A_counter|Add0~30_combout\,
	combout => \A_counter|Equal0~3_combout\);

\A_counter|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|Equal0~4_combout\ = (\A_counter|Equal0~0_combout\ & (\A_counter|Equal0~1_combout\ & (\A_counter|Equal0~2_combout\ & \A_counter|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|Equal0~0_combout\,
	datab => \A_counter|Equal0~1_combout\,
	datac => \A_counter|Equal0~2_combout\,
	datad => \A_counter|Equal0~3_combout\,
	combout => \A_counter|Equal0~4_combout\);

\A_counter|counter_process:counter_output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|counter_process:counter_output[0]~0_combout\ = \A_counter|counter_process:counter_output[0]~q\ $ (((\A_counter|Equal0~4_combout\ & (\A_counter|Equal0~5_combout\ & \A_counter|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:counter_output[0]~q\,
	datab => \A_counter|Equal0~4_combout\,
	datac => \A_counter|Equal0~5_combout\,
	datad => \A_counter|Equal0~6_combout\,
	combout => \A_counter|counter_process:counter_output[0]~0_combout\);

\A_counter|counter_process:counter_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|counter_process:counter_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:counter_output[0]~q\);

\A_counter|counter_process:counter_output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|counter_process:counter_output[1]~0_combout\ = (\A_counter|counter_process:counter_output[0]~q\ & (\A_counter|Equal0~4_combout\ & (\A_counter|Equal0~5_combout\ & \A_counter|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:counter_output[0]~q\,
	datab => \A_counter|Equal0~4_combout\,
	datac => \A_counter|Equal0~5_combout\,
	datad => \A_counter|Equal0~6_combout\,
	combout => \A_counter|counter_process:counter_output[1]~0_combout\);

\A_counter|counter_process:counter_output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|counter_process:counter_output[1]~1_combout\ = \A_counter|counter_process:counter_output[1]~q\ $ (\A_counter|counter_process:counter_output[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_counter|counter_process:counter_output[1]~q\,
	datad => \A_counter|counter_process:counter_output[1]~0_combout\,
	combout => \A_counter|counter_process:counter_output[1]~1_combout\);

\A_counter|counter_process:counter_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|counter_process:counter_output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:counter_output[1]~q\);

\A_counter|counter_process:counter_output[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|counter_process:counter_output[2]~0_combout\ = \A_counter|counter_process:counter_output[2]~q\ $ (((\A_counter|counter_process:counter_output[1]~q\ & \A_counter|counter_process:counter_output[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_counter|counter_process:counter_output[2]~q\,
	datac => \A_counter|counter_process:counter_output[1]~q\,
	datad => \A_counter|counter_process:counter_output[1]~0_combout\,
	combout => \A_counter|counter_process:counter_output[2]~0_combout\);

\A_counter|counter_process:counter_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|counter_process:counter_output[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:counter_output[2]~q\);

\A_counter|counter_process:counter_output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_counter|counter_process:counter_output[3]~0_combout\ = \A_counter|counter_process:counter_output[3]~q\ $ (((\A_counter|counter_process:counter_output[1]~q\ & (\A_counter|counter_process:counter_output[2]~q\ & 
-- \A_counter|counter_process:counter_output[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:counter_output[1]~q\,
	datab => \A_counter|counter_process:counter_output[2]~q\,
	datac => \A_counter|counter_process:counter_output[1]~0_combout\,
	datad => \A_counter|counter_process:counter_output[3]~q\,
	combout => \A_counter|counter_process:counter_output[3]~0_combout\);

\A_counter|counter_process:counter_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A_counter|counter_process:counter_output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_counter|counter_process:counter_output[3]~q\);

\B_counter|counter_process:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[16]~q\);

\B_counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~0_combout\ = \A_counter|counter_process:prescaler[0]~q\ $ (VCC)
-- \B_counter|Add0~1\ = CARRY(\A_counter|counter_process:prescaler[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_counter|counter_process:prescaler[0]~q\,
	datad => VCC,
	combout => \B_counter|Add0~0_combout\,
	cout => \B_counter|Add0~1\);

\B_counter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~2_combout\ = (\B_counter|counter_process:prescaler[1]~q\ & (!\B_counter|Add0~1\)) # (!\B_counter|counter_process:prescaler[1]~q\ & ((\B_counter|Add0~1\) # (GND)))
-- \B_counter|Add0~3\ = CARRY((!\B_counter|Add0~1\) # (!\B_counter|counter_process:prescaler[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[1]~q\,
	datad => VCC,
	cin => \B_counter|Add0~1\,
	combout => \B_counter|Add0~2_combout\,
	cout => \B_counter|Add0~3\);

\B_counter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~4_combout\ = (\B_counter|counter_process:prescaler[2]~q\ & (\B_counter|Add0~3\ $ (GND))) # (!\B_counter|counter_process:prescaler[2]~q\ & (!\B_counter|Add0~3\ & VCC))
-- \B_counter|Add0~5\ = CARRY((\B_counter|counter_process:prescaler[2]~q\ & !\B_counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[2]~q\,
	datad => VCC,
	cin => \B_counter|Add0~3\,
	combout => \B_counter|Add0~4_combout\,
	cout => \B_counter|Add0~5\);

\B_counter|counter_process:prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[2]~q\);

\B_counter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~6_combout\ = (\B_counter|counter_process:prescaler[3]~q\ & (!\B_counter|Add0~5\)) # (!\B_counter|counter_process:prescaler[3]~q\ & ((\B_counter|Add0~5\) # (GND)))
-- \B_counter|Add0~7\ = CARRY((!\B_counter|Add0~5\) # (!\B_counter|counter_process:prescaler[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[3]~q\,
	datad => VCC,
	cin => \B_counter|Add0~5\,
	combout => \B_counter|Add0~6_combout\,
	cout => \B_counter|Add0~7\);

\B_counter|counter_process:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[20]~q\);

\B_counter|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~32_combout\ = (\B_counter|counter_process:prescaler[16]~q\ & (\B_counter|Add0~31\ $ (GND))) # (!\B_counter|counter_process:prescaler[16]~q\ & (!\B_counter|Add0~31\ & VCC))
-- \B_counter|Add0~33\ = CARRY((\B_counter|counter_process:prescaler[16]~q\ & !\B_counter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[16]~q\,
	datad => VCC,
	cin => \B_counter|Add0~31\,
	combout => \B_counter|Add0~32_combout\,
	cout => \B_counter|Add0~33\);

\B_counter|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~34_combout\ = (\B_counter|counter_process:prescaler[17]~q\ & (!\B_counter|Add0~33\)) # (!\B_counter|counter_process:prescaler[17]~q\ & ((\B_counter|Add0~33\) # (GND)))
-- \B_counter|Add0~35\ = CARRY((!\B_counter|Add0~33\) # (!\B_counter|counter_process:prescaler[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[17]~q\,
	datad => VCC,
	cin => \B_counter|Add0~33\,
	combout => \B_counter|Add0~34_combout\,
	cout => \B_counter|Add0~35\);

\B_counter|counter_process:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[17]~q\);

\B_counter|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~36_combout\ = (\B_counter|counter_process:prescaler[18]~q\ & (\B_counter|Add0~35\ $ (GND))) # (!\B_counter|counter_process:prescaler[18]~q\ & (!\B_counter|Add0~35\ & VCC))
-- \B_counter|Add0~37\ = CARRY((\B_counter|counter_process:prescaler[18]~q\ & !\B_counter|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[18]~q\,
	datad => VCC,
	cin => \B_counter|Add0~35\,
	combout => \B_counter|Add0~36_combout\,
	cout => \B_counter|Add0~37\);

\B_counter|counter_process:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[18]~q\);

\B_counter|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~38_combout\ = (\B_counter|counter_process:prescaler[19]~q\ & (!\B_counter|Add0~37\)) # (!\B_counter|counter_process:prescaler[19]~q\ & ((\B_counter|Add0~37\) # (GND)))
-- \B_counter|Add0~39\ = CARRY((!\B_counter|Add0~37\) # (!\B_counter|counter_process:prescaler[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[19]~q\,
	datad => VCC,
	cin => \B_counter|Add0~37\,
	combout => \B_counter|Add0~38_combout\,
	cout => \B_counter|Add0~39\);

\B_counter|counter_process:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[19]~q\);

\B_counter|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~40_combout\ = (\B_counter|counter_process:prescaler[20]~q\ & (\B_counter|Add0~39\ $ (GND))) # (!\B_counter|counter_process:prescaler[20]~q\ & (!\B_counter|Add0~39\ & VCC))
-- \B_counter|Add0~41\ = CARRY((\B_counter|counter_process:prescaler[20]~q\ & !\B_counter|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[20]~q\,
	datad => VCC,
	cin => \B_counter|Add0~39\,
	combout => \B_counter|Add0~40_combout\,
	cout => \B_counter|Add0~41\);

\B_counter|counter_process:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[21]~q\);

\B_counter|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~42_combout\ = (\B_counter|counter_process:prescaler[21]~q\ & (!\B_counter|Add0~41\)) # (!\B_counter|counter_process:prescaler[21]~q\ & ((\B_counter|Add0~41\) # (GND)))
-- \B_counter|Add0~43\ = CARRY((!\B_counter|Add0~41\) # (!\B_counter|counter_process:prescaler[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[21]~q\,
	datad => VCC,
	cin => \B_counter|Add0~41\,
	combout => \B_counter|Add0~42_combout\,
	cout => \B_counter|Add0~43\);

\B_counter|counter_process:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[22]~q\);

\B_counter|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~44_combout\ = \B_counter|counter_process:prescaler[22]~q\ $ (!\B_counter|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[22]~q\,
	cin => \B_counter|Add0~43\,
	combout => \B_counter|Add0~44_combout\);

\B_counter|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Equal0~6_combout\ = (!\B_counter|Add0~40_combout\ & (!\B_counter|Add0~42_combout\ & !\B_counter|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_counter|Add0~40_combout\,
	datac => \B_counter|Add0~42_combout\,
	datad => \B_counter|Add0~44_combout\,
	combout => \B_counter|Equal0~6_combout\);

\B_counter|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|prescaler~1_combout\ = (\B_counter|Add0~6_combout\ & (((!\B_counter|Equal0~6_combout\) # (!\B_counter|Equal0~5_combout\)) # (!\B_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Add0~6_combout\,
	datab => \B_counter|Equal0~4_combout\,
	datac => \B_counter|Equal0~5_combout\,
	datad => \B_counter|Equal0~6_combout\,
	combout => \B_counter|prescaler~1_combout\);

\B_counter|counter_process:prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|prescaler~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[3]~q\);

\B_counter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~8_combout\ = (\B_counter|counter_process:prescaler[4]~q\ & (\B_counter|Add0~7\ $ (GND))) # (!\B_counter|counter_process:prescaler[4]~q\ & (!\B_counter|Add0~7\ & VCC))
-- \B_counter|Add0~9\ = CARRY((\B_counter|counter_process:prescaler[4]~q\ & !\B_counter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[4]~q\,
	datad => VCC,
	cin => \B_counter|Add0~7\,
	combout => \B_counter|Add0~8_combout\,
	cout => \B_counter|Add0~9\);

\B_counter|counter_process:prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[4]~q\);

\B_counter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~10_combout\ = (\B_counter|counter_process:prescaler[5]~q\ & (!\B_counter|Add0~9\)) # (!\B_counter|counter_process:prescaler[5]~q\ & ((\B_counter|Add0~9\) # (GND)))
-- \B_counter|Add0~11\ = CARRY((!\B_counter|Add0~9\) # (!\B_counter|counter_process:prescaler[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[5]~q\,
	datad => VCC,
	cin => \B_counter|Add0~9\,
	combout => \B_counter|Add0~10_combout\,
	cout => \B_counter|Add0~11\);

\B_counter|counter_process:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[5]~q\);

\B_counter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~12_combout\ = (\B_counter|counter_process:prescaler[6]~q\ & (\B_counter|Add0~11\ $ (GND))) # (!\B_counter|counter_process:prescaler[6]~q\ & (!\B_counter|Add0~11\ & VCC))
-- \B_counter|Add0~13\ = CARRY((\B_counter|counter_process:prescaler[6]~q\ & !\B_counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[6]~q\,
	datad => VCC,
	cin => \B_counter|Add0~11\,
	combout => \B_counter|Add0~12_combout\,
	cout => \B_counter|Add0~13\);

\B_counter|counter_process:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[6]~q\);

\B_counter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~14_combout\ = (\B_counter|counter_process:prescaler[7]~q\ & (!\B_counter|Add0~13\)) # (!\B_counter|counter_process:prescaler[7]~q\ & ((\B_counter|Add0~13\) # (GND)))
-- \B_counter|Add0~15\ = CARRY((!\B_counter|Add0~13\) # (!\B_counter|counter_process:prescaler[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[7]~q\,
	datad => VCC,
	cin => \B_counter|Add0~13\,
	combout => \B_counter|Add0~14_combout\,
	cout => \B_counter|Add0~15\);

\B_counter|counter_process:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[7]~q\);

\B_counter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~16_combout\ = (\B_counter|counter_process:prescaler[8]~q\ & (\B_counter|Add0~15\ $ (GND))) # (!\B_counter|counter_process:prescaler[8]~q\ & (!\B_counter|Add0~15\ & VCC))
-- \B_counter|Add0~17\ = CARRY((\B_counter|counter_process:prescaler[8]~q\ & !\B_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[8]~q\,
	datad => VCC,
	cin => \B_counter|Add0~15\,
	combout => \B_counter|Add0~16_combout\,
	cout => \B_counter|Add0~17\);

\B_counter|counter_process:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[8]~q\);

\B_counter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~18_combout\ = (\B_counter|counter_process:prescaler[9]~q\ & (!\B_counter|Add0~17\)) # (!\B_counter|counter_process:prescaler[9]~q\ & ((\B_counter|Add0~17\) # (GND)))
-- \B_counter|Add0~19\ = CARRY((!\B_counter|Add0~17\) # (!\B_counter|counter_process:prescaler[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[9]~q\,
	datad => VCC,
	cin => \B_counter|Add0~17\,
	combout => \B_counter|Add0~18_combout\,
	cout => \B_counter|Add0~19\);

\B_counter|counter_process:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[9]~q\);

\B_counter|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~20_combout\ = (\B_counter|counter_process:prescaler[10]~q\ & (\B_counter|Add0~19\ $ (GND))) # (!\B_counter|counter_process:prescaler[10]~q\ & (!\B_counter|Add0~19\ & VCC))
-- \B_counter|Add0~21\ = CARRY((\B_counter|counter_process:prescaler[10]~q\ & !\B_counter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[10]~q\,
	datad => VCC,
	cin => \B_counter|Add0~19\,
	combout => \B_counter|Add0~20_combout\,
	cout => \B_counter|Add0~21\);

\B_counter|counter_process:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[10]~q\);

\B_counter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~22_combout\ = (\B_counter|counter_process:prescaler[11]~q\ & (!\B_counter|Add0~21\)) # (!\B_counter|counter_process:prescaler[11]~q\ & ((\B_counter|Add0~21\) # (GND)))
-- \B_counter|Add0~23\ = CARRY((!\B_counter|Add0~21\) # (!\B_counter|counter_process:prescaler[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[11]~q\,
	datad => VCC,
	cin => \B_counter|Add0~21\,
	combout => \B_counter|Add0~22_combout\,
	cout => \B_counter|Add0~23\);

\B_counter|counter_process:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[11]~q\);

\B_counter|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~24_combout\ = (\B_counter|counter_process:prescaler[12]~q\ & (\B_counter|Add0~23\ $ (GND))) # (!\B_counter|counter_process:prescaler[12]~q\ & (!\B_counter|Add0~23\ & VCC))
-- \B_counter|Add0~25\ = CARRY((\B_counter|counter_process:prescaler[12]~q\ & !\B_counter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[12]~q\,
	datad => VCC,
	cin => \B_counter|Add0~23\,
	combout => \B_counter|Add0~24_combout\,
	cout => \B_counter|Add0~25\);

\B_counter|counter_process:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[12]~q\);

\B_counter|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~26_combout\ = (\B_counter|counter_process:prescaler[13]~q\ & (!\B_counter|Add0~25\)) # (!\B_counter|counter_process:prescaler[13]~q\ & ((\B_counter|Add0~25\) # (GND)))
-- \B_counter|Add0~27\ = CARRY((!\B_counter|Add0~25\) # (!\B_counter|counter_process:prescaler[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[13]~q\,
	datad => VCC,
	cin => \B_counter|Add0~25\,
	combout => \B_counter|Add0~26_combout\,
	cout => \B_counter|Add0~27\);

\B_counter|counter_process:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[13]~q\);

\B_counter|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~28_combout\ = (\B_counter|counter_process:prescaler[14]~q\ & (\B_counter|Add0~27\ $ (GND))) # (!\B_counter|counter_process:prescaler[14]~q\ & (!\B_counter|Add0~27\ & VCC))
-- \B_counter|Add0~29\ = CARRY((\B_counter|counter_process:prescaler[14]~q\ & !\B_counter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[14]~q\,
	datad => VCC,
	cin => \B_counter|Add0~27\,
	combout => \B_counter|Add0~28_combout\,
	cout => \B_counter|Add0~29\);

\B_counter|counter_process:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[14]~q\);

\B_counter|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Add0~30_combout\ = (\B_counter|counter_process:prescaler[15]~q\ & (!\B_counter|Add0~29\)) # (!\B_counter|counter_process:prescaler[15]~q\ & ((\B_counter|Add0~29\) # (GND)))
-- \B_counter|Add0~31\ = CARRY((!\B_counter|Add0~29\) # (!\B_counter|counter_process:prescaler[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:prescaler[15]~q\,
	datad => VCC,
	cin => \B_counter|Add0~29\,
	combout => \B_counter|Add0~30_combout\,
	cout => \B_counter|Add0~31\);

\B_counter|counter_process:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[15]~q\);

\B_counter|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Equal0~5_combout\ = (!\B_counter|Add0~32_combout\ & (!\B_counter|Add0~34_combout\ & (!\B_counter|Add0~36_combout\ & !\B_counter|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Add0~32_combout\,
	datab => \B_counter|Add0~34_combout\,
	datac => \B_counter|Add0~36_combout\,
	datad => \B_counter|Add0~38_combout\,
	combout => \B_counter|Equal0~5_combout\);

\B_counter|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|prescaler~0_combout\ = (\B_counter|Add0~2_combout\ & (((!\B_counter|Equal0~6_combout\) # (!\B_counter|Equal0~5_combout\)) # (!\B_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Add0~2_combout\,
	datab => \B_counter|Equal0~4_combout\,
	datac => \B_counter|Equal0~5_combout\,
	datad => \B_counter|Equal0~6_combout\,
	combout => \B_counter|prescaler~0_combout\);

\B_counter|counter_process:prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|prescaler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:prescaler[1]~q\);

\B_counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Equal0~0_combout\ = (\B_counter|Add0~2_combout\ & (\B_counter|Add0~6_combout\ & (!\B_counter|Add0~0_combout\ & !\B_counter|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Add0~2_combout\,
	datab => \B_counter|Add0~6_combout\,
	datac => \B_counter|Add0~0_combout\,
	datad => \B_counter|Add0~4_combout\,
	combout => \B_counter|Equal0~0_combout\);

\B_counter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Equal0~1_combout\ = (!\B_counter|Add0~8_combout\ & (!\B_counter|Add0~10_combout\ & (!\B_counter|Add0~12_combout\ & !\B_counter|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Add0~8_combout\,
	datab => \B_counter|Add0~10_combout\,
	datac => \B_counter|Add0~12_combout\,
	datad => \B_counter|Add0~14_combout\,
	combout => \B_counter|Equal0~1_combout\);

\B_counter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Equal0~2_combout\ = (!\B_counter|Add0~16_combout\ & (!\B_counter|Add0~18_combout\ & (!\B_counter|Add0~20_combout\ & !\B_counter|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Add0~16_combout\,
	datab => \B_counter|Add0~18_combout\,
	datac => \B_counter|Add0~20_combout\,
	datad => \B_counter|Add0~22_combout\,
	combout => \B_counter|Equal0~2_combout\);

\B_counter|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Equal0~3_combout\ = (!\B_counter|Add0~24_combout\ & (!\B_counter|Add0~26_combout\ & (!\B_counter|Add0~28_combout\ & !\B_counter|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Add0~24_combout\,
	datab => \B_counter|Add0~26_combout\,
	datac => \B_counter|Add0~28_combout\,
	datad => \B_counter|Add0~30_combout\,
	combout => \B_counter|Equal0~3_combout\);

\B_counter|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|Equal0~4_combout\ = (\B_counter|Equal0~0_combout\ & (\B_counter|Equal0~1_combout\ & (\B_counter|Equal0~2_combout\ & \B_counter|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Equal0~0_combout\,
	datab => \B_counter|Equal0~1_combout\,
	datac => \B_counter|Equal0~2_combout\,
	datad => \B_counter|Equal0~3_combout\,
	combout => \B_counter|Equal0~4_combout\);

\B_counter|counter_process:counter_output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|counter_process:counter_output[0]~0_combout\ = \B_counter|counter_process:counter_output[0]~q\ $ (((\B_counter|Equal0~4_combout\ & (\B_counter|Equal0~5_combout\ & \B_counter|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:counter_output[0]~q\,
	datab => \B_counter|Equal0~4_combout\,
	datac => \B_counter|Equal0~5_combout\,
	datad => \B_counter|Equal0~6_combout\,
	combout => \B_counter|counter_process:counter_output[0]~0_combout\);

\B_counter|counter_process:counter_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|counter_process:counter_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:counter_output[0]~q\);

\B_counter|counter_process:counter_output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|counter_process:counter_output[1]~0_combout\ = (\B_counter|counter_process:counter_output[0]~q\ & (\B_counter|Equal0~4_combout\ & !\B_counter|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:counter_output[0]~q\,
	datab => \B_counter|Equal0~4_combout\,
	datac => \B_counter|Add0~40_combout\,
	combout => \B_counter|counter_process:counter_output[1]~0_combout\);

\B_counter|counter_process:counter_output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|counter_process:counter_output[1]~1_combout\ = (\B_counter|Equal0~5_combout\ & (!\B_counter|Add0~42_combout\ & (!\B_counter|Add0~44_combout\ & \B_counter|counter_process:counter_output[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|Equal0~5_combout\,
	datab => \B_counter|Add0~42_combout\,
	datac => \B_counter|Add0~44_combout\,
	datad => \B_counter|counter_process:counter_output[1]~0_combout\,
	combout => \B_counter|counter_process:counter_output[1]~1_combout\);

\B_counter|counter_process:counter_output[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|counter_process:counter_output[1]~2_combout\ = \B_counter|counter_process:counter_output[1]~q\ $ (\B_counter|counter_process:counter_output[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_counter|counter_process:counter_output[1]~q\,
	datad => \B_counter|counter_process:counter_output[1]~1_combout\,
	combout => \B_counter|counter_process:counter_output[1]~2_combout\);

\B_counter|counter_process:counter_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|counter_process:counter_output[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:counter_output[1]~q\);

\B_counter|counter_process:counter_output[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|counter_process:counter_output[2]~0_combout\ = \B_counter|counter_process:counter_output[2]~q\ $ (((\B_counter|counter_process:counter_output[1]~q\ & \B_counter|counter_process:counter_output[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_counter|counter_process:counter_output[2]~q\,
	datac => \B_counter|counter_process:counter_output[1]~q\,
	datad => \B_counter|counter_process:counter_output[1]~1_combout\,
	combout => \B_counter|counter_process:counter_output[2]~0_combout\);

\B_counter|counter_process:counter_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|counter_process:counter_output[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:counter_output[2]~q\);

\B_counter|counter_process:counter_output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_counter|counter_process:counter_output[3]~0_combout\ = \B_counter|counter_process:counter_output[3]~q\ $ (((\B_counter|counter_process:counter_output[1]~q\ & (\B_counter|counter_process:counter_output[2]~q\ & 
-- \B_counter|counter_process:counter_output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_counter|counter_process:counter_output[1]~q\,
	datab => \B_counter|counter_process:counter_output[2]~q\,
	datac => \B_counter|counter_process:counter_output[1]~1_combout\,
	datad => \B_counter|counter_process:counter_output[3]~q\,
	combout => \B_counter|counter_process:counter_output[3]~0_combout\);

\B_counter|counter_process:counter_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B_counter|counter_process:counter_output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_counter|counter_process:counter_output[3]~q\);

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;
END structure;


