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

-- DATE "07/31/2021 00:00:08"

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

ENTITY 	ULA IS
    PORT (
	X : BUFFER std_logic_vector(3 DOWNTO 0);
	Y : BUFFER std_logic_vector(3 DOWNTO 0);
	SEL : IN std_logic_vector(2 DOWNTO 0);
	PAUSE : IN std_logic;
	CLK : IN std_logic;
	ZER : BUFFER std_logic;
	NEG : BUFFER std_logic;
	OVER : BUFFER std_logic;
	COUT : BUFFER std_logic;
	RESULT : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ULA;

ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PAUSE : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ZER : std_logic;
SIGNAL ww_NEG : std_logic;
SIGNAL ww_OVER : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_RESULT : std_logic_vector(3 DOWNTO 0);
SIGNAL \COUT~input_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \X[0]~output_o\ : std_logic;
SIGNAL \X[1]~output_o\ : std_logic;
SIGNAL \X[2]~output_o\ : std_logic;
SIGNAL \X[3]~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \ZER~output_o\ : std_logic;
SIGNAL \NEG~output_o\ : std_logic;
SIGNAL \OVER~output_o\ : std_logic;
SIGNAL \RESULT[0]~output_o\ : std_logic;
SIGNAL \RESULT[1]~output_o\ : std_logic;
SIGNAL \RESULT[2]~output_o\ : std_logic;
SIGNAL \RESULT[3]~output_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \SEL[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \PAUSE~input_o\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[16]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[0]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~1\ : std_logic;
SIGNAL \counter|A_counter|Add0~2_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[1]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~3\ : std_logic;
SIGNAL \counter|A_counter|Add0~5\ : std_logic;
SIGNAL \counter|A_counter|Add0~6_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[3]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~7\ : std_logic;
SIGNAL \counter|A_counter|Add0~8_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[20]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~33\ : std_logic;
SIGNAL \counter|A_counter|Add0~34_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[17]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~35\ : std_logic;
SIGNAL \counter|A_counter|Add0~36_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[18]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~37\ : std_logic;
SIGNAL \counter|A_counter|Add0~38_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[19]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~39\ : std_logic;
SIGNAL \counter|A_counter|Add0~40_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[21]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~41\ : std_logic;
SIGNAL \counter|A_counter|Add0~42_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[22]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~43\ : std_logic;
SIGNAL \counter|A_counter|Add0~44_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~9_combout\ : std_logic;
SIGNAL \counter|A_counter|prescaler~1_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[4]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~9\ : std_logic;
SIGNAL \counter|A_counter|Add0~10_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[5]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~11\ : std_logic;
SIGNAL \counter|A_counter|Add0~12_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[6]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~13\ : std_logic;
SIGNAL \counter|A_counter|Add0~14_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[7]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~15\ : std_logic;
SIGNAL \counter|A_counter|Add0~16_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[8]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~17\ : std_logic;
SIGNAL \counter|A_counter|Add0~18_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[9]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~19\ : std_logic;
SIGNAL \counter|A_counter|Add0~20_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[10]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~21\ : std_logic;
SIGNAL \counter|A_counter|Add0~22_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[11]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~23\ : std_logic;
SIGNAL \counter|A_counter|Add0~24_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[12]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~25\ : std_logic;
SIGNAL \counter|A_counter|Add0~26_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[13]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~27\ : std_logic;
SIGNAL \counter|A_counter|Add0~28_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[14]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~29\ : std_logic;
SIGNAL \counter|A_counter|Add0~30_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[15]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~31\ : std_logic;
SIGNAL \counter|A_counter|Add0~32_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~5_combout\ : std_logic;
SIGNAL \counter|A_counter|prescaler~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[2]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~4_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~0_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~1_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~2_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~3_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~4_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~6_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[0]~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[0]~q\ : std_logic;
SIGNAL \counter|A_counter|Equal0~7_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~8_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[1]~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[1]~q\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[1]~1_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[2]~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[2]~q\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[16]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[0]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~1\ : std_logic;
SIGNAL \counter|B_counter|Add0~3\ : std_logic;
SIGNAL \counter|B_counter|Add0~4_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[2]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~5\ : std_logic;
SIGNAL \counter|B_counter|Add0~6_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[20]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~33\ : std_logic;
SIGNAL \counter|B_counter|Add0~34_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[17]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~35\ : std_logic;
SIGNAL \counter|B_counter|Add0~36_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[18]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~37\ : std_logic;
SIGNAL \counter|B_counter|Add0~38_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[19]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~39\ : std_logic;
SIGNAL \counter|B_counter|Add0~40_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[21]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~41\ : std_logic;
SIGNAL \counter|B_counter|Add0~42_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[22]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~43\ : std_logic;
SIGNAL \counter|B_counter|Add0~44_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~7_combout\ : std_logic;
SIGNAL \counter|B_counter|prescaler~1_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[3]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~7\ : std_logic;
SIGNAL \counter|B_counter|Add0~8_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[4]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~9\ : std_logic;
SIGNAL \counter|B_counter|Add0~10_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[5]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~11\ : std_logic;
SIGNAL \counter|B_counter|Add0~12_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[6]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~13\ : std_logic;
SIGNAL \counter|B_counter|Add0~14_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[7]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~15\ : std_logic;
SIGNAL \counter|B_counter|Add0~16_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[8]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~17\ : std_logic;
SIGNAL \counter|B_counter|Add0~18_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[9]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~19\ : std_logic;
SIGNAL \counter|B_counter|Add0~20_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[10]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~21\ : std_logic;
SIGNAL \counter|B_counter|Add0~22_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[11]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~23\ : std_logic;
SIGNAL \counter|B_counter|Add0~24_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[12]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~25\ : std_logic;
SIGNAL \counter|B_counter|Add0~26_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[13]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~27\ : std_logic;
SIGNAL \counter|B_counter|Add0~28_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[14]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~29\ : std_logic;
SIGNAL \counter|B_counter|Add0~30_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[15]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~31\ : std_logic;
SIGNAL \counter|B_counter|Add0~32_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~5_combout\ : std_logic;
SIGNAL \counter|B_counter|prescaler~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[1]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~2_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~0_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~1_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~2_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~3_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~4_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~6_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[0]~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[0]~q\ : std_logic;
SIGNAL \counter|B_counter|Equal0~8_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[1]~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[1]~q\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[1]~1_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[1]~2_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[2]~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[2]~q\ : std_logic;
SIGNAL \Add_C2|Full_Adder|a1|C_out~0_combout\ : std_logic;
SIGNAL \Add_C2|Full_Adder|a2|C_out~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[3]~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[3]~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \COUT~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a1|C_out~0_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a2|C_out~0_combout\ : std_logic;
SIGNAL \COUT~3_combout\ : std_logic;
SIGNAL \COUT~4_combout\ : std_logic;
SIGNAL \res_bin~2_combout\ : std_logic;
SIGNAL \res_bin~3_combout\ : std_logic;
SIGNAL \res_bin~13_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \ZER~2_combout\ : std_logic;
SIGNAL \res_bin~7_combout\ : std_logic;
SIGNAL \res_bin~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \res_bin~6_combout\ : std_logic;
SIGNAL \res_bin~8_combout\ : std_logic;
SIGNAL \res_bin~9_combout\ : std_logic;
SIGNAL \res_bin~4_combout\ : std_logic;
SIGNAL \res_bin~10_combout\ : std_logic;
SIGNAL \res_bin~11_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a0|S~0_combout\ : std_logic;
SIGNAL \res_bin~12_combout\ : std_logic;
SIGNAL \ZER~3_combout\ : std_logic;
SIGNAL \ZER~10_combout\ : std_logic;
SIGNAL \Add_C2|Full_Adder|a1|S~combout\ : std_logic;
SIGNAL \ZER~4_combout\ : std_logic;
SIGNAL \Add_C2|Full_Adder|a3|S~combout\ : std_logic;
SIGNAL \ZER~5_combout\ : std_logic;
SIGNAL \ZER~6_combout\ : std_logic;
SIGNAL \Sub_C2|OVERFLOW~combout\ : std_logic;
SIGNAL \ZER~7_combout\ : std_logic;
SIGNAL \ZER~8_combout\ : std_logic;
SIGNAL \ZER~9_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a3|S~combout\ : std_logic;
SIGNAL \NEG~0_combout\ : std_logic;
SIGNAL \OVER~0_combout\ : std_logic;
SIGNAL \RESULT~10_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a1|S~combout\ : std_logic;
SIGNAL \RESULT~4_combout\ : std_logic;
SIGNAL \RESULT~5_combout\ : std_logic;
SIGNAL \RESULT~6_combout\ : std_logic;
SIGNAL \RESULT~7_combout\ : std_logic;
SIGNAL \RESULT~8_combout\ : std_logic;
SIGNAL \RESULT~9_combout\ : std_logic;
SIGNAL res_bin : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_PAUSE~input_o\ : std_logic;
SIGNAL \ALT_INV_OVER~0_combout\ : std_logic;
SIGNAL \counter|B_counter|ALT_INV_counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \counter|A_counter|ALT_INV_counter_process:counter_output[3]~q\ : std_logic;

BEGIN

X <= ww_X;
Y <= ww_Y;
ww_SEL <= SEL;
ww_PAUSE <= PAUSE;
ww_CLK <= CLK;
ZER <= ww_ZER;
NEG <= ww_NEG;
OVER <= ww_OVER;
COUT <= ww_COUT;
RESULT <= ww_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_PAUSE~input_o\ <= NOT \PAUSE~input_o\;
\ALT_INV_OVER~0_combout\ <= NOT \OVER~0_combout\;
\counter|B_counter|ALT_INV_counter_process:counter_output[3]~q\ <= NOT \counter|B_counter|counter_process:counter_output[3]~q\;
\counter|A_counter|ALT_INV_counter_process:counter_output[3]~q\ <= NOT \counter|A_counter|counter_process:counter_output[3]~q\;

\COUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUT~4_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \COUT~output_o\);

\X[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|A_counter|counter_process:counter_output[0]~q\,
	devoe => ww_devoe,
	o => \X[0]~output_o\);

\X[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|A_counter|counter_process:counter_output[1]~q\,
	devoe => ww_devoe,
	o => \X[1]~output_o\);

\X[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|A_counter|counter_process:counter_output[2]~q\,
	devoe => ww_devoe,
	o => \X[2]~output_o\);

\X[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|A_counter|ALT_INV_counter_process:counter_output[3]~q\,
	devoe => ww_devoe,
	o => \X[3]~output_o\);

\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|B_counter|counter_process:counter_output[0]~q\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|B_counter|counter_process:counter_output[1]~q\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|B_counter|counter_process:counter_output[2]~q\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|B_counter|ALT_INV_counter_process:counter_output[3]~q\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

\ZER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ZER~9_combout\,
	devoe => ww_devoe,
	o => \ZER~output_o\);

