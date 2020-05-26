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

-- DATE "05/26/2020 15:11:26"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UNIVERSAL_SHIFT_REGISTER IS
    PORT (
	CLOCK : IN std_logic;
	CLEAR : IN std_logic;
	SL_IN : IN std_logic;
	SR_IN : IN std_logic;
	MODE : IN STD.STANDARD.bit_vector(1 DOWNTO 0);
	DATA : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	Q : INOUT std_logic_vector(3 DOWNTO 0)
	);
END UNIVERSAL_SHIFT_REGISTER;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL_IN	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODE[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODE[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLEAR	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SR_IN	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UNIVERSAL_SHIFT_REGISTER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_CLEAR : std_logic;
SIGNAL ww_SL_IN : std_logic;
SIGNAL ww_SR_IN : std_logic;
SIGNAL ww_MODE : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLEAR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~input_o\ : std_logic;
SIGNAL \Q[1]~input_o\ : std_logic;
SIGNAL \Q[2]~input_o\ : std_logic;
SIGNAL \Q[3]~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SL_IN~input_o\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \MODE[1]~input_o\ : std_logic;
SIGNAL \MODE[0]~input_o\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \SR_IN~input_o\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \CLEAR~input_o\ : std_logic;
SIGNAL \CLEAR~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q[3]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Q[2]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Q[1]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Q[0]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK <= CLOCK;
ww_CLEAR <= CLEAR;
ww_SL_IN <= SL_IN;
ww_SR_IN <= SR_IN;
ww_MODE <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(MODE);
ww_DATA <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(DATA);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLEAR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLEAR~input_o\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G2
\CLOCK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y26_N15
\SL_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SL_IN,
	o => \SL_IN~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(0),
	o => \DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\MODE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE(1),
	o => \MODE[1]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\MODE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE(0),
	o => \MODE[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(1),
	o => \DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(2),
	o => \DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\SR_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SR_IN,
	o => \SR_IN~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA(3),
	o => \DATA[3]~input_o\);

-- Location: LCCOMB_X1_Y23_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\MODE[0]~input_o\ & (\MODE[1]~input_o\)) # (!\MODE[0]~input_o\ & ((\MODE[1]~input_o\ & (\Q[2]~reg0_q\)) # (!\MODE[1]~input_o\ & ((\Q[3]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE[0]~input_o\,
	datab => \MODE[1]~input_o\,
	datac => \Q[2]~reg0_q\,
	datad => \Q[3]~reg0_q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\MODE[0]~input_o\ & ((\Mux0~0_combout\ & ((\DATA[3]~input_o\))) # (!\Mux0~0_combout\ & (\SR_IN~input_o\)))) # (!\MODE[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE[0]~input_o\,
	datab => \SR_IN~input_o\,
	datac => \DATA[3]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X0_Y16_N15
\CLEAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLEAR,
	o => \CLEAR~input_o\);

-- Location: CLKCTRL_G4
\CLEAR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLEAR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLEAR~inputclkctrl_outclk\);

-- Location: FF_X1_Y23_N11
\Q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Mux0~1_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3]~reg0_q\);

-- Location: LCCOMB_X1_Y23_N16
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\MODE[1]~input_o\ & (((\MODE[0]~input_o\)))) # (!\MODE[1]~input_o\ & ((\MODE[0]~input_o\ & (\Q[3]~reg0_q\)) # (!\MODE[0]~input_o\ & ((\Q[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~reg0_q\,
	datab => \MODE[1]~input_o\,
	datac => \MODE[0]~input_o\,
	datad => \Q[2]~reg0_q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\MODE[1]~input_o\ & ((\Mux1~0_combout\ & (\DATA[2]~input_o\)) # (!\Mux1~0_combout\ & ((\Q[1]~reg0_q\))))) # (!\MODE[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE[1]~input_o\,
	datab => \DATA[2]~input_o\,
	datac => \Q[1]~reg0_q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X1_Y23_N21
\Q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Mux1~1_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2]~reg0_q\);

-- Location: LCCOMB_X1_Y23_N6
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\MODE[0]~input_o\ & (\MODE[1]~input_o\)) # (!\MODE[0]~input_o\ & ((\MODE[1]~input_o\ & (\Q[0]~reg0_q\)) # (!\MODE[1]~input_o\ & ((\Q[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE[0]~input_o\,
	datab => \MODE[1]~input_o\,
	datac => \Q[0]~reg0_q\,
	datad => \Q[1]~reg0_q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N2
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\MODE[0]~input_o\ & ((\Mux2~0_combout\ & (\DATA[1]~input_o\)) # (!\Mux2~0_combout\ & ((\Q[2]~reg0_q\))))) # (!\MODE[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE[0]~input_o\,
	datab => \DATA[1]~input_o\,
	datac => \Q[2]~reg0_q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: FF_X1_Y23_N3
\Q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Mux2~1_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1]~reg0_q\);

-- Location: LCCOMB_X1_Y23_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\MODE[0]~input_o\ & ((\Q[1]~reg0_q\) # ((\MODE[1]~input_o\)))) # (!\MODE[0]~input_o\ & (((!\MODE[1]~input_o\ & \Q[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE[0]~input_o\,
	datab => \Q[1]~reg0_q\,
	datac => \MODE[1]~input_o\,
	datad => \Q[0]~reg0_q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\MODE[1]~input_o\ & ((\Mux3~0_combout\ & ((\DATA[0]~input_o\))) # (!\Mux3~0_combout\ & (\SL_IN~input_o\)))) # (!\MODE[1]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SL_IN~input_o\,
	datab => \DATA[0]~input_o\,
	datac => \MODE[1]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X1_Y23_N29
\Q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Mux3~1_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0]~reg0_q\);

-- Location: IOIBUF_X0_Y23_N15
\Q[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	o => \Q[0]~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\Q[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	o => \Q[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\Q[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	o => \Q[2]~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\Q[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	o => \Q[3]~input_o\);

Q(0) <= \Q[0]~output_o\;

Q(1) <= \Q[1]~output_o\;

Q(2) <= \Q[2]~output_o\;

Q(3) <= \Q[3]~output_o\;
END structure;


