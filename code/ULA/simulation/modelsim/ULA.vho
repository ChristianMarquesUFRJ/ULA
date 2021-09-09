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

-- DATE "08/31/2021 20:24:06"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	ULA IS
    PORT (
	X : OUT std_logic_vector(3 DOWNTO 0);
	Y : OUT std_logic_vector(3 DOWNTO 0);
	SEL : IN std_logic_vector(2 DOWNTO 0);
	PAUSE : IN std_logic;
	CLK : IN std_logic;
	ZER : OUT std_logic;
	NEG : OUT std_logic;
	OVER : OUT std_logic;
	COUT : OUT std_logic;
	RESULT : OUT std_logic_vector(3 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- X[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZER	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NEG	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVER	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PAUSE	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \RESULT[0]~output_o\ : std_logic;
SIGNAL \RESULT[1]~output_o\ : std_logic;
SIGNAL \RESULT[2]~output_o\ : std_logic;
SIGNAL \RESULT[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PAUSE~input_o\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[11]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[0]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~1\ : std_logic;
SIGNAL \counter|A_counter|Add0~2_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[1]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~3\ : std_logic;
SIGNAL \counter|A_counter|Add0~4_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[2]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~5\ : std_logic;
SIGNAL \counter|A_counter|Add0~6_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[3]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~7\ : std_logic;
SIGNAL \counter|A_counter|Add0~8_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[4]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~9\ : std_logic;
SIGNAL \counter|A_counter|Add0~10_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[28]~q\ : std_logic;
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
SIGNAL \counter|A_counter|counter_process:prescaler[16]~q\ : std_logic;
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
SIGNAL \counter|A_counter|counter_process:prescaler[20]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~41\ : std_logic;
SIGNAL \counter|A_counter|Add0~42_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[21]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~43\ : std_logic;
SIGNAL \counter|A_counter|Add0~44_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[22]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~45\ : std_logic;
SIGNAL \counter|A_counter|Add0~46_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[23]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~47\ : std_logic;
SIGNAL \counter|A_counter|Add0~48_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[24]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~49\ : std_logic;
SIGNAL \counter|A_counter|Add0~50_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[25]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~51\ : std_logic;
SIGNAL \counter|A_counter|Add0~52_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[26]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~53\ : std_logic;
SIGNAL \counter|A_counter|Add0~54_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[27]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~55\ : std_logic;
SIGNAL \counter|A_counter|Add0~56_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[29]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~57\ : std_logic;
SIGNAL \counter|A_counter|Add0~58_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:prescaler[30]~q\ : std_logic;
SIGNAL \counter|A_counter|Add0~59\ : std_logic;
SIGNAL \counter|A_counter|Add0~60_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~5_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~6_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~7_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~8_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~9_combout\ : std_logic;
SIGNAL \counter|A_counter|prescaler~0_combout\ : std_logic;
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
SIGNAL \counter|A_counter|Equal0~2_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~0_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~1_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~3_combout\ : std_logic;
SIGNAL \counter|A_counter|Equal0~4_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[0]~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[0]~q\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[1]~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[1]~1_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[1]~q\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[2]~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[2]~q\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[3]~0_combout\ : std_logic;
SIGNAL \counter|A_counter|counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[11]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[0]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~1\ : std_logic;
SIGNAL \counter|B_counter|Add0~2_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[29]~q\ : std_logic;
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
SIGNAL \counter|B_counter|counter_process:prescaler[16]~q\ : std_logic;
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
SIGNAL \counter|B_counter|counter_process:prescaler[20]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~41\ : std_logic;
SIGNAL \counter|B_counter|Add0~42_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[21]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~43\ : std_logic;
SIGNAL \counter|B_counter|Add0~44_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[22]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~45\ : std_logic;
SIGNAL \counter|B_counter|Add0~46_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[23]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~47\ : std_logic;
SIGNAL \counter|B_counter|Add0~48_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[24]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~49\ : std_logic;
SIGNAL \counter|B_counter|Add0~50_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[25]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~51\ : std_logic;
SIGNAL \counter|B_counter|Add0~52_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[26]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~53\ : std_logic;
SIGNAL \counter|B_counter|Add0~54_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[27]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~55\ : std_logic;
SIGNAL \counter|B_counter|Add0~56_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[28]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~57\ : std_logic;
SIGNAL \counter|B_counter|Add0~58_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[30]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~59\ : std_logic;
SIGNAL \counter|B_counter|Add0~60_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~5_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~6_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~7_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~8_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~9_combout\ : std_logic;
SIGNAL \counter|B_counter|prescaler~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[1]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~3\ : std_logic;
SIGNAL \counter|B_counter|Add0~4_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:prescaler[2]~q\ : std_logic;
SIGNAL \counter|B_counter|Add0~5\ : std_logic;
SIGNAL \counter|B_counter|Add0~6_combout\ : std_logic;
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
SIGNAL \counter|B_counter|Equal0~2_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~0_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~3_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~1_combout\ : std_logic;
SIGNAL \counter|B_counter|Equal0~4_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[0]~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[0]~q\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[1]~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[1]~1_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[1]~q\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[2]~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[2]~q\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[3]~0_combout\ : std_logic;
SIGNAL \counter|B_counter|counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a0|S~0_combout\ : std_logic;
SIGNAL \SEL[2]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \res_bin~10_combout\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \res_bin~5_combout\ : std_logic;
SIGNAL \res_bin~11_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \res_bin~6_combout\ : std_logic;
SIGNAL \res_bin~4_combout\ : std_logic;
SIGNAL \res_bin~7_combout\ : std_logic;
SIGNAL \res_bin~8_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a3|S~0_combout\ : std_logic;
SIGNAL \res_bin~9_combout\ : std_logic;
SIGNAL \res_bin~2_combout\ : std_logic;
SIGNAL \res_bin~3_combout\ : std_logic;
SIGNAL \res_bin~12_combout\ : std_logic;
SIGNAL \ZER~0_combout\ : std_logic;
SIGNAL \ZER~1_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a1|S~combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a1|C_out~0_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a2|C_out~0_combout\ : std_logic;
SIGNAL \Sub_C2|OVERFLOW~0_combout\ : std_logic;
SIGNAL \COUT~0_combout\ : std_logic;
SIGNAL \ZER~4_combout\ : std_logic;
SIGNAL \ZER~5_combout\ : std_logic;
SIGNAL \Add_C2|Full_Adder|a1|S~combout\ : std_logic;
SIGNAL \Add_C2|Full_Adder|a1|C_out~0_combout\ : std_logic;
SIGNAL \Add_C2|Full_Adder|a2|C_out~0_combout\ : std_logic;
SIGNAL \ZER~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ZER~3_combout\ : std_logic;
SIGNAL \ZER~6_combout\ : std_logic;
SIGNAL \NEG~1_combout\ : std_logic;
SIGNAL \NEG~0_combout\ : std_logic;
SIGNAL \NEG~2_combout\ : std_logic;
SIGNAL \OVER~0_combout\ : std_logic;
SIGNAL \OVER~1_combout\ : std_logic;
SIGNAL \COUT~1_combout\ : std_logic;
SIGNAL \Sub_C2|Full_Adder|a3|C_out~0_combout\ : std_logic;
SIGNAL \COUT~2_combout\ : std_logic;
SIGNAL \RESULT~10_combout\ : std_logic;
SIGNAL \RESULT~4_combout\ : std_logic;
SIGNAL \RESULT~5_combout\ : std_logic;
SIGNAL \RESULT~6_combout\ : std_logic;
SIGNAL \RESULT~7_combout\ : std_logic;
SIGNAL \RESULT~8_combout\ : std_logic;
SIGNAL \RESULT~9_combout\ : std_logic;
SIGNAL res_bin : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_PAUSE~input_o\ : std_logic;
SIGNAL \ALT_INV_NEG~2_combout\ : std_logic;
SIGNAL \counter|B_counter|ALT_INV_counter_process:counter_output[3]~q\ : std_logic;
SIGNAL \counter|A_counter|ALT_INV_counter_process:counter_output[3]~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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

\Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~1_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_PAUSE~input_o\ <= NOT \PAUSE~input_o\;
\ALT_INV_NEG~2_combout\ <= NOT \NEG~2_combout\;
\counter|B_counter|ALT_INV_counter_process:counter_output[3]~q\ <= NOT \counter|B_counter|counter_process:counter_output[3]~q\;
\counter|A_counter|ALT_INV_counter_process:counter_output[3]~q\ <= NOT \counter|A_counter|counter_process:counter_output[3]~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X11_Y24_N16
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

-- Location: IOOBUF_X13_Y24_N23
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

-- Location: IOOBUF_X7_Y24_N9
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X7_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N9
\ZER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ZER~6_combout\,
	devoe => ww_devoe,
	o => \ZER~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\NEG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_NEG~2_combout\,
	devoe => ww_devoe,
	o => \NEG~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\OVER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OVER~1_combout\,
	devoe => ww_devoe,
	o => \OVER~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\COUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUT~2_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X9_Y24_N9
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

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y24_N15
\PAUSE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PAUSE,
	o => \PAUSE~input_o\);

-- Location: FF_X18_Y21_N25
\counter|A_counter|counter_process:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~22_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[11]~q\);

-- Location: LCCOMB_X18_Y21_N2
\counter|A_counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~0_combout\ = \counter|A_counter|counter_process:prescaler[0]~q\ $ (VCC)
-- \counter|A_counter|Add0~1\ = CARRY(\counter|A_counter|counter_process:prescaler[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[0]~q\,
	datad => VCC,
	combout => \counter|A_counter|Add0~0_combout\,
	cout => \counter|A_counter|Add0~1\);

-- Location: FF_X18_Y21_N3
\counter|A_counter|counter_process:prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~0_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[0]~q\);

-- Location: LCCOMB_X18_Y21_N4
\counter|A_counter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~2_combout\ = (\counter|A_counter|counter_process:prescaler[1]~q\ & (!\counter|A_counter|Add0~1\)) # (!\counter|A_counter|counter_process:prescaler[1]~q\ & ((\counter|A_counter|Add0~1\) # (GND)))
-- \counter|A_counter|Add0~3\ = CARRY((!\counter|A_counter|Add0~1\) # (!\counter|A_counter|counter_process:prescaler[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[1]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~1\,
	combout => \counter|A_counter|Add0~2_combout\,
	cout => \counter|A_counter|Add0~3\);

-- Location: FF_X18_Y21_N5
\counter|A_counter|counter_process:prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~2_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[1]~q\);

-- Location: LCCOMB_X18_Y21_N6
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

-- Location: FF_X18_Y21_N7
\counter|A_counter|counter_process:prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~4_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[2]~q\);

-- Location: LCCOMB_X18_Y21_N8
\counter|A_counter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~6_combout\ = (\counter|A_counter|counter_process:prescaler[3]~q\ & (!\counter|A_counter|Add0~5\)) # (!\counter|A_counter|counter_process:prescaler[3]~q\ & ((\counter|A_counter|Add0~5\) # (GND)))
-- \counter|A_counter|Add0~7\ = CARRY((!\counter|A_counter|Add0~5\) # (!\counter|A_counter|counter_process:prescaler[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[3]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~5\,
	combout => \counter|A_counter|Add0~6_combout\,
	cout => \counter|A_counter|Add0~7\);