\NEG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NEG~0_combout\,
	devoe => ww_devoe,
	o => \NEG~output_o\);

\OVER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_OVER~0_combout\,
	devoe => ww_devoe,
	o => \OVER~output_o\);

\RESULT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~10_combout\,
	devoe => ww_devoe,
	o => \RESULT[0]~output_o\);

\RESULT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~5_combout\,
	devoe => ww_devoe,
	o => \RESULT[1]~output_o\);

\RESULT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~7_combout\,
	devoe => ww_devoe,
	o => \RESULT[2]~output_o\);

\RESULT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~9_combout\,
	devoe => ww_devoe,
	o => \RESULT[3]~output_o\);

\SEL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

\SEL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

\SEL[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(2),
	o => \SEL[2]~input_o\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\SEL[0]~input_o\ & (!\SEL[1]~input_o\ & !\SEL[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \Equal0~0_combout\);

\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\PAUSE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PAUSE,
	o => \PAUSE~input_o\);

\counter|A_counter|counter_process:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~32_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[16]~q\);

\counter|A_counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~0_combout\ = \counter|A_counter|counter_process:prescaler[0]~q\ $ (VCC)
-- \counter|A_counter|Add0~1\ = CARRY(\counter|A_counter|counter_process:prescaler[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[0]~q\,
	datad => VCC,
	combout => \counter|A_counter|Add0~0_combout\,
	cout => \counter|A_counter|Add0~1\);

\counter|A_counter|counter_process:prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~0_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[0]~q\);

\counter|A_counter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~2_combout\ = (\counter|A_counter|counter_process:prescaler[1]~q\ & (!\counter|A_counter|Add0~1\)) # (!\counter|A_counter|counter_process:prescaler[1]~q\ & ((\counter|A_counter|Add0~1\) # (GND)))
-- \counter|A_counter|Add0~3\ = CARRY((!\counter|A_counter|Add0~1\) # (!\counter|A_counter|counter_process:prescaler[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[1]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~1\,
	combout => \counter|A_counter|Add0~2_combout\,
	cout => \counter|A_counter|Add0~3\);

\counter|A_counter|counter_process:prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~2_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[1]~q\);

