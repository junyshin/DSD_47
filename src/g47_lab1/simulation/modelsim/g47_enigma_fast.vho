-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/01/2016 09:50:29"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder IS
    PORT (
	INDEX : IN std_logic_vector(4 DOWNTO 0);
	D : OUT std_logic_vector(25 DOWNTO 0);
	ERROR : OUT std_logic
	);
END decoder;

-- Design Ports Information
-- D[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[1]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[6]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[8]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[9]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[10]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[11]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[12]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[13]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[14]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[15]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[16]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[17]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[18]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[19]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[20]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[21]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[22]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[23]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[24]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[25]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ERROR	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[3]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INDEX[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INDEX[2]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INDEX[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INDEX[4]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INDEX : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_ERROR : std_logic;
SIGNAL \D~21_combout\ : std_logic;
SIGNAL \D~47_combout\ : std_logic;
SIGNAL \D~20_combout\ : std_logic;
SIGNAL \D~22_combout\ : std_logic;
SIGNAL \D~23_combout\ : std_logic;
SIGNAL \D~24_combout\ : std_logic;
SIGNAL \D~25_combout\ : std_logic;
SIGNAL \D~26_combout\ : std_logic;
SIGNAL \D~48_combout\ : std_logic;
SIGNAL \D~27_combout\ : std_logic;
SIGNAL \D~28_combout\ : std_logic;
SIGNAL \D~29_combout\ : std_logic;
SIGNAL \D~30_combout\ : std_logic;
SIGNAL \D~31_combout\ : std_logic;
SIGNAL \D~32_combout\ : std_logic;
SIGNAL \D~33_combout\ : std_logic;
SIGNAL \D~34_combout\ : std_logic;
SIGNAL \D~35_combout\ : std_logic;
SIGNAL \D~36_combout\ : std_logic;
SIGNAL \D~37_combout\ : std_logic;
SIGNAL \D~38_combout\ : std_logic;
SIGNAL \D~39_combout\ : std_logic;
SIGNAL \D~49_combout\ : std_logic;
SIGNAL \D~40_combout\ : std_logic;
SIGNAL \D~41_combout\ : std_logic;
SIGNAL \D~42_combout\ : std_logic;
SIGNAL \D~50_combout\ : std_logic;
SIGNAL \D~43_combout\ : std_logic;
SIGNAL \D~44_combout\ : std_logic;
SIGNAL \D~45_combout\ : std_logic;
SIGNAL \D~51_combout\ : std_logic;
SIGNAL \D~46_combout\ : std_logic;
SIGNAL \ERROR~0_combout\ : std_logic;
SIGNAL \INDEX~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_D~47_combout\ : std_logic;

BEGIN

ww_INDEX <= INDEX;
D <= ww_D;
ERROR <= ww_ERROR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D~47_combout\ <= NOT \D~47_combout\;

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INDEX[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INDEX(3),
	combout => \INDEX~combout\(3));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INDEX[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INDEX(4),
	combout => \INDEX~combout\(4));

-- Location: LCCOMB_X35_Y23_N2
\D~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~21_combout\ = (!\INDEX~combout\(0) & !\INDEX~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(0),
	datac => \INDEX~combout\(4),
	combout => \D~21_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INDEX[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INDEX(2),
	combout => \INDEX~combout\(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INDEX[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INDEX(1),
	combout => \INDEX~combout\(1));

-- Location: LCCOMB_X35_Y23_N8
\D~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~47_combout\ = (\INDEX~combout\(3)) # (((\INDEX~combout\(2)) # (\INDEX~combout\(1))) # (!\D~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(3),
	datab => \D~21_combout\,
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(1),
	combout => \D~47_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INDEX[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INDEX(0),
	combout => \INDEX~combout\(0));

-- Location: LCCOMB_X35_Y23_N24
\D~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~20_combout\ = (!\INDEX~combout\(1) & !\INDEX~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	combout => \D~20_combout\);

-- Location: LCCOMB_X36_Y23_N16
\D~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~22_combout\ = (!\INDEX~combout\(4) & (\INDEX~combout\(0) & (!\INDEX~combout\(3) & \D~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~20_combout\,
	combout => \D~22_combout\);

-- Location: LCCOMB_X35_Y23_N12
\D~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~23_combout\ = (!\INDEX~combout\(3) & (\D~21_combout\ & (!\INDEX~combout\(2) & \INDEX~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(3),
	datab => \D~21_combout\,
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(1),
	combout => \D~23_combout\);

-- Location: LCCOMB_X35_Y23_N14
\D~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~24_combout\ = (\INDEX~combout\(1) & !\INDEX~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	combout => \D~24_combout\);

-- Location: LCCOMB_X36_Y23_N2
\D~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~25_combout\ = (\D~24_combout\ & (!\INDEX~combout\(3) & (\INDEX~combout\(0) & !\INDEX~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~24_combout\,
	datab => \INDEX~combout\(3),
	datac => \INDEX~combout\(0),
	datad => \INDEX~combout\(4),
	combout => \D~25_combout\);

-- Location: LCCOMB_X35_Y23_N16
\D~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~26_combout\ = (!\INDEX~combout\(1) & \INDEX~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	combout => \D~26_combout\);

-- Location: LCCOMB_X36_Y23_N6
\D~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~48_combout\ = (!\INDEX~combout\(4) & (!\INDEX~combout\(0) & (!\INDEX~combout\(3) & \D~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~26_combout\,
	combout => \D~48_combout\);

-- Location: LCCOMB_X36_Y23_N4
\D~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~27_combout\ = (!\INDEX~combout\(4) & (\INDEX~combout\(0) & (!\INDEX~combout\(3) & \D~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~26_combout\,
	combout => \D~27_combout\);

-- Location: LCCOMB_X35_Y23_N26
\D~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~28_combout\ = (!\INDEX~combout\(3) & (\D~21_combout\ & (\INDEX~combout\(2) & \INDEX~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(3),
	datab => \D~21_combout\,
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(1),
	combout => \D~28_combout\);

-- Location: LCCOMB_X35_Y23_N28
\D~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~29_combout\ = (\INDEX~combout\(1) & \INDEX~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	combout => \D~29_combout\);

-- Location: LCCOMB_X36_Y23_N22
\D~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~30_combout\ = (!\INDEX~combout\(4) & (\INDEX~combout\(0) & (!\INDEX~combout\(3) & \D~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~29_combout\,
	combout => \D~30_combout\);

-- Location: LCCOMB_X35_Y23_N30
\D~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~31_combout\ = (!\INDEX~combout\(0) & (!\INDEX~combout\(4) & (\D~20_combout\ & \INDEX~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(0),
	datab => \INDEX~combout\(4),
	datac => \D~20_combout\,
	datad => \INDEX~combout\(3),
	combout => \D~31_combout\);

-- Location: LCCOMB_X36_Y23_N8
\D~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~32_combout\ = (!\INDEX~combout\(4) & (\INDEX~combout\(0) & (\INDEX~combout\(3) & \D~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~20_combout\,
	combout => \D~32_combout\);

-- Location: LCCOMB_X36_Y23_N10
\D~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~33_combout\ = (\D~24_combout\ & (\INDEX~combout\(3) & (!\INDEX~combout\(0) & !\INDEX~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~24_combout\,
	datab => \INDEX~combout\(3),
	datac => \INDEX~combout\(0),
	datad => \INDEX~combout\(4),
	combout => \D~33_combout\);

-- Location: LCCOMB_X36_Y23_N28
\D~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~34_combout\ = (\D~24_combout\ & (\INDEX~combout\(3) & (\INDEX~combout\(0) & !\INDEX~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~24_combout\,
	datab => \INDEX~combout\(3),
	datac => \INDEX~combout\(0),
	datad => \INDEX~combout\(4),
	combout => \D~34_combout\);

-- Location: LCCOMB_X36_Y23_N14
\D~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~35_combout\ = (!\INDEX~combout\(4) & (!\INDEX~combout\(0) & (\INDEX~combout\(3) & \D~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~26_combout\,
	combout => \D~35_combout\);

-- Location: LCCOMB_X36_Y23_N0
\D~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~36_combout\ = (!\INDEX~combout\(4) & (\INDEX~combout\(0) & (\INDEX~combout\(3) & \D~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~26_combout\,
	combout => \D~36_combout\);

-- Location: LCCOMB_X36_Y23_N18
\D~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~37_combout\ = (!\INDEX~combout\(4) & (!\INDEX~combout\(0) & (\INDEX~combout\(3) & \D~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~29_combout\,
	combout => \D~37_combout\);

-- Location: LCCOMB_X36_Y23_N12
\D~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~38_combout\ = (!\INDEX~combout\(4) & (\INDEX~combout\(0) & (\INDEX~combout\(3) & \D~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~29_combout\,
	combout => \D~38_combout\);

-- Location: LCCOMB_X35_Y24_N16
\D~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~39_combout\ = (\INDEX~combout\(4) & !\INDEX~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INDEX~combout\(4),
	datac => \INDEX~combout\(0),
	combout => \D~39_combout\);

-- Location: LCCOMB_X35_Y23_N10
\D~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~49_combout\ = (\D~39_combout\ & (!\INDEX~combout\(1) & (!\INDEX~combout\(2) & !\INDEX~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~39_combout\,
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(3),
	combout => \D~49_combout\);

-- Location: LCCOMB_X35_Y23_N0
\D~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~40_combout\ = (\INDEX~combout\(0) & (\INDEX~combout\(4) & (\D~20_combout\ & !\INDEX~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(0),
	datab => \INDEX~combout\(4),
	datac => \D~20_combout\,
	datad => \INDEX~combout\(3),
	combout => \D~40_combout\);

-- Location: LCCOMB_X35_Y23_N18
\D~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~41_combout\ = (\D~39_combout\ & (\INDEX~combout\(1) & (!\INDEX~combout\(2) & !\INDEX~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~39_combout\,
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(3),
	combout => \D~41_combout\);

-- Location: LCCOMB_X36_Y23_N30
\D~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~42_combout\ = (\D~24_combout\ & (!\INDEX~combout\(3) & (\INDEX~combout\(0) & \INDEX~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~24_combout\,
	datab => \INDEX~combout\(3),
	datac => \INDEX~combout\(0),
	datad => \INDEX~combout\(4),
	combout => \D~42_combout\);

-- Location: LCCOMB_X35_Y23_N4
\D~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~50_combout\ = (\D~39_combout\ & (!\INDEX~combout\(1) & (\INDEX~combout\(2) & !\INDEX~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~39_combout\,
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(3),
	combout => \D~50_combout\);

-- Location: LCCOMB_X36_Y23_N24
\D~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~43_combout\ = (\INDEX~combout\(4) & (\INDEX~combout\(0) & (!\INDEX~combout\(3) & \D~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~26_combout\,
	combout => \D~43_combout\);

-- Location: LCCOMB_X35_Y23_N20
\D~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~44_combout\ = (\D~39_combout\ & (\INDEX~combout\(1) & (\INDEX~combout\(2) & !\INDEX~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~39_combout\,
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(3),
	combout => \D~44_combout\);

-- Location: LCCOMB_X36_Y23_N26
\D~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~45_combout\ = (\INDEX~combout\(4) & (\INDEX~combout\(0) & (!\INDEX~combout\(3) & \D~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~29_combout\,
	combout => \D~45_combout\);

-- Location: LCCOMB_X35_Y23_N22
\D~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~51_combout\ = (\D~39_combout\ & (!\INDEX~combout\(1) & (!\INDEX~combout\(2) & \INDEX~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~39_combout\,
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(3),
	combout => \D~51_combout\);

-- Location: LCCOMB_X36_Y23_N20
\D~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \D~46_combout\ = (\INDEX~combout\(4) & (\INDEX~combout\(0) & (\INDEX~combout\(3) & \D~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(4),
	datab => \INDEX~combout\(0),
	datac => \INDEX~combout\(3),
	datad => \D~20_combout\,
	combout => \D~46_combout\);

-- Location: LCCOMB_X35_Y23_N6
\ERROR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ERROR~0_combout\ = (\INDEX~combout\(3) & (\INDEX~combout\(4) & ((\INDEX~combout\(1)) # (\INDEX~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~combout\(3),
	datab => \INDEX~combout\(1),
	datac => \INDEX~combout\(2),
	datad => \INDEX~combout\(4),
	combout => \ERROR~0_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_D~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(0));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(1));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(4));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(5));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(7));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(8));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(9));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(10));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(11));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(12));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(13));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(14));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(15));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(16));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(17));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(18));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(19));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(20));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(21));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(22));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(23));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(24));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(25));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ERROR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ERROR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ERROR);
END structure;


