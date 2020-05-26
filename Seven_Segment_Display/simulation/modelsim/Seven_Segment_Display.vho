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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 Patches 0.02std SJ Lite Edition"

-- DATE "05/22/2020 01:56:37"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Seven_Segment_Display IS
    PORT (
	BCDNos : IN std_logic_vector(3 DOWNTO 0);
	DisplayLEDs : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Seven_Segment_Display;

-- Design Ports Information
-- DisplayLEDs[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayLEDs[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayLEDs[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayLEDs[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayLEDs[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayLEDs[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayLEDs[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDNos[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDNos[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDNos[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDNos[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Seven_Segment_Display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCDNos : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DisplayLEDs : std_logic_vector(6 DOWNTO 0);
SIGNAL \DisplayLEDs[0]~output_o\ : std_logic;
SIGNAL \DisplayLEDs[1]~output_o\ : std_logic;
SIGNAL \DisplayLEDs[2]~output_o\ : std_logic;
SIGNAL \DisplayLEDs[3]~output_o\ : std_logic;
SIGNAL \DisplayLEDs[4]~output_o\ : std_logic;
SIGNAL \DisplayLEDs[5]~output_o\ : std_logic;
SIGNAL \DisplayLEDs[6]~output_o\ : std_logic;
SIGNAL \BCDNos[0]~input_o\ : std_logic;
SIGNAL \BCDNos[2]~input_o\ : std_logic;
SIGNAL \BCDNos[1]~input_o\ : std_logic;
SIGNAL \BCDNos[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_BCDNos <= BCDNos;
DisplayLEDs <= ww_DisplayLEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\DisplayLEDs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DisplayLEDs[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\DisplayLEDs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DisplayLEDs[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\DisplayLEDs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DisplayLEDs[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\DisplayLEDs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DisplayLEDs[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\DisplayLEDs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DisplayLEDs[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\DisplayLEDs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DisplayLEDs[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\DisplayLEDs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DisplayLEDs[6]~output_o\);

-- Location: IOIBUF_X0_Y16_N22
\BCDNos[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDNos(0),
	o => \BCDNos[0]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\BCDNos[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDNos(2),
	o => \BCDNos[2]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\BCDNos[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDNos(1),
	o => \BCDNos[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\BCDNos[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDNos(3),
	o => \BCDNos[3]~input_o\);

-- Location: LCCOMB_X31_Y30_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\BCDNos[2]~input_o\ & (!\BCDNos[3]~input_o\ & ((!\BCDNos[1]~input_o\) # (!\BCDNos[0]~input_o\)))) # (!\BCDNos[2]~input_o\ & ((\BCDNos[1]~input_o\ $ (\BCDNos[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDNos[0]~input_o\,
	datab => \BCDNos[2]~input_o\,
	datac => \BCDNos[1]~input_o\,
	datad => \BCDNos[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X31_Y30_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\BCDNos[0]~input_o\ & ((\BCDNos[1]~input_o\) # (\BCDNos[2]~input_o\ $ (!\BCDNos[3]~input_o\)))) # (!\BCDNos[0]~input_o\ & ((\BCDNos[2]~input_o\ & ((\BCDNos[3]~input_o\))) # (!\BCDNos[2]~input_o\ & (\BCDNos[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDNos[0]~input_o\,
	datab => \BCDNos[2]~input_o\,
	datac => \BCDNos[1]~input_o\,
	datad => \BCDNos[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X31_Y30_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\BCDNos[0]~input_o\) # ((\BCDNos[1]~input_o\ & ((\BCDNos[3]~input_o\))) # (!\BCDNos[1]~input_o\ & (\BCDNos[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDNos[0]~input_o\,
	datab => \BCDNos[2]~input_o\,
	datac => \BCDNos[1]~input_o\,
	datad => \BCDNos[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X31_Y30_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\BCDNos[1]~input_o\ & ((\BCDNos[3]~input_o\) # ((\BCDNos[0]~input_o\ & \BCDNos[2]~input_o\)))) # (!\BCDNos[1]~input_o\ & (\BCDNos[2]~input_o\ $ (((\BCDNos[0]~input_o\ & !\BCDNos[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDNos[0]~input_o\,
	datab => \BCDNos[2]~input_o\,
	datac => \BCDNos[1]~input_o\,
	datad => \BCDNos[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X31_Y30_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\BCDNos[2]~input_o\ & (((\BCDNos[3]~input_o\)))) # (!\BCDNos[2]~input_o\ & (\BCDNos[1]~input_o\ & ((\BCDNos[3]~input_o\) # (!\BCDNos[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDNos[0]~input_o\,
	datab => \BCDNos[2]~input_o\,
	datac => \BCDNos[1]~input_o\,
	datad => \BCDNos[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X31_Y30_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\BCDNos[1]~input_o\ & ((\BCDNos[3]~input_o\) # ((!\BCDNos[0]~input_o\ & \BCDNos[2]~input_o\)))) # (!\BCDNos[1]~input_o\ & (((\BCDNos[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDNos[0]~input_o\,
	datab => \BCDNos[2]~input_o\,
	datac => \BCDNos[1]~input_o\,
	datad => \BCDNos[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X31_Y30_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\BCDNos[1]~input_o\ & (((\BCDNos[3]~input_o\)))) # (!\BCDNos[1]~input_o\ & (\BCDNos[2]~input_o\ $ (((\BCDNos[0]~input_o\ & !\BCDNos[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDNos[0]~input_o\,
	datab => \BCDNos[2]~input_o\,
	datac => \BCDNos[1]~input_o\,
	datad => \BCDNos[3]~input_o\,
	combout => \Mux0~0_combout\);

ww_DisplayLEDs(0) <= \DisplayLEDs[0]~output_o\;

ww_DisplayLEDs(1) <= \DisplayLEDs[1]~output_o\;

ww_DisplayLEDs(2) <= \DisplayLEDs[2]~output_o\;

ww_DisplayLEDs(3) <= \DisplayLEDs[3]~output_o\;

ww_DisplayLEDs(4) <= \DisplayLEDs[4]~output_o\;

ww_DisplayLEDs(5) <= \DisplayLEDs[5]~output_o\;

ww_DisplayLEDs(6) <= \DisplayLEDs[6]~output_o\;
END structure;


