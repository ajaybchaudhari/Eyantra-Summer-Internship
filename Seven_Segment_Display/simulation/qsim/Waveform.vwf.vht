-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "05/22/2020 01:57:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Seven_Segment_Display
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Seven_Segment_Display_vhd_vec_tst IS
END Seven_Segment_Display_vhd_vec_tst;
ARCHITECTURE Seven_Segment_Display_arch OF Seven_Segment_Display_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BCDNos : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DisplayLEDs : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Seven_Segment_Display
	PORT (
	BCDNos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	DisplayLEDs : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Seven_Segment_Display
	PORT MAP (
-- list connections between master ports and signals
	BCDNos => BCDNos,
	DisplayLEDs => DisplayLEDs
	);
-- BCDNos[3]
t_prcs_BCDNos_3: PROCESS
BEGIN
	BCDNos(3) <= '0';
	WAIT FOR 400000 ps;
	BCDNos(3) <= '1';
	WAIT FOR 400000 ps;
	BCDNos(3) <= '0';
WAIT;
END PROCESS t_prcs_BCDNos_3;
-- BCDNos[2]
t_prcs_BCDNos_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		BCDNos(2) <= '0';
		WAIT FOR 200000 ps;
		BCDNos(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	BCDNos(2) <= '0';
WAIT;
END PROCESS t_prcs_BCDNos_2;
-- BCDNos[1]
t_prcs_BCDNos_1: PROCESS
BEGIN
LOOP
	BCDNos(1) <= '0';
	WAIT FOR 100000 ps;
	BCDNos(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCDNos_1;
-- BCDNos[0]
t_prcs_BCDNos_0: PROCESS
BEGIN
LOOP
	BCDNos(0) <= '0';
	WAIT FOR 50000 ps;
	BCDNos(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BCDNos_0;
END Seven_Segment_Display_arch;
