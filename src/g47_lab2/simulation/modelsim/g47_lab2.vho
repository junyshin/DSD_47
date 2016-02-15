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

-- DATE "02/15/2016 11:36:11"

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
-- INDEX[0]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[2]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INDEX[4]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ERROR	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- letter[25]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[24]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[22]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[21]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[18]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[20]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[19]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[17]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[15]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[16]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[23]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[12]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[13]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[11]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[9]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[7]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[8]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[10]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[6]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[0]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[5]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[3]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter[14]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \tmp~27_combout\ : std_logic;
SIGNAL \tmp~43_combout\ : std_logic;
SIGNAL \tmp~50_combout\ : std_logic;
SIGNAL \tmp~53_combout\ : std_logic;
SIGNAL \tmp~9_combout\ : std_logic;
SIGNAL \tmp~58_combout\ : std_logic;
SIGNAL \tmp~3_combout\ : std_logic;
SIGNAL \tmp~6_combout\ : std_logic;
SIGNAL \tmp~26_combout\ : std_logic;
SIGNAL \tmp~28_combout\ : std_logic;
SIGNAL \tmp~23_combout\ : std_logic;
SIGNAL \tmp~24_combout\ : std_logic;
SIGNAL \tmp~25_combout\ : std_logic;
SIGNAL \tmp~29_combout\ : std_logic;
SIGNAL \tmp~39_combout\ : std_logic;
SIGNAL \tmp~30_combout\ : std_logic;
SIGNAL \tmp~31_combout\ : std_logic;
SIGNAL \tmp~32_combout\ : std_logic;
SIGNAL \tmp~34_combout\ : std_logic;
SIGNAL \tmp~35_combout\ : std_logic;
SIGNAL \tmp~36_combout\ : std_logic;
SIGNAL \tmp~37_combout\ : std_logic;
SIGNAL \tmp~38_combout\ : std_logic;
SIGNAL \tmp~40_combout\ : std_logic;
SIGNAL \tmp~42_combout\ : std_logic;
SIGNAL \tmp~44_combout\ : std_logic;
SIGNAL \tmp~45_combout\ : std_logic;
SIGNAL \tmp~46_combout\ : std_logic;
SIGNAL \tmp~41_combout\ : std_logic;
SIGNAL \tmp~47_combout\ : std_logic;
SIGNAL \tmp~48_combout\ : std_logic;
SIGNAL \tmp~33_combout\ : std_logic;
SIGNAL \tmp~54_combout\ : std_logic;
SIGNAL \tmp~52_combout\ : std_logic;
SIGNAL \tmp~49_combout\ : std_logic;
SIGNAL \tmp~51_combout\ : std_logic;
SIGNAL \tmp~55_combout\ : std_logic;
SIGNAL \tmp~56_combout\ : std_logic;
SIGNAL \tmp~57_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \letter~combout\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_letter <= letter;
INDEX <= ww_INDEX;
ERROR <= ww_ERROR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X9_Y8_N6
\tmp~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~27_combout\ = (\letter~combout\(14)) # ((\letter~combout\(20)) # ((\letter~combout\(16)) # (\letter~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(14),
	datab => \letter~combout\(20),
	datac => \letter~combout\(16),
	datad => \letter~combout\(18),
	combout => \tmp~27_combout\);