-- Location: FF_X18_Y21_N9
\counter|A_counter|counter_process:prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~6_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[3]~q\);

-- Location: LCCOMB_X18_Y21_N10
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

-- Location: FF_X18_Y21_N11
\counter|A_counter|counter_process:prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~8_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[4]~q\);

-- Location: LCCOMB_X18_Y21_N12
\counter|A_counter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~10_combout\ = (\counter|A_counter|counter_process:prescaler[5]~q\ & (!\counter|A_counter|Add0~9\)) # (!\counter|A_counter|counter_process:prescaler[5]~q\ & ((\counter|A_counter|Add0~9\) # (GND)))
-- \counter|A_counter|Add0~11\ = CARRY((!\counter|A_counter|Add0~9\) # (!\counter|A_counter|counter_process:prescaler[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[5]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~9\,
	combout => \counter|A_counter|Add0~10_combout\,
	cout => \counter|A_counter|Add0~11\);

-- Location: FF_X18_Y20_N27
\counter|A_counter|counter_process:prescaler[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~56_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[28]~q\);

-- Location: LCCOMB_X18_Y21_N24
\counter|A_counter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~22_combout\ = (\counter|A_counter|counter_process:prescaler[11]~q\ & (!\counter|A_counter|Add0~21\)) # (!\counter|A_counter|counter_process:prescaler[11]~q\ & ((\counter|A_counter|Add0~21\) # (GND)))
-- \counter|A_counter|Add0~23\ = CARRY((!\counter|A_counter|Add0~21\) # (!\counter|A_counter|counter_process:prescaler[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[11]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~21\,
	combout => \counter|A_counter|Add0~22_combout\,
	cout => \counter|A_counter|Add0~23\);

-- Location: LCCOMB_X18_Y21_N26
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

-- Location: FF_X18_Y21_N27
\counter|A_counter|counter_process:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~24_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[12]~q\);

-- Location: LCCOMB_X18_Y21_N28
\counter|A_counter|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~26_combout\ = (\counter|A_counter|counter_process:prescaler[13]~q\ & (!\counter|A_counter|Add0~25\)) # (!\counter|A_counter|counter_process:prescaler[13]~q\ & ((\counter|A_counter|Add0~25\) # (GND)))
-- \counter|A_counter|Add0~27\ = CARRY((!\counter|A_counter|Add0~25\) # (!\counter|A_counter|counter_process:prescaler[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[13]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~25\,
	combout => \counter|A_counter|Add0~26_combout\,
	cout => \counter|A_counter|Add0~27\);

-- Location: FF_X18_Y21_N29
\counter|A_counter|counter_process:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~26_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[13]~q\);

-- Location: LCCOMB_X18_Y21_N30
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

-- Location: FF_X18_Y21_N31
\counter|A_counter|counter_process:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~28_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[14]~q\);

-- Location: LCCOMB_X18_Y20_N0
\counter|A_counter|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~30_combout\ = (\counter|A_counter|counter_process:prescaler[15]~q\ & (!\counter|A_counter|Add0~29\)) # (!\counter|A_counter|counter_process:prescaler[15]~q\ & ((\counter|A_counter|Add0~29\) # (GND)))
-- \counter|A_counter|Add0~31\ = CARRY((!\counter|A_counter|Add0~29\) # (!\counter|A_counter|counter_process:prescaler[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[15]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~29\,
	combout => \counter|A_counter|Add0~30_combout\,
	cout => \counter|A_counter|Add0~31\);

-- Location: FF_X18_Y20_N1
\counter|A_counter|counter_process:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~30_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[15]~q\);

-- Location: LCCOMB_X18_Y20_N2
\counter|A_counter|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~32_combout\ = (\counter|A_counter|counter_process:prescaler[16]~q\ & (\counter|A_counter|Add0~31\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[16]~q\ & (!\counter|A_counter|Add0~31\ & VCC))
-- \counter|A_counter|Add0~33\ = CARRY((\counter|A_counter|counter_process:prescaler[16]~q\ & !\counter|A_counter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[16]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~31\,
	combout => \counter|A_counter|Add0~32_combout\,
	cout => \counter|A_counter|Add0~33\);

-- Location: FF_X18_Y20_N3
\counter|A_counter|counter_process:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~32_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[16]~q\);

-- Location: LCCOMB_X18_Y20_N4
\counter|A_counter|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~34_combout\ = (\counter|A_counter|counter_process:prescaler[17]~q\ & (!\counter|A_counter|Add0~33\)) # (!\counter|A_counter|counter_process:prescaler[17]~q\ & ((\counter|A_counter|Add0~33\) # (GND)))
-- \counter|A_counter|Add0~35\ = CARRY((!\counter|A_counter|Add0~33\) # (!\counter|A_counter|counter_process:prescaler[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[17]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~33\,
	combout => \counter|A_counter|Add0~34_combout\,
	cout => \counter|A_counter|Add0~35\);

-- Location: FF_X18_Y20_N5
\counter|A_counter|counter_process:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~34_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[17]~q\);

-- Location: LCCOMB_X18_Y20_N6
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

-- Location: FF_X18_Y20_N7
\counter|A_counter|counter_process:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~36_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[18]~q\);

-- Location: LCCOMB_X18_Y20_N8
\counter|A_counter|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~38_combout\ = (\counter|A_counter|counter_process:prescaler[19]~q\ & (!\counter|A_counter|Add0~37\)) # (!\counter|A_counter|counter_process:prescaler[19]~q\ & ((\counter|A_counter|Add0~37\) # (GND)))
-- \counter|A_counter|Add0~39\ = CARRY((!\counter|A_counter|Add0~37\) # (!\counter|A_counter|counter_process:prescaler[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[19]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~37\,
	combout => \counter|A_counter|Add0~38_combout\,
	cout => \counter|A_counter|Add0~39\);

-- Location: FF_X18_Y20_N9
\counter|A_counter|counter_process:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~38_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[19]~q\);

-- Location: LCCOMB_X18_Y20_N10
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

-- Location: FF_X18_Y20_N11
\counter|A_counter|counter_process:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~40_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[20]~q\);

-- Location: LCCOMB_X18_Y20_N12
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

-- Location: FF_X18_Y20_N13
\counter|A_counter|counter_process:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~42_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[21]~q\);

-- Location: LCCOMB_X18_Y20_N14
\counter|A_counter|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~44_combout\ = (\counter|A_counter|counter_process:prescaler[22]~q\ & (\counter|A_counter|Add0~43\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[22]~q\ & (!\counter|A_counter|Add0~43\ & VCC))
-- \counter|A_counter|Add0~45\ = CARRY((\counter|A_counter|counter_process:prescaler[22]~q\ & !\counter|A_counter|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[22]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~43\,
	combout => \counter|A_counter|Add0~44_combout\,
	cout => \counter|A_counter|Add0~45\);

-- Location: FF_X18_Y20_N15
\counter|A_counter|counter_process:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~44_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[22]~q\);

-- Location: LCCOMB_X18_Y20_N16
\counter|A_counter|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~46_combout\ = (\counter|A_counter|counter_process:prescaler[23]~q\ & (!\counter|A_counter|Add0~45\)) # (!\counter|A_counter|counter_process:prescaler[23]~q\ & ((\counter|A_counter|Add0~45\) # (GND)))
-- \counter|A_counter|Add0~47\ = CARRY((!\counter|A_counter|Add0~45\) # (!\counter|A_counter|counter_process:prescaler[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[23]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~45\,
	combout => \counter|A_counter|Add0~46_combout\,
	cout => \counter|A_counter|Add0~47\);

-- Location: FF_X18_Y20_N17
\counter|A_counter|counter_process:prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~46_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[23]~q\);