\counter|A_counter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~4_combout\ = (\counter|A_counter|counter_process:prescaler[2]~q\ & (\counter|A_counter|Add0~3\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[2]~q\ & (!\counter|A_counter|Add0~3\ & VCC))
-- \counter|A_counter|Add0~5\ = CARRY((\counter|A_counter|counter_process:prescaler[2]~q\ & !\counter|A_counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[2]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~3\,
	combout => \counter|A_counter|Add0~4_combout\,
	cout => \counter|A_counter|Add0~5\);

\counter|A_counter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~6_combout\ = (\counter|A_counter|counter_process:prescaler[3]~q\ & (!\counter|A_counter|Add0~5\)) # (!\counter|A_counter|counter_process:prescaler[3]~q\ & ((\counter|A_counter|Add0~5\) # (GND)))
-- \counter|A_counter|Add0~7\ = CARRY((!\counter|A_counter|Add0~5\) # (!\counter|A_counter|counter_process:prescaler[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[3]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~5\,
	combout => \counter|A_counter|Add0~6_combout\,
	cout => \counter|A_counter|Add0~7\);

\counter|A_counter|counter_process:prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~6_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[3]~q\);

\counter|A_counter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~8_combout\ = (\counter|A_counter|counter_process:prescaler[4]~q\ & (\counter|A_counter|Add0~7\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[4]~q\ & (!\counter|A_counter|Add0~7\ & VCC))
-- \counter|A_counter|Add0~9\ = CARRY((\counter|A_counter|counter_process:prescaler[4]~q\ & !\counter|A_counter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[4]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~7\,
	combout => \counter|A_counter|Add0~8_combout\,
	cout => \counter|A_counter|Add0~9\);

\counter|A_counter|counter_process:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~40_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[20]~q\);

\counter|A_counter|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~32_combout\ = (\counter|A_counter|counter_process:prescaler[16]~q\ & (\counter|A_counter|Add0~31\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[16]~q\ & (!\counter|A_counter|Add0~31\ & VCC))
-- \counter|A_counter|Add0~33\ = CARRY((\counter|A_counter|counter_process:prescaler[16]~q\ & !\counter|A_counter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[16]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~31\,
	combout => \counter|A_counter|Add0~32_combout\,
	cout => \counter|A_counter|Add0~33\);

\counter|A_counter|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~34_combout\ = (\counter|A_counter|counter_process:prescaler[17]~q\ & (!\counter|A_counter|Add0~33\)) # (!\counter|A_counter|counter_process:prescaler[17]~q\ & ((\counter|A_counter|Add0~33\) # (GND)))
-- \counter|A_counter|Add0~35\ = CARRY((!\counter|A_counter|Add0~33\) # (!\counter|A_counter|counter_process:prescaler[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[17]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~33\,
	combout => \counter|A_counter|Add0~34_combout\,
	cout => \counter|A_counter|Add0~35\);

\counter|A_counter|counter_process:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~34_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[17]~q\);

\counter|A_counter|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~36_combout\ = (\counter|A_counter|counter_process:prescaler[18]~q\ & (\counter|A_counter|Add0~35\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[18]~q\ & (!\counter|A_counter|Add0~35\ & VCC))
-- \counter|A_counter|Add0~37\ = CARRY((\counter|A_counter|counter_process:prescaler[18]~q\ & !\counter|A_counter|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[18]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~35\,
	combout => \counter|A_counter|Add0~36_combout\,
	cout => \counter|A_counter|Add0~37\);

\counter|A_counter|counter_process:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~36_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[18]~q\);

\counter|A_counter|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~38_combout\ = (\counter|A_counter|counter_process:prescaler[19]~q\ & (!\counter|A_counter|Add0~37\)) # (!\counter|A_counter|counter_process:prescaler[19]~q\ & ((\counter|A_counter|Add0~37\) # (GND)))
-- \counter|A_counter|Add0~39\ = CARRY((!\counter|A_counter|Add0~37\) # (!\counter|A_counter|counter_process:prescaler[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[19]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~37\,
	combout => \counter|A_counter|Add0~38_combout\,
	cout => \counter|A_counter|Add0~39\);

\counter|A_counter|counter_process:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~38_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[19]~q\);

\counter|A_counter|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~40_combout\ = (\counter|A_counter|counter_process:prescaler[20]~q\ & (\counter|A_counter|Add0~39\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[20]~q\ & (!\counter|A_counter|Add0~39\ & VCC))
-- \counter|A_counter|Add0~41\ = CARRY((\counter|A_counter|counter_process:prescaler[20]~q\ & !\counter|A_counter|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[20]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~39\,
	combout => \counter|A_counter|Add0~40_combout\,
	cout => \counter|A_counter|Add0~41\);

\counter|A_counter|counter_process:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~42_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[21]~q\);

\counter|A_counter|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~42_combout\ = (\counter|A_counter|counter_process:prescaler[21]~q\ & (!\counter|A_counter|Add0~41\)) # (!\counter|A_counter|counter_process:prescaler[21]~q\ & ((\counter|A_counter|Add0~41\) # (GND)))
-- \counter|A_counter|Add0~43\ = CARRY((!\counter|A_counter|Add0~41\) # (!\counter|A_counter|counter_process:prescaler[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[21]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~41\,
	combout => \counter|A_counter|Add0~42_combout\,
	cout => \counter|A_counter|Add0~43\);

\counter|A_counter|counter_process:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~44_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[22]~q\);

\counter|A_counter|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~44_combout\ = \counter|A_counter|counter_process:prescaler[22]~q\ $ (!\counter|A_counter|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[22]~q\,
	cin => \counter|A_counter|Add0~43\,
	combout => \counter|A_counter|Add0~44_combout\);

\counter|A_counter|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~9_combout\ = (!\counter|A_counter|Add0~40_combout\ & (!\counter|A_counter|Add0~42_combout\ & !\counter|A_counter|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|Add0~40_combout\,
	datac => \counter|A_counter|Add0~42_combout\,
	datad => \counter|A_counter|Add0~44_combout\,
	combout => \counter|A_counter|Equal0~9_combout\);

\counter|A_counter|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|prescaler~1_combout\ = (\counter|A_counter|Add0~8_combout\ & (((!\counter|A_counter|Equal0~9_combout\) # (!\counter|A_counter|Equal0~5_combout\)) # (!\counter|A_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~8_combout\,
	datab => \counter|A_counter|Equal0~4_combout\,
	datac => \counter|A_counter|Equal0~5_combout\,
	datad => \counter|A_counter|Equal0~9_combout\,
	combout => \counter|A_counter|prescaler~1_combout\);

\counter|A_counter|counter_process:prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|prescaler~1_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[4]~q\);

\counter|A_counter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~10_combout\ = (\counter|A_counter|counter_process:prescaler[5]~q\ & (!\counter|A_counter|Add0~9\)) # (!\counter|A_counter|counter_process:prescaler[5]~q\ & ((\counter|A_counter|Add0~9\) # (GND)))
-- \counter|A_counter|Add0~11\ = CARRY((!\counter|A_counter|Add0~9\) # (!\counter|A_counter|counter_process:prescaler[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[5]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~9\,
	combout => \counter|A_counter|Add0~10_combout\,
	cout => \counter|A_counter|Add0~11\);

\counter|A_counter|counter_process:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~10_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[5]~q\);

\counter|A_counter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~12_combout\ = (\counter|A_counter|counter_process:prescaler[6]~q\ & (\counter|A_counter|Add0~11\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[6]~q\ & (!\counter|A_counter|Add0~11\ & VCC))
-- \counter|A_counter|Add0~13\ = CARRY((\counter|A_counter|counter_process:prescaler[6]~q\ & !\counter|A_counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[6]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~11\,
	combout => \counter|A_counter|Add0~12_combout\,
	cout => \counter|A_counter|Add0~13\);

\counter|A_counter|counter_process:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~12_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[6]~q\);

\counter|A_counter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~14_combout\ = (\counter|A_counter|counter_process:prescaler[7]~q\ & (!\counter|A_counter|Add0~13\)) # (!\counter|A_counter|counter_process:prescaler[7]~q\ & ((\counter|A_counter|Add0~13\) # (GND)))
-- \counter|A_counter|Add0~15\ = CARRY((!\counter|A_counter|Add0~13\) # (!\counter|A_counter|counter_process:prescaler[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[7]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~13\,
	combout => \counter|A_counter|Add0~14_combout\,
	cout => \counter|A_counter|Add0~15\);

\counter|A_counter|counter_process:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~14_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[7]~q\);

\counter|A_counter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~16_combout\ = (\counter|A_counter|counter_process:prescaler[8]~q\ & (\counter|A_counter|Add0~15\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[8]~q\ & (!\counter|A_counter|Add0~15\ & VCC))
-- \counter|A_counter|Add0~17\ = CARRY((\counter|A_counter|counter_process:prescaler[8]~q\ & !\counter|A_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[8]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~15\,
	combout => \counter|A_counter|Add0~16_combout\,
	cout => \counter|A_counter|Add0~17\);

\counter|A_counter|counter_process:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~16_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[8]~q\);

\counter|A_counter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~18_combout\ = (\counter|A_counter|counter_process:prescaler[9]~q\ & (!\counter|A_counter|Add0~17\)) # (!\counter|A_counter|counter_process:prescaler[9]~q\ & ((\counter|A_counter|Add0~17\) # (GND)))
-- \counter|A_counter|Add0~19\ = CARRY((!\counter|A_counter|Add0~17\) # (!\counter|A_counter|counter_process:prescaler[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[9]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~17\,
	combout => \counter|A_counter|Add0~18_combout\,
	cout => \counter|A_counter|Add0~19\);

\counter|A_counter|counter_process:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~18_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[9]~q\);

\counter|A_counter|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~20_combout\ = (\counter|A_counter|counter_process:prescaler[10]~q\ & (\counter|A_counter|Add0~19\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[10]~q\ & (!\counter|A_counter|Add0~19\ & VCC))
-- \counter|A_counter|Add0~21\ = CARRY((\counter|A_counter|counter_process:prescaler[10]~q\ & !\counter|A_counter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[10]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~19\,
	combout => \counter|A_counter|Add0~20_combout\,
	cout => \counter|A_counter|Add0~21\);

\counter|A_counter|counter_process:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~20_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[10]~q\);

\counter|A_counter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~22_combout\ = (\counter|A_counter|counter_process:prescaler[11]~q\ & (!\counter|A_counter|Add0~21\)) # (!\counter|A_counter|counter_process:prescaler[11]~q\ & ((\counter|A_counter|Add0~21\) # (GND)))
-- \counter|A_counter|Add0~23\ = CARRY((!\counter|A_counter|Add0~21\) # (!\counter|A_counter|counter_process:prescaler[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[11]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~21\,
	combout => \counter|A_counter|Add0~22_combout\,
	cout => \counter|A_counter|Add0~23\);

\counter|A_counter|counter_process:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~22_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[11]~q\);

\counter|A_counter|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~24_combout\ = (\counter|A_counter|counter_process:prescaler[12]~q\ & (\counter|A_counter|Add0~23\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[12]~q\ & (!\counter|A_counter|Add0~23\ & VCC))
-- \counter|A_counter|Add0~25\ = CARRY((\counter|A_counter|counter_process:prescaler[12]~q\ & !\counter|A_counter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[12]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~23\,
	combout => \counter|A_counter|Add0~24_combout\,
	cout => \counter|A_counter|Add0~25\);

\counter|A_counter|counter_process:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~24_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[12]~q\);

\counter|A_counter|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~26_combout\ = (\counter|A_counter|counter_process:prescaler[13]~q\ & (!\counter|A_counter|Add0~25\)) # (!\counter|A_counter|counter_process:prescaler[13]~q\ & ((\counter|A_counter|Add0~25\) # (GND)))
-- \counter|A_counter|Add0~27\ = CARRY((!\counter|A_counter|Add0~25\) # (!\counter|A_counter|counter_process:prescaler[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[13]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~25\,
	combout => \counter|A_counter|Add0~26_combout\,
	cout => \counter|A_counter|Add0~27\);

\counter|A_counter|counter_process:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~26_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[13]~q\);

\counter|A_counter|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~28_combout\ = (\counter|A_counter|counter_process:prescaler[14]~q\ & (\counter|A_counter|Add0~27\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[14]~q\ & (!\counter|A_counter|Add0~27\ & VCC))
-- \counter|A_counter|Add0~29\ = CARRY((\counter|A_counter|counter_process:prescaler[14]~q\ & !\counter|A_counter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[14]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~27\,
	combout => \counter|A_counter|Add0~28_combout\,
	cout => \counter|A_counter|Add0~29\);

\counter|A_counter|counter_process:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~28_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[14]~q\);

\counter|A_counter|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~30_combout\ = (\counter|A_counter|counter_process:prescaler[15]~q\ & (!\counter|A_counter|Add0~29\)) # (!\counter|A_counter|counter_process:prescaler[15]~q\ & ((\counter|A_counter|Add0~29\) # (GND)))
-- \counter|A_counter|Add0~31\ = CARRY((!\counter|A_counter|Add0~29\) # (!\counter|A_counter|counter_process:prescaler[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[15]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~29\,
	combout => \counter|A_counter|Add0~30_combout\,
	cout => \counter|A_counter|Add0~31\);

\counter|A_counter|counter_process:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|Add0~30_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[15]~q\);

\counter|A_counter|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~5_combout\ = (!\counter|A_counter|Add0~32_combout\ & (!\counter|A_counter|Add0~34_combout\ & (!\counter|A_counter|Add0~36_combout\ & !\counter|A_counter|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~32_combout\,
	datab => \counter|A_counter|Add0~34_combout\,
	datac => \counter|A_counter|Add0~36_combout\,
	datad => \counter|A_counter|Add0~38_combout\,
	combout => \counter|A_counter|Equal0~5_combout\);

\counter|A_counter|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|prescaler~0_combout\ = (\counter|A_counter|Add0~4_combout\ & (((!\counter|A_counter|Equal0~9_combout\) # (!\counter|A_counter|Equal0~5_combout\)) # (!\counter|A_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~4_combout\,
	datab => \counter|A_counter|Equal0~4_combout\,
	datac => \counter|A_counter|Equal0~5_combout\,
	datad => \counter|A_counter|Equal0~9_combout\,
	combout => \counter|A_counter|prescaler~0_combout\);

\counter|A_counter|counter_process:prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|prescaler~0_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[2]~q\);

\counter|A_counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~0_combout\ = (\counter|A_counter|Add0~4_combout\ & (!\counter|A_counter|Add0~0_combout\ & (!\counter|A_counter|Add0~2_combout\ & !\counter|A_counter|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~4_combout\,
	datab => \counter|A_counter|Add0~0_combout\,
	datac => \counter|A_counter|Add0~2_combout\,
	datad => \counter|A_counter|Add0~6_combout\,
	combout => \counter|A_counter|Equal0~0_combout\);

\counter|A_counter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~1_combout\ = (\counter|A_counter|Add0~8_combout\ & (!\counter|A_counter|Add0~10_combout\ & (!\counter|A_counter|Add0~12_combout\ & !\counter|A_counter|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~8_combout\,
	datab => \counter|A_counter|Add0~10_combout\,
	datac => \counter|A_counter|Add0~12_combout\,
	datad => \counter|A_counter|Add0~14_combout\,
	combout => \counter|A_counter|Equal0~1_combout\);

\counter|A_counter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~2_combout\ = (!\counter|A_counter|Add0~16_combout\ & (!\counter|A_counter|Add0~18_combout\ & (!\counter|A_counter|Add0~20_combout\ & !\counter|A_counter|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~16_combout\,
	datab => \counter|A_counter|Add0~18_combout\,
	datac => \counter|A_counter|Add0~20_combout\,
	datad => \counter|A_counter|Add0~22_combout\,
	combout => \counter|A_counter|Equal0~2_combout\);

\counter|A_counter|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~3_combout\ = (!\counter|A_counter|Add0~24_combout\ & (!\counter|A_counter|Add0~26_combout\ & (!\counter|A_counter|Add0~28_combout\ & !\counter|A_counter|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~24_combout\,
	datab => \counter|A_counter|Add0~26_combout\,
	datac => \counter|A_counter|Add0~28_combout\,
	datad => \counter|A_counter|Add0~30_combout\,
	combout => \counter|A_counter|Equal0~3_combout\);

\counter|A_counter|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~4_combout\ = (\counter|A_counter|Equal0~0_combout\ & (\counter|A_counter|Equal0~1_combout\ & (\counter|A_counter|Equal0~2_combout\ & \counter|A_counter|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Equal0~0_combout\,
	datab => \counter|A_counter|Equal0~1_combout\,
	datac => \counter|A_counter|Equal0~2_combout\,
	datad => \counter|A_counter|Equal0~3_combout\,
	combout => \counter|A_counter|Equal0~4_combout\);

\counter|A_counter|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~6_combout\ = (\counter|A_counter|Equal0~5_combout\ & (!\counter|A_counter|Add0~40_combout\ & (!\counter|A_counter|Add0~42_combout\ & !\counter|A_counter|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Equal0~5_combout\,
	datab => \counter|A_counter|Add0~40_combout\,
	datac => \counter|A_counter|Add0~42_combout\,
	datad => \counter|A_counter|Add0~44_combout\,
	combout => \counter|A_counter|Equal0~6_combout\);

\counter|A_counter|counter_process:counter_output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[0]~0_combout\ = \counter|A_counter|counter_process:counter_output[0]~q\ $ (((!\PAUSE~input_o\ & (\counter|A_counter|Equal0~4_combout\ & \counter|A_counter|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[0]~q\,
	datab => \PAUSE~input_o\,
	datac => \counter|A_counter|Equal0~4_combout\,
	datad => \counter|A_counter|Equal0~6_combout\,
	combout => \counter|A_counter|counter_process:counter_output[0]~0_combout\);

\counter|A_counter|counter_process:counter_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|counter_process:counter_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:counter_output[0]~q\);

\counter|A_counter|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~7_combout\ = (\counter|A_counter|Equal0~4_combout\ & !\counter|A_counter|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Equal0~4_combout\,
	datab => \counter|A_counter|Add0~40_combout\,
	combout => \counter|A_counter|Equal0~7_combout\);

\counter|A_counter|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~8_combout\ = (\counter|A_counter|Equal0~5_combout\ & (!\counter|A_counter|Add0~42_combout\ & (!\counter|A_counter|Add0~44_combout\ & \counter|A_counter|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Equal0~5_combout\,
	datab => \counter|A_counter|Add0~42_combout\,
	datac => \counter|A_counter|Add0~44_combout\,
	datad => \counter|A_counter|Equal0~7_combout\,
	combout => \counter|A_counter|Equal0~8_combout\);

\counter|A_counter|counter_process:counter_output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[1]~0_combout\ = \counter|A_counter|counter_process:counter_output[1]~q\ $ (((!\PAUSE~input_o\ & (\counter|A_counter|counter_process:counter_output[0]~q\ & \counter|A_counter|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[1]~q\,
	datab => \PAUSE~input_o\,
	datac => \counter|A_counter|counter_process:counter_output[0]~q\,
	datad => \counter|A_counter|Equal0~8_combout\,
	combout => \counter|A_counter|counter_process:counter_output[1]~0_combout\);

\counter|A_counter|counter_process:counter_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|counter_process:counter_output[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:counter_output[1]~q\);

\counter|A_counter|counter_process:counter_output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[1]~1_combout\ = (\counter|A_counter|counter_process:counter_output[0]~q\ & (\counter|A_counter|Equal0~4_combout\ & (\counter|A_counter|Equal0~6_combout\ & !\PAUSE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[0]~q\,
	datab => \counter|A_counter|Equal0~4_combout\,
	datac => \counter|A_counter|Equal0~6_combout\,
	datad => \PAUSE~input_o\,
	combout => \counter|A_counter|counter_process:counter_output[1]~1_combout\);

\counter|A_counter|counter_process:counter_output[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[2]~0_combout\ = \counter|A_counter|counter_process:counter_output[2]~q\ $ (((\counter|A_counter|counter_process:counter_output[1]~q\ & \counter|A_counter|counter_process:counter_output[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:counter_output[2]~q\,
	datac => \counter|A_counter|counter_process:counter_output[1]~q\,
	datad => \counter|A_counter|counter_process:counter_output[1]~1_combout\,
	combout => \counter|A_counter|counter_process:counter_output[2]~0_combout\);

\counter|A_counter|counter_process:counter_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|counter_process:counter_output[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:counter_output[2]~q\);

\counter|B_counter|counter_process:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~32_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[16]~q\);

\counter|B_counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~0_combout\ = \counter|B_counter|counter_process:prescaler[0]~q\ $ (VCC)
-- \counter|B_counter|Add0~1\ = CARRY(\counter|B_counter|counter_process:prescaler[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[0]~q\,
	datad => VCC,
	combout => \counter|B_counter|Add0~0_combout\,
	cout => \counter|B_counter|Add0~1\);

\counter|B_counter|counter_process:prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~0_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[0]~q\);

\counter|B_counter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~2_combout\ = (\counter|B_counter|counter_process:prescaler[1]~q\ & (!\counter|B_counter|Add0~1\)) # (!\counter|B_counter|counter_process:prescaler[1]~q\ & ((\counter|B_counter|Add0~1\) # (GND)))
-- \counter|B_counter|Add0~3\ = CARRY((!\counter|B_counter|Add0~1\) # (!\counter|B_counter|counter_process:prescaler[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[1]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~1\,
	combout => \counter|B_counter|Add0~2_combout\,
	cout => \counter|B_counter|Add0~3\);

\counter|B_counter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~4_combout\ = (\counter|B_counter|counter_process:prescaler[2]~q\ & (\counter|B_counter|Add0~3\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[2]~q\ & (!\counter|B_counter|Add0~3\ & VCC))
-- \counter|B_counter|Add0~5\ = CARRY((\counter|B_counter|counter_process:prescaler[2]~q\ & !\counter|B_counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[2]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~3\,
	combout => \counter|B_counter|Add0~4_combout\,
	cout => \counter|B_counter|Add0~5\);

\counter|B_counter|counter_process:prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~4_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[2]~q\);

\counter|B_counter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~6_combout\ = (\counter|B_counter|counter_process:prescaler[3]~q\ & (!\counter|B_counter|Add0~5\)) # (!\counter|B_counter|counter_process:prescaler[3]~q\ & ((\counter|B_counter|Add0~5\) # (GND)))
-- \counter|B_counter|Add0~7\ = CARRY((!\counter|B_counter|Add0~5\) # (!\counter|B_counter|counter_process:prescaler[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[3]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~5\,
	combout => \counter|B_counter|Add0~6_combout\,
	cout => \counter|B_counter|Add0~7\);

\counter|B_counter|counter_process:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~40_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[20]~q\);

\counter|B_counter|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~32_combout\ = (\counter|B_counter|counter_process:prescaler[16]~q\ & (\counter|B_counter|Add0~31\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[16]~q\ & (!\counter|B_counter|Add0~31\ & VCC))
-- \counter|B_counter|Add0~33\ = CARRY((\counter|B_counter|counter_process:prescaler[16]~q\ & !\counter|B_counter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[16]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~31\,
	combout => \counter|B_counter|Add0~32_combout\,
	cout => \counter|B_counter|Add0~33\);

\counter|B_counter|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~34_combout\ = (\counter|B_counter|counter_process:prescaler[17]~q\ & (!\counter|B_counter|Add0~33\)) # (!\counter|B_counter|counter_process:prescaler[17]~q\ & ((\counter|B_counter|Add0~33\) # (GND)))
-- \counter|B_counter|Add0~35\ = CARRY((!\counter|B_counter|Add0~33\) # (!\counter|B_counter|counter_process:prescaler[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[17]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~33\,
	combout => \counter|B_counter|Add0~34_combout\,
	cout => \counter|B_counter|Add0~35\);

\counter|B_counter|counter_process:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~34_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[17]~q\);

\counter|B_counter|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~36_combout\ = (\counter|B_counter|counter_process:prescaler[18]~q\ & (\counter|B_counter|Add0~35\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[18]~q\ & (!\counter|B_counter|Add0~35\ & VCC))
-- \counter|B_counter|Add0~37\ = CARRY((\counter|B_counter|counter_process:prescaler[18]~q\ & !\counter|B_counter|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[18]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~35\,
	combout => \counter|B_counter|Add0~36_combout\,
	cout => \counter|B_counter|Add0~37\);

\counter|B_counter|counter_process:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~36_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[18]~q\);

\counter|B_counter|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~38_combout\ = (\counter|B_counter|counter_process:prescaler[19]~q\ & (!\counter|B_counter|Add0~37\)) # (!\counter|B_counter|counter_process:prescaler[19]~q\ & ((\counter|B_counter|Add0~37\) # (GND)))
-- \counter|B_counter|Add0~39\ = CARRY((!\counter|B_counter|Add0~37\) # (!\counter|B_counter|counter_process:prescaler[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[19]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~37\,
	combout => \counter|B_counter|Add0~38_combout\,
	cout => \counter|B_counter|Add0~39\);

\counter|B_counter|counter_process:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~38_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[19]~q\);

\counter|B_counter|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~40_combout\ = (\counter|B_counter|counter_process:prescaler[20]~q\ & (\counter|B_counter|Add0~39\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[20]~q\ & (!\counter|B_counter|Add0~39\ & VCC))
-- \counter|B_counter|Add0~41\ = CARRY((\counter|B_counter|counter_process:prescaler[20]~q\ & !\counter|B_counter|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[20]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~39\,
	combout => \counter|B_counter|Add0~40_combout\,
	cout => \counter|B_counter|Add0~41\);

\counter|B_counter|counter_process:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~42_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[21]~q\);

\counter|B_counter|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~42_combout\ = (\counter|B_counter|counter_process:prescaler[21]~q\ & (!\counter|B_counter|Add0~41\)) # (!\counter|B_counter|counter_process:prescaler[21]~q\ & ((\counter|B_counter|Add0~41\) # (GND)))
-- \counter|B_counter|Add0~43\ = CARRY((!\counter|B_counter|Add0~41\) # (!\counter|B_counter|counter_process:prescaler[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[21]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~41\,
	combout => \counter|B_counter|Add0~42_combout\,
	cout => \counter|B_counter|Add0~43\);

\counter|B_counter|counter_process:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~44_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[22]~q\);

\counter|B_counter|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~44_combout\ = \counter|B_counter|counter_process:prescaler[22]~q\ $ (!\counter|B_counter|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[22]~q\,
	cin => \counter|B_counter|Add0~43\,
	combout => \counter|B_counter|Add0~44_combout\);

\counter|B_counter|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~7_combout\ = (!\counter|B_counter|Add0~40_combout\ & (!\counter|B_counter|Add0~42_combout\ & !\counter|B_counter|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|Add0~40_combout\,
	datac => \counter|B_counter|Add0~42_combout\,
	datad => \counter|B_counter|Add0~44_combout\,
	combout => \counter|B_counter|Equal0~7_combout\);

\counter|B_counter|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|prescaler~1_combout\ = (\counter|B_counter|Add0~6_combout\ & (((!\counter|B_counter|Equal0~7_combout\) # (!\counter|B_counter|Equal0~5_combout\)) # (!\counter|B_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~6_combout\,
	datab => \counter|B_counter|Equal0~4_combout\,
	datac => \counter|B_counter|Equal0~5_combout\,
	datad => \counter|B_counter|Equal0~7_combout\,
	combout => \counter|B_counter|prescaler~1_combout\);

\counter|B_counter|counter_process:prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|prescaler~1_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[3]~q\);

\counter|B_counter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~8_combout\ = (\counter|B_counter|counter_process:prescaler[4]~q\ & (\counter|B_counter|Add0~7\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[4]~q\ & (!\counter|B_counter|Add0~7\ & VCC))
-- \counter|B_counter|Add0~9\ = CARRY((\counter|B_counter|counter_process:prescaler[4]~q\ & !\counter|B_counter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[4]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~7\,
	combout => \counter|B_counter|Add0~8_combout\,
	cout => \counter|B_counter|Add0~9\);

\counter|B_counter|counter_process:prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~8_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[4]~q\);

\counter|B_counter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~10_combout\ = (\counter|B_counter|counter_process:prescaler[5]~q\ & (!\counter|B_counter|Add0~9\)) # (!\counter|B_counter|counter_process:prescaler[5]~q\ & ((\counter|B_counter|Add0~9\) # (GND)))
-- \counter|B_counter|Add0~11\ = CARRY((!\counter|B_counter|Add0~9\) # (!\counter|B_counter|counter_process:prescaler[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[5]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~9\,
	combout => \counter|B_counter|Add0~10_combout\,
	cout => \counter|B_counter|Add0~11\);

\counter|B_counter|counter_process:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~10_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[5]~q\);

\counter|B_counter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~12_combout\ = (\counter|B_counter|counter_process:prescaler[6]~q\ & (\counter|B_counter|Add0~11\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[6]~q\ & (!\counter|B_counter|Add0~11\ & VCC))
-- \counter|B_counter|Add0~13\ = CARRY((\counter|B_counter|counter_process:prescaler[6]~q\ & !\counter|B_counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[6]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~11\,
	combout => \counter|B_counter|Add0~12_combout\,
	cout => \counter|B_counter|Add0~13\);

\counter|B_counter|counter_process:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~12_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[6]~q\);

\counter|B_counter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~14_combout\ = (\counter|B_counter|counter_process:prescaler[7]~q\ & (!\counter|B_counter|Add0~13\)) # (!\counter|B_counter|counter_process:prescaler[7]~q\ & ((\counter|B_counter|Add0~13\) # (GND)))
-- \counter|B_counter|Add0~15\ = CARRY((!\counter|B_counter|Add0~13\) # (!\counter|B_counter|counter_process:prescaler[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[7]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~13\,
	combout => \counter|B_counter|Add0~14_combout\,
	cout => \counter|B_counter|Add0~15\);

\counter|B_counter|counter_process:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~14_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[7]~q\);

\counter|B_counter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~16_combout\ = (\counter|B_counter|counter_process:prescaler[8]~q\ & (\counter|B_counter|Add0~15\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[8]~q\ & (!\counter|B_counter|Add0~15\ & VCC))
-- \counter|B_counter|Add0~17\ = CARRY((\counter|B_counter|counter_process:prescaler[8]~q\ & !\counter|B_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[8]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~15\,
	combout => \counter|B_counter|Add0~16_combout\,
	cout => \counter|B_counter|Add0~17\);

\counter|B_counter|counter_process:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~16_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[8]~q\);

\counter|B_counter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~18_combout\ = (\counter|B_counter|counter_process:prescaler[9]~q\ & (!\counter|B_counter|Add0~17\)) # (!\counter|B_counter|counter_process:prescaler[9]~q\ & ((\counter|B_counter|Add0~17\) # (GND)))
-- \counter|B_counter|Add0~19\ = CARRY((!\counter|B_counter|Add0~17\) # (!\counter|B_counter|counter_process:prescaler[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[9]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~17\,
	combout => \counter|B_counter|Add0~18_combout\,
	cout => \counter|B_counter|Add0~19\);

\counter|B_counter|counter_process:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~18_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[9]~q\);

\counter|B_counter|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~20_combout\ = (\counter|B_counter|counter_process:prescaler[10]~q\ & (\counter|B_counter|Add0~19\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[10]~q\ & (!\counter|B_counter|Add0~19\ & VCC))
-- \counter|B_counter|Add0~21\ = CARRY((\counter|B_counter|counter_process:prescaler[10]~q\ & !\counter|B_counter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[10]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~19\,
	combout => \counter|B_counter|Add0~20_combout\,
	cout => \counter|B_counter|Add0~21\);

\counter|B_counter|counter_process:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~20_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[10]~q\);

\counter|B_counter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~22_combout\ = (\counter|B_counter|counter_process:prescaler[11]~q\ & (!\counter|B_counter|Add0~21\)) # (!\counter|B_counter|counter_process:prescaler[11]~q\ & ((\counter|B_counter|Add0~21\) # (GND)))
-- \counter|B_counter|Add0~23\ = CARRY((!\counter|B_counter|Add0~21\) # (!\counter|B_counter|counter_process:prescaler[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[11]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~21\,
	combout => \counter|B_counter|Add0~22_combout\,
	cout => \counter|B_counter|Add0~23\);

\counter|B_counter|counter_process:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~22_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[11]~q\);

\counter|B_counter|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~24_combout\ = (\counter|B_counter|counter_process:prescaler[12]~q\ & (\counter|B_counter|Add0~23\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[12]~q\ & (!\counter|B_counter|Add0~23\ & VCC))
-- \counter|B_counter|Add0~25\ = CARRY((\counter|B_counter|counter_process:prescaler[12]~q\ & !\counter|B_counter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[12]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~23\,
	combout => \counter|B_counter|Add0~24_combout\,
	cout => \counter|B_counter|Add0~25\);

\counter|B_counter|counter_process:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~24_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[12]~q\);

\counter|B_counter|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~26_combout\ = (\counter|B_counter|counter_process:prescaler[13]~q\ & (!\counter|B_counter|Add0~25\)) # (!\counter|B_counter|counter_process:prescaler[13]~q\ & ((\counter|B_counter|Add0~25\) # (GND)))
-- \counter|B_counter|Add0~27\ = CARRY((!\counter|B_counter|Add0~25\) # (!\counter|B_counter|counter_process:prescaler[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[13]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~25\,
	combout => \counter|B_counter|Add0~26_combout\,
	cout => \counter|B_counter|Add0~27\);

\counter|B_counter|counter_process:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~26_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[13]~q\);

\counter|B_counter|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~28_combout\ = (\counter|B_counter|counter_process:prescaler[14]~q\ & (\counter|B_counter|Add0~27\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[14]~q\ & (!\counter|B_counter|Add0~27\ & VCC))
-- \counter|B_counter|Add0~29\ = CARRY((\counter|B_counter|counter_process:prescaler[14]~q\ & !\counter|B_counter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[14]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~27\,
	combout => \counter|B_counter|Add0~28_combout\,
	cout => \counter|B_counter|Add0~29\);

\counter|B_counter|counter_process:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~28_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[14]~q\);

\counter|B_counter|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~30_combout\ = (\counter|B_counter|counter_process:prescaler[15]~q\ & (!\counter|B_counter|Add0~29\)) # (!\counter|B_counter|counter_process:prescaler[15]~q\ & ((\counter|B_counter|Add0~29\) # (GND)))
-- \counter|B_counter|Add0~31\ = CARRY((!\counter|B_counter|Add0~29\) # (!\counter|B_counter|counter_process:prescaler[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[15]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~29\,
	combout => \counter|B_counter|Add0~30_combout\,
	cout => \counter|B_counter|Add0~31\);

\counter|B_counter|counter_process:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|Add0~30_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[15]~q\);

\counter|B_counter|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~5_combout\ = (!\counter|B_counter|Add0~32_combout\ & (!\counter|B_counter|Add0~34_combout\ & (!\counter|B_counter|Add0~36_combout\ & !\counter|B_counter|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~32_combout\,
	datab => \counter|B_counter|Add0~34_combout\,
	datac => \counter|B_counter|Add0~36_combout\,
	datad => \counter|B_counter|Add0~38_combout\,
	combout => \counter|B_counter|Equal0~5_combout\);

\counter|B_counter|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|prescaler~0_combout\ = (\counter|B_counter|Add0~2_combout\ & (((!\counter|B_counter|Equal0~7_combout\) # (!\counter|B_counter|Equal0~5_combout\)) # (!\counter|B_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~2_combout\,
	datab => \counter|B_counter|Equal0~4_combout\,
	datac => \counter|B_counter|Equal0~5_combout\,
	datad => \counter|B_counter|Equal0~7_combout\,
	combout => \counter|B_counter|prescaler~0_combout\);

\counter|B_counter|counter_process:prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|prescaler~0_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[1]~q\);

\counter|B_counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~0_combout\ = (\counter|B_counter|Add0~2_combout\ & (\counter|B_counter|Add0~6_combout\ & (!\counter|B_counter|Add0~0_combout\ & !\counter|B_counter|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~2_combout\,
	datab => \counter|B_counter|Add0~6_combout\,
	datac => \counter|B_counter|Add0~0_combout\,
	datad => \counter|B_counter|Add0~4_combout\,
	combout => \counter|B_counter|Equal0~0_combout\);

\counter|B_counter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~1_combout\ = (!\counter|B_counter|Add0~8_combout\ & (!\counter|B_counter|Add0~10_combout\ & (!\counter|B_counter|Add0~12_combout\ & !\counter|B_counter|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~8_combout\,
	datab => \counter|B_counter|Add0~10_combout\,
	datac => \counter|B_counter|Add0~12_combout\,
	datad => \counter|B_counter|Add0~14_combout\,
	combout => \counter|B_counter|Equal0~1_combout\);

\counter|B_counter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~2_combout\ = (!\counter|B_counter|Add0~16_combout\ & (!\counter|B_counter|Add0~18_combout\ & (!\counter|B_counter|Add0~20_combout\ & !\counter|B_counter|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~16_combout\,
	datab => \counter|B_counter|Add0~18_combout\,
	datac => \counter|B_counter|Add0~20_combout\,
	datad => \counter|B_counter|Add0~22_combout\,
	combout => \counter|B_counter|Equal0~2_combout\);

\counter|B_counter|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~3_combout\ = (!\counter|B_counter|Add0~24_combout\ & (!\counter|B_counter|Add0~26_combout\ & (!\counter|B_counter|Add0~28_combout\ & !\counter|B_counter|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~24_combout\,
	datab => \counter|B_counter|Add0~26_combout\,
	datac => \counter|B_counter|Add0~28_combout\,
	datad => \counter|B_counter|Add0~30_combout\,
	combout => \counter|B_counter|Equal0~3_combout\);

\counter|B_counter|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~4_combout\ = (\counter|B_counter|Equal0~0_combout\ & (\counter|B_counter|Equal0~1_combout\ & (\counter|B_counter|Equal0~2_combout\ & \counter|B_counter|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Equal0~0_combout\,
	datab => \counter|B_counter|Equal0~1_combout\,
	datac => \counter|B_counter|Equal0~2_combout\,
	datad => \counter|B_counter|Equal0~3_combout\,
	combout => \counter|B_counter|Equal0~4_combout\);

\counter|B_counter|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~6_combout\ = (\counter|B_counter|Equal0~5_combout\ & (!\counter|B_counter|Add0~40_combout\ & (!\counter|B_counter|Add0~42_combout\ & !\counter|B_counter|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Equal0~5_combout\,
	datab => \counter|B_counter|Add0~40_combout\,
	datac => \counter|B_counter|Add0~42_combout\,
	datad => \counter|B_counter|Add0~44_combout\,
	combout => \counter|B_counter|Equal0~6_combout\);

\counter|B_counter|counter_process:counter_output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[0]~0_combout\ = \counter|B_counter|counter_process:counter_output[0]~q\ $ (((!\PAUSE~input_o\ & (\counter|B_counter|Equal0~4_combout\ & \counter|B_counter|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[0]~q\,
	datab => \PAUSE~input_o\,
	datac => \counter|B_counter|Equal0~4_combout\,
	datad => \counter|B_counter|Equal0~6_combout\,
	combout => \counter|B_counter|counter_process:counter_output[0]~0_combout\);

\counter|B_counter|counter_process:counter_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|counter_process:counter_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:counter_output[0]~q\);

\counter|B_counter|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~8_combout\ = (\counter|B_counter|Equal0~4_combout\ & (\counter|B_counter|Equal0~5_combout\ & \counter|B_counter|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Equal0~4_combout\,
	datab => \counter|B_counter|Equal0~5_combout\,
	datac => \counter|B_counter|Equal0~7_combout\,
	combout => \counter|B_counter|Equal0~8_combout\);

\counter|B_counter|counter_process:counter_output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[1]~0_combout\ = \counter|B_counter|counter_process:counter_output[1]~q\ $ (((!\PAUSE~input_o\ & (\counter|B_counter|counter_process:counter_output[0]~q\ & \counter|B_counter|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[1]~q\,
	datab => \PAUSE~input_o\,
	datac => \counter|B_counter|counter_process:counter_output[0]~q\,
	datad => \counter|B_counter|Equal0~8_combout\,
	combout => \counter|B_counter|counter_process:counter_output[1]~0_combout\);

\counter|B_counter|counter_process:counter_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|counter_process:counter_output[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:counter_output[1]~q\);

\counter|B_counter|counter_process:counter_output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[1]~1_combout\ = (\counter|B_counter|counter_process:counter_output[0]~q\ & (\counter|B_counter|Equal0~4_combout\ & (!\PAUSE~input_o\ & !\counter|B_counter|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[0]~q\,
	datab => \counter|B_counter|Equal0~4_combout\,
	datac => \PAUSE~input_o\,
	datad => \counter|B_counter|Add0~40_combout\,
	combout => \counter|B_counter|counter_process:counter_output[1]~1_combout\);

\counter|B_counter|counter_process:counter_output[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[1]~2_combout\ = (\counter|B_counter|Equal0~5_combout\ & (!\counter|B_counter|Add0~42_combout\ & (!\counter|B_counter|Add0~44_combout\ & \counter|B_counter|counter_process:counter_output[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Equal0~5_combout\,
	datab => \counter|B_counter|Add0~42_combout\,
	datac => \counter|B_counter|Add0~44_combout\,
	datad => \counter|B_counter|counter_process:counter_output[1]~1_combout\,
	combout => \counter|B_counter|counter_process:counter_output[1]~2_combout\);

\counter|B_counter|counter_process:counter_output[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[2]~0_combout\ = \counter|B_counter|counter_process:counter_output[2]~q\ $ (((\counter|B_counter|counter_process:counter_output[1]~q\ & \counter|B_counter|counter_process:counter_output[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:counter_output[2]~q\,
	datac => \counter|B_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[1]~2_combout\,
	combout => \counter|B_counter|counter_process:counter_output[2]~0_combout\);

\counter|B_counter|counter_process:counter_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|counter_process:counter_output[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:counter_output[2]~q\);

\Add_C2|Full_Adder|a1|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add_C2|Full_Adder|a1|C_out~0_combout\ = (\counter|A_counter|counter_process:counter_output[1]~q\ & ((\counter|B_counter|counter_process:counter_output[1]~q\) # ((\counter|B_counter|counter_process:counter_output[0]~q\ & 
-- \counter|A_counter|counter_process:counter_output[0]~q\)))) # (!\counter|A_counter|counter_process:counter_output[1]~q\ & (\counter|B_counter|counter_process:counter_output[0]~q\ & (\counter|A_counter|counter_process:counter_output[0]~q\ & 
-- \counter|B_counter|counter_process:counter_output[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[0]~q\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|A_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[1]~q\,
	combout => \Add_C2|Full_Adder|a1|C_out~0_combout\);

\Add_C2|Full_Adder|a2|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add_C2|Full_Adder|a2|C_out~0_combout\ = (\counter|A_counter|counter_process:counter_output[2]~q\ & ((\counter|B_counter|counter_process:counter_output[2]~q\) # (\Add_C2|Full_Adder|a1|C_out~0_combout\))) # 
-- (!\counter|A_counter|counter_process:counter_output[2]~q\ & (\counter|B_counter|counter_process:counter_output[2]~q\ & \Add_C2|Full_Adder|a1|C_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[2]~q\,
	datab => \counter|B_counter|counter_process:counter_output[2]~q\,
	datac => \Add_C2|Full_Adder|a1|C_out~0_combout\,
	combout => \Add_C2|Full_Adder|a2|C_out~0_combout\);

\counter|A_counter|counter_process:counter_output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[3]~0_combout\ = \counter|A_counter|counter_process:counter_output[3]~q\ $ (((\counter|A_counter|counter_process:counter_output[1]~q\ & (\counter|A_counter|counter_process:counter_output[2]~q\ & 
-- \counter|A_counter|counter_process:counter_output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[1]~q\,
	datab => \counter|A_counter|counter_process:counter_output[2]~q\,
	datac => \counter|A_counter|counter_process:counter_output[1]~1_combout\,
	datad => \counter|A_counter|counter_process:counter_output[3]~q\,
	combout => \counter|A_counter|counter_process:counter_output[3]~0_combout\);

\counter|A_counter|counter_process:counter_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|A_counter|counter_process:counter_output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:counter_output[3]~q\);

\counter|B_counter|counter_process:counter_output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[3]~0_combout\ = \counter|B_counter|counter_process:counter_output[3]~q\ $ (((\counter|B_counter|counter_process:counter_output[1]~q\ & (\counter|B_counter|counter_process:counter_output[2]~q\ & 
-- \counter|B_counter|counter_process:counter_output[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[1]~q\,
	datab => \counter|B_counter|counter_process:counter_output[2]~q\,
	datac => \counter|B_counter|counter_process:counter_output[1]~2_combout\,
	datad => \counter|B_counter|counter_process:counter_output[3]~q\,
	combout => \counter|B_counter|counter_process:counter_output[3]~0_combout\);

\counter|B_counter|counter_process:counter_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \counter|B_counter|counter_process:counter_output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:counter_output[3]~q\);

\COUT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUT~2_combout\ = (\Equal0~0_combout\ & ((\Add_C2|Full_Adder|a2|C_out~0_combout\ & ((!\counter|B_counter|counter_process:counter_output[3]~q\) # (!\counter|A_counter|counter_process:counter_output[3]~q\))) # (!\Add_C2|Full_Adder|a2|C_out~0_combout\ & 
-- (!\counter|A_counter|counter_process:counter_output[3]~q\ & !\counter|B_counter|counter_process:counter_output[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add_C2|Full_Adder|a2|C_out~0_combout\,
	datac => \counter|A_counter|counter_process:counter_output[3]~q\,
	datad => \counter|B_counter|counter_process:counter_output[3]~q\,
	combout => \COUT~2_combout\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\SEL[0]~input_o\ & (!\SEL[1]~input_o\ & !\SEL[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \Equal0~1_combout\);

\Sub_C2|Full_Adder|a1|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a1|C_out~0_combout\ = (\counter|A_counter|counter_process:counter_output[1]~q\ & ((\counter|A_counter|counter_process:counter_output[0]~q\) # ((!\counter|B_counter|counter_process:counter_output[1]~q\) # 
-- (!\counter|B_counter|counter_process:counter_output[0]~q\)))) # (!\counter|A_counter|counter_process:counter_output[1]~q\ & (!\counter|B_counter|counter_process:counter_output[1]~q\ & ((\counter|A_counter|counter_process:counter_output[0]~q\) # 
-- (!\counter|B_counter|counter_process:counter_output[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[1]~q\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|B_counter|counter_process:counter_output[0]~q\,
	datad => \counter|B_counter|counter_process:counter_output[1]~q\,
	combout => \Sub_C2|Full_Adder|a1|C_out~0_combout\);

\Sub_C2|Full_Adder|a2|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a2|C_out~0_combout\ = (\counter|A_counter|counter_process:counter_output[2]~q\ & ((\Sub_C2|Full_Adder|a1|C_out~0_combout\) # (!\counter|B_counter|counter_process:counter_output[2]~q\))) # 
-- (!\counter|A_counter|counter_process:counter_output[2]~q\ & (\Sub_C2|Full_Adder|a1|C_out~0_combout\ & !\counter|B_counter|counter_process:counter_output[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[2]~q\,
	datab => \Sub_C2|Full_Adder|a1|C_out~0_combout\,
	datad => \counter|B_counter|counter_process:counter_output[2]~q\,
	combout => \Sub_C2|Full_Adder|a2|C_out~0_combout\);

\COUT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUT~3_combout\ = (\counter|B_counter|counter_process:counter_output[3]~q\ & ((\Sub_C2|Full_Adder|a2|C_out~0_combout\) # (!\counter|A_counter|counter_process:counter_output[3]~q\))) # (!\counter|B_counter|counter_process:counter_output[3]~q\ & 
-- (\Sub_C2|Full_Adder|a2|C_out~0_combout\ & !\counter|A_counter|counter_process:counter_output[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[3]~q\,
	datab => \Sub_C2|Full_Adder|a2|C_out~0_combout\,
	datad => \counter|A_counter|counter_process:counter_output[3]~q\,
	combout => \COUT~3_combout\);

\COUT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUT~4_combout\ = (\COUT~2_combout\) # ((\Equal0~1_combout\ & (\COUT~3_combout\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUT~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \COUT~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \COUT~4_combout\);

\res_bin~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~2_combout\ = (\SEL[2]~input_o\ & ((\counter|A_counter|counter_process:counter_output[1]~q\ & ((\SEL[0]~input_o\) # (\counter|B_counter|counter_process:counter_output[1]~q\))) # (!\counter|A_counter|counter_process:counter_output[1]~q\ & 
-- (\SEL[0]~input_o\ & \counter|B_counter|counter_process:counter_output[1]~q\)))) # (!\SEL[2]~input_o\ & (\counter|A_counter|counter_process:counter_output[1]~q\ $ (((!\counter|B_counter|counter_process:counter_output[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~input_o\,
	datab => \counter|A_counter|counter_process:counter_output[1]~q\,
	datac => \SEL[0]~input_o\,
	datad => \counter|B_counter|counter_process:counter_output[1]~q\,
	combout => \res_bin~2_combout\);

\res_bin~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~3_combout\ = (\SEL[2]~input_o\ & (\counter|A_counter|counter_process:counter_output[1]~q\ $ (\SEL[0]~input_o\ $ (\counter|B_counter|counter_process:counter_output[1]~q\)))) # (!\SEL[2]~input_o\ & ((\SEL[0]~input_o\ & 
-- ((!\counter|B_counter|counter_process:counter_output[1]~q\))) # (!\SEL[0]~input_o\ & (!\counter|A_counter|counter_process:counter_output[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~input_o\,
	datab => \counter|A_counter|counter_process:counter_output[1]~q\,
	datac => \SEL[0]~input_o\,
	datad => \counter|B_counter|counter_process:counter_output[1]~q\,
	combout => \res_bin~3_combout\);

\res_bin~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~13_combout\ = (\SEL[1]~input_o\ & ((\res_bin~3_combout\))) # (!\SEL[1]~input_o\ & (\res_bin~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_bin~2_combout\,
	datab => \res_bin~3_combout\,
	datac => \SEL[1]~input_o\,
	combout => \res_bin~13_combout\);

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\SEL[1]~input_o\ & !\SEL[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL[1]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \Equal0~2_combout\);

\res_bin[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- res_bin(1) = (\Equal0~2_combout\ & ((res_bin(1)))) # (!\Equal0~2_combout\ & (\res_bin~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_bin~13_combout\,
	datac => res_bin(1),
	datad => \Equal0~2_combout\,
	combout => res_bin(1));

\ZER~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~2_combout\ = (!res_bin(1) & ((\SEL[1]~input_o\) # (\SEL[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[2]~input_o\,
	datad => res_bin(1),
	combout => \ZER~2_combout\);

\res_bin~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~7_combout\ = (\counter|A_counter|counter_process:counter_output[2]~q\ & ((\counter|B_counter|counter_process:counter_output[2]~q\ & (\SEL[2]~input_o\)) # (!\counter|B_counter|counter_process:counter_output[2]~q\ & ((\SEL[0]~input_o\))))) # 
-- (!\counter|A_counter|counter_process:counter_output[2]~q\ & (\SEL[2]~input_o\ $ (((!\counter|B_counter|counter_process:counter_output[2]~q\) # (!\SEL[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~input_o\,
	datab => \counter|A_counter|counter_process:counter_output[2]~q\,
	datac => \SEL[0]~input_o\,
	datad => \counter|B_counter|counter_process:counter_output[2]~q\,
	combout => \res_bin~7_combout\);

\res_bin~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~5_combout\ = \counter|A_counter|counter_process:counter_output[2]~q\ $ (\counter|B_counter|counter_process:counter_output[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|A_counter|counter_process:counter_output[2]~q\,
	datad => \counter|B_counter|counter_process:counter_output[2]~q\,
	combout => \res_bin~5_combout\);

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\SEL[1]~input_o\ & (\SEL[2]~input_o\ & !\SEL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[2]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \Equal0~3_combout\);

\res_bin~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~6_combout\ = \SEL[1]~input_o\ $ (\SEL[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL[1]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \res_bin~6_combout\);

\res_bin~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~8_combout\ = (\res_bin~6_combout\ & (\res_bin~7_combout\)) # (!\res_bin~6_combout\ & ((\res_bin~5_combout\ $ (!\Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_bin~7_combout\,
	datab => \res_bin~5_combout\,
	datac => \Equal0~3_combout\,
	datad => \res_bin~6_combout\,
	combout => \res_bin~8_combout\);

\res_bin[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- res_bin(2) = (\Equal0~2_combout\ & ((res_bin(2)))) # (!\Equal0~2_combout\ & (\res_bin~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_bin~8_combout\,
	datac => res_bin(2),
	datad => \Equal0~2_combout\,
	combout => res_bin(2));

\res_bin~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~9_combout\ = (\counter|B_counter|counter_process:counter_output[3]~q\ & ((\counter|A_counter|counter_process:counter_output[3]~q\ & ((!\SEL[2]~input_o\))) # (!\counter|A_counter|counter_process:counter_output[3]~q\ & (\SEL[0]~input_o\)))) # 
-- (!\counter|B_counter|counter_process:counter_output[3]~q\ & (\SEL[2]~input_o\ $ (((!\SEL[0]~input_o\ & \counter|A_counter|counter_process:counter_output[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \counter|B_counter|counter_process:counter_output[3]~q\,
	datac => \counter|A_counter|counter_process:counter_output[3]~q\,
	datad => \SEL[2]~input_o\,
	combout => \res_bin~9_combout\);

\res_bin~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~4_combout\ = \counter|A_counter|counter_process:counter_output[3]~q\ $ (\counter|B_counter|counter_process:counter_output[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|A_counter|counter_process:counter_output[3]~q\,
	datad => \counter|B_counter|counter_process:counter_output[3]~q\,
	combout => \res_bin~4_combout\);

\res_bin~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~10_combout\ = (\res_bin~6_combout\ & (\res_bin~9_combout\)) # (!\res_bin~6_combout\ & ((\res_bin~4_combout\ $ (!\Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_bin~9_combout\,
	datab => \res_bin~4_combout\,
	datac => \Equal0~3_combout\,
	datad => \res_bin~6_combout\,
	combout => \res_bin~10_combout\);

\res_bin[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- res_bin(3) = (\Equal0~2_combout\ & ((res_bin(3)))) # (!\Equal0~2_combout\ & (\res_bin~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_bin~10_combout\,
	datac => res_bin(3),
	datad => \Equal0~2_combout\,
	combout => res_bin(3));

\res_bin~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~11_combout\ = (\counter|A_counter|counter_process:counter_output[0]~q\ & ((\counter|B_counter|counter_process:counter_output[0]~q\ & (\SEL[2]~input_o\)) # (!\counter|B_counter|counter_process:counter_output[0]~q\ & ((\SEL[0]~input_o\))))) # 
-- (!\counter|A_counter|counter_process:counter_output[0]~q\ & (\SEL[2]~input_o\ $ (((!\counter|B_counter|counter_process:counter_output[0]~q\) # (!\SEL[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~input_o\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \SEL[0]~input_o\,
	datad => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \res_bin~11_combout\);

\Sub_C2|Full_Adder|a0|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a0|S~0_combout\ = \counter|A_counter|counter_process:counter_output[0]~q\ $ (\counter|B_counter|counter_process:counter_output[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|A_counter|counter_process:counter_output[0]~q\,
	datad => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \Sub_C2|Full_Adder|a0|S~0_combout\);

\res_bin~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~12_combout\ = (\res_bin~6_combout\ & (\res_bin~11_combout\)) # (!\res_bin~6_combout\ & ((\Sub_C2|Full_Adder|a0|S~0_combout\ $ (!\Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_bin~11_combout\,
	datab => \Sub_C2|Full_Adder|a0|S~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \res_bin~6_combout\,
	combout => \res_bin~12_combout\);

\res_bin[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- res_bin(0) = (\Equal0~2_combout\ & ((res_bin(0)))) # (!\Equal0~2_combout\ & (\res_bin~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_bin~12_combout\,
	datac => res_bin(0),
	datad => \Equal0~2_combout\,
	combout => res_bin(0));

\ZER~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~3_combout\ = (\ZER~2_combout\ & (!res_bin(2) & (!res_bin(3) & !res_bin(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZER~2_combout\,
	datab => res_bin(2),
	datac => res_bin(3),
	datad => res_bin(0),
	combout => \ZER~3_combout\);

\ZER~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~10_combout\ = (\Equal0~0_combout\ & ((\counter|A_counter|counter_process:counter_output[3]~q\ & ((!\Add_C2|Full_Adder|a2|C_out~0_combout\) # (!\counter|B_counter|counter_process:counter_output[3]~q\))) # 
-- (!\counter|A_counter|counter_process:counter_output[3]~q\ & ((\counter|B_counter|counter_process:counter_output[3]~q\) # (\Add_C2|Full_Adder|a2|C_out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[3]~q\,
	datab => \counter|B_counter|counter_process:counter_output[3]~q\,
	datac => \Equal0~0_combout\,
	datad => \Add_C2|Full_Adder|a2|C_out~0_combout\,
	combout => \ZER~10_combout\);

\Add_C2|Full_Adder|a1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add_C2|Full_Adder|a1|S~combout\ = \counter|A_counter|counter_process:counter_output[1]~q\ $ (\counter|B_counter|counter_process:counter_output[1]~q\ $ (((\counter|A_counter|counter_process:counter_output[0]~q\ & 
-- \counter|B_counter|counter_process:counter_output[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[0]~q\,
	datab => \counter|B_counter|counter_process:counter_output[0]~q\,
	datac => \counter|A_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[1]~q\,
	combout => \Add_C2|Full_Adder|a1|S~combout\);

\ZER~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~4_combout\ = (!\Sub_C2|Full_Adder|a0|S~0_combout\ & (!\Add_C2|Full_Adder|a1|S~combout\ & (\res_bin~5_combout\ $ (!\Add_C2|Full_Adder|a1|C_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_bin~5_combout\,
	datab => \Add_C2|Full_Adder|a1|C_out~0_combout\,
	datac => \Sub_C2|Full_Adder|a0|S~0_combout\,
	datad => \Add_C2|Full_Adder|a1|S~combout\,
	combout => \ZER~4_combout\);

\Add_C2|Full_Adder|a3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add_C2|Full_Adder|a3|S~combout\ = \res_bin~4_combout\ $ (((\counter|A_counter|counter_process:counter_output[2]~q\ & ((\counter|B_counter|counter_process:counter_output[2]~q\) # (\Add_C2|Full_Adder|a1|C_out~0_combout\))) # 
-- (!\counter|A_counter|counter_process:counter_output[2]~q\ & (\counter|B_counter|counter_process:counter_output[2]~q\ & \Add_C2|Full_Adder|a1|C_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[2]~q\,
	datab => \counter|B_counter|counter_process:counter_output[2]~q\,
	datac => \Add_C2|Full_Adder|a1|C_out~0_combout\,
	datad => \res_bin~4_combout\,
	combout => \Add_C2|Full_Adder|a3|S~combout\);

\ZER~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~5_combout\ = (\ZER~3_combout\) # ((\ZER~10_combout\ & (\ZER~4_combout\ & !\Add_C2|Full_Adder|a3|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZER~3_combout\,
	datab => \ZER~10_combout\,
	datac => \ZER~4_combout\,
	datad => \Add_C2|Full_Adder|a3|S~combout\,
	combout => \ZER~5_combout\);

\ZER~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~6_combout\ = (\counter|A_counter|counter_process:counter_output[0]~q\ & (\counter|B_counter|counter_process:counter_output[0]~q\ & (\counter|A_counter|counter_process:counter_output[1]~q\ $ 
-- (!\counter|B_counter|counter_process:counter_output[1]~q\)))) # (!\counter|A_counter|counter_process:counter_output[0]~q\ & (!\counter|B_counter|counter_process:counter_output[0]~q\ & (\counter|A_counter|counter_process:counter_output[1]~q\ $ 
-- (!\counter|B_counter|counter_process:counter_output[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[0]~q\,
	datab => \counter|A_counter|counter_process:counter_output[1]~q\,
	datac => \counter|B_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \ZER~6_combout\);

\Sub_C2|OVERFLOW\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|OVERFLOW~combout\ = (\counter|A_counter|counter_process:counter_output[3]~q\ & ((\counter|B_counter|counter_process:counter_output[3]~q\) # (!\Sub_C2|Full_Adder|a2|C_out~0_combout\))) # (!\counter|A_counter|counter_process:counter_output[3]~q\ & 
-- ((\Sub_C2|Full_Adder|a2|C_out~0_combout\) # (!\counter|B_counter|counter_process:counter_output[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[3]~q\,
	datab => \counter|B_counter|counter_process:counter_output[3]~q\,
	datac => \Sub_C2|Full_Adder|a2|C_out~0_combout\,
	combout => \Sub_C2|OVERFLOW~combout\);

\ZER~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~7_combout\ = (\Sub_C2|OVERFLOW~combout\ & (\Equal0~1_combout\ & !\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|OVERFLOW~combout\,
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \ZER~7_combout\);

\ZER~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~8_combout\ = (\counter|B_counter|counter_process:counter_output[2]~q\ & ((\counter|A_counter|counter_process:counter_output[2]~q\ & (\Sub_C2|Full_Adder|a1|C_out~0_combout\ & !\res_bin~4_combout\)) # 
-- (!\counter|A_counter|counter_process:counter_output[2]~q\ & (!\Sub_C2|Full_Adder|a1|C_out~0_combout\ & \res_bin~4_combout\)))) # (!\counter|B_counter|counter_process:counter_output[2]~q\ & (!\res_bin~4_combout\ & 
-- (\counter|A_counter|counter_process:counter_output[2]~q\ $ (\Sub_C2|Full_Adder|a1|C_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[2]~q\,
	datab => \counter|A_counter|counter_process:counter_output[2]~q\,
	datac => \Sub_C2|Full_Adder|a1|C_out~0_combout\,
	datad => \res_bin~4_combout\,
	combout => \ZER~8_combout\);

\ZER~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~9_combout\ = (\ZER~5_combout\) # ((\ZER~6_combout\ & (\ZER~7_combout\ & \ZER~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZER~5_combout\,
	datab => \ZER~6_combout\,
	datac => \ZER~7_combout\,
	datad => \ZER~8_combout\,
	combout => \ZER~9_combout\);

\Sub_C2|Full_Adder|a3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a3|S~combout\ = \res_bin~4_combout\ $ (((\counter|B_counter|counter_process:counter_output[2]~q\ & (\counter|A_counter|counter_process:counter_output[2]~q\ & \Sub_C2|Full_Adder|a1|C_out~0_combout\)) # 
-- (!\counter|B_counter|counter_process:counter_output[2]~q\ & ((\counter|A_counter|counter_process:counter_output[2]~q\) # (\Sub_C2|Full_Adder|a1|C_out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[2]~q\,
	datab => \counter|A_counter|counter_process:counter_output[2]~q\,
	datac => \Sub_C2|Full_Adder|a1|C_out~0_combout\,
	datad => \res_bin~4_combout\,
	combout => \Sub_C2|Full_Adder|a3|S~combout\);

\NEG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NEG~0_combout\ = (\Add_C2|Full_Adder|a3|S~combout\ & ((\ZER~10_combout\) # ((\ZER~7_combout\ & !\Sub_C2|Full_Adder|a3|S~combout\)))) # (!\Add_C2|Full_Adder|a3|S~combout\ & (((\ZER~7_combout\ & !\Sub_C2|Full_Adder|a3|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add_C2|Full_Adder|a3|S~combout\,
	datab => \ZER~10_combout\,
	datac => \ZER~7_combout\,
	datad => \Sub_C2|Full_Adder|a3|S~combout\,
	combout => \NEG~0_combout\);

\OVER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OVER~0_combout\ = (\ZER~10_combout\) # ((!\Equal0~0_combout\ & ((\Sub_C2|OVERFLOW~combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZER~10_combout\,
	datab => \Sub_C2|OVERFLOW~combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \OVER~0_combout\);

\RESULT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~10_combout\ = (\Equal0~2_combout\ & (\counter|A_counter|counter_process:counter_output[0]~q\ $ ((\counter|B_counter|counter_process:counter_output[0]~q\)))) # (!\Equal0~2_combout\ & (((res_bin(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[0]~q\,
	datab => \counter|B_counter|counter_process:counter_output[0]~q\,
	datac => res_bin(0),
	datad => \Equal0~2_combout\,
	combout => \RESULT~10_combout\);

\Sub_C2|Full_Adder|a1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a1|S~combout\ = \counter|A_counter|counter_process:counter_output[1]~q\ $ (\counter|B_counter|counter_process:counter_output[1]~q\ $ (((\counter|A_counter|counter_process:counter_output[0]~q\) # 
-- (!\counter|B_counter|counter_process:counter_output[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[1]~q\,
	datab => \counter|B_counter|counter_process:counter_output[1]~q\,
	datac => \counter|A_counter|counter_process:counter_output[0]~q\,
	datad => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \Sub_C2|Full_Adder|a1|S~combout\);

\RESULT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~4_combout\ = (\Equal0~2_combout\ & (((\SEL[0]~input_o\ & !\Sub_C2|Full_Adder|a1|S~combout\)))) # (!\Equal0~2_combout\ & (res_bin(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => res_bin(1),
	datab => \SEL[0]~input_o\,
	datac => \Equal0~2_combout\,
	datad => \Sub_C2|Full_Adder|a1|S~combout\,
	combout => \RESULT~4_combout\);

\RESULT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~5_combout\ = (\RESULT~4_combout\) # ((\Equal0~0_combout\ & \Add_C2|Full_Adder|a1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESULT~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add_C2|Full_Adder|a1|S~combout\,
	combout => \RESULT~5_combout\);

\RESULT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~6_combout\ = (\Equal0~1_combout\ & (\Sub_C2|Full_Adder|a1|C_out~0_combout\ $ ((!\res_bin~5_combout\)))) # (!\Equal0~1_combout\ & (((res_bin(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|Full_Adder|a1|C_out~0_combout\,
	datab => \res_bin~5_combout\,
	datac => res_bin(2),
	datad => \Equal0~1_combout\,
	combout => \RESULT~6_combout\);

\RESULT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~7_combout\ = (\Equal0~0_combout\ & ((\res_bin~5_combout\ $ (\Add_C2|Full_Adder|a1|C_out~0_combout\)))) # (!\Equal0~0_combout\ & (\RESULT~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESULT~6_combout\,
	datab => \Equal0~0_combout\,
	datac => \res_bin~5_combout\,
	datad => \Add_C2|Full_Adder|a1|C_out~0_combout\,
	combout => \RESULT~7_combout\);

\RESULT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~8_combout\ = (\Equal0~0_combout\ & (\Add_C2|Full_Adder|a3|S~combout\)) # (!\Equal0~0_combout\ & (((res_bin(3) & !\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add_C2|Full_Adder|a3|S~combout\,
	datab => \Equal0~0_combout\,
	datac => res_bin(3),
	datad => \Equal0~1_combout\,
	combout => \RESULT~8_combout\);

\RESULT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~9_combout\ = (\RESULT~8_combout\) # ((\Equal0~1_combout\ & (!\Equal0~0_combout\ & !\Sub_C2|Full_Adder|a3|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESULT~8_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Sub_C2|Full_Adder|a3|S~combout\,
	combout => \RESULT~9_combout\);

\COUT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COUT,
	o => \COUT~input_o\);

ww_X(0) <= \X[0]~output_o\;

ww_X(1) <= \X[1]~output_o\;

ww_X(2) <= \X[2]~output_o\;

ww_X(3) <= \X[3]~output_o\;

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_ZER <= \ZER~output_o\;

ww_NEG <= \NEG~output_o\;

ww_OVER <= \OVER~output_o\;

ww_RESULT(0) <= \RESULT[0]~output_o\;

ww_RESULT(1) <= \RESULT[1]~output_o\;

ww_RESULT(2) <= \RESULT[2]~output_o\;

ww_RESULT(3) <= \RESULT[3]~output_o\;

ww_COUT <= \COUT~output_o\;
END structure;


