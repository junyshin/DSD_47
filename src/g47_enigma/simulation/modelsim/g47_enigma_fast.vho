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

-- DATE "03/09/2016 18:09:17"

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

ENTITY 	g47_7_segmentdecoder IS
    PORT (
	code : IN std_logic_vector(4 DOWNTO 0);
	segments : OUT std_logic_vector(6 DOWNTO 0)
	);
END g47_7_segmentdecoder;

-- Design Ports Information
-- segments[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- code[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- code[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- code[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- code[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g47_7_segmentdecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_code : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \code~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;

BEGIN

ww_code <= code;
segments <= ww_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[0]~I\ : cycloneii_io
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
	padio => ww_code(0),
	combout => \code~combout\(0));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[3]~I\ : cycloneii_io
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
	padio => ww_code(3),
	combout => \code~combout\(3));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[4]~I\ : cycloneii_io
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
	padio => ww_code(4),
	combout => \code~combout\(4));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[1]~I\ : cycloneii_io
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
	padio => ww_code(1),
	combout => \code~combout\(1));

-- Location: LCCOMB_X25_Y12_N4
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\code~combout\(0) & (\code~combout\(1) $ (((\code~combout\(3) & !\code~combout\(4)))))) # (!\code~combout\(0) & ((\code~combout\(3)) # ((\code~combout\(4) & !\code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(3),
	datac => \code~combout\(4),
	datad => \code~combout\(1),
	combout => \Mux6~0_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\code[2]~I\ : cycloneii_io
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
	padio => ww_code(2),
	combout => \code~combout\(2));

-- Location: LCCOMB_X25_Y12_N6
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\code~combout\(0) & ((\Mux6~0_combout\) # (\code~combout\(4) $ (!\code~combout\(2))))) # (!\code~combout\(0) & ((\code~combout\(2) & ((\code~combout\(4)))) # (!\code~combout\(2) & (\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \Mux6~0_combout\,
	datac => \code~combout\(4),
	datad => \code~combout\(2),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X25_Y12_N8
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\code~combout\(1) & (((\code~combout\(3))) # (!\code~combout\(0)))) # (!\code~combout\(1) & (!\code~combout\(4) & (\code~combout\(0) $ (\code~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(3),
	datac => \code~combout\(4),
	datad => \code~combout\(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y12_N26
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\code~combout\(4)) # (!\code~combout\(2))) # (!\code~combout\(3)))) # (!\Mux5~0_combout\ & (\code~combout\(2) $ (((!\code~combout\(3) & \code~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \code~combout\(3),
	datac => \code~combout\(4),
	datad => \code~combout\(2),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X25_Y12_N24
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\code~combout\(4) & (\code~combout\(0) & ((!\code~combout\(2))))) # (!\code~combout\(4) & ((\code~combout\(1) & (!\code~combout\(0) & !\code~combout\(2))) # (!\code~combout\(1) & ((\code~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \code~combout\(4),
	datad => \code~combout\(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y12_N18
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\code~combout\(0) & (!\code~combout\(1) & (!\code~combout\(4)))) # (!\code~combout\(0) & ((\code~combout\(4) & (!\code~combout\(1) & !\code~combout\(2))) # (!\code~combout\(4) & ((\code~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \code~combout\(4),
	datad => \code~combout\(2),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X25_Y12_N28
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\code~combout\(3) & ((!\Mux4~1_combout\))) # (!\code~combout\(3) & (\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \code~combout\(3),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X25_Y12_N22
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\code~combout\(1) & (!\code~combout\(4) & (\code~combout\(0) $ (\code~combout\(2))))) # (!\code~combout\(1) & (!\code~combout\(2) & ((\code~combout\(0)) # (\code~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \code~combout\(4),
	datad => \code~combout\(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X25_Y12_N0
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\code~combout\(2) & (!\code~combout\(0))) # (!\code~combout\(2) & ((\code~combout\(1)) # (\code~combout\(0) $ (\code~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \code~combout\(4),
	datad => \code~combout\(2),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X25_Y12_N2
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\code~combout\(3) & (\Mux3~0_combout\)) # (!\code~combout\(3) & ((\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \code~combout\(3),
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X25_Y12_N12
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\code~combout\(0) & ((\code~combout\(1) & (\code~combout\(3))) # (!\code~combout\(1) & ((\code~combout\(2)))))) # (!\code~combout\(0) & ((\code~combout\(3)) # ((\code~combout\(1) & !\code~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \code~combout\(3),
	datad => \code~combout\(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X26_Y11_N0
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & \code~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datad => \code~combout\(4),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X25_Y12_N20
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\code~combout\(1) & (\code~combout\(0) $ (((\code~combout\(3)) # (\code~combout\(2)))))) # (!\code~combout\(1) & (\code~combout\(3) $ (((!\code~combout\(0) & !\code~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \code~combout\(3),
	datad => \code~combout\(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X25_Y12_N14
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\code~combout\(4) & ((\code~combout\(0) & ((\code~combout\(3)))) # (!\code~combout\(0) & (\Mux1~0_combout\)))) # (!\code~combout\(4) & (\Mux1~0_combout\ & (\code~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \code~combout\(4),
	datac => \code~combout\(0),
	datad => \code~combout\(3),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X25_Y12_N16
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\code~combout\(4) & (((!\code~combout\(1) & !\code~combout\(2))))) # (!\code~combout\(4) & ((\code~combout\(0) & ((\code~combout\(2)))) # (!\code~combout\(0) & (\code~combout\(1) & !\code~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \code~combout\(4),
	datad => \code~combout\(2),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X25_Y12_N30
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\code~combout\(0) & (!\code~combout\(1) & (\code~combout\(4)))) # (!\code~combout\(0) & ((\code~combout\(4) & ((\code~combout\(2)))) # (!\code~combout\(4) & (\code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \code~combout\(0),
	datab => \code~combout\(1),
	datac => \code~combout\(4),
	datad => \code~combout\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X25_Y12_N10
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\code~combout\(3) & (!\Mux0~1_combout\)) # (!\code~combout\(3) & ((\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux0~0_combout\,
	datac => \code~combout\(3),
	combout => \Mux0~2_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[0]~I\ : cycloneii_io
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
	datain => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[1]~I\ : cycloneii_io
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
	datain => \Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[2]~I\ : cycloneii_io
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
	datain => \Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[4]~I\ : cycloneii_io
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
	datain => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[5]~I\ : cycloneii_io
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
	datain => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[6]~I\ : cycloneii_io
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
	datain => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(6));
END structure;


