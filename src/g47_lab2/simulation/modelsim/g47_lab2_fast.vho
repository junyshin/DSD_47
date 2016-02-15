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

-- DATE "02/15/2016 11:03:58"

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

ENTITY 	g47_26_5_Encoder IS
    PORT (
	letter : IN std_logic_vector(25 DOWNTO 0);
	INDEX : OUT std_logic_vector(4 DOWNTO 0);
	ERROR : OUT std_logic
	);
END g47_26_5_Encoder;

-- Design Ports Information
-- INDEX[0]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[1]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[2]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[3]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[4]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ERROR	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- letter[21]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[22]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[1]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[25]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[8]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[9]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[5]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[3]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[6]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[2]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[7]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[0]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[11]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[12]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[10]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[16]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[13]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[14]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[17]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[18]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[15]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[23]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[24]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[20]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[19]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g47_26_5_Encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_letter : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_INDEX : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ERROR : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \INDEX~1_combout\ : std_logic;
SIGNAL \Equal19~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \INDEX~13_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \INDEX~25_combout\ : std_logic;
SIGNAL \INDEX~28_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Equal17~1_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \INDEX~2_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal25~0_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \Equal20~1_combout\ : std_logic;
SIGNAL \Equal26~2_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Equal21~1_combout\ : std_logic;
SIGNAL \INDEX~0_combout\ : std_logic;
SIGNAL \INDEX~3_combout\ : std_logic;
SIGNAL \Equal23~3_combout\ : std_logic;
SIGNAL \Equal23~2_combout\ : std_logic;
SIGNAL \INDEX~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \INDEX~6_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \INDEX~7_combout\ : std_logic;
SIGNAL \INDEX~8_combout\ : std_logic;
SIGNAL \INDEX~5_combout\ : std_logic;
SIGNAL \INDEX~9_combout\ : std_logic;
SIGNAL \INDEX~14_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \INDEX~11_combout\ : std_logic;
SIGNAL \INDEX~15_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \INDEX~10_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \INDEX~18_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \INDEX~17_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \INDEX~19_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \INDEX~12_combout\ : std_logic;
SIGNAL \INDEX~16_combout\ : std_logic;
SIGNAL \INDEX~20_combout\ : std_logic;
SIGNAL \INDEX~21_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \INDEX~23_combout\ : std_logic;
SIGNAL \INDEX~24_combout\ : std_logic;
SIGNAL \INDEX~22_combout\ : std_logic;
SIGNAL \INDEX~26_combout\ : std_logic;
SIGNAL \INDEX~27_combout\ : std_logic;
SIGNAL \INDEX~32_combout\ : std_logic;
SIGNAL \INDEX~33_combout\ : std_logic;
SIGNAL \INDEX~31_combout\ : std_logic;
SIGNAL \INDEX~29_combout\ : std_logic;
SIGNAL \INDEX~30_combout\ : std_logic;
SIGNAL \INDEX~34_combout\ : std_logic;
SIGNAL \INDEX~35_combout\ : std_logic;
SIGNAL \Equal26~3_combout\ : std_logic;
SIGNAL \letter~combout\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_letter <= letter;
INDEX <= ww_INDEX;
ERROR <= ww_ERROR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X46_Y20_N2
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\letter~combout\(20) & (!\letter~combout\(19) & (!\letter~combout\(22) & !\letter~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(20),
	datab => \letter~combout\(19),
	datac => \letter~combout\(22),
	datad => \letter~combout\(21),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X47_Y20_N16
\INDEX~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~1_combout\ = (!\Equal18~0_combout\ & (!\Equal20~1_combout\ & \INDEX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datac => \Equal20~1_combout\,
	datad => \INDEX~0_combout\,
	combout => \INDEX~1_combout\);

-- Location: LCCOMB_X46_Y20_N14
\Equal19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal19~1_combout\ = (\Equal19~0_combout\ & (\letter~combout\(19) & (!\letter~combout\(20) & \Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \letter~combout\(19),
	datac => \letter~combout\(20),
	datad => \Equal20~0_combout\,
	combout => \Equal19~1_combout\);

-- Location: LCCOMB_X47_Y21_N22
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\letter~combout\(11) & (\Equal0~5_combout\ & (\letter~combout\(0) & !\letter~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(11),
	datab => \Equal0~5_combout\,
	datac => \letter~combout\(0),
	datad => \letter~combout\(12),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X47_Y20_N6
\INDEX~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~13_combout\ = (\INDEX~11_combout\ & ((\Equal19~1_combout\) # ((\INDEX~12_combout\ & \Equal15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~1_combout\,
	datab => \INDEX~11_combout\,
	datac => \INDEX~12_combout\,
	datad => \Equal15~1_combout\,
	combout => \INDEX~13_combout\);

-- Location: LCCOMB_X47_Y19_N24
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\letter~combout\(3) & (!\letter~combout\(6) & \letter~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(3),
	datac => \letter~combout\(6),
	datad => \letter~combout\(5),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X47_Y19_N6
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\letter~combout\(3) & !\letter~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(3),
	datac => \letter~combout\(6),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X47_Y23_N20
\INDEX~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~25_combout\ = (!\Equal14~0_combout\ & (((!\Equal0~7_combout\) # (!\Equal15~0_combout\)) # (!\letter~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \letter~combout\(15),
	datac => \Equal15~0_combout\,
	datad => \Equal0~7_combout\,
	combout => \INDEX~25_combout\);

-- Location: LCCOMB_X46_Y20_N12
\INDEX~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~28_combout\ = (\Equal23~2_combout\) # ((\Equal13~5_combout\) # ((\Equal25~0_combout\) # (\Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~2_combout\,
	datab => \Equal13~5_combout\,
	datac => \Equal25~0_combout\,
	datad => \Equal12~0_combout\,
	combout => \INDEX~28_combout\);

-- Location: LCCOMB_X47_Y19_N10
\Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal7~0_combout\ & (\Equal3~0_combout\ & (!\letter~combout\(2) & \letter~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \letter~combout\(2),
	datad => \letter~combout\(7),
	combout => \Equal7~1_combout\);

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[3]~I\ : cycloneii_io
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
	padio => ww_letter(3),
	combout => \letter~combout\(3));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[11]~I\ : cycloneii_io
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
	padio => ww_letter(11),
	combout => \letter~combout\(11));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[16]~I\ : cycloneii_io
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
	padio => ww_letter(16),
	combout => \letter~combout\(16));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[10]~I\ : cycloneii_io
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
	padio => ww_letter(10),
	combout => \letter~combout\(10));

-- Location: LCCOMB_X47_Y21_N0
\Equal16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (\Equal10~2_combout\ & (\letter~combout\(16) & !\letter~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~2_combout\,
	datac => \letter~combout\(16),
	datad => \letter~combout\(10),
	combout => \Equal16~0_combout\);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[0]~I\ : cycloneii_io
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
	padio => ww_letter(0),
	combout => \letter~combout\(0));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[12]~I\ : cycloneii_io
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
	padio => ww_letter(12),
	combout => \letter~combout\(12));

-- Location: LCCOMB_X47_Y21_N8
\Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\letter~combout\(11) & (!\letter~combout\(0) & !\letter~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(11),
	datac => \letter~combout\(0),
	datad => \letter~combout\(12),
	combout => \Equal10~0_combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[13]~I\ : cycloneii_io
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
	padio => ww_letter(13),
	combout => \letter~combout\(13));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[14]~I\ : cycloneii_io
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
	padio => ww_letter(14),
	combout => \letter~combout\(14));

-- Location: LCCOMB_X47_Y21_N20
\Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (\Equal13~4_combout\ & (\Equal10~0_combout\ & (!\letter~combout\(13) & !\letter~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~4_combout\,
	datab => \Equal10~0_combout\,
	datac => \letter~combout\(13),
	datad => \letter~combout\(14),
	combout => \Equal15~0_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[2]~I\ : cycloneii_io
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
	padio => ww_letter(2),
	combout => \letter~combout\(2));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[6]~I\ : cycloneii_io
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
	padio => ww_letter(6),
	combout => \letter~combout\(6));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[4]~I\ : cycloneii_io
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
	padio => ww_letter(4),
	combout => \letter~combout\(4));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[5]~I\ : cycloneii_io
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
	padio => ww_letter(5),
	combout => \letter~combout\(5));

-- Location: LCCOMB_X47_Y19_N8
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\letter~combout\(3) & (!\letter~combout\(6) & (!\letter~combout\(4) & !\letter~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(3),
	datab => \letter~combout\(6),
	datac => \letter~combout\(4),
	datad => \letter~combout\(5),
	combout => \Equal7~0_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[7]~I\ : cycloneii_io
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
	padio => ww_letter(7),
	combout => \letter~combout\(7));

-- Location: LCCOMB_X47_Y19_N2
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\letter~combout\(2) & (\Equal7~0_combout\ & !\letter~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter~combout\(2),
	datac => \Equal7~0_combout\,
	datad => \letter~combout\(7),
	combout => \Equal0~2_combout\);

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[15]~I\ : cycloneii_io
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
	padio => ww_letter(15),
	combout => \letter~combout\(15));

-- Location: LCCOMB_X47_Y23_N30
\Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\Equal15~0_combout\ & (\Equal0~2_combout\ & !\letter~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal15~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \letter~combout\(15),
	combout => \Equal1~7_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[1]~I\ : cycloneii_io
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
	padio => ww_letter(1),
	combout => \letter~combout\(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[8]~I\ : cycloneii_io
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
	padio => ww_letter(8),
	combout => \letter~combout\(8));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[9]~I\ : cycloneii_io
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
	padio => ww_letter(9),
	combout => \letter~combout\(9));

-- Location: LCCOMB_X47_Y23_N24
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\letter~combout\(8) & !\letter~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \letter~combout\(8),
	datad => \letter~combout\(9),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X46_Y23_N0
\Equal17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (!\letter~combout\(25) & (\Equal1~7_combout\ & (!\letter~combout\(1) & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(25),
	datab => \Equal1~7_combout\,
	datac => \letter~combout\(1),
	datad => \Equal1~2_combout\,
	combout => \Equal17~0_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[17]~I\ : cycloneii_io
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
	padio => ww_letter(17),
	combout => \letter~combout\(17));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[18]~I\ : cycloneii_io
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
	padio => ww_letter(18),
	combout => \letter~combout\(18));

-- Location: LCCOMB_X46_Y23_N4
\Equal17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal17~1_combout\ = (\Equal1~9_combout\ & (\Equal17~0_combout\ & (\letter~combout\(17) & !\letter~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal17~0_combout\,
	datac => \letter~combout\(17),
	datad => \letter~combout\(18),
	combout => \Equal17~1_combout\);

-- Location: LCCOMB_X47_Y23_N6
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~4_combout\ & (!\letter~combout\(8) & (\Equal0~2_combout\ & !\letter~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \letter~combout\(8),
	datac => \Equal0~2_combout\,
	datad => \letter~combout\(9),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X47_Y23_N16
\Equal15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (\letter~combout\(15) & (\Equal15~0_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter~combout\(15),
	datac => \Equal15~0_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X46_Y20_N10
\INDEX~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~2_combout\ = (\INDEX~1_combout\ & ((\Equal17~1_combout\) # ((!\Equal16~0_combout\ & \Equal15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~1_combout\,
	datab => \Equal16~0_combout\,
	datac => \Equal17~1_combout\,
	datad => \Equal15~1_combout\,
	combout => \INDEX~2_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[24]~I\ : cycloneii_io
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
	padio => ww_letter(24),
	combout => \letter~combout\(24));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[23]~I\ : cycloneii_io
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
	padio => ww_letter(23),
	combout => \letter~combout\(23));

-- Location: LCCOMB_X46_Y23_N20
\Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~5_combout\ & (!\letter~combout\(24) & !\letter~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \letter~combout\(24),
	datad => \letter~combout\(23),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X47_Y23_N2
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\letter~combout\(17) & (!\letter~combout\(15) & !\letter~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(17),
	datab => \letter~combout\(15),
	datad => \letter~combout\(18),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X47_Y23_N4
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal0~2_combout\ & (\Equal15~0_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal15~0_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X46_Y23_N2
\Equal25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal25~0_combout\ = (\letter~combout\(25) & (!\letter~combout\(1) & (\Equal1~9_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(25),
	datab => \letter~combout\(1),
	datac => \Equal1~9_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal25~0_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[19]~I\ : cycloneii_io
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
	padio => ww_letter(19),
	combout => \letter~combout\(19));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[20]~I\ : cycloneii_io
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
	padio => ww_letter(20),
	combout => \letter~combout\(20));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[22]~I\ : cycloneii_io
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
	padio => ww_letter(22),
	combout => \letter~combout\(22));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[21]~I\ : cycloneii_io
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
	padio => ww_letter(21),
	combout => \letter~combout\(21));

-- Location: LCCOMB_X46_Y20_N6
\Equal20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (!\letter~combout\(22) & !\letter~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \letter~combout\(22),
	datad => \letter~combout\(21),
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X46_Y20_N0
\Equal20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal20~1_combout\ = (\Equal19~0_combout\ & (!\letter~combout\(19) & (\letter~combout\(20) & \Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \letter~combout\(19),
	datac => \letter~combout\(20),
	datad => \Equal20~0_combout\,
	combout => \Equal20~1_combout\);

-- Location: LCCOMB_X46_Y23_N24
\Equal26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal26~2_combout\ = (!\letter~combout\(25) & !\letter~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(25),
	datac => \letter~combout\(1),
	combout => \Equal26~2_combout\);

-- Location: LCCOMB_X46_Y23_N18
\Equal19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (\Equal1~4_combout\ & (!\letter~combout\(24) & (\Equal26~2_combout\ & !\letter~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \letter~combout\(24),
	datac => \Equal26~2_combout\,
	datad => \letter~combout\(23),
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X46_Y20_N8
\Equal21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (!\letter~combout\(20) & (\Equal19~0_combout\ & !\letter~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(20),
	datac => \Equal19~0_combout\,
	datad => \letter~combout\(19),
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X46_Y20_N4
\Equal21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal21~1_combout\ = (!\letter~combout\(22) & (\Equal21~0_combout\ & \letter~combout\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter~combout\(22),
	datac => \Equal21~0_combout\,
	datad => \letter~combout\(21),
	combout => \Equal21~1_combout\);

-- Location: LCCOMB_X46_Y20_N28
\INDEX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~0_combout\ = (!\Equal24~0_combout\ & (((\letter~combout\(21)) # (!\Equal21~0_combout\)) # (!\letter~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal24~0_combout\,
	datab => \letter~combout\(22),
	datac => \Equal21~0_combout\,
	datad => \letter~combout\(21),
	combout => \INDEX~0_combout\);

-- Location: LCCOMB_X46_Y20_N16
\INDEX~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~3_combout\ = (\INDEX~0_combout\ & ((\Equal21~1_combout\) # ((\Equal19~1_combout\ & !\Equal20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~1_combout\,
	datab => \Equal20~1_combout\,
	datac => \Equal21~1_combout\,
	datad => \INDEX~0_combout\,
	combout => \INDEX~3_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter[25]~I\ : cycloneii_io
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
	padio => ww_letter(25),
	combout => \letter~combout\(25));

-- Location: LCCOMB_X46_Y23_N10
\Equal23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal23~3_combout\ = (\Equal1~5_combout\ & (!\letter~combout\(1) & !\letter~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \letter~combout\(1),
	datac => \letter~combout\(25),
	combout => \Equal23~3_combout\);

-- Location: LCCOMB_X46_Y23_N12
\Equal23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal23~2_combout\ = (\Equal1~4_combout\ & (!\letter~combout\(24) & (\letter~combout\(23) & \Equal23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \letter~combout\(24),
	datac => \letter~combout\(23),
	datad => \Equal23~3_combout\,
	combout => \Equal23~2_combout\);

-- Location: LCCOMB_X46_Y20_N26
\INDEX~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~4_combout\ = (\Equal25~0_combout\) # ((\INDEX~3_combout\) # ((!\Equal24~0_combout\ & \Equal23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal24~0_combout\,
	datab => \Equal25~0_combout\,
	datac => \INDEX~3_combout\,
	datad => \Equal23~2_combout\,
	combout => \INDEX~4_combout\);

-- Location: LCCOMB_X46_Y23_N14
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\letter~combout\(25) & (!\letter~combout\(1) & !\letter~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(25),
	datac => \letter~combout\(1),
	datad => \letter~combout\(18),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X46_Y23_N30
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\letter~combout\(24) & !\letter~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter~combout\(24),
	datad => \letter~combout\(23),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X46_Y23_N16
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal1~5_combout\ & (\Equal0~3_combout\ & (!\letter~combout\(17) & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal0~3_combout\,
	datac => \letter~combout\(17),
	datad => \Equal1~6_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X47_Y23_N26
\Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\Equal1~2_combout\ & (\Equal0~4_combout\ & (\Equal0~2_combout\ & !\letter~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~2_combout\,
	datad => \letter~combout\(15),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X47_Y21_N10
\Equal13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (!\letter~combout\(16) & !\letter~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \letter~combout\(16),
	datad => \letter~combout\(10),
	combout => \Equal13~4_combout\);

-- Location: LCCOMB_X47_Y21_N14
\Equal13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = (!\letter~combout\(11) & (!\letter~combout\(12) & (!\letter~combout\(0) & \Equal13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(11),
	datab => \letter~combout\(12),
	datac => \letter~combout\(0),
	datad => \Equal13~4_combout\,
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X47_Y21_N28
\Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!\letter~combout\(13) & (\Equal10~1_combout\ & (\Equal13~6_combout\ & \letter~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(13),
	datab => \Equal10~1_combout\,
	datac => \Equal13~6_combout\,
	datad => \letter~combout\(14),
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X47_Y21_N26
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal13~4_combout\ & (\Equal10~1_combout\ & (!\letter~combout\(13) & !\letter~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~4_combout\,
	datab => \Equal10~1_combout\,
	datac => \letter~combout\(13),
	datad => \letter~combout\(14),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X47_Y21_N12
\Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!\letter~combout\(11) & (\Equal0~5_combout\ & (!\letter~combout\(0) & \letter~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(11),
	datab => \Equal0~5_combout\,
	datac => \letter~combout\(0),
	datad => \letter~combout\(12),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X47_Y19_N30
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\letter~combout\(3) & (!\letter~combout\(6) & (\letter~combout\(4) & !\letter~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(3),
	datab => \letter~combout\(6),
	datac => \letter~combout\(4),
	datad => \letter~combout\(5),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X47_Y23_N22
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\Equal0~4_combout\ & (\Equal0~2_combout\ & (\Equal15~0_combout\ & !\letter~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal15~0_combout\,
	datad => \letter~combout\(15),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X47_Y23_N0
\Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal8~0_combout\ & (\letter~combout\(8) & !\letter~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \letter~combout\(8),
	datad => \letter~combout\(9),
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X47_Y19_N0
\INDEX~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~6_combout\ = (!\Equal12~0_combout\ & (!\Equal8~1_combout\ & ((!\Equal4~0_combout\) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal8~1_combout\,
	combout => \INDEX~6_combout\);

-- Location: LCCOMB_X47_Y23_N12
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\Equal1~2_combout\ & (\Equal0~4_combout\ & (\Equal15~0_combout\ & !\letter~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal15~0_combout\,
	datad => \letter~combout\(15),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X47_Y19_N22
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Equal7~0_combout\ & (\Equal3~0_combout\ & (\letter~combout\(2) & !\letter~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \letter~combout\(2),
	datad => \letter~combout\(7),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X47_Y19_N26
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\Equal5~0_combout\ & (!\letter~combout\(4) & !\letter~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datac => \letter~combout\(4),
	datad => \letter~combout\(5),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X47_Y19_N28
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\letter~combout\(3) & (\Equal6~0_combout\ & \letter~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(3),
	datab => \Equal6~0_combout\,
	datac => \letter~combout\(6),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X47_Y21_N18
\INDEX~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~7_combout\ = (\Equal10~3_combout\) # ((\Equal2~0_combout\) # (\Equal6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~3_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal6~1_combout\,
	combout => \INDEX~7_combout\);

-- Location: LCCOMB_X46_Y20_N20
\INDEX~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~8_combout\ = \Equal14~0_combout\ $ (((\Equal0~6_combout\) # ((\INDEX~7_combout\) # (!\INDEX~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal14~0_combout\,
	datac => \INDEX~6_combout\,
	datad => \INDEX~7_combout\,
	combout => \INDEX~8_combout\);

-- Location: LCCOMB_X47_Y20_N2
\INDEX~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~5_combout\ = (!\Equal18~0_combout\ & (\INDEX~0_combout\ & (!\Equal20~1_combout\ & !\Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datab => \INDEX~0_combout\,
	datac => \Equal20~1_combout\,
	datad => \Equal16~0_combout\,
	combout => \INDEX~5_combout\);

-- Location: LCCOMB_X46_Y20_N22
\INDEX~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~9_combout\ = (\INDEX~2_combout\) # ((\INDEX~4_combout\) # ((!\INDEX~8_combout\ & \INDEX~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~2_combout\,
	datab => \INDEX~4_combout\,
	datac => \INDEX~8_combout\,
	datad => \INDEX~5_combout\,
	combout => \INDEX~9_combout\);

-- Location: LCCOMB_X46_Y20_N18
\INDEX~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~14_combout\ = (!\Equal23~2_combout\ & (((\letter~combout\(21)) # (!\Equal21~0_combout\)) # (!\letter~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~2_combout\,
	datab => \letter~combout\(22),
	datac => \Equal21~0_combout\,
	datad => \letter~combout\(21),
	combout => \INDEX~14_combout\);

-- Location: LCCOMB_X46_Y23_N26
\Equal18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (\Equal1~9_combout\ & (\Equal17~0_combout\ & (!\letter~combout\(17) & \letter~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal17~0_combout\,
	datac => \letter~combout\(17),
	datad => \letter~combout\(18),
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X46_Y20_N24
\INDEX~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~11_combout\ = (!\Equal20~1_combout\ & (((\letter~combout\(22)) # (!\letter~combout\(21))) # (!\Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~0_combout\,
	datab => \Equal20~1_combout\,
	datac => \letter~combout\(22),
	datad => \letter~combout\(21),
	combout => \INDEX~11_combout\);

-- Location: LCCOMB_X47_Y20_N24
\INDEX~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~15_combout\ = (\INDEX~13_combout\) # (((\Equal18~0_combout\ & \INDEX~11_combout\)) # (!\INDEX~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~13_combout\,
	datab => \INDEX~14_combout\,
	datac => \Equal18~0_combout\,
	datad => \INDEX~11_combout\,
	combout => \INDEX~15_combout\);

-- Location: LCCOMB_X46_Y23_N28
\Equal24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (\Equal1~4_combout\ & (\letter~combout\(24) & (!\letter~combout\(23) & \Equal23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \letter~combout\(24),
	datac => \letter~combout\(23),
	datad => \Equal23~3_combout\,
	combout => \Equal24~0_combout\);

-- Location: LCCOMB_X47_Y20_N28
\INDEX~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~10_combout\ = (!\Equal24~0_combout\ & !\Equal25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal24~0_combout\,
	datad => \Equal25~0_combout\,
	combout => \INDEX~10_combout\);

-- Location: LCCOMB_X47_Y23_N10
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\Equal8~0_combout\ & (!\letter~combout\(8) & \letter~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \letter~combout\(8),
	datad => \letter~combout\(9),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X47_Y19_N12
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\letter~combout\(2) & (\Equal3~0_combout\ & !\letter~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter~combout\(2),
	datac => \Equal3~0_combout\,
	datad => \letter~combout\(7),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X47_Y19_N18
\INDEX~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~18_combout\ = (\Equal9~0_combout\) # ((\Equal5~1_combout\ & (!\letter~combout\(4) & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal9~0_combout\,
	datac => \letter~combout\(4),
	datad => \Equal5~0_combout\,
	combout => \INDEX~18_combout\);

-- Location: LCCOMB_X46_Y23_N22
\Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!\letter~combout\(25) & \letter~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(25),
	datac => \letter~combout\(1),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X46_Y23_N8
\INDEX~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~17_combout\ = (\Equal0~6_combout\) # ((\Equal1~8_combout\ & (\Equal1~9_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal1~8_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~4_combout\,
	combout => \INDEX~17_combout\);

-- Location: LCCOMB_X47_Y21_N16
\Equal13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = (\letter~combout\(13) & (\Equal10~1_combout\ & (\Equal13~6_combout\ & !\letter~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(13),
	datab => \Equal10~1_combout\,
	datac => \Equal13~6_combout\,
	datad => \letter~combout\(14),
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X47_Y19_N20
\INDEX~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~19_combout\ = \Equal13~5_combout\ $ ((((\INDEX~18_combout\) # (\INDEX~17_combout\)) # (!\INDEX~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~6_combout\,
	datab => \INDEX~18_combout\,
	datac => \INDEX~17_combout\,
	datad => \Equal13~5_combout\,
	combout => \INDEX~19_combout\);

-- Location: LCCOMB_X47_Y21_N6
\Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (!\letter~combout\(13) & (\Equal10~0_combout\ & (\Equal10~1_combout\ & !\letter~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(13),
	datab => \Equal10~0_combout\,
	datac => \Equal10~1_combout\,
	datad => \letter~combout\(14),
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X47_Y21_N30
\INDEX~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~12_combout\ = (!\Equal17~1_combout\ & ((\letter~combout\(10)) # ((!\Equal10~2_combout\) # (!\letter~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal17~1_combout\,
	datab => \letter~combout\(10),
	datac => \letter~combout\(16),
	datad => \Equal10~2_combout\,
	combout => \INDEX~12_combout\);

-- Location: LCCOMB_X47_Y20_N10
\INDEX~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~16_combout\ = (\INDEX~11_combout\ & \INDEX~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INDEX~11_combout\,
	datac => \INDEX~12_combout\,
	combout => \INDEX~16_combout\);

-- Location: LCCOMB_X47_Y20_N12
\INDEX~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~20_combout\ = (\INDEX~10_combout\ & ((\INDEX~15_combout\) # ((!\INDEX~19_combout\ & \INDEX~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~15_combout\,
	datab => \INDEX~10_combout\,
	datac => \INDEX~19_combout\,
	datad => \INDEX~16_combout\,
	combout => \INDEX~20_combout\);

-- Location: LCCOMB_X47_Y20_N22
\INDEX~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~21_combout\ = (!\INDEX~14_combout\) # (!\INDEX~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INDEX~11_combout\,
	datad => \INDEX~14_combout\,
	combout => \INDEX~21_combout\);

-- Location: LCCOMB_X47_Y21_N2
\Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\letter~combout\(11) & (\Equal0~5_combout\ & (!\letter~combout\(0) & !\letter~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(11),
	datab => \Equal0~5_combout\,
	datac => \letter~combout\(0),
	datad => \letter~combout\(12),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X47_Y21_N24
\Equal10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (\Equal10~2_combout\ & (!\letter~combout\(16) & \letter~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~2_combout\,
	datac => \letter~combout\(16),
	datad => \letter~combout\(10),
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X47_Y21_N4
\INDEX~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~23_combout\ = (!\Equal8~1_combout\ & (!\Equal11~0_combout\ & (!\Equal10~3_combout\ & !\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal11~0_combout\,
	datac => \Equal10~3_combout\,
	datad => \Equal9~0_combout\,
	combout => \INDEX~23_combout\);

-- Location: LCCOMB_X47_Y19_N16
\INDEX~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~24_combout\ = (\INDEX~17_combout\) # ((\Equal2~0_combout\) # ((\Equal3~1_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal6~0_combout\,
	datac => \INDEX~17_combout\,
	datad => \Equal2~0_combout\,
	combout => \INDEX~24_combout\);

-- Location: LCCOMB_X47_Y20_N0
\INDEX~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~22_combout\ = (!\Equal19~1_combout\ & \INDEX~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~1_combout\,
	datac => \INDEX~12_combout\,
	combout => \INDEX~22_combout\);

-- Location: LCCOMB_X47_Y20_N26
\INDEX~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~26_combout\ = (\INDEX~22_combout\ & (((\INDEX~23_combout\ & !\INDEX~24_combout\)) # (!\INDEX~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~25_combout\,
	datab => \INDEX~23_combout\,
	datac => \INDEX~24_combout\,
	datad => \INDEX~22_combout\,
	combout => \INDEX~26_combout\);

-- Location: LCCOMB_X47_Y20_N20
\INDEX~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~27_combout\ = (\INDEX~10_combout\ & ((\INDEX~21_combout\) # ((!\Equal18~0_combout\ & \INDEX~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~21_combout\,
	datab => \INDEX~10_combout\,
	datac => \Equal18~0_combout\,
	datad => \INDEX~26_combout\,
	combout => \INDEX~27_combout\);

-- Location: LCCOMB_X47_Y19_N4
\INDEX~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~32_combout\ = (\Equal5~0_combout\ & ((\Equal4~0_combout\) # ((\Equal5~1_combout\ & !\letter~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal4~0_combout\,
	datac => \letter~combout\(4),
	datad => \Equal5~0_combout\,
	combout => \INDEX~32_combout\);

-- Location: LCCOMB_X47_Y19_N14
\INDEX~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~33_combout\ = (\Equal7~1_combout\) # ((\INDEX~32_combout\) # ((\INDEX~24_combout\) # (\Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \INDEX~32_combout\,
	datac => \INDEX~24_combout\,
	datad => \Equal6~1_combout\,
	combout => \INDEX~33_combout\);

-- Location: LCCOMB_X47_Y20_N8
\INDEX~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~31_combout\ = (\Equal19~1_combout\) # (((\Equal18~0_combout\) # (!\INDEX~16_combout\)) # (!\INDEX~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~1_combout\,
	datab => \INDEX~14_combout\,
	datac => \Equal18~0_combout\,
	datad => \INDEX~16_combout\,
	combout => \INDEX~31_combout\);

-- Location: LCCOMB_X46_Y20_N30
\INDEX~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~29_combout\ = (\INDEX~28_combout\) # ((\Equal14~0_combout\) # ((\Equal21~1_combout\) # (\Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~28_combout\,
	datab => \Equal14~0_combout\,
	datac => \Equal21~1_combout\,
	datad => \Equal15~1_combout\,
	combout => \INDEX~29_combout\);

-- Location: LCCOMB_X47_Y20_N14
\INDEX~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~30_combout\ = (((\INDEX~29_combout\) # (!\INDEX~23_combout\)) # (!\INDEX~22_combout\)) # (!\INDEX~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~1_combout\,
	datab => \INDEX~22_combout\,
	datac => \INDEX~29_combout\,
	datad => \INDEX~23_combout\,
	combout => \INDEX~30_combout\);

-- Location: LCCOMB_X47_Y20_N18
\INDEX~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~34_combout\ = (\INDEX~30_combout\ & (((\Equal25~0_combout\) # (!\INDEX~31_combout\)))) # (!\INDEX~30_combout\ & (!\INDEX~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~33_combout\,
	datab => \INDEX~31_combout\,
	datac => \INDEX~30_combout\,
	datad => \Equal25~0_combout\,
	combout => \INDEX~34_combout\);

-- Location: LCCOMB_X47_Y20_N4
\INDEX~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \INDEX~35_combout\ = (\INDEX~30_combout\ & (((\INDEX~31_combout\) # (!\INDEX~10_combout\)))) # (!\INDEX~30_combout\ & (!\INDEX~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INDEX~33_combout\,
	datab => \INDEX~30_combout\,
	datac => \INDEX~31_combout\,
	datad => \INDEX~10_combout\,
	combout => \INDEX~35_combout\);

-- Location: LCCOMB_X46_Y23_N6
\Equal26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal26~3_combout\ = (!\letter~combout\(25) & (!\letter~combout\(1) & (\Equal1~9_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(25),
	datab => \letter~combout\(1),
	datac => \Equal1~9_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal26~3_combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INDEX~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(0));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INDEX~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(1));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INDEX~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(2));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INDEX~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(3));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \INDEX~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(4));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Equal26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ERROR);
END structure;