-- Location: LCCOMB_X18_Y20_N18
\counter|A_counter|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~48_combout\ = (\counter|A_counter|counter_process:prescaler[24]~q\ & (\counter|A_counter|Add0~47\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[24]~q\ & (!\counter|A_counter|Add0~47\ & VCC))
-- \counter|A_counter|Add0~49\ = CARRY((\counter|A_counter|counter_process:prescaler[24]~q\ & !\counter|A_counter|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[24]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~47\,
	combout => \counter|A_counter|Add0~48_combout\,
	cout => \counter|A_counter|Add0~49\);

-- Location: FF_X18_Y20_N19
\counter|A_counter|counter_process:prescaler[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~48_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[24]~q\);

-- Location: LCCOMB_X18_Y20_N20
\counter|A_counter|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~50_combout\ = (\counter|A_counter|counter_process:prescaler[25]~q\ & (!\counter|A_counter|Add0~49\)) # (!\counter|A_counter|counter_process:prescaler[25]~q\ & ((\counter|A_counter|Add0~49\) # (GND)))
-- \counter|A_counter|Add0~51\ = CARRY((!\counter|A_counter|Add0~49\) # (!\counter|A_counter|counter_process:prescaler[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[25]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~49\,
	combout => \counter|A_counter|Add0~50_combout\,
	cout => \counter|A_counter|Add0~51\);

-- Location: FF_X18_Y20_N21
\counter|A_counter|counter_process:prescaler[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~50_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[25]~q\);

-- Location: LCCOMB_X18_Y20_N22
\counter|A_counter|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~52_combout\ = (\counter|A_counter|counter_process:prescaler[26]~q\ & (\counter|A_counter|Add0~51\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[26]~q\ & (!\counter|A_counter|Add0~51\ & VCC))
-- \counter|A_counter|Add0~53\ = CARRY((\counter|A_counter|counter_process:prescaler[26]~q\ & !\counter|A_counter|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[26]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~51\,
	combout => \counter|A_counter|Add0~52_combout\,
	cout => \counter|A_counter|Add0~53\);

-- Location: FF_X18_Y20_N23
\counter|A_counter|counter_process:prescaler[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~52_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[26]~q\);

-- Location: LCCOMB_X18_Y20_N24
\counter|A_counter|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~54_combout\ = (\counter|A_counter|counter_process:prescaler[27]~q\ & (!\counter|A_counter|Add0~53\)) # (!\counter|A_counter|counter_process:prescaler[27]~q\ & ((\counter|A_counter|Add0~53\) # (GND)))
-- \counter|A_counter|Add0~55\ = CARRY((!\counter|A_counter|Add0~53\) # (!\counter|A_counter|counter_process:prescaler[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[27]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~53\,
	combout => \counter|A_counter|Add0~54_combout\,
	cout => \counter|A_counter|Add0~55\);

-- Location: FF_X18_Y20_N25
\counter|A_counter|counter_process:prescaler[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~54_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[27]~q\);

-- Location: LCCOMB_X18_Y20_N26
\counter|A_counter|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~56_combout\ = (\counter|A_counter|counter_process:prescaler[28]~q\ & (\counter|A_counter|Add0~55\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[28]~q\ & (!\counter|A_counter|Add0~55\ & VCC))
-- \counter|A_counter|Add0~57\ = CARRY((\counter|A_counter|counter_process:prescaler[28]~q\ & !\counter|A_counter|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[28]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~55\,
	combout => \counter|A_counter|Add0~56_combout\,
	cout => \counter|A_counter|Add0~57\);

-- Location: FF_X18_Y20_N29
\counter|A_counter|counter_process:prescaler[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~58_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[29]~q\);

-- Location: LCCOMB_X18_Y20_N28
\counter|A_counter|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~58_combout\ = (\counter|A_counter|counter_process:prescaler[29]~q\ & (!\counter|A_counter|Add0~57\)) # (!\counter|A_counter|counter_process:prescaler[29]~q\ & ((\counter|A_counter|Add0~57\) # (GND)))
-- \counter|A_counter|Add0~59\ = CARRY((!\counter|A_counter|Add0~57\) # (!\counter|A_counter|counter_process:prescaler[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[29]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~57\,
	combout => \counter|A_counter|Add0~58_combout\,
	cout => \counter|A_counter|Add0~59\);

-- Location: FF_X18_Y20_N31
\counter|A_counter|counter_process:prescaler[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~60_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[30]~q\);

-- Location: LCCOMB_X18_Y20_N30
\counter|A_counter|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~60_combout\ = \counter|A_counter|counter_process:prescaler[30]~q\ $ (!\counter|A_counter|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:prescaler[30]~q\,
	cin => \counter|A_counter|Add0~59\,
	combout => \counter|A_counter|Add0~60_combout\);

-- Location: LCCOMB_X17_Y20_N10
\counter|A_counter|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~5_combout\ = (!\counter|A_counter|Add0~34_combout\ & (!\counter|A_counter|Add0~32_combout\ & (!\counter|A_counter|Add0~38_combout\ & !\counter|A_counter|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~34_combout\,
	datab => \counter|A_counter|Add0~32_combout\,
	datac => \counter|A_counter|Add0~38_combout\,
	datad => \counter|A_counter|Add0~36_combout\,
	combout => \counter|A_counter|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y20_N28
\counter|A_counter|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~6_combout\ = (!\counter|A_counter|Add0~40_combout\ & (!\counter|A_counter|Add0~42_combout\ & (!\counter|A_counter|Add0~44_combout\ & \counter|A_counter|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~40_combout\,
	datab => \counter|A_counter|Add0~42_combout\,
	datac => \counter|A_counter|Add0~44_combout\,
	datad => \counter|A_counter|Equal0~5_combout\,
	combout => \counter|A_counter|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y20_N18
\counter|A_counter|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~7_combout\ = (!\counter|A_counter|Add0~50_combout\ & (!\counter|A_counter|Add0~48_combout\ & (!\counter|A_counter|Add0~46_combout\ & \counter|A_counter|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~50_combout\,
	datab => \counter|A_counter|Add0~48_combout\,
	datac => \counter|A_counter|Add0~46_combout\,
	datad => \counter|A_counter|Equal0~6_combout\,
	combout => \counter|A_counter|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y20_N16
\counter|A_counter|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~8_combout\ = (!\counter|A_counter|Add0~54_combout\ & (!\counter|A_counter|Add0~52_combout\ & \counter|A_counter|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|Add0~54_combout\,
	datac => \counter|A_counter|Add0~52_combout\,
	datad => \counter|A_counter|Equal0~7_combout\,
	combout => \counter|A_counter|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y20_N6
\counter|A_counter|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~9_combout\ = (!\counter|A_counter|Add0~56_combout\ & (!\counter|A_counter|Add0~58_combout\ & (!\counter|A_counter|Add0~60_combout\ & \counter|A_counter|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~56_combout\,
	datab => \counter|A_counter|Add0~58_combout\,
	datac => \counter|A_counter|Add0~60_combout\,
	datad => \counter|A_counter|Equal0~8_combout\,
	combout => \counter|A_counter|Equal0~9_combout\);

-- Location: LCCOMB_X18_Y21_N0
\counter|A_counter|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|prescaler~0_combout\ = (\counter|A_counter|Add0~10_combout\ & ((!\counter|A_counter|Equal0~9_combout\) # (!\counter|A_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~10_combout\,
	datac => \counter|A_counter|Equal0~4_combout\,
	datad => \counter|A_counter|Equal0~9_combout\,
	combout => \counter|A_counter|prescaler~0_combout\);

-- Location: FF_X18_Y21_N1
\counter|A_counter|counter_process:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|prescaler~0_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[5]~q\);

-- Location: LCCOMB_X18_Y21_N14
\counter|A_counter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~12_combout\ = (\counter|A_counter|counter_process:prescaler[6]~q\ & (\counter|A_counter|Add0~11\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[6]~q\ & (!\counter|A_counter|Add0~11\ & VCC))
-- \counter|A_counter|Add0~13\ = CARRY((\counter|A_counter|counter_process:prescaler[6]~q\ & !\counter|A_counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[6]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~11\,
	combout => \counter|A_counter|Add0~12_combout\,
	cout => \counter|A_counter|Add0~13\);

-- Location: FF_X18_Y21_N15
\counter|A_counter|counter_process:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~12_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[6]~q\);

-- Location: LCCOMB_X18_Y21_N16
\counter|A_counter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~14_combout\ = (\counter|A_counter|counter_process:prescaler[7]~q\ & (!\counter|A_counter|Add0~13\)) # (!\counter|A_counter|counter_process:prescaler[7]~q\ & ((\counter|A_counter|Add0~13\) # (GND)))
-- \counter|A_counter|Add0~15\ = CARRY((!\counter|A_counter|Add0~13\) # (!\counter|A_counter|counter_process:prescaler[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[7]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~13\,
	combout => \counter|A_counter|Add0~14_combout\,
	cout => \counter|A_counter|Add0~15\);

-- Location: FF_X18_Y21_N17
\counter|A_counter|counter_process:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~14_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[7]~q\);

-- Location: LCCOMB_X18_Y21_N18
\counter|A_counter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~16_combout\ = (\counter|A_counter|counter_process:prescaler[8]~q\ & (\counter|A_counter|Add0~15\ $ (GND))) # (!\counter|A_counter|counter_process:prescaler[8]~q\ & (!\counter|A_counter|Add0~15\ & VCC))
-- \counter|A_counter|Add0~17\ = CARRY((\counter|A_counter|counter_process:prescaler[8]~q\ & !\counter|A_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[8]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~15\,
	combout => \counter|A_counter|Add0~16_combout\,
	cout => \counter|A_counter|Add0~17\);

-- Location: FF_X18_Y21_N19
\counter|A_counter|counter_process:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~16_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[8]~q\);

-- Location: LCCOMB_X18_Y21_N20
\counter|A_counter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Add0~18_combout\ = (\counter|A_counter|counter_process:prescaler[9]~q\ & (!\counter|A_counter|Add0~17\)) # (!\counter|A_counter|counter_process:prescaler[9]~q\ & ((\counter|A_counter|Add0~17\) # (GND)))
-- \counter|A_counter|Add0~19\ = CARRY((!\counter|A_counter|Add0~17\) # (!\counter|A_counter|counter_process:prescaler[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:prescaler[9]~q\,
	datad => VCC,
	cin => \counter|A_counter|Add0~17\,
	combout => \counter|A_counter|Add0~18_combout\,
	cout => \counter|A_counter|Add0~19\);

-- Location: FF_X18_Y21_N21
\counter|A_counter|counter_process:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~18_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[9]~q\);

-- Location: LCCOMB_X18_Y21_N22
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

-- Location: FF_X18_Y21_N23
\counter|A_counter|counter_process:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|Add0~20_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:prescaler[10]~q\);

-- Location: LCCOMB_X19_Y21_N12
\counter|A_counter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~2_combout\ = (!\counter|A_counter|Add0~22_combout\ & (!\counter|A_counter|Add0~20_combout\ & (!\counter|A_counter|Add0~16_combout\ & !\counter|A_counter|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~22_combout\,
	datab => \counter|A_counter|Add0~20_combout\,
	datac => \counter|A_counter|Add0~16_combout\,
	datad => \counter|A_counter|Add0~18_combout\,
	combout => \counter|A_counter|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y21_N28
\counter|A_counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~0_combout\ = (!\counter|A_counter|Add0~0_combout\ & (!\counter|A_counter|Add0~4_combout\ & (!\counter|A_counter|Add0~2_combout\ & !\counter|A_counter|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~0_combout\,
	datab => \counter|A_counter|Add0~4_combout\,
	datac => \counter|A_counter|Add0~2_combout\,
	datad => \counter|A_counter|Add0~6_combout\,
	combout => \counter|A_counter|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y21_N30
\counter|A_counter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~1_combout\ = (!\counter|A_counter|Add0~8_combout\ & (!\counter|A_counter|Add0~12_combout\ & (!\counter|A_counter|Add0~14_combout\ & \counter|A_counter|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~8_combout\,
	datab => \counter|A_counter|Add0~12_combout\,
	datac => \counter|A_counter|Add0~14_combout\,
	datad => \counter|A_counter|Add0~10_combout\,
	combout => \counter|A_counter|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y21_N2
\counter|A_counter|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~3_combout\ = (!\counter|A_counter|Add0~24_combout\ & (!\counter|A_counter|Add0~26_combout\ & (!\counter|A_counter|Add0~30_combout\ & !\counter|A_counter|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Add0~24_combout\,
	datab => \counter|A_counter|Add0~26_combout\,
	datac => \counter|A_counter|Add0~30_combout\,
	datad => \counter|A_counter|Add0~28_combout\,
	combout => \counter|A_counter|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y21_N8
\counter|A_counter|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|Equal0~4_combout\ = (\counter|A_counter|Equal0~2_combout\ & (\counter|A_counter|Equal0~0_combout\ & (\counter|A_counter|Equal0~1_combout\ & \counter|A_counter|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Equal0~2_combout\,
	datab => \counter|A_counter|Equal0~0_combout\,
	datac => \counter|A_counter|Equal0~1_combout\,
	datad => \counter|A_counter|Equal0~3_combout\,
	combout => \counter|A_counter|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y20_N28
\counter|A_counter|counter_process:counter_output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[0]~0_combout\ = \counter|A_counter|counter_process:counter_output[0]~q\ $ (((\counter|A_counter|Equal0~4_combout\ & (!\PAUSE~input_o\ & \counter|A_counter|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|Equal0~4_combout\,
	datab => \PAUSE~input_o\,
	datac => \counter|A_counter|counter_process:counter_output[0]~q\,
	datad => \counter|A_counter|Equal0~9_combout\,
	combout => \counter|A_counter|counter_process:counter_output[0]~0_combout\);

-- Location: FF_X16_Y20_N29
\counter|A_counter|counter_process:counter_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|counter_process:counter_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:counter_output[0]~q\);

-- Location: LCCOMB_X17_Y20_N24
\counter|A_counter|counter_process:counter_output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[1]~0_combout\ = (!\PAUSE~input_o\ & (\counter|A_counter|counter_process:counter_output[0]~q\ & (\counter|A_counter|Equal0~4_combout\ & \counter|A_counter|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PAUSE~input_o\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|A_counter|Equal0~4_combout\,
	datad => \counter|A_counter|Equal0~9_combout\,
	combout => \counter|A_counter|counter_process:counter_output[1]~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\counter|A_counter|counter_process:counter_output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[1]~1_combout\ = \counter|A_counter|counter_process:counter_output[1]~q\ $ (\counter|A_counter|counter_process:counter_output[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|A_counter|counter_process:counter_output[1]~q\,
	datad => \counter|A_counter|counter_process:counter_output[1]~0_combout\,
	combout => \counter|A_counter|counter_process:counter_output[1]~1_combout\);

-- Location: FF_X17_Y20_N13
\counter|A_counter|counter_process:counter_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|counter_process:counter_output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:counter_output[1]~q\);

-- Location: LCCOMB_X17_Y20_N22
\counter|A_counter|counter_process:counter_output[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[2]~0_combout\ = \counter|A_counter|counter_process:counter_output[2]~q\ $ (((\counter|A_counter|counter_process:counter_output[1]~q\ & \counter|A_counter|counter_process:counter_output[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[1]~q\,
	datac => \counter|A_counter|counter_process:counter_output[2]~q\,
	datad => \counter|A_counter|counter_process:counter_output[1]~0_combout\,
	combout => \counter|A_counter|counter_process:counter_output[2]~0_combout\);

-- Location: FF_X17_Y20_N23
\counter|A_counter|counter_process:counter_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|counter_process:counter_output[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:counter_output[2]~q\);

-- Location: LCCOMB_X16_Y20_N30
\counter|A_counter|counter_process:counter_output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|A_counter|counter_process:counter_output[3]~0_combout\ = \counter|A_counter|counter_process:counter_output[3]~q\ $ (((\counter|A_counter|counter_process:counter_output[1]~q\ & (\counter|A_counter|counter_process:counter_output[2]~q\ & 
-- \counter|A_counter|counter_process:counter_output[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[1]~q\,
	datab => \counter|A_counter|counter_process:counter_output[2]~q\,
	datac => \counter|A_counter|counter_process:counter_output[3]~q\,
	datad => \counter|A_counter|counter_process:counter_output[1]~0_combout\,
	combout => \counter|A_counter|counter_process:counter_output[3]~0_combout\);

-- Location: FF_X16_Y20_N31
\counter|A_counter|counter_process:counter_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|A_counter|counter_process:counter_output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|A_counter|counter_process:counter_output[3]~q\);

-- Location: FF_X16_Y22_N25
\counter|B_counter|counter_process:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~22_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[11]~q\);

-- Location: LCCOMB_X16_Y22_N2
\counter|B_counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~0_combout\ = \counter|B_counter|counter_process:prescaler[0]~q\ $ (VCC)
-- \counter|B_counter|Add0~1\ = CARRY(\counter|B_counter|counter_process:prescaler[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[0]~q\,
	datad => VCC,
	combout => \counter|B_counter|Add0~0_combout\,
	cout => \counter|B_counter|Add0~1\);

-- Location: FF_X16_Y22_N3
\counter|B_counter|counter_process:prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~0_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[0]~q\);

-- Location: LCCOMB_X16_Y22_N4
\counter|B_counter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~2_combout\ = (\counter|B_counter|counter_process:prescaler[1]~q\ & (!\counter|B_counter|Add0~1\)) # (!\counter|B_counter|counter_process:prescaler[1]~q\ & ((\counter|B_counter|Add0~1\) # (GND)))
-- \counter|B_counter|Add0~3\ = CARRY((!\counter|B_counter|Add0~1\) # (!\counter|B_counter|counter_process:prescaler[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[1]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~1\,
	combout => \counter|B_counter|Add0~2_combout\,
	cout => \counter|B_counter|Add0~3\);

-- Location: FF_X16_Y21_N29
\counter|B_counter|counter_process:prescaler[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~58_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[29]~q\);

-- Location: LCCOMB_X16_Y22_N24
\counter|B_counter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~22_combout\ = (\counter|B_counter|counter_process:prescaler[11]~q\ & (!\counter|B_counter|Add0~21\)) # (!\counter|B_counter|counter_process:prescaler[11]~q\ & ((\counter|B_counter|Add0~21\) # (GND)))
-- \counter|B_counter|Add0~23\ = CARRY((!\counter|B_counter|Add0~21\) # (!\counter|B_counter|counter_process:prescaler[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[11]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~21\,
	combout => \counter|B_counter|Add0~22_combout\,
	cout => \counter|B_counter|Add0~23\);

-- Location: LCCOMB_X16_Y22_N26
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

-- Location: FF_X16_Y22_N27
\counter|B_counter|counter_process:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~24_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[12]~q\);

-- Location: LCCOMB_X16_Y22_N28
\counter|B_counter|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~26_combout\ = (\counter|B_counter|counter_process:prescaler[13]~q\ & (!\counter|B_counter|Add0~25\)) # (!\counter|B_counter|counter_process:prescaler[13]~q\ & ((\counter|B_counter|Add0~25\) # (GND)))
-- \counter|B_counter|Add0~27\ = CARRY((!\counter|B_counter|Add0~25\) # (!\counter|B_counter|counter_process:prescaler[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[13]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~25\,
	combout => \counter|B_counter|Add0~26_combout\,
	cout => \counter|B_counter|Add0~27\);

-- Location: FF_X16_Y22_N29
\counter|B_counter|counter_process:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~26_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[13]~q\);

-- Location: LCCOMB_X16_Y22_N30
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

-- Location: FF_X16_Y22_N31
\counter|B_counter|counter_process:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~28_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[14]~q\);

-- Location: LCCOMB_X16_Y21_N0
\counter|B_counter|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~30_combout\ = (\counter|B_counter|counter_process:prescaler[15]~q\ & (!\counter|B_counter|Add0~29\)) # (!\counter|B_counter|counter_process:prescaler[15]~q\ & ((\counter|B_counter|Add0~29\) # (GND)))
-- \counter|B_counter|Add0~31\ = CARRY((!\counter|B_counter|Add0~29\) # (!\counter|B_counter|counter_process:prescaler[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[15]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~29\,
	combout => \counter|B_counter|Add0~30_combout\,
	cout => \counter|B_counter|Add0~31\);

-- Location: FF_X16_Y21_N1
\counter|B_counter|counter_process:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~30_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[15]~q\);

-- Location: LCCOMB_X16_Y21_N2
\counter|B_counter|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~32_combout\ = (\counter|B_counter|counter_process:prescaler[16]~q\ & (\counter|B_counter|Add0~31\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[16]~q\ & (!\counter|B_counter|Add0~31\ & VCC))
-- \counter|B_counter|Add0~33\ = CARRY((\counter|B_counter|counter_process:prescaler[16]~q\ & !\counter|B_counter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[16]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~31\,
	combout => \counter|B_counter|Add0~32_combout\,
	cout => \counter|B_counter|Add0~33\);

-- Location: FF_X16_Y21_N3
\counter|B_counter|counter_process:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~32_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[16]~q\);

-- Location: LCCOMB_X16_Y21_N4
\counter|B_counter|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~34_combout\ = (\counter|B_counter|counter_process:prescaler[17]~q\ & (!\counter|B_counter|Add0~33\)) # (!\counter|B_counter|counter_process:prescaler[17]~q\ & ((\counter|B_counter|Add0~33\) # (GND)))
-- \counter|B_counter|Add0~35\ = CARRY((!\counter|B_counter|Add0~33\) # (!\counter|B_counter|counter_process:prescaler[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[17]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~33\,
	combout => \counter|B_counter|Add0~34_combout\,
	cout => \counter|B_counter|Add0~35\);

-- Location: FF_X16_Y21_N5
\counter|B_counter|counter_process:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~34_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[17]~q\);

-- Location: LCCOMB_X16_Y21_N6
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

-- Location: FF_X16_Y21_N7
\counter|B_counter|counter_process:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~36_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[18]~q\);

-- Location: LCCOMB_X16_Y21_N8
\counter|B_counter|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~38_combout\ = (\counter|B_counter|counter_process:prescaler[19]~q\ & (!\counter|B_counter|Add0~37\)) # (!\counter|B_counter|counter_process:prescaler[19]~q\ & ((\counter|B_counter|Add0~37\) # (GND)))
-- \counter|B_counter|Add0~39\ = CARRY((!\counter|B_counter|Add0~37\) # (!\counter|B_counter|counter_process:prescaler[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[19]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~37\,
	combout => \counter|B_counter|Add0~38_combout\,
	cout => \counter|B_counter|Add0~39\);

-- Location: FF_X16_Y21_N9
\counter|B_counter|counter_process:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~38_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[19]~q\);

-- Location: LCCOMB_X16_Y21_N10
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

-- Location: FF_X16_Y21_N11
\counter|B_counter|counter_process:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~40_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[20]~q\);

-- Location: LCCOMB_X16_Y21_N12
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

-- Location: FF_X16_Y21_N13
\counter|B_counter|counter_process:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~42_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[21]~q\);

-- Location: LCCOMB_X16_Y21_N14
\counter|B_counter|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~44_combout\ = (\counter|B_counter|counter_process:prescaler[22]~q\ & (\counter|B_counter|Add0~43\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[22]~q\ & (!\counter|B_counter|Add0~43\ & VCC))
-- \counter|B_counter|Add0~45\ = CARRY((\counter|B_counter|counter_process:prescaler[22]~q\ & !\counter|B_counter|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[22]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~43\,
	combout => \counter|B_counter|Add0~44_combout\,
	cout => \counter|B_counter|Add0~45\);

-- Location: FF_X16_Y21_N15
\counter|B_counter|counter_process:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~44_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[22]~q\);

-- Location: LCCOMB_X16_Y21_N16
\counter|B_counter|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~46_combout\ = (\counter|B_counter|counter_process:prescaler[23]~q\ & (!\counter|B_counter|Add0~45\)) # (!\counter|B_counter|counter_process:prescaler[23]~q\ & ((\counter|B_counter|Add0~45\) # (GND)))
-- \counter|B_counter|Add0~47\ = CARRY((!\counter|B_counter|Add0~45\) # (!\counter|B_counter|counter_process:prescaler[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[23]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~45\,
	combout => \counter|B_counter|Add0~46_combout\,
	cout => \counter|B_counter|Add0~47\);

-- Location: FF_X16_Y21_N17
\counter|B_counter|counter_process:prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~46_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[23]~q\);

-- Location: LCCOMB_X16_Y21_N18
\counter|B_counter|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~48_combout\ = (\counter|B_counter|counter_process:prescaler[24]~q\ & (\counter|B_counter|Add0~47\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[24]~q\ & (!\counter|B_counter|Add0~47\ & VCC))
-- \counter|B_counter|Add0~49\ = CARRY((\counter|B_counter|counter_process:prescaler[24]~q\ & !\counter|B_counter|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[24]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~47\,
	combout => \counter|B_counter|Add0~48_combout\,
	cout => \counter|B_counter|Add0~49\);

-- Location: FF_X16_Y21_N19
\counter|B_counter|counter_process:prescaler[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~48_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[24]~q\);

-- Location: LCCOMB_X16_Y21_N20
\counter|B_counter|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~50_combout\ = (\counter|B_counter|counter_process:prescaler[25]~q\ & (!\counter|B_counter|Add0~49\)) # (!\counter|B_counter|counter_process:prescaler[25]~q\ & ((\counter|B_counter|Add0~49\) # (GND)))
-- \counter|B_counter|Add0~51\ = CARRY((!\counter|B_counter|Add0~49\) # (!\counter|B_counter|counter_process:prescaler[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[25]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~49\,
	combout => \counter|B_counter|Add0~50_combout\,
	cout => \counter|B_counter|Add0~51\);

-- Location: FF_X16_Y21_N21
\counter|B_counter|counter_process:prescaler[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~50_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[25]~q\);

-- Location: LCCOMB_X16_Y21_N22
\counter|B_counter|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~52_combout\ = (\counter|B_counter|counter_process:prescaler[26]~q\ & (\counter|B_counter|Add0~51\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[26]~q\ & (!\counter|B_counter|Add0~51\ & VCC))
-- \counter|B_counter|Add0~53\ = CARRY((\counter|B_counter|counter_process:prescaler[26]~q\ & !\counter|B_counter|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[26]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~51\,
	combout => \counter|B_counter|Add0~52_combout\,
	cout => \counter|B_counter|Add0~53\);

-- Location: FF_X16_Y21_N23
\counter|B_counter|counter_process:prescaler[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~52_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[26]~q\);

-- Location: LCCOMB_X16_Y21_N24
\counter|B_counter|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~54_combout\ = (\counter|B_counter|counter_process:prescaler[27]~q\ & (!\counter|B_counter|Add0~53\)) # (!\counter|B_counter|counter_process:prescaler[27]~q\ & ((\counter|B_counter|Add0~53\) # (GND)))
-- \counter|B_counter|Add0~55\ = CARRY((!\counter|B_counter|Add0~53\) # (!\counter|B_counter|counter_process:prescaler[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[27]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~53\,
	combout => \counter|B_counter|Add0~54_combout\,
	cout => \counter|B_counter|Add0~55\);

-- Location: FF_X16_Y21_N25
\counter|B_counter|counter_process:prescaler[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~54_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[27]~q\);

-- Location: LCCOMB_X16_Y21_N26
\counter|B_counter|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~56_combout\ = (\counter|B_counter|counter_process:prescaler[28]~q\ & (\counter|B_counter|Add0~55\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[28]~q\ & (!\counter|B_counter|Add0~55\ & VCC))
-- \counter|B_counter|Add0~57\ = CARRY((\counter|B_counter|counter_process:prescaler[28]~q\ & !\counter|B_counter|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[28]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~55\,
	combout => \counter|B_counter|Add0~56_combout\,
	cout => \counter|B_counter|Add0~57\);

-- Location: FF_X16_Y21_N27
\counter|B_counter|counter_process:prescaler[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~56_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[28]~q\);

-- Location: LCCOMB_X16_Y21_N28
\counter|B_counter|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~58_combout\ = (\counter|B_counter|counter_process:prescaler[29]~q\ & (!\counter|B_counter|Add0~57\)) # (!\counter|B_counter|counter_process:prescaler[29]~q\ & ((\counter|B_counter|Add0~57\) # (GND)))
-- \counter|B_counter|Add0~59\ = CARRY((!\counter|B_counter|Add0~57\) # (!\counter|B_counter|counter_process:prescaler[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[29]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~57\,
	combout => \counter|B_counter|Add0~58_combout\,
	cout => \counter|B_counter|Add0~59\);

-- Location: FF_X16_Y21_N31
\counter|B_counter|counter_process:prescaler[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~60_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[30]~q\);

-- Location: LCCOMB_X16_Y21_N30
\counter|B_counter|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~60_combout\ = \counter|B_counter|counter_process:prescaler[30]~q\ $ (!\counter|B_counter|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:prescaler[30]~q\,
	cin => \counter|B_counter|Add0~59\,
	combout => \counter|B_counter|Add0~60_combout\);

-- Location: LCCOMB_X17_Y21_N28
\counter|B_counter|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~5_combout\ = (!\counter|B_counter|Add0~32_combout\ & (!\counter|B_counter|Add0~36_combout\ & (!\counter|B_counter|Add0~34_combout\ & !\counter|B_counter|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~32_combout\,
	datab => \counter|B_counter|Add0~36_combout\,
	datac => \counter|B_counter|Add0~34_combout\,
	datad => \counter|B_counter|Add0~38_combout\,
	combout => \counter|B_counter|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y21_N18
\counter|B_counter|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~6_combout\ = (!\counter|B_counter|Add0~44_combout\ & (!\counter|B_counter|Add0~40_combout\ & (!\counter|B_counter|Add0~42_combout\ & \counter|B_counter|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~44_combout\,
	datab => \counter|B_counter|Add0~40_combout\,
	datac => \counter|B_counter|Add0~42_combout\,
	datad => \counter|B_counter|Equal0~5_combout\,
	combout => \counter|B_counter|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y21_N12
\counter|B_counter|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~7_combout\ = (!\counter|B_counter|Add0~46_combout\ & (!\counter|B_counter|Add0~48_combout\ & (!\counter|B_counter|Add0~50_combout\ & \counter|B_counter|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~46_combout\,
	datab => \counter|B_counter|Add0~48_combout\,
	datac => \counter|B_counter|Add0~50_combout\,
	datad => \counter|B_counter|Equal0~6_combout\,
	combout => \counter|B_counter|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y21_N30
\counter|B_counter|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~8_combout\ = (!\counter|B_counter|Add0~52_combout\ & (!\counter|B_counter|Add0~54_combout\ & \counter|B_counter|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|Add0~52_combout\,
	datac => \counter|B_counter|Add0~54_combout\,
	datad => \counter|B_counter|Equal0~7_combout\,
	combout => \counter|B_counter|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y20_N2
\counter|B_counter|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~9_combout\ = (!\counter|B_counter|Add0~58_combout\ & (!\counter|B_counter|Add0~60_combout\ & (\counter|B_counter|Equal0~8_combout\ & !\counter|B_counter|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~58_combout\,
	datab => \counter|B_counter|Add0~60_combout\,
	datac => \counter|B_counter|Equal0~8_combout\,
	datad => \counter|B_counter|Add0~56_combout\,
	combout => \counter|B_counter|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y22_N0
\counter|B_counter|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|prescaler~0_combout\ = (\counter|B_counter|Add0~2_combout\ & ((!\counter|B_counter|Equal0~9_combout\) # (!\counter|B_counter|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|Add0~2_combout\,
	datac => \counter|B_counter|Equal0~4_combout\,
	datad => \counter|B_counter|Equal0~9_combout\,
	combout => \counter|B_counter|prescaler~0_combout\);

-- Location: FF_X16_Y22_N1
\counter|B_counter|counter_process:prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|prescaler~0_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[1]~q\);

-- Location: LCCOMB_X16_Y22_N6
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

-- Location: FF_X16_Y22_N7
\counter|B_counter|counter_process:prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~4_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[2]~q\);

-- Location: LCCOMB_X16_Y22_N8
\counter|B_counter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~6_combout\ = (\counter|B_counter|counter_process:prescaler[3]~q\ & (!\counter|B_counter|Add0~5\)) # (!\counter|B_counter|counter_process:prescaler[3]~q\ & ((\counter|B_counter|Add0~5\) # (GND)))
-- \counter|B_counter|Add0~7\ = CARRY((!\counter|B_counter|Add0~5\) # (!\counter|B_counter|counter_process:prescaler[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[3]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~5\,
	combout => \counter|B_counter|Add0~6_combout\,
	cout => \counter|B_counter|Add0~7\);

-- Location: FF_X16_Y22_N9
\counter|B_counter|counter_process:prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~6_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[3]~q\);

-- Location: LCCOMB_X16_Y22_N10
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

-- Location: FF_X16_Y22_N11
\counter|B_counter|counter_process:prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~8_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[4]~q\);

-- Location: LCCOMB_X16_Y22_N12
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

-- Location: FF_X16_Y22_N13
\counter|B_counter|counter_process:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~10_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[5]~q\);

-- Location: LCCOMB_X16_Y22_N14
\counter|B_counter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~12_combout\ = (\counter|B_counter|counter_process:prescaler[6]~q\ & (\counter|B_counter|Add0~11\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[6]~q\ & (!\counter|B_counter|Add0~11\ & VCC))
-- \counter|B_counter|Add0~13\ = CARRY((\counter|B_counter|counter_process:prescaler[6]~q\ & !\counter|B_counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[6]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~11\,
	combout => \counter|B_counter|Add0~12_combout\,
	cout => \counter|B_counter|Add0~13\);

-- Location: FF_X16_Y22_N15
\counter|B_counter|counter_process:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~12_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[6]~q\);

-- Location: LCCOMB_X16_Y22_N16
\counter|B_counter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~14_combout\ = (\counter|B_counter|counter_process:prescaler[7]~q\ & (!\counter|B_counter|Add0~13\)) # (!\counter|B_counter|counter_process:prescaler[7]~q\ & ((\counter|B_counter|Add0~13\) # (GND)))
-- \counter|B_counter|Add0~15\ = CARRY((!\counter|B_counter|Add0~13\) # (!\counter|B_counter|counter_process:prescaler[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[7]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~13\,
	combout => \counter|B_counter|Add0~14_combout\,
	cout => \counter|B_counter|Add0~15\);

-- Location: FF_X16_Y22_N17
\counter|B_counter|counter_process:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~14_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[7]~q\);

-- Location: LCCOMB_X16_Y22_N18
\counter|B_counter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~16_combout\ = (\counter|B_counter|counter_process:prescaler[8]~q\ & (\counter|B_counter|Add0~15\ $ (GND))) # (!\counter|B_counter|counter_process:prescaler[8]~q\ & (!\counter|B_counter|Add0~15\ & VCC))
-- \counter|B_counter|Add0~17\ = CARRY((\counter|B_counter|counter_process:prescaler[8]~q\ & !\counter|B_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[8]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~15\,
	combout => \counter|B_counter|Add0~16_combout\,
	cout => \counter|B_counter|Add0~17\);

-- Location: FF_X16_Y22_N19
\counter|B_counter|counter_process:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~16_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[8]~q\);

-- Location: LCCOMB_X16_Y22_N20
\counter|B_counter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Add0~18_combout\ = (\counter|B_counter|counter_process:prescaler[9]~q\ & (!\counter|B_counter|Add0~17\)) # (!\counter|B_counter|counter_process:prescaler[9]~q\ & ((\counter|B_counter|Add0~17\) # (GND)))
-- \counter|B_counter|Add0~19\ = CARRY((!\counter|B_counter|Add0~17\) # (!\counter|B_counter|counter_process:prescaler[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|B_counter|counter_process:prescaler[9]~q\,
	datad => VCC,
	cin => \counter|B_counter|Add0~17\,
	combout => \counter|B_counter|Add0~18_combout\,
	cout => \counter|B_counter|Add0~19\);

-- Location: FF_X16_Y22_N21
\counter|B_counter|counter_process:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~18_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[9]~q\);

-- Location: LCCOMB_X16_Y22_N22
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

-- Location: FF_X16_Y22_N23
\counter|B_counter|counter_process:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|Add0~20_combout\,
	ena => \ALT_INV_PAUSE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:prescaler[10]~q\);

-- Location: LCCOMB_X17_Y22_N12
\counter|B_counter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~2_combout\ = (!\counter|B_counter|Add0~22_combout\ & (!\counter|B_counter|Add0~20_combout\ & (!\counter|B_counter|Add0~18_combout\ & !\counter|B_counter|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~22_combout\,
	datab => \counter|B_counter|Add0~20_combout\,
	datac => \counter|B_counter|Add0~18_combout\,
	datad => \counter|B_counter|Add0~16_combout\,
	combout => \counter|B_counter|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y22_N8
\counter|B_counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~0_combout\ = (!\counter|B_counter|Add0~0_combout\ & (!\counter|B_counter|Add0~4_combout\ & (\counter|B_counter|Add0~2_combout\ & !\counter|B_counter|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~0_combout\,
	datab => \counter|B_counter|Add0~4_combout\,
	datac => \counter|B_counter|Add0~2_combout\,
	datad => \counter|B_counter|Add0~6_combout\,
	combout => \counter|B_counter|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y22_N30
\counter|B_counter|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~3_combout\ = (!\counter|B_counter|Add0~30_combout\ & (!\counter|B_counter|Add0~26_combout\ & (!\counter|B_counter|Add0~24_combout\ & !\counter|B_counter|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~30_combout\,
	datab => \counter|B_counter|Add0~26_combout\,
	datac => \counter|B_counter|Add0~24_combout\,
	datad => \counter|B_counter|Add0~28_combout\,
	combout => \counter|B_counter|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y22_N18
\counter|B_counter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~1_combout\ = (!\counter|B_counter|Add0~10_combout\ & (!\counter|B_counter|Add0~12_combout\ & (!\counter|B_counter|Add0~14_combout\ & !\counter|B_counter|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Add0~10_combout\,
	datab => \counter|B_counter|Add0~12_combout\,
	datac => \counter|B_counter|Add0~14_combout\,
	datad => \counter|B_counter|Add0~8_combout\,
	combout => \counter|B_counter|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y22_N20
\counter|B_counter|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|Equal0~4_combout\ = (\counter|B_counter|Equal0~2_combout\ & (\counter|B_counter|Equal0~0_combout\ & (\counter|B_counter|Equal0~3_combout\ & \counter|B_counter|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Equal0~2_combout\,
	datab => \counter|B_counter|Equal0~0_combout\,
	datac => \counter|B_counter|Equal0~3_combout\,
	datad => \counter|B_counter|Equal0~1_combout\,
	combout => \counter|B_counter|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y20_N16
\counter|B_counter|counter_process:counter_output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[0]~0_combout\ = \counter|B_counter|counter_process:counter_output[0]~q\ $ (((\counter|B_counter|Equal0~4_combout\ & (!\PAUSE~input_o\ & \counter|B_counter|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|Equal0~4_combout\,
	datab => \PAUSE~input_o\,
	datac => \counter|B_counter|counter_process:counter_output[0]~q\,
	datad => \counter|B_counter|Equal0~9_combout\,
	combout => \counter|B_counter|counter_process:counter_output[0]~0_combout\);

-- Location: FF_X16_Y20_N17
\counter|B_counter|counter_process:counter_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|counter_process:counter_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:counter_output[0]~q\);

-- Location: LCCOMB_X17_Y20_N0
\counter|B_counter|counter_process:counter_output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[1]~0_combout\ = (\counter|B_counter|counter_process:counter_output[0]~q\ & (!\PAUSE~input_o\ & (\counter|B_counter|Equal0~4_combout\ & \counter|B_counter|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[0]~q\,
	datab => \PAUSE~input_o\,
	datac => \counter|B_counter|Equal0~4_combout\,
	datad => \counter|B_counter|Equal0~9_combout\,
	combout => \counter|B_counter|counter_process:counter_output[1]~0_combout\);

-- Location: LCCOMB_X17_Y20_N8
\counter|B_counter|counter_process:counter_output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[1]~1_combout\ = \counter|B_counter|counter_process:counter_output[1]~q\ $ (\counter|B_counter|counter_process:counter_output[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|B_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[1]~0_combout\,
	combout => \counter|B_counter|counter_process:counter_output[1]~1_combout\);

-- Location: FF_X17_Y20_N9
\counter|B_counter|counter_process:counter_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|counter_process:counter_output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:counter_output[1]~q\);

-- Location: LCCOMB_X17_Y20_N26
\counter|B_counter|counter_process:counter_output[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[2]~0_combout\ = \counter|B_counter|counter_process:counter_output[2]~q\ $ (((\counter|B_counter|counter_process:counter_output[1]~q\ & \counter|B_counter|counter_process:counter_output[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[1]~q\,
	datac => \counter|B_counter|counter_process:counter_output[2]~q\,
	datad => \counter|B_counter|counter_process:counter_output[1]~0_combout\,
	combout => \counter|B_counter|counter_process:counter_output[2]~0_combout\);

-- Location: FF_X17_Y20_N27
\counter|B_counter|counter_process:counter_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|counter_process:counter_output[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:counter_output[2]~q\);

-- Location: LCCOMB_X17_Y20_N4
\counter|B_counter|counter_process:counter_output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|B_counter|counter_process:counter_output[3]~0_combout\ = \counter|B_counter|counter_process:counter_output[3]~q\ $ (((\counter|B_counter|counter_process:counter_output[1]~q\ & (\counter|B_counter|counter_process:counter_output[2]~q\ & 
-- \counter|B_counter|counter_process:counter_output[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[1]~q\,
	datab => \counter|B_counter|counter_process:counter_output[2]~q\,
	datac => \counter|B_counter|counter_process:counter_output[3]~q\,
	datad => \counter|B_counter|counter_process:counter_output[1]~0_combout\,
	combout => \counter|B_counter|counter_process:counter_output[3]~0_combout\);

-- Location: FF_X17_Y20_N5
\counter|B_counter|counter_process:counter_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \counter|B_counter|counter_process:counter_output[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|B_counter|counter_process:counter_output[3]~q\);

-- Location: LCCOMB_X16_Y20_N24
\Sub_C2|Full_Adder|a0|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a0|S~0_combout\ = \counter|A_counter|counter_process:counter_output[0]~q\ $ (\counter|B_counter|counter_process:counter_output[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \Sub_C2|Full_Adder|a0|S~0_combout\);

-- Location: IOIBUF_X16_Y24_N22
\SEL[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(2),
	o => \SEL[2]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\SEL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: LCCOMB_X16_Y20_N22
\res_bin~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~10_combout\ = (\counter|A_counter|counter_process:counter_output[0]~q\ & ((\counter|B_counter|counter_process:counter_output[0]~q\ & (\SEL[2]~input_o\)) # (!\counter|B_counter|counter_process:counter_output[0]~q\ & ((\SEL[0]~input_o\))))) # 
-- (!\counter|A_counter|counter_process:counter_output[0]~q\ & (\SEL[2]~input_o\ $ (((!\SEL[0]~input_o\) # (!\counter|B_counter|counter_process:counter_output[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~input_o\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|B_counter|counter_process:counter_output[0]~q\,
	datad => \SEL[0]~input_o\,
	combout => \res_bin~10_combout\);

-- Location: IOIBUF_X18_Y24_N15
\SEL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: LCCOMB_X16_Y20_N10
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\SEL[2]~input_o\ & (\SEL[1]~input_o\ & !\SEL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[2]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y20_N0
\res_bin~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~5_combout\ = \SEL[2]~input_o\ $ (\SEL[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[2]~input_o\,
	datac => \SEL[1]~input_o\,
	combout => \res_bin~5_combout\);

-- Location: LCCOMB_X16_Y20_N8
\res_bin~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~11_combout\ = (\res_bin~5_combout\ & (((\res_bin~10_combout\)))) # (!\res_bin~5_combout\ & (\Sub_C2|Full_Adder|a0|S~0_combout\ $ (((!\Equal0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|Full_Adder|a0|S~0_combout\,
	datab => \res_bin~10_combout\,
	datac => \Equal0~2_combout\,
	datad => \res_bin~5_combout\,
	combout => \res_bin~11_combout\);

-- Location: LCCOMB_X19_Y20_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\SEL[2]~input_o\ & !\SEL[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL[2]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: CLKCTRL_G6
\Equal0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~1clkctrl_outclk\);

-- Location: LCCOMB_X16_Y20_N14
\res_bin[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- res_bin(0) = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((res_bin(0)))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (\res_bin~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res_bin~11_combout\,
	datac => res_bin(0),
	datad => \Equal0~1clkctrl_outclk\,
	combout => res_bin(0));

-- Location: LCCOMB_X16_Y20_N26
\res_bin~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~6_combout\ = (\counter|B_counter|counter_process:counter_output[2]~q\ & (\SEL[2]~input_o\ $ (((!\SEL[0]~input_o\ & !\counter|A_counter|counter_process:counter_output[2]~q\))))) # (!\counter|B_counter|counter_process:counter_output[2]~q\ & 
-- ((\counter|A_counter|counter_process:counter_output[2]~q\ & (\SEL[0]~input_o\)) # (!\counter|A_counter|counter_process:counter_output[2]~q\ & ((!\SEL[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[2]~q\,
	datab => \SEL[0]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \counter|A_counter|counter_process:counter_output[2]~q\,
	combout => \res_bin~6_combout\);

-- Location: LCCOMB_X17_Y20_N14
\res_bin~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~4_combout\ = \counter|A_counter|counter_process:counter_output[2]~q\ $ (\counter|B_counter|counter_process:counter_output[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|A_counter|counter_process:counter_output[2]~q\,
	datad => \counter|B_counter|counter_process:counter_output[2]~q\,
	combout => \res_bin~4_combout\);

-- Location: LCCOMB_X16_Y20_N12
\res_bin~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~7_combout\ = (\res_bin~5_combout\ & (\res_bin~6_combout\)) # (!\res_bin~5_combout\ & ((\Equal0~2_combout\ $ (!\res_bin~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_bin~6_combout\,
	datab => \Equal0~2_combout\,
	datac => \res_bin~5_combout\,
	datad => \res_bin~4_combout\,
	combout => \res_bin~7_combout\);

-- Location: LCCOMB_X16_Y20_N2
\res_bin[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- res_bin(2) = (GLOBAL(\Equal0~1clkctrl_outclk\) & (res_bin(2))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((\res_bin~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => res_bin(2),
	datac => \res_bin~7_combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => res_bin(2));

-- Location: LCCOMB_X16_Y20_N18
\res_bin~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~8_combout\ = (\counter|B_counter|counter_process:counter_output[3]~q\ & ((\counter|A_counter|counter_process:counter_output[3]~q\ & (!\SEL[2]~input_o\)) # (!\counter|A_counter|counter_process:counter_output[3]~q\ & ((\SEL[0]~input_o\))))) # 
-- (!\counter|B_counter|counter_process:counter_output[3]~q\ & (\SEL[2]~input_o\ $ (((\counter|A_counter|counter_process:counter_output[3]~q\ & !\SEL[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[3]~q\,
	datab => \SEL[2]~input_o\,
	datac => \counter|A_counter|counter_process:counter_output[3]~q\,
	datad => \SEL[0]~input_o\,
	combout => \res_bin~8_combout\);

-- Location: LCCOMB_X16_Y20_N6
\Sub_C2|Full_Adder|a3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a3|S~0_combout\ = \counter|B_counter|counter_process:counter_output[3]~q\ $ (\counter|A_counter|counter_process:counter_output[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[3]~q\,
	datac => \counter|A_counter|counter_process:counter_output[3]~q\,
	combout => \Sub_C2|Full_Adder|a3|S~0_combout\);

-- Location: LCCOMB_X16_Y20_N20
\res_bin~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~9_combout\ = (\res_bin~5_combout\ & (\res_bin~8_combout\)) # (!\res_bin~5_combout\ & ((\Equal0~2_combout\ $ (!\Sub_C2|Full_Adder|a3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_bin~8_combout\,
	datab => \Equal0~2_combout\,
	datac => \Sub_C2|Full_Adder|a3|S~0_combout\,
	datad => \res_bin~5_combout\,
	combout => \res_bin~9_combout\);

-- Location: LCCOMB_X16_Y20_N4
\res_bin[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- res_bin(3) = (GLOBAL(\Equal0~1clkctrl_outclk\) & (res_bin(3))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & ((\res_bin~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => res_bin(3),
	datac => \res_bin~9_combout\,
	datad => \Equal0~1clkctrl_outclk\,
	combout => res_bin(3));

-- Location: LCCOMB_X19_Y20_N14
\res_bin~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~2_combout\ = (\SEL[2]~input_o\ & ((\SEL[0]~input_o\ & ((\counter|B_counter|counter_process:counter_output[1]~q\) # (\counter|A_counter|counter_process:counter_output[1]~q\))) # (!\SEL[0]~input_o\ & 
-- (\counter|B_counter|counter_process:counter_output[1]~q\ & \counter|A_counter|counter_process:counter_output[1]~q\)))) # (!\SEL[2]~input_o\ & ((\counter|B_counter|counter_process:counter_output[1]~q\ $ 
-- (!\counter|A_counter|counter_process:counter_output[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \counter|B_counter|counter_process:counter_output[1]~q\,
	datad => \counter|A_counter|counter_process:counter_output[1]~q\,
	combout => \res_bin~2_combout\);

-- Location: LCCOMB_X17_Y20_N30
\res_bin~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~3_combout\ = (\SEL[2]~input_o\ & (\counter|B_counter|counter_process:counter_output[1]~q\ $ (\counter|A_counter|counter_process:counter_output[1]~q\ $ (\SEL[0]~input_o\)))) # (!\SEL[2]~input_o\ & ((\SEL[0]~input_o\ & 
-- (!\counter|B_counter|counter_process:counter_output[1]~q\)) # (!\SEL[0]~input_o\ & ((!\counter|A_counter|counter_process:counter_output[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[1]~q\,
	datab => \SEL[2]~input_o\,
	datac => \counter|A_counter|counter_process:counter_output[1]~q\,
	datad => \SEL[0]~input_o\,
	combout => \res_bin~3_combout\);

-- Location: LCCOMB_X19_Y20_N20
\res_bin~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \res_bin~12_combout\ = (\SEL[1]~input_o\ & ((\res_bin~3_combout\))) # (!\SEL[1]~input_o\ & (\res_bin~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~input_o\,
	datac => \res_bin~2_combout\,
	datad => \res_bin~3_combout\,
	combout => \res_bin~12_combout\);

-- Location: LCCOMB_X19_Y20_N8
\res_bin[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- res_bin(1) = (GLOBAL(\Equal0~1clkctrl_outclk\) & ((res_bin(1)))) # (!GLOBAL(\Equal0~1clkctrl_outclk\) & (\res_bin~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res_bin~12_combout\,
	datac => res_bin(1),
	datad => \Equal0~1clkctrl_outclk\,
	combout => res_bin(1));

-- Location: LCCOMB_X19_Y20_N2
\ZER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~0_combout\ = (!res_bin(1) & ((\SEL[2]~input_o\) # (\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => res_bin(1),
	datac => \SEL[2]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \ZER~0_combout\);

-- Location: LCCOMB_X19_Y20_N6
\ZER~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~1_combout\ = (!res_bin(0) & (!res_bin(2) & (!res_bin(3) & \ZER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => res_bin(0),
	datab => res_bin(2),
	datac => res_bin(3),
	datad => \ZER~0_combout\,
	combout => \ZER~1_combout\);

-- Location: LCCOMB_X17_Y20_N20
\Sub_C2|Full_Adder|a1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a1|S~combout\ = \counter|A_counter|counter_process:counter_output[1]~q\ $ (\counter|B_counter|counter_process:counter_output[1]~q\ $ (((\counter|A_counter|counter_process:counter_output[0]~q\) # 
-- (!\counter|B_counter|counter_process:counter_output[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[1]~q\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|B_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \Sub_C2|Full_Adder|a1|S~combout\);

-- Location: LCCOMB_X19_Y20_N30
\Sub_C2|Full_Adder|a1|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a1|C_out~0_combout\ = (\counter|B_counter|counter_process:counter_output[1]~q\ & (\counter|A_counter|counter_process:counter_output[1]~q\ & ((\counter|A_counter|counter_process:counter_output[0]~q\) # 
-- (!\counter|B_counter|counter_process:counter_output[0]~q\)))) # (!\counter|B_counter|counter_process:counter_output[1]~q\ & ((\counter|A_counter|counter_process:counter_output[0]~q\) # ((\counter|A_counter|counter_process:counter_output[1]~q\) # 
-- (!\counter|B_counter|counter_process:counter_output[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[1]~q\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|A_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \Sub_C2|Full_Adder|a1|C_out~0_combout\);

-- Location: LCCOMB_X14_Y20_N10
\Sub_C2|Full_Adder|a2|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a2|C_out~0_combout\ = (\counter|B_counter|counter_process:counter_output[2]~q\ & (\counter|A_counter|counter_process:counter_output[2]~q\ & \Sub_C2|Full_Adder|a1|C_out~0_combout\)) # 
-- (!\counter|B_counter|counter_process:counter_output[2]~q\ & ((\counter|A_counter|counter_process:counter_output[2]~q\) # (\Sub_C2|Full_Adder|a1|C_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[2]~q\,
	datac => \counter|A_counter|counter_process:counter_output[2]~q\,
	datad => \Sub_C2|Full_Adder|a1|C_out~0_combout\,
	combout => \Sub_C2|Full_Adder|a2|C_out~0_combout\);

-- Location: LCCOMB_X14_Y20_N8
\Sub_C2|OVERFLOW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|OVERFLOW~0_combout\ = (\Sub_C2|Full_Adder|a2|C_out~0_combout\ & (!\counter|B_counter|counter_process:counter_output[3]~q\ & \counter|A_counter|counter_process:counter_output[3]~q\)) # (!\Sub_C2|Full_Adder|a2|C_out~0_combout\ & 
-- (\counter|B_counter|counter_process:counter_output[3]~q\ & !\counter|A_counter|counter_process:counter_output[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|Full_Adder|a2|C_out~0_combout\,
	datac => \counter|B_counter|counter_process:counter_output[3]~q\,
	datad => \counter|A_counter|counter_process:counter_output[3]~q\,
	combout => \Sub_C2|OVERFLOW~0_combout\);

-- Location: LCCOMB_X19_Y20_N26
\COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUT~0_combout\ = (!\SEL[1]~input_o\ & (!\SEL[2]~input_o\ & \SEL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \COUT~0_combout\);

-- Location: LCCOMB_X14_Y20_N24
\ZER~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~4_combout\ = (\counter|A_counter|counter_process:counter_output[2]~q\ & (!\Sub_C2|Full_Adder|a3|S~0_combout\ & (\counter|B_counter|counter_process:counter_output[2]~q\ $ (!\Sub_C2|Full_Adder|a1|C_out~0_combout\)))) # 
-- (!\counter|A_counter|counter_process:counter_output[2]~q\ & ((\Sub_C2|Full_Adder|a3|S~0_combout\ & (\counter|B_counter|counter_process:counter_output[2]~q\ & !\Sub_C2|Full_Adder|a1|C_out~0_combout\)) # (!\Sub_C2|Full_Adder|a3|S~0_combout\ & 
-- (!\counter|B_counter|counter_process:counter_output[2]~q\ & \Sub_C2|Full_Adder|a1|C_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|A_counter|counter_process:counter_output[2]~q\,
	datab => \Sub_C2|Full_Adder|a3|S~0_combout\,
	datac => \counter|B_counter|counter_process:counter_output[2]~q\,
	datad => \Sub_C2|Full_Adder|a1|C_out~0_combout\,
	combout => \ZER~4_combout\);

-- Location: LCCOMB_X14_Y20_N30
\ZER~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~5_combout\ = (\Sub_C2|Full_Adder|a1|S~combout\ & (!\Sub_C2|OVERFLOW~0_combout\ & (\COUT~0_combout\ & \ZER~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|Full_Adder|a1|S~combout\,
	datab => \Sub_C2|OVERFLOW~0_combout\,
	datac => \COUT~0_combout\,
	datad => \ZER~4_combout\,
	combout => \ZER~5_combout\);

-- Location: LCCOMB_X19_Y20_N18
\Add_C2|Full_Adder|a1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add_C2|Full_Adder|a1|S~combout\ = \counter|B_counter|counter_process:counter_output[1]~q\ $ (\counter|A_counter|counter_process:counter_output[1]~q\ $ (((\counter|A_counter|counter_process:counter_output[0]~q\ & 
-- \counter|B_counter|counter_process:counter_output[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[1]~q\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|A_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \Add_C2|Full_Adder|a1|S~combout\);

-- Location: LCCOMB_X19_Y20_N16
\Add_C2|Full_Adder|a1|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add_C2|Full_Adder|a1|C_out~0_combout\ = (\counter|B_counter|counter_process:counter_output[1]~q\ & ((\counter|A_counter|counter_process:counter_output[1]~q\) # ((\counter|A_counter|counter_process:counter_output[0]~q\ & 
-- \counter|B_counter|counter_process:counter_output[0]~q\)))) # (!\counter|B_counter|counter_process:counter_output[1]~q\ & (\counter|A_counter|counter_process:counter_output[0]~q\ & (\counter|A_counter|counter_process:counter_output[1]~q\ & 
-- \counter|B_counter|counter_process:counter_output[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[1]~q\,
	datab => \counter|A_counter|counter_process:counter_output[0]~q\,
	datac => \counter|A_counter|counter_process:counter_output[1]~q\,
	datad => \counter|B_counter|counter_process:counter_output[0]~q\,
	combout => \Add_C2|Full_Adder|a1|C_out~0_combout\);

-- Location: LCCOMB_X14_Y20_N28
\Add_C2|Full_Adder|a2|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add_C2|Full_Adder|a2|C_out~0_combout\ = (\counter|B_counter|counter_process:counter_output[2]~q\ & ((\counter|A_counter|counter_process:counter_output[2]~q\) # (\Add_C2|Full_Adder|a1|C_out~0_combout\))) # 
-- (!\counter|B_counter|counter_process:counter_output[2]~q\ & (\counter|A_counter|counter_process:counter_output[2]~q\ & \Add_C2|Full_Adder|a1|C_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|B_counter|counter_process:counter_output[2]~q\,
	datac => \counter|A_counter|counter_process:counter_output[2]~q\,
	datad => \Add_C2|Full_Adder|a1|C_out~0_combout\,
	combout => \Add_C2|Full_Adder|a2|C_out~0_combout\);

-- Location: LCCOMB_X14_Y20_N6
\ZER~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~2_combout\ = (!\Add_C2|Full_Adder|a1|S~combout\ & ((\counter|A_counter|counter_process:counter_output[3]~q\ & (\counter|B_counter|counter_process:counter_output[3]~q\ $ (\Add_C2|Full_Adder|a2|C_out~0_combout\))) # 
-- (!\counter|A_counter|counter_process:counter_output[3]~q\ & (\counter|B_counter|counter_process:counter_output[3]~q\ & \Add_C2|Full_Adder|a2|C_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add_C2|Full_Adder|a1|S~combout\,
	datab => \counter|A_counter|counter_process:counter_output[3]~q\,
	datac => \counter|B_counter|counter_process:counter_output[3]~q\,
	datad => \Add_C2|Full_Adder|a2|C_out~0_combout\,
	combout => \ZER~2_combout\);

-- Location: LCCOMB_X21_Y20_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\SEL[1]~input_o\ & (!\SEL[0]~input_o\ & !\SEL[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y20_N10
\ZER~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~3_combout\ = (\ZER~2_combout\ & (\Equal0~0_combout\ & (\Add_C2|Full_Adder|a1|C_out~0_combout\ $ (!\res_bin~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZER~2_combout\,
	datab => \Add_C2|Full_Adder|a1|C_out~0_combout\,
	datac => \res_bin~4_combout\,
	datad => \Equal0~0_combout\,
	combout => \ZER~3_combout\);

-- Location: LCCOMB_X19_Y20_N0
\ZER~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZER~6_combout\ = (\ZER~1_combout\) # ((!\Sub_C2|Full_Adder|a0|S~0_combout\ & ((\ZER~5_combout\) # (\ZER~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZER~1_combout\,
	datab => \Sub_C2|Full_Adder|a0|S~0_combout\,
	datac => \ZER~5_combout\,
	datad => \ZER~3_combout\,
	combout => \ZER~6_combout\);

-- Location: LCCOMB_X14_Y20_N2
\NEG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NEG~1_combout\ = ((\Sub_C2|Full_Adder|a2|C_out~0_combout\ & ((\counter|A_counter|counter_process:counter_output[3]~q\) # (!\counter|B_counter|counter_process:counter_output[3]~q\))) # (!\Sub_C2|Full_Adder|a2|C_out~0_combout\ & 
-- (\counter|B_counter|counter_process:counter_output[3]~q\ $ (\counter|A_counter|counter_process:counter_output[3]~q\)))) # (!\COUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|Full_Adder|a2|C_out~0_combout\,
	datab => \counter|B_counter|counter_process:counter_output[3]~q\,
	datac => \COUT~0_combout\,
	datad => \counter|A_counter|counter_process:counter_output[3]~q\,
	combout => \NEG~1_combout\);

-- Location: LCCOMB_X14_Y20_N4
\NEG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NEG~0_combout\ = (\Equal0~0_combout\ & ((\counter|A_counter|counter_process:counter_output[3]~q\ & ((\counter|B_counter|counter_process:counter_output[3]~q\) # (\Add_C2|Full_Adder|a2|C_out~0_combout\))) # 
-- (!\counter|A_counter|counter_process:counter_output[3]~q\ & (\counter|B_counter|counter_process:counter_output[3]~q\ $ (!\Add_C2|Full_Adder|a2|C_out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \counter|A_counter|counter_process:counter_output[3]~q\,
	datac => \counter|B_counter|counter_process:counter_output[3]~q\,
	datad => \Add_C2|Full_Adder|a2|C_out~0_combout\,
	combout => \NEG~0_combout\);

-- Location: LCCOMB_X14_Y20_N0
\NEG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NEG~2_combout\ = (\NEG~0_combout\) # ((\NEG~1_combout\ & !\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEG~1_combout\,
	datac => \NEG~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \NEG~2_combout\);

-- Location: LCCOMB_X14_Y20_N18
\OVER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OVER~0_combout\ = (\Equal0~0_combout\ & ((\counter|A_counter|counter_process:counter_output[3]~q\ & (\counter|B_counter|counter_process:counter_output[3]~q\ & \Add_C2|Full_Adder|a2|C_out~0_combout\)) # 
-- (!\counter|A_counter|counter_process:counter_output[3]~q\ & (!\counter|B_counter|counter_process:counter_output[3]~q\ & !\Add_C2|Full_Adder|a2|C_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \counter|A_counter|counter_process:counter_output[3]~q\,
	datac => \counter|B_counter|counter_process:counter_output[3]~q\,
	datad => \Add_C2|Full_Adder|a2|C_out~0_combout\,
	combout => \OVER~0_combout\);

-- Location: LCCOMB_X14_Y20_N12
\OVER~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OVER~1_combout\ = (\OVER~0_combout\) # ((\COUT~0_combout\ & (\Sub_C2|OVERFLOW~0_combout\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUT~0_combout\,
	datab => \OVER~0_combout\,
	datac => \Sub_C2|OVERFLOW~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \OVER~1_combout\);

-- Location: LCCOMB_X14_Y20_N26
\COUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUT~1_combout\ = (\Equal0~0_combout\ & ((\counter|A_counter|counter_process:counter_output[3]~q\ & ((\counter|B_counter|counter_process:counter_output[3]~q\) # (!\Add_C2|Full_Adder|a2|C_out~0_combout\))) # 
-- (!\counter|A_counter|counter_process:counter_output[3]~q\ & (\counter|B_counter|counter_process:counter_output[3]~q\ & !\Add_C2|Full_Adder|a2|C_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \counter|A_counter|counter_process:counter_output[3]~q\,
	datac => \counter|B_counter|counter_process:counter_output[3]~q\,
	datad => \Add_C2|Full_Adder|a2|C_out~0_combout\,
	combout => \COUT~1_combout\);

-- Location: LCCOMB_X14_Y20_N16
\Sub_C2|Full_Adder|a3|C_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sub_C2|Full_Adder|a3|C_out~0_combout\ = (\Sub_C2|Full_Adder|a2|C_out~0_combout\ & ((\counter|B_counter|counter_process:counter_output[3]~q\) # (!\counter|A_counter|counter_process:counter_output[3]~q\))) # (!\Sub_C2|Full_Adder|a2|C_out~0_combout\ & 
-- (\counter|B_counter|counter_process:counter_output[3]~q\ & !\counter|A_counter|counter_process:counter_output[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|Full_Adder|a2|C_out~0_combout\,
	datac => \counter|B_counter|counter_process:counter_output[3]~q\,
	datad => \counter|A_counter|counter_process:counter_output[3]~q\,
	combout => \Sub_C2|Full_Adder|a3|C_out~0_combout\);

-- Location: LCCOMB_X14_Y20_N14
\COUT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUT~2_combout\ = (\COUT~1_combout\) # ((\Sub_C2|Full_Adder|a3|C_out~0_combout\ & (\COUT~0_combout\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUT~1_combout\,
	datab => \Sub_C2|Full_Adder|a3|C_out~0_combout\,
	datac => \COUT~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \COUT~2_combout\);

-- Location: LCCOMB_X19_Y20_N12
\RESULT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~10_combout\ = (\Equal0~1_combout\ & ((\counter|B_counter|counter_process:counter_output[0]~q\ $ (\counter|A_counter|counter_process:counter_output[0]~q\)))) # (!\Equal0~1_combout\ & (res_bin(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => res_bin(0),
	datab => \Equal0~1_combout\,
	datac => \counter|B_counter|counter_process:counter_output[0]~q\,
	datad => \counter|A_counter|counter_process:counter_output[0]~q\,
	combout => \RESULT~10_combout\);

-- Location: LCCOMB_X19_Y20_N28
\RESULT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~4_combout\ = (\Equal0~1_combout\ & (!\Sub_C2|Full_Adder|a1|S~combout\ & ((\SEL[0]~input_o\)))) # (!\Equal0~1_combout\ & (((res_bin(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|Full_Adder|a1|S~combout\,
	datab => \Equal0~1_combout\,
	datac => res_bin(1),
	datad => \SEL[0]~input_o\,
	combout => \RESULT~4_combout\);

-- Location: LCCOMB_X21_Y20_N6
\RESULT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~5_combout\ = (\RESULT~4_combout\) # ((\Add_C2|Full_Adder|a1|S~combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add_C2|Full_Adder|a1|S~combout\,
	datab => \Equal0~0_combout\,
	datad => \RESULT~4_combout\,
	combout => \RESULT~5_combout\);

-- Location: LCCOMB_X19_Y20_N22
\RESULT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~6_combout\ = (\COUT~0_combout\ & (\Sub_C2|Full_Adder|a1|C_out~0_combout\ $ ((!\res_bin~4_combout\)))) # (!\COUT~0_combout\ & (((res_bin(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub_C2|Full_Adder|a1|C_out~0_combout\,
	datab => \COUT~0_combout\,
	datac => \res_bin~4_combout\,
	datad => res_bin(2),
	combout => \RESULT~6_combout\);

-- Location: LCCOMB_X19_Y20_N4
\RESULT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~7_combout\ = (\Equal0~0_combout\ & ((\Add_C2|Full_Adder|a1|C_out~0_combout\ $ (\res_bin~4_combout\)))) # (!\Equal0~0_combout\ & (\RESULT~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESULT~6_combout\,
	datab => \Add_C2|Full_Adder|a1|C_out~0_combout\,
	datac => \res_bin~4_combout\,
	datad => \Equal0~0_combout\,
	combout => \RESULT~7_combout\);

-- Location: LCCOMB_X14_Y20_N20
\RESULT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~8_combout\ = (\COUT~0_combout\ & (\Sub_C2|Full_Adder|a3|S~0_combout\ $ (((!\Sub_C2|Full_Adder|a2|C_out~0_combout\))))) # (!\COUT~0_combout\ & (((res_bin(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUT~0_combout\,
	datab => \Sub_C2|Full_Adder|a3|S~0_combout\,
	datac => res_bin(3),
	datad => \Sub_C2|Full_Adder|a2|C_out~0_combout\,
	combout => \RESULT~8_combout\);

-- Location: LCCOMB_X14_Y20_N22
\RESULT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~9_combout\ = (\Equal0~0_combout\ & (\Add_C2|Full_Adder|a2|C_out~0_combout\ $ ((\Sub_C2|Full_Adder|a3|S~0_combout\)))) # (!\Equal0~0_combout\ & (((\RESULT~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add_C2|Full_Adder|a2|C_out~0_combout\,
	datac => \Sub_C2|Full_Adder|a3|S~0_combout\,
	datad => \RESULT~8_combout\,
	combout => \RESULT~9_combout\);

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

ww_COUT <= \COUT~output_o\;

ww_RESULT(0) <= \RESULT[0]~output_o\;

ww_RESULT(1) <= \RESULT[1]~output_o\;

ww_RESULT(2) <= \RESULT[2]~output_o\;

ww_RESULT(3) <= \RESULT[3]~output_o\;
END structure;


