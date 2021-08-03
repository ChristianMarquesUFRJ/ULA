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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/31/2021 00:00:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA_vhd_vec_tst IS
END ULA_vhd_vec_tst;
ARCHITECTURE ULA_arch OF ULA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL COUT : STD_LOGIC;
SIGNAL NEG : STD_LOGIC;
SIGNAL OVER : STD_LOGIC;
SIGNAL PAUSE : STD_LOGIC;
SIGNAL RESULT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ZER : STD_LOGIC;
COMPONENT ULA
	PORT (
	CLK : IN STD_LOGIC;
	COUT : BUFFER STD_LOGIC;
	NEG : BUFFER STD_LOGIC;
	OVER : BUFFER STD_LOGIC;
	PAUSE : IN STD_LOGIC;
	RESULT : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	X : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	ZER : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ULA
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	COUT => COUT,
	NEG => NEG,
	OVER => OVER,
	PAUSE => PAUSE,
	RESULT => RESULT,
	SEL => SEL,
	X => X,
	Y => Y,
	ZER => ZER
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 1000 ps;
	CLK <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- SEL[2]
t_prcs_SEL_2: PROCESS
BEGIN
	SEL(2) <= '0';
WAIT;
END PROCESS t_prcs_SEL_2;
-- SEL[1]
t_prcs_SEL_1: PROCESS
BEGIN
	SEL(1) <= '0';
WAIT;
END PROCESS t_prcs_SEL_1;
-- SEL[0]
t_prcs_SEL_0: PROCESS
BEGIN
LOOP
	SEL(0) <= '0';
	WAIT FOR 500000 ps;
	SEL(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SEL_0;

-- PAUSE
t_prcs_PAUSE: PROCESS
BEGIN
	PAUSE <= '0';
	WAIT FOR 210000 ps;
	PAUSE <= '1';
	WAIT FOR 70000 ps;
	PAUSE <= '0';
WAIT;
END PROCESS t_prcs_PAUSE;

-- COUT
t_prcs_COUT: PROCESS
BEGIN
	COUT <= 'Z';
WAIT;
END PROCESS t_prcs_COUT;
END ULA_arch;