-- Location: LCCOMB_X19_Y20_N28
\tmp~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~43_combout\ = (!\letter~combout\(9) & (!\letter~combout\(10) & (!\letter~combout\(8) & !\letter~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(9),
	datab => \letter~combout\(10),
	datac => \letter~combout\(8),
	datad => \letter~combout\(11),
	combout => \tmp~43_combout\);

-- Location: LCCOMB_X9_Y8_N12
\tmp~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~50_combout\ = (!\letter~combout\(18) & (!\letter~combout\(20) & (!\letter~combout\(22) & !\letter~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(18),
	datab => \letter~combout\(20),
	datac => \letter~combout\(22),
	datad => \letter~combout\(23),
	combout => \tmp~50_combout\);

-- Location: LCCOMB_X19_Y20_N10
\tmp~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~53_combout\ = (\letter~combout\(14)) # ((\letter~combout\(10)) # ((\letter~combout\(15)) # (\letter~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(14),
	datab => \letter~combout\(10),
	datac => \letter~combout\(15),
	datad => \letter~combout\(11),
	combout => \tmp~53_combout\);

-- Location: LCCOMB_X49_Y24_N2
\tmp~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~9_combout\ = (\letter~combout\(1)) # (!\letter~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(1),
	datac => \letter~combout\(0),
	combout => \tmp~9_combout\);

-- Location: LCCOMB_X19_Y20_N6
\tmp~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~58_combout\ = (!\letter~combout\(10) & ((\letter~combout\(9)) # ((!\letter~combout\(8) & \tmp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(9),
	datab => \letter~combout\(10),
	datac => \letter~combout\(8),
	datad => \tmp~3_combout\,
	combout => \tmp~58_combout\);

-- Location: LCCOMB_X49_Y24_N12
\tmp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~3_combout\ = (\letter~combout\(7)) # ((!\letter~combout\(6) & ((\tmp~6_combout\) # (\letter~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~6_combout\,
	datab => \letter~combout\(6),
	datac => \letter~combout\(5),
	datad => \letter~combout\(7),
	combout => \tmp~3_combout\);

-- Location: LCCOMB_X49_Y24_N6
\tmp~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~6_combout\ = (!\letter~combout\(4) & ((\letter~combout\(3)) # ((!\letter~combout\(2) & \tmp~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(4),
	datab => \letter~combout\(2),
	datac => \tmp~9_combout\,
	datad => \letter~combout\(3),
	combout => \tmp~6_combout\);

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y20_N16
\tmp~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~26_combout\ = (\letter~combout\(13)) # ((!\letter~combout\(12) & ((\tmp~58_combout\) # (\letter~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~58_combout\,
	datab => \letter~combout\(12),
	datac => \letter~combout\(13),
	datad => \letter~combout\(11),
	combout => \tmp~26_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y8_N24
\tmp~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~28_combout\ = (\letter~combout\(23)) # ((!\tmp~27_combout\ & (\tmp~26_combout\ & !\letter~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~27_combout\,
	datab => \tmp~26_combout\,
	datac => \letter~combout\(22),
	datad => \letter~combout\(23),
	combout => \tmp~28_combout\);

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y8_N8
\tmp~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~23_combout\ = (\letter~combout\(17)) # ((!\letter~combout\(16) & \letter~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(17),
	datac => \letter~combout\(16),
	datad => \letter~combout\(15),
	combout => \tmp~23_combout\);

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y8_N2
\tmp~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~24_combout\ = (!\letter~combout\(20) & ((\letter~combout\(19)) # ((!\letter~combout\(18) & \tmp~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(18),
	datab => \letter~combout\(19),
	datac => \tmp~23_combout\,
	datad => \letter~combout\(20),
	combout => \tmp~24_combout\);

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y8_N20
\tmp~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~25_combout\ = (!\letter~combout\(22) & (!\letter~combout\(24) & ((\letter~combout\(21)) # (\tmp~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(21),
	datab => \tmp~24_combout\,
	datac => \letter~combout\(22),
	datad => \letter~combout\(24),
	combout => \tmp~25_combout\);

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y8_N26
\tmp~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~29_combout\ = (\tmp~25_combout\) # ((\letter~combout\(25)) # ((\tmp~28_combout\ & !\letter~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~28_combout\,
	datab => \tmp~25_combout\,
	datac => \letter~combout\(25),
	datad => \letter~combout\(24),
	combout => \tmp~29_combout\);

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y8_N18
\tmp~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~39_combout\ = (!\letter~combout\(17) & (!\letter~combout\(20) & (!\letter~combout\(16) & !\letter~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(17),
	datab => \letter~combout\(20),
	datac => \letter~combout\(16),
	datad => \letter~combout\(21),
	combout => \tmp~39_combout\);

-- Location: LCCOMB_X9_Y8_N28
\tmp~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~30_combout\ = (!\letter~combout\(25) & !\letter~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \letter~combout\(25),
	datad => \letter~combout\(24),
	combout => \tmp~30_combout\);

-- Location: LCCOMB_X9_Y8_N30
\tmp~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~31_combout\ = (!\letter~combout\(20) & (!\letter~combout\(21) & ((\letter~combout\(18)) # (\letter~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(18),
	datab => \letter~combout\(20),
	datac => \letter~combout\(19),
	datad => \letter~combout\(21),
	combout => \tmp~31_combout\);

-- Location: LCCOMB_X9_Y8_N0
\tmp~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~32_combout\ = (\tmp~31_combout\) # ((\letter~combout\(22)) # (\letter~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmp~31_combout\,
	datac => \letter~combout\(22),
	datad => \letter~combout\(23),
	combout => \tmp~32_combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y24_N0
\tmp~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~34_combout\ = (\letter~combout\(2)) # ((\letter~combout\(3)) # ((!\letter~combout\(1) & !\letter~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(1),
	datab => \letter~combout\(2),
	datac => \letter~combout\(0),
	datad => \letter~combout\(3),
	combout => \tmp~34_combout\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y24_N18
\tmp~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~35_combout\ = (\tmp~33_combout\ & (\tmp~34_combout\ & (!\letter~combout\(5) & !\letter~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~33_combout\,
	datab => \tmp~34_combout\,
	datac => \letter~combout\(5),
	datad => \letter~combout\(4),
	combout => \tmp~35_combout\);

-- Location: LCCOMB_X49_Y24_N4
\tmp~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~36_combout\ = (\tmp~35_combout\) # ((\tmp~33_combout\ & ((\letter~combout\(7)) # (\letter~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~33_combout\,
	datab => \letter~combout\(7),
	datac => \letter~combout\(6),
	datad => \tmp~35_combout\,
	combout => \tmp~36_combout\);

-- Location: LCCOMB_X19_Y20_N12
\tmp~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~37_combout\ = (!\letter~combout\(12) & (!\letter~combout\(13) & ((\letter~combout\(10)) # (\letter~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(10),
	datab => \letter~combout\(12),
	datac => \letter~combout\(13),
	datad => \letter~combout\(11),
	combout => \tmp~37_combout\);

-- Location: LCCOMB_X19_Y20_N30
\tmp~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~38_combout\ = (\letter~combout\(14)) # ((\letter~combout\(15)) # ((\tmp~36_combout\) # (\tmp~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(14),
	datab => \letter~combout\(15),
	datac => \tmp~36_combout\,
	datad => \tmp~37_combout\,
	combout => \tmp~38_combout\);

-- Location: LCCOMB_X19_Y20_N0
\tmp~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~40_combout\ = (\tmp~30_combout\ & ((\tmp~32_combout\) # ((\tmp~39_combout\ & \tmp~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~39_combout\,
	datab => \tmp~30_combout\,
	datac => \tmp~32_combout\,
	datad => \tmp~38_combout\,
	combout => \tmp~40_combout\);

-- Location: LCCOMB_X19_Y20_N26
\tmp~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~42_combout\ = (\letter~combout\(14)) # ((\letter~combout\(15)) # ((\letter~combout\(13)) # (\letter~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(14),
	datab => \letter~combout\(15),
	datac => \letter~combout\(13),
	datad => \letter~combout\(12),
	combout => \tmp~42_combout\);

-- Location: LCCOMB_X49_Y24_N22
\tmp~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~44_combout\ = (!\letter~combout\(1) & (!\letter~combout\(2) & (!\letter~combout\(0) & !\letter~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(1),
	datab => \letter~combout\(2),
	datac => \letter~combout\(0),
	datad => \letter~combout\(3),
	combout => \tmp~44_combout\);

-- Location: LCCOMB_X49_Y24_N24
\tmp~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~45_combout\ = (!\letter~combout\(5) & (!\letter~combout\(6) & (!\letter~combout\(7) & !\letter~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(5),
	datab => \letter~combout\(6),
	datac => \letter~combout\(7),
	datad => \letter~combout\(4),
	combout => \tmp~45_combout\);

-- Location: LCCOMB_X19_Y20_N14
\tmp~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~46_combout\ = (\tmp~42_combout\) # ((\tmp~43_combout\ & ((\tmp~44_combout\) # (!\tmp~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~43_combout\,
	datab => \tmp~42_combout\,
	datac => \tmp~44_combout\,
	datad => \tmp~45_combout\,
	combout => \tmp~46_combout\);

-- Location: LCCOMB_X9_Y8_N4
\tmp~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~41_combout\ = (\letter~combout\(21)) # ((\letter~combout\(20)) # ((\letter~combout\(22)) # (\letter~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(21),
	datab => \letter~combout\(20),
	datac => \letter~combout\(22),
	datad => \letter~combout\(23),
	combout => \tmp~41_combout\);

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y8_N14
\tmp~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~47_combout\ = (!\letter~combout\(17) & (!\letter~combout\(19) & (!\letter~combout\(16) & !\letter~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(17),
	datab => \letter~combout\(19),
	datac => \letter~combout\(16),
	datad => \letter~combout\(18),
	combout => \tmp~47_combout\);

-- Location: LCCOMB_X9_Y8_N16
\tmp~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~48_combout\ = (\tmp~30_combout\ & ((\tmp~41_combout\) # ((\tmp~46_combout\ & \tmp~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~46_combout\,
	datab => \tmp~41_combout\,
	datac => \tmp~47_combout\,
	datad => \tmp~30_combout\,
	combout => \tmp~48_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y20_N18
\tmp~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~33_combout\ = (!\letter~combout\(9) & (!\letter~combout\(13) & (!\letter~combout\(8) & !\letter~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(9),
	datab => \letter~combout\(13),
	datac => \letter~combout\(8),
	datad => \letter~combout\(12),
	combout => \tmp~33_combout\);

-- Location: LCCOMB_X19_Y20_N20
\tmp~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~54_combout\ = (\tmp~53_combout\) # (!\tmp~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~53_combout\,
	datad => \tmp~33_combout\,
	combout => \tmp~54_combout\);

-- Location: LCCOMB_X19_Y20_N8
\tmp~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~52_combout\ = (\tmp~44_combout\ & \tmp~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmp~44_combout\,
	datad => \tmp~45_combout\,
	combout => \tmp~52_combout\);

-- Location: LCCOMB_X9_Y8_N10
\tmp~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~49_combout\ = (!\letter~combout\(17) & (!\letter~combout\(16) & (!\letter~combout\(19) & !\letter~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter~combout\(17),
	datab => \letter~combout\(16),
	datac => \letter~combout\(19),
	datad => \letter~combout\(21),
	combout => \tmp~49_combout\);

-- Location: LCCOMB_X9_Y8_N22
\tmp~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~51_combout\ = (\tmp~50_combout\ & \tmp~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~50_combout\,
	datad => \tmp~49_combout\,
	combout => \tmp~51_combout\);

-- Location: LCCOMB_X19_Y20_N22
\tmp~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~55_combout\ = ((\tmp~51_combout\ & ((\tmp~54_combout\) # (\tmp~52_combout\)))) # (!\tmp~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~54_combout\,
	datab => \tmp~30_combout\,
	datac => \tmp~52_combout\,
	datad => \tmp~51_combout\,
	combout => \tmp~55_combout\);

-- Location: LCCOMB_X19_Y20_N24
\tmp~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~56_combout\ = (\tmp~53_combout\) # (((!\tmp~33_combout\) # (!\tmp~51_combout\)) # (!\tmp~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~53_combout\,
	datab => \tmp~30_combout\,
	datac => \tmp~51_combout\,
	datad => \tmp~33_combout\,
	combout => \tmp~56_combout\);

-- Location: LCCOMB_X19_Y20_N2
\tmp~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~57_combout\ = (\tmp~56_combout\ & (((!\tmp~51_combout\)) # (!\tmp~30_combout\))) # (!\tmp~56_combout\ & (((\tmp~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~56_combout\,
	datab => \tmp~30_combout\,
	datac => \tmp~52_combout\,
	datad => \tmp~51_combout\,
	combout => \tmp~57_combout\);

-- Location: LCCOMB_X13_Y8_N16
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\tmp~48_combout\ & \tmp~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmp~48_combout\,
	datad => \tmp~55_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y20_N4
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\tmp~40_combout\ & (\tmp~29_combout\ & (\Equal0~0_combout\ & \tmp~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~40_combout\,
	datab => \tmp~29_combout\,
	datac => \Equal0~0_combout\,
	datad => \tmp~57_combout\,
	combout => \Equal0~1_combout\);

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tmp~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tmp~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(1));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tmp~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(2));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tmp~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(3));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tmp~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INDEX(4));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ERROR);
END structure;


