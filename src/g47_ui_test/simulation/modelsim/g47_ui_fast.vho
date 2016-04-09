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

-- DATE "04/08/2016 19:24:15"

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

ENTITY 	g47_ui_pushbutton IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	keypress : IN std_logic;
	setting_init : IN std_logic;
	setting_rotor : IN std_logic_vector(1 DOWNTO 0);
	setting_mode : IN std_logic_vector(1 DOWNTO 0);
	input_code : IN std_logic_vector(4 DOWNTO 0);
	led_error : OUT std_logic_vector(4 DOWNTO 0);
	segments_3 : OUT std_logic_vector(6 DOWNTO 0);
	segments_2 : OUT std_logic_vector(6 DOWNTO 0);
	segments_1 : OUT std_logic_vector(6 DOWNTO 0);
	segments_0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END g47_ui_pushbutton;

-- Design Ports Information
-- led_error[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_error[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_error[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_error[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_error[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setting_rotor[0]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setting_rotor[1]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setting_init	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setting_mode[1]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- setting_mode[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- keypress	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g47_ui_pushbutton IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_keypress : std_logic;
SIGNAL ww_setting_init : std_logic;
SIGNAL ww_setting_rotor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_setting_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_input_code : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_led_error : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_segments_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \input_2~8_combout\ : std_logic;
SIGNAL \input_3[2]~2_combout\ : std_logic;
SIGNAL \reflector_type~regout\ : std_logic;
SIGNAL \Mux107~2_combout\ : std_logic;
SIGNAL \input_2~15_combout\ : std_logic;
SIGNAL \input_2~24_combout\ : std_logic;
SIGNAL \input_2~38_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \input_0~10_combout\ : std_logic;
SIGNAL \input_0[4]~14_combout\ : std_logic;
SIGNAL \input_0[4]~15_combout\ : std_logic;
SIGNAL \right_data[4]~2_combout\ : std_logic;
SIGNAL \reflector_type~0_combout\ : std_logic;
SIGNAL \HEX_2|Mux3~5_combout\ : std_logic;
SIGNAL \HEX_2|Mux0~5_combout\ : std_logic;
SIGNAL \HEX_0|Mux6~7_combout\ : std_logic;
SIGNAL \HEX_0|Mux5~7_combout\ : std_logic;
SIGNAL \HEX_2|Mux2~5_combout\ : std_logic;
SIGNAL \HEX_0|Mux4~12_combout\ : std_logic;
SIGNAL \middle_data[4]~4_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \COUNTER|Add0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \keypress~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \keypress_state.B~regout\ : std_logic;
SIGNAL \keypress_state~5_combout\ : std_logic;
SIGNAL \keypress_state.C~feeder_combout\ : std_logic;
SIGNAL \keypress_state.C~regout\ : std_logic;
SIGNAL \COUNTER|Add0~1\ : std_logic;
SIGNAL \COUNTER|Add0~3\ : std_logic;
SIGNAL \COUNTER|Add0~4_combout\ : std_logic;
SIGNAL \COUNTER|Add0~5\ : std_logic;
SIGNAL \COUNTER|Add0~6_combout\ : std_logic;
SIGNAL \COUNTER|cnt~1_combout\ : std_logic;
SIGNAL \COUNTER|Add0~7\ : std_logic;
SIGNAL \COUNTER|Add0~8_combout\ : std_logic;
SIGNAL \COUNTER|cnt~2_combout\ : std_logic;
SIGNAL \COUNTER|Equal0~0_combout\ : std_logic;
SIGNAL \COUNTER|Add0~2_combout\ : std_logic;
SIGNAL \COUNTER|cnt~0_combout\ : std_logic;
SIGNAL \setting_init~combout\ : std_logic;
SIGNAL \right_ring_shift[4]~2_combout\ : std_logic;
SIGNAL \left_ring_shift[4]~2_combout\ : std_logic;
SIGNAL \input_2[4]~6_combout\ : std_logic;
SIGNAL \right_ring_shift[4]~3_combout\ : std_logic;
SIGNAL \input_2[4]~5_combout\ : std_logic;
SIGNAL \input_2~12_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \right_rotor_type[0]~0_combout\ : std_logic;
SIGNAL \middle_ring_shift[4]~0_combout\ : std_logic;
SIGNAL \input_2[4]~4_combout\ : std_logic;
SIGNAL \Mux127~0_combout\ : std_logic;
SIGNAL \Mux127~1_combout\ : std_logic;
SIGNAL \input_3[0]~5_combout\ : std_logic;
SIGNAL \input_2~7_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \input_3[0]~0_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \input_3[0]~1_combout\ : std_logic;
SIGNAL \input_clear~0_combout\ : std_logic;
SIGNAL \input_3[2]~3_combout\ : std_logic;
SIGNAL \input_3[2]~4_combout\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \Mux93~1_combout\ : std_logic;
SIGNAL \input_clear[3]~feeder_combout\ : std_logic;
SIGNAL \HEX_3|tmp[0]~0_combout\ : std_logic;
SIGNAL \HEX_3|tmp[1]~1_combout\ : std_logic;
SIGNAL \HEX_3|Mux11~0_combout\ : std_logic;
SIGNAL \HEX_3|tmp[4]~2_combout\ : std_logic;
SIGNAL \HEX_3|tmp[5]~3_combout\ : std_logic;
SIGNAL \HEX_3|tmp[6]~4_combout\ : std_logic;
SIGNAL \input_2~9_combout\ : std_logic;
SIGNAL \input_2~10_combout\ : std_logic;
SIGNAL \input_2~17_combout\ : std_logic;
SIGNAL \right_data[4]~7_combout\ : std_logic;
SIGNAL \right_data[4]~3_combout\ : std_logic;
SIGNAL \left_data[4]~6_combout\ : std_logic;
SIGNAL \left_data[4]~feeder_combout\ : std_logic;
SIGNAL \left_data[4]~2_combout\ : std_logic;
SIGNAL \input_2~26_combout\ : std_logic;
SIGNAL \input_2~27_combout\ : std_logic;
SIGNAL \input_clear~1_combout\ : std_logic;
SIGNAL \left_data[0]~3_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \input_0~2_combout\ : std_logic;
SIGNAL \input_0~25_combout\ : std_logic;
SIGNAL \left_rotor_type[0]~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \middle_data[0]~1_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \middle_data[4]~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \right_rotor_type[0]~feeder_combout\ : std_logic;
SIGNAL \right_rotor_type[0]~1_combout\ : std_logic;
SIGNAL \right_data[0]~4_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \Mux108~1_combout\ : std_logic;
SIGNAL \input_2~11_combout\ : std_logic;
SIGNAL \input_2~22_combout\ : std_logic;
SIGNAL \input_2~47_combout\ : std_logic;
SIGNAL \input_2~23_combout\ : std_logic;
SIGNAL \input_2~48_combout\ : std_logic;
SIGNAL \input_2~45_combout\ : std_logic;
SIGNAL \middle_rotor_type[0]~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \input_2~20_combout\ : std_logic;
SIGNAL \left_data[2]~5_combout\ : std_logic;
SIGNAL \middle_data[2]~3_combout\ : std_logic;
SIGNAL \right_data[2]~6_combout\ : std_logic;
SIGNAL \input_2~18_combout\ : std_logic;
SIGNAL \input_2~19_combout\ : std_logic;
SIGNAL \input_2~21_combout\ : std_logic;
SIGNAL \input_2~25_combout\ : std_logic;
SIGNAL \HEX_2|Mux6~12_combout\ : std_logic;
SIGNAL \HEX_2|Mux6~13_combout\ : std_logic;
SIGNAL \HEX_2|Mux6~7_combout\ : std_logic;
SIGNAL \HEX_2|Mux6~8_combout\ : std_logic;
SIGNAL \HEX_2|Mux6~6_combout\ : std_logic;
SIGNAL \input_2~43_combout\ : std_logic;
SIGNAL \right_data[3]~8_combout\ : std_logic;
SIGNAL \input_2~30_combout\ : std_logic;
SIGNAL \input_2~31_combout\ : std_logic;
SIGNAL \input_2~28_combout\ : std_logic;
SIGNAL \input_2~29_combout\ : std_logic;
SIGNAL \input_2~32_combout\ : std_logic;
SIGNAL \middle_data[3]~5_combout\ : std_logic;
SIGNAL \input_2~35_combout\ : std_logic;
SIGNAL \input_2~36_combout\ : std_logic;
SIGNAL \input_2~33_combout\ : std_logic;
SIGNAL \input_2~34_combout\ : std_logic;
SIGNAL \input_2~37_combout\ : std_logic;
SIGNAL \input_2~39_combout\ : std_logic;
SIGNAL \left_data[3]~7_combout\ : std_logic;
SIGNAL \input_2~46_combout\ : std_logic;
SIGNAL \input_2~40_combout\ : std_logic;
SIGNAL \input_2[4]~41_combout\ : std_logic;
SIGNAL \input_2~42_combout\ : std_logic;
SIGNAL \input_2~44_combout\ : std_logic;
SIGNAL \input_clear~1_wirecell_combout\ : std_logic;
SIGNAL \HEX_2|Mux6~11_combout\ : std_logic;
SIGNAL \right_data[1]~5_combout\ : std_logic;
SIGNAL \Mux107~12_combout\ : std_logic;
SIGNAL \Mux107~9_combout\ : std_logic;
SIGNAL \Mux107~10_combout\ : std_logic;
SIGNAL \Mux107~11_combout\ : std_logic;
SIGNAL \left_data[1]~4_combout\ : std_logic;
SIGNAL \Mux107~7_combout\ : std_logic;
SIGNAL \Mux107~8_combout\ : std_logic;
SIGNAL \Mux107~3_combout\ : std_logic;
SIGNAL \Mux107~4_combout\ : std_logic;
SIGNAL \input_2~14_combout\ : std_logic;
SIGNAL \middle_data[1]~2_combout\ : std_logic;
SIGNAL \Mux107~5_combout\ : std_logic;
SIGNAL \Mux107~6_combout\ : std_logic;
SIGNAL \input_2~13_combout\ : std_logic;
SIGNAL \input_2~16_combout\ : std_logic;
SIGNAL \HEX_2|Mux5~7_combout\ : std_logic;
SIGNAL \HEX_2|Mux5~8_combout\ : std_logic;
SIGNAL \HEX_2|Mux5~6_combout\ : std_logic;
SIGNAL \HEX_2|Mux5~12_combout\ : std_logic;
SIGNAL \HEX_2|Mux5~13_combout\ : std_logic;
SIGNAL \HEX_2|Mux5~11_combout\ : std_logic;
SIGNAL \HEX_2|Mux4~12_combout\ : std_logic;
SIGNAL \HEX_2|Mux4~13_combout\ : std_logic;
SIGNAL \HEX_2|Mux4~14_combout\ : std_logic;
SIGNAL \HEX_2|Mux4~15_combout\ : std_logic;
SIGNAL \HEX_2|Mux4~11_combout\ : std_logic;
SIGNAL \HEX_2|Mux3~7_combout\ : std_logic;
SIGNAL \HEX_2|Mux3~8_combout\ : std_logic;
SIGNAL \HEX_2|Mux3~11_combout\ : std_logic;
SIGNAL \HEX_2|Mux3~12_combout\ : std_logic;
SIGNAL \HEX_2|Mux2~7_combout\ : std_logic;
SIGNAL \HEX_2|Mux2~11_combout\ : std_logic;
SIGNAL \HEX_2|Mux2~12_combout\ : std_logic;
SIGNAL \HEX_2|Mux1~7_combout\ : std_logic;
SIGNAL \HEX_2|Mux1~8_combout\ : std_logic;
SIGNAL \HEX_2|Mux1~6_combout\ : std_logic;
SIGNAL \HEX_2|Mux1~12_combout\ : std_logic;
SIGNAL \HEX_2|Mux1~13_combout\ : std_logic;
SIGNAL \HEX_2|Mux1~11_combout\ : std_logic;
SIGNAL \HEX_2|Mux0~7_combout\ : std_logic;
SIGNAL \HEX_2|Mux0~8_combout\ : std_logic;
SIGNAL \HEX_2|Mux0~11_combout\ : std_logic;
SIGNAL \HEX_2|Mux0~12_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux95~4_combout\ : std_logic;
SIGNAL \input_clear[1]~feeder_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \input_1[0]~1_combout\ : std_logic;
SIGNAL \Mux93~2_combout\ : std_logic;
SIGNAL \input_1[2]~0_combout\ : std_logic;
SIGNAL \input_1[2]~feeder_combout\ : std_logic;
SIGNAL \input_1[1]~feeder_combout\ : std_logic;
SIGNAL \HEX_1|tmp[0]~0_combout\ : std_logic;
SIGNAL \HEX_1|tmp[1]~1_combout\ : std_logic;
SIGNAL \HEX_1|Mux11~0_combout\ : std_logic;
SIGNAL \HEX_1|tmp[4]~2_combout\ : std_logic;
SIGNAL \HEX_1|tmp[5]~3_combout\ : std_logic;
SIGNAL \HEX_1|tmp[6]~4_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \input_0[4]~16_combout\ : std_logic;
SIGNAL \input_0[4]~17_combout\ : std_logic;
SIGNAL \input_0[4]~26_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \input_0~20_combout\ : std_logic;
SIGNAL \input_0~21_combout\ : std_logic;
SIGNAL \input_0[4]~3_combout\ : std_logic;
SIGNAL \input_0[4]~4_combout\ : std_logic;
SIGNAL \input_0[4]~5_combout\ : std_logic;
SIGNAL \input_0~6_combout\ : std_logic;
SIGNAL \input_0~8_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \input_0~7_combout\ : std_logic;
SIGNAL \input_0~9_combout\ : std_logic;
SIGNAL \input_0~11_combout\ : std_logic;
SIGNAL \input_0~12_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \input_0~13_combout\ : std_logic;
SIGNAL \HEX_0|Mux6~8_combout\ : std_logic;
SIGNAL \HEX_0|Mux6~6_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \input_0~22_combout\ : std_logic;
SIGNAL \input_0~23_combout\ : std_logic;
SIGNAL \input_0~24_combout\ : std_logic;
SIGNAL \input_0[4]~3_wirecell_combout\ : std_logic;
SIGNAL \HEX_0|Mux6~12_combout\ : std_logic;
SIGNAL \HEX_0|Mux6~13_combout\ : std_logic;
SIGNAL \HEX_0|Mux6~11_combout\ : std_logic;
SIGNAL \HEX_0|Mux5~12_combout\ : std_logic;
SIGNAL \HEX_0|Mux5~13_combout\ : std_logic;
SIGNAL \HEX_0|Mux5~8_combout\ : std_logic;
SIGNAL \HEX_0|Mux5~6_combout\ : std_logic;
SIGNAL \HEX_0|Mux5~11_combout\ : std_logic;
SIGNAL \input_0~18_combout\ : std_logic;
SIGNAL \input_0~19_combout\ : std_logic;
SIGNAL \HEX_0|Mux4~14_combout\ : std_logic;
SIGNAL \HEX_0|Mux4~15_combout\ : std_logic;
SIGNAL \HEX_0|Mux4~13_combout\ : std_logic;
SIGNAL \HEX_0|Mux4~11_combout\ : std_logic;
SIGNAL \HEX_0|Mux3~8_combout\ : std_logic;
SIGNAL \HEX_0|Mux3~5_combout\ : std_logic;
SIGNAL \HEX_0|Mux3~11_combout\ : std_logic;
SIGNAL \HEX_0|Mux3~7_combout\ : std_logic;
SIGNAL \HEX_0|Mux3~12_combout\ : std_logic;
SIGNAL \HEX_0|Mux2~7_combout\ : std_logic;
SIGNAL \HEX_0|Mux2~5_combout\ : std_logic;
SIGNAL \HEX_0|Mux2~11_combout\ : std_logic;
SIGNAL \HEX_0|Mux2~12_combout\ : std_logic;
SIGNAL \HEX_0|Mux1~12_combout\ : std_logic;
SIGNAL \HEX_0|Mux1~13_combout\ : std_logic;
SIGNAL \HEX_0|Mux1~8_combout\ : std_logic;
SIGNAL \HEX_0|Mux1~7_combout\ : std_logic;
SIGNAL \HEX_0|Mux1~6_combout\ : std_logic;
SIGNAL \HEX_0|Mux1~11_combout\ : std_logic;
SIGNAL \HEX_0|Mux0~7_combout\ : std_logic;
SIGNAL \HEX_0|Mux0~5_combout\ : std_logic;
SIGNAL \HEX_0|Mux0~8_combout\ : std_logic;
SIGNAL \HEX_0|Mux0~11_combout\ : std_logic;
SIGNAL \HEX_0|Mux0~12_combout\ : std_logic;
SIGNAL right_rotor_type : std_logic_vector(1 DOWNTO 0);
SIGNAL right_ring_shift : std_logic_vector(4 DOWNTO 0);
SIGNAL right_data : std_logic_vector(4 DOWNTO 0);
SIGNAL middle_rotor_type : std_logic_vector(1 DOWNTO 0);
SIGNAL middle_ring_shift : std_logic_vector(4 DOWNTO 0);
SIGNAL middle_data : std_logic_vector(4 DOWNTO 0);
SIGNAL left_rotor_type : std_logic_vector(1 DOWNTO 0);
SIGNAL left_ring_shift : std_logic_vector(4 DOWNTO 0);
SIGNAL left_data : std_logic_vector(4 DOWNTO 0);
SIGNAL input_clear : std_logic_vector(3 DOWNTO 0);
SIGNAL input_3 : std_logic_vector(5 DOWNTO 0);
SIGNAL input_2 : std_logic_vector(5 DOWNTO 0);
SIGNAL input_1 : std_logic_vector(5 DOWNTO 0);
SIGNAL input_0 : std_logic_vector(5 DOWNTO 0);
SIGNAL \COUNTER|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \setting_rotor~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \setting_mode~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \input_code~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \HEX_2|ALT_INV_Mux1~11_combout\ : std_logic;
SIGNAL \HEX_2|ALT_INV_Mux4~11_combout\ : std_logic;
SIGNAL \HEX_2|ALT_INV_Mux5~11_combout\ : std_logic;
SIGNAL \HEX_2|ALT_INV_Mux6~11_combout\ : std_logic;
SIGNAL \HEX_1|ALT_INV_tmp[4]~2_combout\ : std_logic;
SIGNAL \HEX_1|ALT_INV_tmp[1]~1_combout\ : std_logic;
SIGNAL \HEX_1|ALT_INV_tmp[0]~0_combout\ : std_logic;
SIGNAL \HEX_3|ALT_INV_tmp[4]~2_combout\ : std_logic;
SIGNAL \HEX_3|ALT_INV_tmp[1]~1_combout\ : std_logic;
SIGNAL \HEX_3|ALT_INV_tmp[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_setting_init~combout\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \HEX_2|ALT_INV_Mux3~12_combout\ : std_logic;
SIGNAL \HEX_2|ALT_INV_Mux2~12_combout\ : std_logic;
SIGNAL \HEX_2|ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \HEX_0|ALT_INV_Mux3~12_combout\ : std_logic;
SIGNAL \HEX_0|ALT_INV_Mux2~12_combout\ : std_logic;
SIGNAL \HEX_0|ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \HEX_0|ALT_INV_Mux1~11_combout\ : std_logic;
SIGNAL \HEX_0|ALT_INV_Mux4~11_combout\ : std_logic;
SIGNAL \HEX_0|ALT_INV_Mux5~11_combout\ : std_logic;
SIGNAL \HEX_0|ALT_INV_Mux6~11_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_keypress <= keypress;
ww_setting_init <= setting_init;
ww_setting_rotor <= setting_rotor;
ww_setting_mode <= setting_mode;
ww_input_code <= input_code;
led_error <= ww_led_error;
segments_3 <= ww_segments_3;
segments_2 <= ww_segments_2;
segments_1 <= ww_segments_1;
segments_0 <= ww_segments_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\HEX_2|ALT_INV_Mux1~11_combout\ <= NOT \HEX_2|Mux1~11_combout\;
\HEX_2|ALT_INV_Mux4~11_combout\ <= NOT \HEX_2|Mux4~11_combout\;
\HEX_2|ALT_INV_Mux5~11_combout\ <= NOT \HEX_2|Mux5~11_combout\;
\HEX_2|ALT_INV_Mux6~11_combout\ <= NOT \HEX_2|Mux6~11_combout\;
\HEX_1|ALT_INV_tmp[4]~2_combout\ <= NOT \HEX_1|tmp[4]~2_combout\;
\HEX_1|ALT_INV_tmp[1]~1_combout\ <= NOT \HEX_1|tmp[1]~1_combout\;
\HEX_1|ALT_INV_tmp[0]~0_combout\ <= NOT \HEX_1|tmp[0]~0_combout\;
\HEX_3|ALT_INV_tmp[4]~2_combout\ <= NOT \HEX_3|tmp[4]~2_combout\;
\HEX_3|ALT_INV_tmp[1]~1_combout\ <= NOT \HEX_3|tmp[1]~1_combout\;
\HEX_3|ALT_INV_tmp[0]~0_combout\ <= NOT \HEX_3|tmp[0]~0_combout\;
\ALT_INV_setting_init~combout\ <= NOT \setting_init~combout\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\HEX_2|ALT_INV_Mux3~12_combout\ <= NOT \HEX_2|Mux3~12_combout\;
\HEX_2|ALT_INV_Mux2~12_combout\ <= NOT \HEX_2|Mux2~12_combout\;
\HEX_2|ALT_INV_Mux0~12_combout\ <= NOT \HEX_2|Mux0~12_combout\;
\HEX_0|ALT_INV_Mux3~12_combout\ <= NOT \HEX_0|Mux3~12_combout\;
\HEX_0|ALT_INV_Mux2~12_combout\ <= NOT \HEX_0|Mux2~12_combout\;
\HEX_0|ALT_INV_Mux0~12_combout\ <= NOT \HEX_0|Mux0~12_combout\;
\HEX_0|ALT_INV_Mux1~11_combout\ <= NOT \HEX_0|Mux1~11_combout\;
\HEX_0|ALT_INV_Mux4~11_combout\ <= NOT \HEX_0|Mux4~11_combout\;
\HEX_0|ALT_INV_Mux5~11_combout\ <= NOT \HEX_0|Mux5~11_combout\;
\HEX_0|ALT_INV_Mux6~11_combout\ <= NOT \HEX_0|Mux6~11_combout\;

-- Location: LCCOMB_X9_Y15_N26
\Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\input_code~combout\(2) & (\Add6~3\ $ (GND))) # (!\input_code~combout\(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((\input_code~combout\(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_code~combout\(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X10_Y17_N16
\input_2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~8_combout\ = (!\setting_rotor~combout\(0) & \setting_rotor~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datac => \setting_rotor~combout\(1),
	combout => \input_2~8_combout\);

-- Location: LCCOMB_X8_Y16_N20
\input_3[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_3[2]~2_combout\ = (!\setting_rotor~combout\(1) & ((\setting_rotor~combout\(0) & ((!\LessThan2~0_combout\))) # (!\setting_rotor~combout\(0) & (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datab => \setting_rotor~combout\(0),
	datac => \LessThan0~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \input_3[2]~2_combout\);

-- Location: LCFF_X13_Y16_N11
reflector_type : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reflector_type~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reflector_type~regout\);

-- Location: LCCOMB_X12_Y16_N20
\Mux107~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~2_combout\ = (\setting_mode~combout\(1) & (\setting_mode~combout\(0) & !input_2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datac => \setting_mode~combout\(0),
	datad => input_2(1),
	combout => \Mux107~2_combout\);

-- Location: LCCOMB_X11_Y16_N6
\input_2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~15_combout\ = (!\setting_rotor~combout\(0) & (\setting_init~combout\ & !\setting_rotor~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datab => \setting_init~combout\,
	datad => \setting_rotor~combout\(1),
	combout => \input_2~15_combout\);

-- Location: LCCOMB_X10_Y16_N10
\input_2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~24_combout\ = (right_ring_shift(2) & (!right_ring_shift(4) & ((right_ring_shift(1)) # (!right_ring_shift(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => right_ring_shift(2),
	datab => right_ring_shift(3),
	datac => right_ring_shift(1),
	datad => right_ring_shift(4),
	combout => \input_2~24_combout\);

-- Location: LCFF_X9_Y16_N31
\middle_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \middle_data[4]~4_combout\,
	sload => VCC,
	ena => \middle_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_data(4));

-- Location: LCCOMB_X11_Y16_N2
\input_2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~38_combout\ = (!\setting_mode~combout\(0) & (!\setting_rotor~combout\(1) & \setting_init~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => \setting_rotor~combout\(1),
	datac => \setting_init~combout\,
	combout => \input_2~38_combout\);

-- Location: LCCOMB_X14_Y16_N8
\LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (left_ring_shift(2)) # (left_ring_shift(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => left_ring_shift(2),
	datad => left_ring_shift(1),
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X10_Y15_N20
\input_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~10_combout\ = (\LessThan7~0_combout\ & (!\LessThan6~0_combout\ & \setting_mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan7~0_combout\,
	datac => \LessThan6~0_combout\,
	datad => \setting_mode~combout\(1),
	combout => \input_0~10_combout\);

-- Location: LCCOMB_X10_Y15_N12
\input_0[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~14_combout\ = (\setting_mode~combout\(1) & ((!\setting_rotor~combout\(1)) # (!\setting_rotor~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \setting_rotor~combout\(0),
	datac => \setting_rotor~combout\(1),
	datad => \setting_mode~combout\(1),
	combout => \input_0[4]~14_combout\);

-- Location: LCCOMB_X10_Y15_N10
\input_0[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~15_combout\ = ((\input_0[4]~4_combout\) # ((\LessThan6~0_combout\ & \input_0[4]~14_combout\))) # (!\setting_init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_init~combout\,
	datab => \input_0[4]~4_combout\,
	datac => \LessThan6~0_combout\,
	datad => \input_0[4]~14_combout\,
	combout => \input_0[4]~15_combout\);

-- Location: LCCOMB_X8_Y16_N14
\right_data[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_data[4]~2_combout\ = (!\setting_mode~combout\(0) & !\setting_mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \setting_mode~combout\(0),
	datad => \setting_mode~combout\(1),
	combout => \right_data[4]~2_combout\);

-- Location: LCCOMB_X13_Y16_N10
\reflector_type~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reflector_type~0_combout\ = (\Mux93~2_combout\ & ((\right_rotor_type[0]~0_combout\ & ((\input_code~combout\(0)))) # (!\right_rotor_type[0]~0_combout\ & (\reflector_type~regout\)))) # (!\Mux93~2_combout\ & (((\reflector_type~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux93~2_combout\,
	datab => \right_rotor_type[0]~0_combout\,
	datac => \reflector_type~regout\,
	datad => \input_code~combout\(0),
	combout => \reflector_type~0_combout\);

-- Location: LCCOMB_X10_Y19_N16
\HEX_2|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux3~5_combout\ = ((input_2(0)) # ((!input_2(1) & input_2(2)))) # (!input_2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(2),
	datac => input_2(3),
	datad => input_2(0),
	combout => \HEX_2|Mux3~5_combout\);

-- Location: LCCOMB_X10_Y19_N6
\HEX_2|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux0~5_combout\ = ((input_2(0) & ((input_2(2)))) # (!input_2(0) & (!input_2(1)))) # (!input_2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(2),
	datac => input_2(3),
	datad => input_2(0),
	combout => \HEX_2|Mux0~5_combout\);

-- Location: LCCOMB_X8_Y18_N20
\HEX_0|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux6~7_combout\ = ((input_0(2) & (input_0(0) $ (input_0(1))))) # (!input_0(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(2),
	datab => input_0(5),
	datac => input_0(0),
	datad => input_0(1),
	combout => \HEX_0|Mux6~7_combout\);

-- Location: LCCOMB_X8_Y18_N16
\HEX_0|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux5~7_combout\ = (input_0(2) & ((input_0(5) & (!input_0(3))) # (!input_0(5) & ((input_0(4)))))) # (!input_0(2) & (input_0(5) & (input_0(3) & !input_0(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(2),
	datab => input_0(5),
	datac => input_0(3),
	datad => input_0(4),
	combout => \HEX_0|Mux5~7_combout\);

-- Location: LCCOMB_X10_Y18_N16
\HEX_2|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux2~5_combout\ = (input_2(1) & ((input_2(0) & (input_2(3))) # (!input_2(0) & ((input_2(2)))))) # (!input_2(1) & (input_2(3) & ((!input_2(2)) # (!input_2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(3),
	datac => input_2(0),
	datad => input_2(2),
	combout => \HEX_2|Mux2~5_combout\);

-- Location: LCCOMB_X8_Y19_N24
\HEX_0|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux4~12_combout\ = (input_0(4) & ((input_0(2) & ((input_0(1)) # (!input_0(0)))) # (!input_0(2) & ((!input_0(1)))))) # (!input_0(4) & (((input_0(0))) # (!input_0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(4),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(1),
	combout => \HEX_0|Mux4~12_combout\);

-- Location: LCCOMB_X9_Y16_N18
\middle_data[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \middle_data[4]~4_combout\ = !\input_code~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(4),
	combout => \middle_data[4]~4_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y9_N4
\COUNTER|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~0_combout\ = \COUNTER|cnt\(0) $ (VCC)
-- \COUNTER|Add0~1\ = CARRY(\COUNTER|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|cnt\(0),
	datad => VCC,
	combout => \COUNTER|Add0~0_combout\,
	cout => \COUNTER|Add0~1\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\keypress~I\ : cycloneii_io
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
	padio => ww_keypress,
	combout => \keypress~combout\);

-- Location: LCCOMB_X49_Y9_N2
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\keypress~combout\ & !\keypress_state.C~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypress~combout\,
	datad => \keypress_state.C~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X49_Y9_N3
\keypress_state.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keypress_state.B~regout\);

-- Location: LCCOMB_X49_Y9_N24
\keypress_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \keypress_state~5_combout\ = (\keypress~combout\ & \keypress_state.B~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypress~combout\,
	datad => \keypress_state.B~regout\,
	combout => \keypress_state~5_combout\);

-- Location: LCCOMB_X13_Y16_N18
\keypress_state.C~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \keypress_state.C~feeder_combout\ = \keypress_state~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypress_state~5_combout\,
	combout => \keypress_state.C~feeder_combout\);

-- Location: LCFF_X13_Y16_N19
\keypress_state.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \keypress_state.C~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keypress_state.C~regout\);

-- Location: LCFF_X49_Y9_N5
\COUNTER|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|Add0~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \keypress_state.C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|cnt\(0));

-- Location: LCCOMB_X49_Y9_N6
\COUNTER|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~2_combout\ = (\COUNTER|cnt\(1) & (!\COUNTER|Add0~1\)) # (!\COUNTER|cnt\(1) & ((\COUNTER|Add0~1\) # (GND)))
-- \COUNTER|Add0~3\ = CARRY((!\COUNTER|Add0~1\) # (!\COUNTER|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|cnt\(1),
	datad => VCC,
	cin => \COUNTER|Add0~1\,
	combout => \COUNTER|Add0~2_combout\,
	cout => \COUNTER|Add0~3\);

-- Location: LCCOMB_X49_Y9_N8
\COUNTER|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~4_combout\ = (\COUNTER|cnt\(2) & (\COUNTER|Add0~3\ $ (GND))) # (!\COUNTER|cnt\(2) & (!\COUNTER|Add0~3\ & VCC))
-- \COUNTER|Add0~5\ = CARRY((\COUNTER|cnt\(2) & !\COUNTER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|cnt\(2),
	datad => VCC,
	cin => \COUNTER|Add0~3\,
	combout => \COUNTER|Add0~4_combout\,
	cout => \COUNTER|Add0~5\);

-- Location: LCFF_X49_Y9_N9
\COUNTER|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|Add0~4_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \keypress_state.C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|cnt\(2));

-- Location: LCCOMB_X49_Y9_N10
\COUNTER|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~6_combout\ = (\COUNTER|cnt\(3) & (!\COUNTER|Add0~5\)) # (!\COUNTER|cnt\(3) & ((\COUNTER|Add0~5\) # (GND)))
-- \COUNTER|Add0~7\ = CARRY((!\COUNTER|Add0~5\) # (!\COUNTER|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|cnt\(3),
	datad => VCC,
	cin => \COUNTER|Add0~5\,
	combout => \COUNTER|Add0~6_combout\,
	cout => \COUNTER|Add0~7\);

-- Location: LCCOMB_X49_Y9_N14
\COUNTER|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|cnt~1_combout\ = (\COUNTER|Add0~6_combout\ & ((\COUNTER|cnt\(1)) # (!\COUNTER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|Equal0~0_combout\,
	datac => \COUNTER|cnt\(1),
	datad => \COUNTER|Add0~6_combout\,
	combout => \COUNTER|cnt~1_combout\);

-- Location: LCFF_X49_Y9_N15
\COUNTER|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|cnt~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \keypress_state.C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|cnt\(3));

-- Location: LCCOMB_X49_Y9_N12
\COUNTER|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~8_combout\ = \COUNTER|Add0~7\ $ (!\COUNTER|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER|cnt\(4),
	cin => \COUNTER|Add0~7\,
	combout => \COUNTER|Add0~8_combout\);

-- Location: LCCOMB_X49_Y9_N30
\COUNTER|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|cnt~2_combout\ = (\COUNTER|Add0~8_combout\ & ((\COUNTER|cnt\(1)) # (!\COUNTER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|Equal0~0_combout\,
	datac => \COUNTER|cnt\(1),
	datad => \COUNTER|Add0~8_combout\,
	combout => \COUNTER|cnt~2_combout\);

-- Location: LCFF_X49_Y9_N31
\COUNTER|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|cnt~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \keypress_state.C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|cnt\(4));

-- Location: LCCOMB_X49_Y9_N0
\COUNTER|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Equal0~0_combout\ = (!\COUNTER|cnt\(2) & (\COUNTER|cnt\(3) & (\COUNTER|cnt\(0) & \COUNTER|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|cnt\(2),
	datab => \COUNTER|cnt\(3),
	datac => \COUNTER|cnt\(0),
	datad => \COUNTER|cnt\(4),
	combout => \COUNTER|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y9_N28
\COUNTER|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|cnt~0_combout\ = (\COUNTER|Add0~2_combout\ & ((\COUNTER|cnt\(1)) # (!\COUNTER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|Equal0~0_combout\,
	datac => \COUNTER|cnt\(1),
	datad => \COUNTER|Add0~2_combout\,
	combout => \COUNTER|cnt~0_combout\);

-- Location: LCFF_X49_Y9_N29
\COUNTER|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|cnt~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \keypress_state.C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|cnt\(1));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_code[4]~I\ : cycloneii_io
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
	padio => ww_input_code(4),
	combout => \input_code~combout\(4));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\setting_init~I\ : cycloneii_io
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
	padio => ww_setting_init,
	combout => \setting_init~combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\setting_rotor[0]~I\ : cycloneii_io
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
	padio => ww_setting_rotor(0),
	combout => \setting_rotor~combout\(0));

-- Location: LCCOMB_X13_Y16_N22
\right_ring_shift[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_ring_shift[4]~2_combout\ = (\LessThan5~0_combout\ & (\setting_init~combout\ & (!\setting_rotor~combout\(0) & \keypress_state.C~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \setting_init~combout\,
	datac => \setting_rotor~combout\(0),
	datad => \keypress_state.C~regout\,
	combout => \right_ring_shift[4]~2_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\setting_rotor[1]~I\ : cycloneii_io
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
	padio => ww_setting_rotor(1),
	combout => \setting_rotor~combout\(1));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\setting_mode[0]~I\ : cycloneii_io
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
	padio => ww_setting_mode(0),
	combout => \setting_mode~combout\(0));

-- Location: LCCOMB_X14_Y16_N26
\left_ring_shift[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_ring_shift[4]~2_combout\ = (\setting_mode~combout\(1) & (\right_ring_shift[4]~2_combout\ & (\setting_rotor~combout\(1) & !\setting_mode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \right_ring_shift[4]~2_combout\,
	datac => \setting_rotor~combout\(1),
	datad => \setting_mode~combout\(0),
	combout => \left_ring_shift[4]~2_combout\);

-- Location: LCFF_X14_Y16_N9
\left_ring_shift[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(4),
	sload => VCC,
	ena => \left_ring_shift[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_ring_shift(4));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_code[2]~I\ : cycloneii_io
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
	padio => ww_input_code(2),
	combout => \input_code~combout\(2));

-- Location: LCFF_X14_Y16_N25
\left_ring_shift[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(2),
	sload => VCC,
	ena => \left_ring_shift[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_ring_shift(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_code[3]~I\ : cycloneii_io
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
	padio => ww_input_code(3),
	combout => \input_code~combout\(3));

-- Location: LCFF_X14_Y16_N31
\left_ring_shift[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(3),
	sload => VCC,
	ena => \left_ring_shift[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_ring_shift(3));

-- Location: LCCOMB_X14_Y16_N2
\input_2[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2[4]~6_combout\ = ((!left_ring_shift(2) & !left_ring_shift(3))) # (!left_ring_shift(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => left_ring_shift(4),
	datac => left_ring_shift(2),
	datad => left_ring_shift(3),
	combout => \input_2[4]~6_combout\);

-- Location: LCCOMB_X11_Y16_N12
\right_ring_shift[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_ring_shift[4]~3_combout\ = (\setting_mode~combout\(1) & (!\setting_rotor~combout\(1) & (!\setting_mode~combout\(0) & \right_ring_shift[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_rotor~combout\(1),
	datac => \setting_mode~combout\(0),
	datad => \right_ring_shift[4]~2_combout\,
	combout => \right_ring_shift[4]~3_combout\);

-- Location: LCFF_X10_Y16_N29
\right_ring_shift[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(4),
	sload => VCC,
	ena => \right_ring_shift[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_ring_shift(4));

-- Location: LCFF_X10_Y16_N15
\right_ring_shift[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(3),
	sload => VCC,
	ena => \right_ring_shift[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_ring_shift(3));

-- Location: LCFF_X10_Y16_N5
\right_ring_shift[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(2),
	sload => VCC,
	ena => \right_ring_shift[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_ring_shift(2));

-- Location: LCCOMB_X10_Y16_N14
\input_2[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2[4]~5_combout\ = ((!right_ring_shift(3) & !right_ring_shift(2))) # (!right_ring_shift(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => right_ring_shift(4),
	datac => right_ring_shift(3),
	datad => right_ring_shift(2),
	combout => \input_2[4]~5_combout\);

-- Location: LCCOMB_X11_Y16_N20
\input_2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~12_combout\ = (!\setting_rotor~combout\(1) & \setting_rotor~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \setting_rotor~combout\(1),
	datac => \setting_rotor~combout\(0),
	combout => \input_2~12_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\setting_mode[1]~I\ : cycloneii_io
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
	padio => ww_setting_mode(1),
	combout => \setting_mode~combout\(1));

-- Location: LCCOMB_X8_Y16_N22
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\setting_mode~combout\(0) & \setting_mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \setting_mode~combout\(0),
	datad => \setting_mode~combout\(1),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X13_Y16_N8
\right_rotor_type[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_rotor_type[0]~0_combout\ = (\setting_init~combout\ & \keypress_state.C~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \setting_init~combout\,
	datad => \keypress_state.C~regout\,
	combout => \right_rotor_type[0]~0_combout\);

-- Location: LCCOMB_X10_Y16_N22
\middle_ring_shift[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \middle_ring_shift[4]~0_combout\ = (\LessThan5~0_combout\ & (\input_2~12_combout\ & (\Mux21~0_combout\ & \right_rotor_type[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \input_2~12_combout\,
	datac => \Mux21~0_combout\,
	datad => \right_rotor_type[0]~0_combout\,
	combout => \middle_ring_shift[4]~0_combout\);

-- Location: LCFF_X9_Y16_N19
\middle_ring_shift[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(3),
	sload => VCC,
	ena => \middle_ring_shift[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_ring_shift(3));

-- Location: LCFF_X9_Y16_N13
\middle_ring_shift[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(4),
	sload => VCC,
	ena => \middle_ring_shift[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_ring_shift(4));

-- Location: LCCOMB_X9_Y16_N30
\input_2[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2[4]~4_combout\ = ((!middle_ring_shift(2) & !middle_ring_shift(3))) # (!middle_ring_shift(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => middle_ring_shift(2),
	datab => middle_ring_shift(3),
	datad => middle_ring_shift(4),
	combout => \input_2[4]~4_combout\);

-- Location: LCCOMB_X9_Y16_N4
\Mux127~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux127~0_combout\ = (!\setting_rotor~combout\(1) & ((\setting_rotor~combout\(0) & ((\input_2[4]~4_combout\))) # (!\setting_rotor~combout\(0) & (\input_2[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datab => \setting_rotor~combout\(1),
	datac => \input_2[4]~5_combout\,
	datad => \input_2[4]~4_combout\,
	combout => \Mux127~0_combout\);

-- Location: LCCOMB_X8_Y16_N12
\Mux127~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux127~1_combout\ = (\Mux127~0_combout\) # ((\setting_rotor~combout\(1) & \input_2[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datac => \input_2[4]~6_combout\,
	datad => \Mux127~0_combout\,
	combout => \Mux127~1_combout\);

-- Location: LCCOMB_X8_Y16_N2
\input_3[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_3[0]~5_combout\ = !\Mux127~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux127~1_combout\,
	combout => \input_3[0]~5_combout\);

-- Location: LCCOMB_X8_Y16_N28
\input_2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~7_combout\ = (!\setting_mode~combout\(0) & (\setting_init~combout\ & \setting_mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datac => \setting_init~combout\,
	datad => \setting_mode~combout\(1),
	combout => \input_2~7_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_code[1]~I\ : cycloneii_io
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
	padio => ww_input_code(1),
	combout => \input_code~combout\(1));

-- Location: LCFF_X9_Y16_N23
\middle_ring_shift[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(1),
	sload => VCC,
	ena => \middle_ring_shift[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_ring_shift(1));

-- Location: LCFF_X9_Y16_N17
\middle_ring_shift[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(2),
	sload => VCC,
	ena => \middle_ring_shift[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_ring_shift(2));

-- Location: LCCOMB_X9_Y16_N22
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (middle_ring_shift(4)) # ((middle_ring_shift(3) & ((middle_ring_shift(1)) # (middle_ring_shift(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => middle_ring_shift(4),
	datab => middle_ring_shift(3),
	datac => middle_ring_shift(1),
	datad => middle_ring_shift(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X10_Y16_N24
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (right_ring_shift(4)) # ((right_ring_shift(3) & ((right_ring_shift(1)) # (right_ring_shift(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => right_ring_shift(1),
	datab => right_ring_shift(4),
	datac => right_ring_shift(3),
	datad => right_ring_shift(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y16_N24
\input_3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_3[0]~0_combout\ = (!\setting_rotor~combout\(1) & ((\setting_rotor~combout\(0) & (\LessThan2~0_combout\)) # (!\setting_rotor~combout\(0) & ((\LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datab => \setting_rotor~combout\(1),
	datac => \LessThan2~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \input_3[0]~0_combout\);

-- Location: LCFF_X14_Y16_N29
\left_ring_shift[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(1),
	sload => VCC,
	ena => \left_ring_shift[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_ring_shift(1));

-- Location: LCCOMB_X14_Y16_N14
\LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (left_ring_shift(4)) # ((left_ring_shift(3) & ((left_ring_shift(2)) # (left_ring_shift(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => left_ring_shift(2),
	datab => left_ring_shift(1),
	datac => left_ring_shift(4),
	datad => left_ring_shift(3),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X9_Y16_N6
\input_3[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_3[0]~1_combout\ = (\input_2~7_combout\ & ((\input_3[0]~0_combout\) # ((\input_2~8_combout\ & \LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_2~8_combout\,
	datab => \input_2~7_combout\,
	datac => \input_3[0]~0_combout\,
	datad => \LessThan8~0_combout\,
	combout => \input_3[0]~1_combout\);

-- Location: LCFF_X8_Y16_N3
\input_3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_3[0]~5_combout\,
	ena => \input_3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_3(0));

-- Location: LCCOMB_X8_Y16_N18
\input_clear~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clear~0_combout\ = (\setting_init~combout\ & ((!\setting_rotor~combout\(0)) # (!\setting_rotor~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datac => \setting_init~combout\,
	datad => \setting_rotor~combout\(0),
	combout => \input_clear~0_combout\);

-- Location: LCCOMB_X8_Y16_N0
\input_3[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_3[2]~3_combout\ = (((\setting_rotor~combout\(1) & !\LessThan8~0_combout\)) # (!\input_clear~0_combout\)) # (!\Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datab => \Mux21~0_combout\,
	datac => \input_clear~0_combout\,
	datad => \LessThan8~0_combout\,
	combout => \input_3[2]~3_combout\);

-- Location: LCCOMB_X8_Y16_N26
\input_3[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_3[2]~4_combout\ = (input_3(2)) # ((!\input_3[2]~2_combout\ & !\input_3[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_3[2]~2_combout\,
	datac => input_3(2),
	datad => \input_3[2]~3_combout\,
	combout => \input_3[2]~4_combout\);

-- Location: LCFF_X8_Y16_N27
\input_3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_3(2));

-- Location: LCFF_X8_Y16_N13
\input_3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux127~1_combout\,
	ena => \input_3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_3(1));

-- Location: LCCOMB_X8_Y16_N16
\Mux93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (\setting_rotor~combout\(1) & (\setting_rotor~combout\(0))) # (!\setting_rotor~combout\(1) & ((\setting_rotor~combout\(0) & ((\LessThan2~0_combout\))) # (!\setting_rotor~combout\(0) & (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datab => \setting_rotor~combout\(0),
	datac => \LessThan0~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \Mux93~0_combout\);

-- Location: LCCOMB_X8_Y16_N10
\Mux93~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux93~1_combout\ = ((\setting_rotor~combout\(1) & ((\Mux93~0_combout\) # (!\LessThan8~0_combout\))) # (!\setting_rotor~combout\(1) & (!\Mux93~0_combout\))) # (!\Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datab => \Mux21~0_combout\,
	datac => \Mux93~0_combout\,
	datad => \LessThan8~0_combout\,
	combout => \Mux93~1_combout\);

-- Location: LCCOMB_X8_Y16_N24
\input_clear[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clear[3]~feeder_combout\ = \Mux93~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux93~1_combout\,
	combout => \input_clear[3]~feeder_combout\);

-- Location: LCFF_X8_Y16_N25
\input_clear[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_clear[3]~feeder_combout\,
	sdata => VCC,
	sload => \ALT_INV_setting_init~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_clear(3));

-- Location: LCCOMB_X1_Y20_N12
\HEX_3|tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_3|tmp[0]~0_combout\ = (input_3(0)) # (((input_clear(3)) # (!input_3(1))) # (!input_3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_3(0),
	datab => input_3(2),
	datac => input_3(1),
	datad => input_clear(3),
	combout => \HEX_3|tmp[0]~0_combout\);

-- Location: LCCOMB_X1_Y20_N10
\HEX_3|tmp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_3|tmp[1]~1_combout\ = (input_3(2) & !input_clear(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => input_3(2),
	datad => input_clear(3),
	combout => \HEX_3|tmp[1]~1_combout\);

-- Location: LCCOMB_X1_Y20_N24
\HEX_3|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_3|Mux11~0_combout\ = ((input_clear(3)) # ((input_3(0) & !input_3(1)))) # (!input_3(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_3(0),
	datab => input_3(2),
	datac => input_3(1),
	datad => input_clear(3),
	combout => \HEX_3|Mux11~0_combout\);

-- Location: LCCOMB_X1_Y20_N26
\HEX_3|tmp[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_3|tmp[4]~2_combout\ = (input_3(0) & (input_3(2) & !input_clear(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_3(0),
	datab => input_3(2),
	datad => input_clear(3),
	combout => \HEX_3|tmp[4]~2_combout\);

-- Location: LCCOMB_X1_Y20_N0
\HEX_3|tmp[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_3|tmp[5]~3_combout\ = (((input_clear(3)) # (!input_3(1))) # (!input_3(2))) # (!input_3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_3(0),
	datab => input_3(2),
	datac => input_3(1),
	datad => input_clear(3),
	combout => \HEX_3|tmp[5]~3_combout\);

-- Location: LCCOMB_X1_Y20_N22
\HEX_3|tmp[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_3|tmp[6]~4_combout\ = (input_3(2) & (input_3(1) & !input_clear(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => input_3(2),
	datac => input_3(1),
	datad => input_clear(3),
	combout => \HEX_3|tmp[6]~4_combout\);

-- Location: LCCOMB_X10_Y15_N4
\input_2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~9_combout\ = (\setting_rotor~combout\(0) & ((\setting_rotor~combout\(1)) # (\setting_mode~combout\(0) $ (\setting_mode~combout\(1))))) # (!\setting_rotor~combout\(0) & (\setting_mode~combout\(0) $ (((\setting_mode~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => \setting_rotor~combout\(0),
	datac => \setting_rotor~combout\(1),
	datad => \setting_mode~combout\(1),
	combout => \input_2~9_combout\);

-- Location: LCCOMB_X10_Y15_N24
\input_2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~10_combout\ = ((!\input_2~9_combout\ & ((input_2(5)) # (!\setting_mode~combout\(1))))) # (!\setting_init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_init~combout\,
	datab => \input_2~9_combout\,
	datac => input_2(5),
	datad => \setting_mode~combout\(1),
	combout => \input_2~10_combout\);

-- Location: LCFF_X10_Y15_N25
\input_2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_2(5));

-- Location: LCCOMB_X10_Y15_N2
\input_2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~17_combout\ = (!\setting_mode~combout\(0) & (\setting_init~combout\ & !\setting_mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datac => \setting_init~combout\,
	datad => \setting_mode~combout\(1),
	combout => \input_2~17_combout\);

-- Location: LCCOMB_X14_Y15_N8
\right_data[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_data[4]~7_combout\ = !\input_code~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(4),
	combout => \right_data[4]~7_combout\);

-- Location: LCCOMB_X12_Y16_N18
\right_data[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_data[4]~3_combout\ = (!\setting_mode~combout\(1) & (!\setting_rotor~combout\(1) & (!\setting_mode~combout\(0) & \right_ring_shift[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_rotor~combout\(1),
	datac => \setting_mode~combout\(0),
	datad => \right_ring_shift[4]~2_combout\,
	combout => \right_data[4]~3_combout\);

-- Location: LCFF_X13_Y15_N1
\right_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \right_data[4]~7_combout\,
	sload => VCC,
	ena => \right_data[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_data(4));

-- Location: LCCOMB_X14_Y15_N30
\left_data[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_data[4]~6_combout\ = !\input_code~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(4),
	combout => \left_data[4]~6_combout\);

-- Location: LCCOMB_X13_Y15_N2
\left_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_data[4]~feeder_combout\ = \left_data[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_data[4]~6_combout\,
	combout => \left_data[4]~feeder_combout\);

-- Location: LCCOMB_X14_Y16_N0
\left_data[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_data[4]~2_combout\ = (!\setting_mode~combout\(1) & (!\setting_mode~combout\(0) & (\setting_rotor~combout\(1) & \right_ring_shift[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_mode~combout\(0),
	datac => \setting_rotor~combout\(1),
	datad => \right_ring_shift[4]~2_combout\,
	combout => \left_data[4]~2_combout\);

-- Location: LCFF_X13_Y15_N3
\left_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \left_data[4]~feeder_combout\,
	ena => \left_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_data(4));

-- Location: LCCOMB_X13_Y15_N0
\input_2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~26_combout\ = (!\setting_rotor~combout\(0) & ((\setting_rotor~combout\(1) & ((!left_data(4)))) # (!\setting_rotor~combout\(1) & (!right_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datab => \setting_rotor~combout\(0),
	datac => right_data(4),
	datad => left_data(4),
	combout => \input_2~26_combout\);

-- Location: LCCOMB_X10_Y16_N12
\input_2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~27_combout\ = ((!\input_2~26_combout\ & ((middle_data(4)) # (!\input_2~12_combout\)))) # (!\input_2~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => middle_data(4),
	datab => \input_2~12_combout\,
	datac => \input_2~17_combout\,
	datad => \input_2~26_combout\,
	combout => \input_2~27_combout\);

-- Location: LCCOMB_X11_Y16_N30
\input_clear~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clear~1_combout\ = ((!\setting_mode~combout\(1)) # (!\input_clear~0_combout\)) # (!\setting_mode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datac => \input_clear~0_combout\,
	datad => \setting_mode~combout\(1),
	combout => \input_clear~1_combout\);

-- Location: LCFF_X10_Y16_N13
\input_2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_2~27_combout\,
	ena => \input_clear~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_2(4));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_code[0]~I\ : cycloneii_io
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
	padio => ww_input_code(0),
	combout => \input_code~combout\(0));

-- Location: LCFF_X14_Y16_N17
\left_ring_shift[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(0),
	sload => VCC,
	ena => \left_ring_shift[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_ring_shift(0));

-- Location: LCCOMB_X14_Y16_N30
\left_data[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_data[0]~3_combout\ = !\input_code~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_code~combout\(0),
	combout => \left_data[0]~3_combout\);

-- Location: LCFF_X14_Y16_N11
\left_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \left_data[0]~3_combout\,
	sload => VCC,
	ena => \left_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_data(0));

-- Location: LCCOMB_X14_Y16_N16
\Mux68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\setting_mode~combout\(1) & ((\setting_mode~combout\(0)) # ((left_ring_shift(0))))) # (!\setting_mode~combout\(1) & (!\setting_mode~combout\(0) & ((!left_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_mode~combout\(0),
	datac => left_ring_shift(0),
	datad => left_data(0),
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X9_Y15_N0
\input_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~2_combout\ = (!\input_code~combout\(4) & (!\input_code~combout\(2) & (!\input_code~combout\(3) & !\setting_mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(4),
	datab => \input_code~combout\(2),
	datac => \input_code~combout\(3),
	datad => \setting_mode~combout\(1),
	combout => \input_0~2_combout\);

-- Location: LCCOMB_X12_Y16_N30
\input_0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~25_combout\ = (\input_0~2_combout\ & \setting_mode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_0~2_combout\,
	datac => \setting_mode~combout\(0),
	combout => \input_0~25_combout\);

-- Location: LCCOMB_X12_Y16_N4
\left_rotor_type[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_rotor_type[0]~0_combout\ = (\setting_rotor~combout\(1) & (\right_rotor_type[0]~0_combout\ & (!\setting_rotor~combout\(0) & \input_0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datab => \right_rotor_type[0]~0_combout\,
	datac => \setting_rotor~combout\(0),
	datad => \input_0~25_combout\,
	combout => \left_rotor_type[0]~0_combout\);

-- Location: LCFF_X12_Y16_N17
\left_rotor_type[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(0),
	sload => VCC,
	ena => \left_rotor_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_rotor_type(0));

-- Location: LCCOMB_X13_Y16_N24
\Mux68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = (\setting_mode~combout\(0) & ((\Mux68~0_combout\ & (!input_2(0))) # (!\Mux68~0_combout\ & ((!left_rotor_type(0)))))) # (!\setting_mode~combout\(0) & (((\Mux68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => input_2(0),
	datac => \Mux68~0_combout\,
	datad => left_rotor_type(0),
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X9_Y16_N0
\middle_data[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \middle_data[0]~1_combout\ = !\input_code~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_code~combout\(0),
	combout => \middle_data[0]~1_combout\);

-- Location: LCCOMB_X10_Y17_N22
\LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (((!\input_code~combout\(1) & !\input_code~combout\(2))) # (!\input_code~combout\(3))) # (!\input_code~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(4),
	datab => \input_code~combout\(1),
	datac => \input_code~combout\(3),
	datad => \input_code~combout\(2),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X9_Y16_N14
\middle_data[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \middle_data[4]~0_combout\ = (\right_data[4]~2_combout\ & (\LessThan5~0_combout\ & (\input_2~12_combout\ & \right_rotor_type[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_data[4]~2_combout\,
	datab => \LessThan5~0_combout\,
	datac => \input_2~12_combout\,
	datad => \right_rotor_type[0]~0_combout\,
	combout => \middle_data[4]~0_combout\);

-- Location: LCFF_X9_Y16_N27
\middle_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \middle_data[0]~1_combout\,
	sload => VCC,
	ena => \middle_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_data(0));

-- Location: LCFF_X9_Y16_N1
\middle_ring_shift[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(0),
	sload => VCC,
	ena => \middle_ring_shift[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_ring_shift(0));

-- Location: LCCOMB_X9_Y16_N26
\Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\setting_mode~combout\(1) & ((\setting_mode~combout\(0)) # ((middle_ring_shift(0))))) # (!\setting_mode~combout\(1) & (!\setting_mode~combout\(0) & (!middle_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_mode~combout\(0),
	datac => middle_data(0),
	datad => middle_ring_shift(0),
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X13_Y16_N14
\Mux34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\setting_mode~combout\(0) & ((\Mux34~0_combout\ & ((!input_2(0)))) # (!\Mux34~0_combout\ & (!middle_rotor_type(0))))) # (!\setting_mode~combout\(0) & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => middle_rotor_type(0),
	datab => input_2(0),
	datac => \setting_mode~combout\(0),
	datad => \Mux34~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X13_Y16_N4
\right_rotor_type[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_rotor_type[0]~feeder_combout\ = \input_code~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(0),
	combout => \right_rotor_type[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y16_N20
\right_rotor_type[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_rotor_type[0]~1_combout\ = (\input_0~25_combout\ & (\right_rotor_type[0]~0_combout\ & (!\setting_rotor~combout\(0) & !\setting_rotor~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_0~25_combout\,
	datab => \right_rotor_type[0]~0_combout\,
	datac => \setting_rotor~combout\(0),
	datad => \setting_rotor~combout\(1),
	combout => \right_rotor_type[0]~1_combout\);

-- Location: LCFF_X13_Y16_N5
\right_rotor_type[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \right_rotor_type[0]~feeder_combout\,
	ena => \right_rotor_type[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_rotor_type(0));

-- Location: LCCOMB_X12_Y15_N20
\right_data[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_data[0]~4_combout\ = !\input_code~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_code~combout\(0),
	combout => \right_data[0]~4_combout\);

-- Location: LCFF_X12_Y15_N11
\right_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \right_data[0]~4_combout\,
	sload => VCC,
	ena => \right_data[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_data(0));

-- Location: LCFF_X12_Y15_N1
\right_ring_shift[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(0),
	sload => VCC,
	ena => \right_ring_shift[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_ring_shift(0));

-- Location: LCCOMB_X12_Y15_N10
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\setting_mode~combout\(1) & ((\setting_mode~combout\(0)) # ((right_ring_shift(0))))) # (!\setting_mode~combout\(1) & (!\setting_mode~combout\(0) & (!right_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_mode~combout\(0),
	datac => right_data(0),
	datad => right_ring_shift(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X13_Y16_N26
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\setting_mode~combout\(0) & ((\Mux10~0_combout\ & (!input_2(0))) # (!\Mux10~0_combout\ & ((!right_rotor_type(0)))))) # (!\setting_mode~combout\(0) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => input_2(0),
	datac => right_rotor_type(0),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X13_Y16_N0
\Mux108~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (\setting_rotor~combout\(0) & ((\setting_rotor~combout\(1)) # ((\Mux34~1_combout\)))) # (!\setting_rotor~combout\(0) & (!\setting_rotor~combout\(1) & ((\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datab => \setting_rotor~combout\(1),
	datac => \Mux34~1_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux108~0_combout\);

-- Location: LCCOMB_X13_Y16_N12
\Mux108~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux108~1_combout\ = (\setting_rotor~combout\(1) & ((\Mux108~0_combout\ & (\reflector_type~regout\)) # (!\Mux108~0_combout\ & ((\Mux68~1_combout\))))) # (!\setting_rotor~combout\(1) & (((\Mux108~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reflector_type~regout\,
	datab => \setting_rotor~combout\(1),
	datac => \Mux68~1_combout\,
	datad => \Mux108~0_combout\,
	combout => \Mux108~1_combout\);

-- Location: LCCOMB_X13_Y16_N28
\input_2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~11_combout\ = (!\Mux108~1_combout\) # (!\setting_init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \setting_init~combout\,
	datad => \Mux108~1_combout\,
	combout => \input_2~11_combout\);

-- Location: LCFF_X13_Y16_N29
\input_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_2(0));

-- Location: LCCOMB_X9_Y16_N12
\input_2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~22_combout\ = (middle_ring_shift(2) & (!middle_ring_shift(4) & ((middle_ring_shift(1)) # (!middle_ring_shift(3))))) # (!middle_ring_shift(2) & (middle_ring_shift(4) & ((middle_ring_shift(3)) # (!middle_ring_shift(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => middle_ring_shift(2),
	datab => middle_ring_shift(1),
	datac => middle_ring_shift(4),
	datad => middle_ring_shift(3),
	combout => \input_2~22_combout\);

-- Location: LCCOMB_X14_Y16_N22
\input_2~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~47_combout\ = (left_ring_shift(2) & (!left_ring_shift(4) & ((left_ring_shift(1)) # (!left_ring_shift(3))))) # (!left_ring_shift(2) & (left_ring_shift(4) & ((left_ring_shift(3)) # (!left_ring_shift(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => left_ring_shift(2),
	datab => left_ring_shift(1),
	datac => left_ring_shift(4),
	datad => left_ring_shift(3),
	combout => \input_2~47_combout\);

-- Location: LCFF_X10_Y16_N11
\right_ring_shift[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(1),
	sload => VCC,
	ena => \right_ring_shift[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_ring_shift(1));

-- Location: LCCOMB_X10_Y16_N28
\input_2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~23_combout\ = (!right_ring_shift(2) & (right_ring_shift(4) & ((right_ring_shift(3)) # (!right_ring_shift(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => right_ring_shift(2),
	datab => right_ring_shift(3),
	datac => right_ring_shift(4),
	datad => right_ring_shift(1),
	combout => \input_2~23_combout\);

-- Location: LCCOMB_X11_Y16_N18
\input_2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~48_combout\ = (\setting_rotor~combout\(1) & (((\input_2~47_combout\)))) # (!\setting_rotor~combout\(1) & ((\input_2~24_combout\) # ((\input_2~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_2~24_combout\,
	datab => \setting_rotor~combout\(1),
	datac => \input_2~47_combout\,
	datad => \input_2~23_combout\,
	combout => \input_2~48_combout\);

-- Location: LCCOMB_X11_Y16_N14
\input_2~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~45_combout\ = (\setting_rotor~combout\(0) & (!\setting_rotor~combout\(1) & (\input_2~22_combout\))) # (!\setting_rotor~combout\(0) & (((\input_2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datab => \setting_rotor~combout\(1),
	datac => \input_2~22_combout\,
	datad => \input_2~48_combout\,
	combout => \input_2~45_combout\);

-- Location: LCCOMB_X12_Y16_N6
\middle_rotor_type[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \middle_rotor_type[0]~0_combout\ = (\setting_mode~combout\(0) & (\input_0~2_combout\ & (\input_2~12_combout\ & \right_rotor_type[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => \input_0~2_combout\,
	datac => \input_2~12_combout\,
	datad => \right_rotor_type[0]~0_combout\,
	combout => \middle_rotor_type[0]~0_combout\);

-- Location: LCFF_X12_Y16_N15
\middle_rotor_type[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(0),
	sload => VCC,
	ena => \middle_rotor_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_rotor_type(0));

-- Location: LCCOMB_X12_Y16_N26
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (!\setting_rotor~combout\(1) & ((\setting_rotor~combout\(0) & (middle_rotor_type(0))) # (!\setting_rotor~combout\(0) & ((right_rotor_type(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datab => \setting_rotor~combout\(0),
	datac => middle_rotor_type(0),
	datad => right_rotor_type(0),
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X12_Y16_N24
\Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\setting_mode~combout\(0) & ((\Add0~2_combout\) # ((\setting_rotor~combout\(1) & left_rotor_type(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => \setting_rotor~combout\(1),
	datac => left_rotor_type(0),
	datad => \Add0~2_combout\,
	combout => \Add0~3_combout\);

-- Location: LCFF_X12_Y16_N13
\left_rotor_type[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(1),
	sload => VCC,
	ena => \left_rotor_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_rotor_type(1));

-- Location: LCFF_X12_Y16_N11
\middle_rotor_type[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(1),
	sload => VCC,
	ena => \middle_rotor_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_rotor_type(1));

-- Location: LCFF_X13_Y16_N31
\right_rotor_type[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_code~combout\(1),
	sload => VCC,
	ena => \right_rotor_type[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_rotor_type(1));

-- Location: LCCOMB_X12_Y16_N10
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (!\setting_rotor~combout\(1) & ((\setting_rotor~combout\(0) & (middle_rotor_type(1))) # (!\setting_rotor~combout\(0) & ((right_rotor_type(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datab => \setting_rotor~combout\(0),
	datac => middle_rotor_type(1),
	datad => right_rotor_type(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X12_Y16_N12
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Add0~0_combout\) # ((\setting_rotor~combout\(1) & left_rotor_type(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(1),
	datac => left_rotor_type(1),
	datad => \Add0~0_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X12_Y16_N0
\input_2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~20_combout\ = (\setting_mode~combout\(1) & (!input_2(2))) # (!\setting_mode~combout\(1) & (((\Add0~3_combout\ & \Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => input_2(2),
	datac => \Add0~3_combout\,
	datad => \Add0~1_combout\,
	combout => \input_2~20_combout\);

-- Location: LCCOMB_X10_Y17_N24
\left_data[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_data[2]~5_combout\ = !\input_code~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(2),
	combout => \left_data[2]~5_combout\);

-- Location: LCFF_X10_Y17_N5
\left_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \left_data[2]~5_combout\,
	sload => VCC,
	ena => \left_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_data(2));

-- Location: LCCOMB_X10_Y17_N14
\middle_data[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \middle_data[2]~3_combout\ = !\input_code~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(2),
	combout => \middle_data[2]~3_combout\);

-- Location: LCFF_X10_Y17_N27
\middle_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \middle_data[2]~3_combout\,
	sload => VCC,
	ena => \middle_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_data(2));

-- Location: LCCOMB_X10_Y17_N0
\right_data[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_data[2]~6_combout\ = !\input_code~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(2),
	combout => \right_data[2]~6_combout\);

-- Location: LCFF_X11_Y17_N21
\right_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \right_data[2]~6_combout\,
	sload => VCC,
	ena => \right_data[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_data(2));

-- Location: LCCOMB_X10_Y17_N26
\input_2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~18_combout\ = (!\setting_rotor~combout\(1) & ((\setting_rotor~combout\(0) & (!middle_data(2))) # (!\setting_rotor~combout\(0) & ((!right_data(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datab => \setting_rotor~combout\(1),
	datac => middle_data(2),
	datad => right_data(2),
	combout => \input_2~18_combout\);

-- Location: LCCOMB_X10_Y17_N4
\input_2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~19_combout\ = (\input_2~17_combout\ & ((\input_2~18_combout\) # ((\input_2~8_combout\ & !left_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_2~8_combout\,
	datab => \input_2~17_combout\,
	datac => left_data(2),
	datad => \input_2~18_combout\,
	combout => \input_2~19_combout\);

-- Location: LCCOMB_X11_Y16_N22
\input_2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~21_combout\ = (\input_2~19_combout\) # ((\setting_mode~combout\(0) & (\input_clear~0_combout\ & \input_2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => \input_clear~0_combout\,
	datac => \input_2~20_combout\,
	datad => \input_2~19_combout\,
	combout => \input_2~21_combout\);

-- Location: LCCOMB_X11_Y16_N24
\input_2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~25_combout\ = (!\input_2~21_combout\ & (((!\input_2~45_combout\) # (!\Mux21~0_combout\)) # (!\setting_init~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_init~combout\,
	datab => \Mux21~0_combout\,
	datac => \input_2~45_combout\,
	datad => \input_2~21_combout\,
	combout => \input_2~25_combout\);

-- Location: LCFF_X11_Y16_N25
\input_2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_2~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_2(2));

-- Location: LCCOMB_X10_Y18_N20
\HEX_2|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux6~12_combout\ = (input_2(1) & ((input_2(0) & ((!input_2(2)))) # (!input_2(0) & (!input_2(4))))) # (!input_2(1) & (((!input_2(2))) # (!input_2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(4),
	datac => input_2(0),
	datad => input_2(2),
	combout => \HEX_2|Mux6~12_combout\);

-- Location: LCCOMB_X10_Y18_N10
\HEX_2|Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux6~13_combout\ = (\HEX_2|Mux6~12_combout\) # ((!input_2(5) & ((input_2(1)) # (input_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(5),
	datac => \HEX_2|Mux6~12_combout\,
	datad => input_2(2),
	combout => \HEX_2|Mux6~13_combout\);

-- Location: LCCOMB_X10_Y18_N24
\HEX_2|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux6~7_combout\ = ((input_2(2) & (input_2(1) $ (input_2(0))))) # (!input_2(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(5),
	datac => input_2(0),
	datad => input_2(2),
	combout => \HEX_2|Mux6~7_combout\);

-- Location: LCCOMB_X10_Y18_N22
\HEX_2|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux6~8_combout\ = (input_2(1) & ((input_2(0) & ((input_2(5)) # (input_2(2)))) # (!input_2(0) & ((!input_2(2)))))) # (!input_2(1) & (((input_2(0))) # (!input_2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(5),
	datac => input_2(0),
	datad => input_2(2),
	combout => \HEX_2|Mux6~8_combout\);

-- Location: LCCOMB_X10_Y18_N0
\HEX_2|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux6~6_combout\ = (input_2(4) & ((\HEX_2|Mux6~8_combout\))) # (!input_2(4) & (\HEX_2|Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => input_2(4),
	datac => \HEX_2|Mux6~7_combout\,
	datad => \HEX_2|Mux6~8_combout\,
	combout => \HEX_2|Mux6~6_combout\);

-- Location: LCCOMB_X11_Y16_N0
\input_2~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~43_combout\ = (!\setting_rotor~combout\(0) & (\setting_init~combout\ & (!\setting_mode~combout\(0) & \setting_rotor~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datab => \setting_init~combout\,
	datac => \setting_mode~combout\(0),
	datad => \setting_rotor~combout\(1),
	combout => \input_2~43_combout\);

-- Location: LCCOMB_X12_Y16_N14
\right_data[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_data[3]~8_combout\ = !\input_code~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(3),
	combout => \right_data[3]~8_combout\);

-- Location: LCFF_X11_Y16_N29
\right_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \right_data[3]~8_combout\,
	sload => VCC,
	ena => \right_data[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_data(3));

-- Location: LCCOMB_X11_Y16_N4
\input_2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~30_combout\ = (\setting_mode~combout\(1) & (right_data(3) $ (!right_ring_shift(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => right_data(3),
	datad => right_ring_shift(3),
	combout => \input_2~30_combout\);

-- Location: LCCOMB_X10_Y16_N4
\input_2~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~31_combout\ = (right_ring_shift(4) & ((right_data(3)) # ((!right_ring_shift(2) & \input_2~30_combout\)))) # (!right_ring_shift(4) & (right_data(3) $ (((\input_2~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => right_ring_shift(4),
	datab => right_data(3),
	datac => right_ring_shift(2),
	datad => \input_2~30_combout\,
	combout => \input_2~31_combout\);

-- Location: LCCOMB_X10_Y16_N8
\input_2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~28_combout\ = (right_ring_shift(2) & ((right_ring_shift(4) $ (!right_ring_shift(3))))) # (!right_ring_shift(2) & ((right_ring_shift(1) & ((!right_ring_shift(3)))) # (!right_ring_shift(1) & (!right_ring_shift(4) & right_ring_shift(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => right_ring_shift(1),
	datab => right_ring_shift(4),
	datac => right_ring_shift(3),
	datad => right_ring_shift(2),
	combout => \input_2~28_combout\);

-- Location: LCCOMB_X10_Y16_N26
\input_2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~29_combout\ = (\setting_mode~combout\(1) & (\input_2~28_combout\)) # (!\setting_mode~combout\(1) & ((!right_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datac => \input_2~28_combout\,
	datad => right_data(3),
	combout => \input_2~29_combout\);

-- Location: LCCOMB_X10_Y16_N16
\input_2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~32_combout\ = (\LessThan0~0_combout\ & ((\input_2~29_combout\))) # (!\LessThan0~0_combout\ & (!\input_2~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \input_2~31_combout\,
	datad => \input_2~29_combout\,
	combout => \input_2~32_combout\);

-- Location: LCCOMB_X9_Y16_N16
\middle_data[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \middle_data[3]~5_combout\ = !\input_code~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(3),
	combout => \middle_data[3]~5_combout\);

-- Location: LCFF_X9_Y16_N21
\middle_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \middle_data[3]~5_combout\,
	sload => VCC,
	ena => \middle_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_data(3));

-- Location: LCCOMB_X9_Y16_N28
\input_2~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~35_combout\ = (\setting_mode~combout\(1) & (middle_data(3) $ (!middle_ring_shift(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datac => middle_data(3),
	datad => middle_ring_shift(3),
	combout => \input_2~35_combout\);

-- Location: LCCOMB_X9_Y16_N20
\input_2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~36_combout\ = (middle_ring_shift(4) & ((middle_data(3)) # ((!middle_ring_shift(2) & \input_2~35_combout\)))) # (!middle_ring_shift(4) & ((middle_data(3) $ (\input_2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => middle_ring_shift(4),
	datab => middle_ring_shift(2),
	datac => middle_data(3),
	datad => \input_2~35_combout\,
	combout => \input_2~36_combout\);

-- Location: LCCOMB_X9_Y16_N2
\input_2~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~33_combout\ = (middle_ring_shift(2) & (middle_ring_shift(4) $ (((!middle_ring_shift(3)))))) # (!middle_ring_shift(2) & ((middle_ring_shift(1) & ((!middle_ring_shift(3)))) # (!middle_ring_shift(1) & (!middle_ring_shift(4) & 
-- middle_ring_shift(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => middle_ring_shift(4),
	datab => middle_ring_shift(1),
	datac => middle_ring_shift(2),
	datad => middle_ring_shift(3),
	combout => \input_2~33_combout\);

-- Location: LCCOMB_X9_Y16_N10
\input_2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~34_combout\ = (\setting_mode~combout\(1) & ((\input_2~33_combout\))) # (!\setting_mode~combout\(1) & (!middle_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => middle_data(3),
	datab => \setting_mode~combout\(1),
	datad => \input_2~33_combout\,
	combout => \input_2~34_combout\);

-- Location: LCCOMB_X10_Y16_N6
\input_2~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~37_combout\ = (\LessThan2~0_combout\ & ((\input_2~34_combout\))) # (!\LessThan2~0_combout\ & (!\input_2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \input_2~36_combout\,
	datad => \input_2~34_combout\,
	combout => \input_2~37_combout\);

-- Location: LCCOMB_X10_Y16_N20
\input_2~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~39_combout\ = (\input_2~38_combout\ & ((\setting_rotor~combout\(0) & ((\input_2~37_combout\))) # (!\setting_rotor~combout\(0) & (\input_2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_2~38_combout\,
	datab => \setting_rotor~combout\(0),
	datac => \input_2~32_combout\,
	datad => \input_2~37_combout\,
	combout => \input_2~39_combout\);

-- Location: LCCOMB_X14_Y16_N24
\left_data[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_data[3]~7_combout\ = !\input_code~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_code~combout\(3),
	combout => \left_data[3]~7_combout\);

-- Location: LCFF_X14_Y16_N5
\left_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \left_data[3]~7_combout\,
	sload => VCC,
	ena => \left_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_data(3));

-- Location: LCCOMB_X14_Y16_N10
\input_2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~46_combout\ = (left_ring_shift(4) & (left_ring_shift(2) $ (left_ring_shift(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => left_ring_shift(2),
	datab => left_ring_shift(4),
	datad => left_ring_shift(3),
	combout => \input_2~46_combout\);

-- Location: LCCOMB_X14_Y16_N4
\input_2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~40_combout\ = (\setting_mode~combout\(1) & ((\LessThan8~0_combout\ & ((!\input_2~46_combout\))) # (!\LessThan8~0_combout\ & (!left_data(3) & \input_2~46_combout\)))) # (!\setting_mode~combout\(1) & (((!left_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \LessThan8~0_combout\,
	datac => left_data(3),
	datad => \input_2~46_combout\,
	combout => \input_2~40_combout\);

-- Location: LCCOMB_X14_Y16_N18
\input_2[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2[4]~41_combout\ = (\setting_mode~combout\(1) & (((!left_ring_shift(2) & !left_ring_shift(3))) # (!left_ring_shift(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => left_ring_shift(2),
	datac => left_ring_shift(4),
	datad => left_ring_shift(3),
	combout => \input_2[4]~41_combout\);

-- Location: LCCOMB_X14_Y16_N20
\input_2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~42_combout\ = (\input_2[4]~41_combout\ & (left_ring_shift(3) $ (((\LessThan8~1_combout\ & \input_2~40_combout\))))) # (!\input_2[4]~41_combout\ & (((\input_2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => left_ring_shift(3),
	datac => \input_2~40_combout\,
	datad => \input_2[4]~41_combout\,
	combout => \input_2~42_combout\);

-- Location: LCCOMB_X10_Y16_N18
\input_2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~44_combout\ = (!\input_2~39_combout\ & ((!\input_2~42_combout\) # (!\input_2~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_2~43_combout\,
	datac => \input_2~39_combout\,
	datad => \input_2~42_combout\,
	combout => \input_2~44_combout\);

-- Location: LCFF_X10_Y16_N19
\input_2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_2~44_combout\,
	ena => \input_clear~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_2(3));

-- Location: LCCOMB_X11_Y16_N28
\input_clear~1_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clear~1_wirecell_combout\ = !\input_clear~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_clear~1_combout\,
	combout => \input_clear~1_wirecell_combout\);

-- Location: LCFF_X11_Y16_N5
\input_clear[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_clear~1_wirecell_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_clear(2));

-- Location: LCCOMB_X10_Y18_N14
\HEX_2|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux6~11_combout\ = (input_clear(2)) # ((input_2(3) & ((\HEX_2|Mux6~6_combout\))) # (!input_2(3) & (\HEX_2|Mux6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_2|Mux6~13_combout\,
	datab => \HEX_2|Mux6~6_combout\,
	datac => input_2(3),
	datad => input_clear(2),
	combout => \HEX_2|Mux6~11_combout\);

-- Location: LCCOMB_X10_Y15_N22
\right_data[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \right_data[1]~5_combout\ = !\input_code~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_code~combout\(1),
	combout => \right_data[1]~5_combout\);

-- Location: LCFF_X11_Y16_N7
\right_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \right_data[1]~5_combout\,
	sload => VCC,
	ena => \right_data[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => right_data(1));

-- Location: LCCOMB_X12_Y16_N8
\Mux107~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~12_combout\ = (!\setting_mode~combout\(1) & (\setting_mode~combout\(0) & (\Add0~3_combout\ $ (\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_mode~combout\(0),
	datac => \Add0~3_combout\,
	datad => \Add0~1_combout\,
	combout => \Mux107~12_combout\);

-- Location: LCCOMB_X10_Y16_N0
\Mux107~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~9_combout\ = right_ring_shift(1) $ (((\LessThan0~0_combout\ & \input_2[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => right_ring_shift(1),
	datac => \LessThan0~0_combout\,
	datad => \input_2[4]~5_combout\,
	combout => \Mux107~9_combout\);

-- Location: LCCOMB_X10_Y16_N2
\Mux107~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~10_combout\ = (\setting_mode~combout\(1) & ((\setting_mode~combout\(0) & (!input_2(1))) # (!\setting_mode~combout\(0) & ((\Mux107~9_combout\))))) # (!\setting_mode~combout\(1) & (\setting_mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_mode~combout\(0),
	datac => input_2(1),
	datad => \Mux107~9_combout\,
	combout => \Mux107~10_combout\);

-- Location: LCCOMB_X11_Y16_N8
\Mux107~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~11_combout\ = (\Mux107~12_combout\) # ((\setting_mode~combout\(1) & ((\Mux107~10_combout\))) # (!\setting_mode~combout\(1) & (!right_data(1) & !\Mux107~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => right_data(1),
	datac => \Mux107~12_combout\,
	datad => \Mux107~10_combout\,
	combout => \Mux107~11_combout\);

-- Location: LCCOMB_X14_Y16_N28
\left_data[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \left_data[1]~4_combout\ = !\input_code~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_code~combout\(1),
	combout => \left_data[1]~4_combout\);

-- Location: LCFF_X14_Y16_N7
\left_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \left_data[1]~4_combout\,
	sload => VCC,
	ena => \left_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => left_data(1));

-- Location: LCCOMB_X14_Y16_N12
\Mux107~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~7_combout\ = (\setting_mode~combout\(1) & (left_ring_shift(1) $ (((\LessThan8~0_combout\ & \input_2[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => left_ring_shift(1),
	datac => \LessThan8~0_combout\,
	datad => \input_2[4]~6_combout\,
	combout => \Mux107~7_combout\);

-- Location: LCCOMB_X14_Y16_N6
\Mux107~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~8_combout\ = (!\setting_mode~combout\(0) & ((\Mux107~7_combout\) # ((!\setting_mode~combout\(1) & !left_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_mode~combout\(0),
	datac => left_data(1),
	datad => \Mux107~7_combout\,
	combout => \Mux107~8_combout\);

-- Location: LCCOMB_X12_Y16_N16
\Mux107~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~3_combout\ = (\setting_mode~combout\(0) & !\setting_mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datad => \setting_mode~combout\(1),
	combout => \Mux107~3_combout\);

-- Location: LCCOMB_X12_Y16_N22
\Mux107~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~4_combout\ = (\Mux107~2_combout\) # ((\Mux107~3_combout\ & (\Add0~3_combout\ $ (\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux107~2_combout\,
	datab => \Mux107~3_combout\,
	datac => \Add0~3_combout\,
	datad => \Add0~1_combout\,
	combout => \Mux107~4_combout\);

-- Location: LCCOMB_X11_Y16_N16
\input_2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~14_combout\ = (\input_2~8_combout\ & (\setting_init~combout\ & ((\Mux107~8_combout\) # (\Mux107~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_2~8_combout\,
	datab => \setting_init~combout\,
	datac => \Mux107~8_combout\,
	datad => \Mux107~4_combout\,
	combout => \input_2~14_combout\);

-- Location: LCCOMB_X12_Y16_N28
\middle_data[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \middle_data[1]~2_combout\ = !\input_code~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(1),
	combout => \middle_data[1]~2_combout\);

-- Location: LCFF_X9_Y16_N11
\middle_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \middle_data[1]~2_combout\,
	sload => VCC,
	ena => \middle_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => middle_data(1));

-- Location: LCCOMB_X9_Y16_N8
\Mux107~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~5_combout\ = (\setting_mode~combout\(1) & (middle_ring_shift(1) $ (((\LessThan2~0_combout\ & \input_2[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => middle_ring_shift(1),
	datac => \LessThan2~0_combout\,
	datad => \input_2[4]~4_combout\,
	combout => \Mux107~5_combout\);

-- Location: LCCOMB_X10_Y16_N30
\Mux107~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux107~6_combout\ = (!\setting_mode~combout\(0) & ((\Mux107~5_combout\) # ((!\setting_mode~combout\(1) & !middle_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(1),
	datab => \setting_mode~combout\(0),
	datac => middle_data(1),
	datad => \Mux107~5_combout\,
	combout => \Mux107~6_combout\);

-- Location: LCCOMB_X11_Y16_N10
\input_2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~13_combout\ = (\input_2~12_combout\ & (\setting_init~combout\ & ((\Mux107~6_combout\) # (\Mux107~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_2~12_combout\,
	datab => \setting_init~combout\,
	datac => \Mux107~6_combout\,
	datad => \Mux107~4_combout\,
	combout => \input_2~13_combout\);

-- Location: LCCOMB_X11_Y16_N26
\input_2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_2~16_combout\ = (!\input_2~14_combout\ & (!\input_2~13_combout\ & ((!\Mux107~11_combout\) # (!\input_2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_2~15_combout\,
	datab => \Mux107~11_combout\,
	datac => \input_2~14_combout\,
	datad => \input_2~13_combout\,
	combout => \input_2~16_combout\);

-- Location: LCFF_X11_Y16_N27
\input_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_2(1));

-- Location: LCCOMB_X10_Y19_N28
\HEX_2|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux5~7_combout\ = (input_2(4) & (input_2(2) & ((!input_2(5)) # (!input_2(3))))) # (!input_2(4) & (input_2(5) & (input_2(3) $ (input_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(3),
	datab => input_2(4),
	datac => input_2(2),
	datad => input_2(5),
	combout => \HEX_2|Mux5~7_combout\);

-- Location: LCCOMB_X10_Y19_N14
\HEX_2|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux5~8_combout\ = (input_2(5) & (input_2(3) $ (input_2(4) $ (input_2(2))))) # (!input_2(5) & (input_2(4) & ((input_2(3)) # (input_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(3),
	datab => input_2(4),
	datac => input_2(2),
	datad => input_2(5),
	combout => \HEX_2|Mux5~8_combout\);

-- Location: LCCOMB_X10_Y19_N4
\HEX_2|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux5~6_combout\ = (input_2(0) & ((\HEX_2|Mux5~8_combout\))) # (!input_2(0) & (\HEX_2|Mux5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX_2|Mux5~7_combout\,
	datac => \HEX_2|Mux5~8_combout\,
	datad => input_2(0),
	combout => \HEX_2|Mux5~6_combout\);

-- Location: LCCOMB_X10_Y19_N0
\HEX_2|Mux5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux5~12_combout\ = (input_2(2) & (input_2(3) & (!input_2(5) & input_2(0)))) # (!input_2(2) & (input_2(5) & ((!input_2(0)) # (!input_2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(3),
	datab => input_2(2),
	datac => input_2(5),
	datad => input_2(0),
	combout => \HEX_2|Mux5~12_combout\);

-- Location: LCCOMB_X10_Y19_N18
\HEX_2|Mux5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux5~13_combout\ = (\HEX_2|Mux5~12_combout\ & (input_2(4) $ (((input_2(3) & !input_2(0)))))) # (!\HEX_2|Mux5~12_combout\ & (input_2(3) & (input_2(4) & !input_2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(3),
	datab => \HEX_2|Mux5~12_combout\,
	datac => input_2(4),
	datad => input_2(0),
	combout => \HEX_2|Mux5~13_combout\);

-- Location: LCCOMB_X10_Y19_N22
\HEX_2|Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux5~11_combout\ = (!input_clear(2) & ((input_2(1) & (\HEX_2|Mux5~6_combout\)) # (!input_2(1) & ((\HEX_2|Mux5~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => \HEX_2|Mux5~6_combout\,
	datac => input_clear(2),
	datad => \HEX_2|Mux5~13_combout\,
	combout => \HEX_2|Mux5~11_combout\);

-- Location: LCCOMB_X11_Y17_N22
\HEX_2|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux4~12_combout\ = (input_2(4) & ((input_2(1) & (input_2(2))) # (!input_2(1) & ((!input_2(0)) # (!input_2(2)))))) # (!input_2(4) & (((input_2(0)) # (!input_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(4),
	datac => input_2(2),
	datad => input_2(0),
	combout => \HEX_2|Mux4~12_combout\);

-- Location: LCCOMB_X11_Y17_N12
\HEX_2|Mux4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux4~13_combout\ = (input_2(5) & (((\HEX_2|Mux4~12_combout\)))) # (!input_2(5) & (input_2(4) & ((\HEX_2|Mux4~12_combout\) # (!input_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(5),
	datab => input_2(2),
	datac => input_2(4),
	datad => \HEX_2|Mux4~12_combout\,
	combout => \HEX_2|Mux4~13_combout\);

-- Location: LCCOMB_X11_Y17_N18
\HEX_2|Mux4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux4~14_combout\ = (input_2(5) & (input_2(0) & (input_2(1) $ (!input_2(2))))) # (!input_2(5) & (input_2(1) & ((input_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(0),
	datac => input_2(2),
	datad => input_2(5),
	combout => \HEX_2|Mux4~14_combout\);

-- Location: LCCOMB_X11_Y17_N4
\HEX_2|Mux4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux4~15_combout\ = (input_2(1) & ((\HEX_2|Mux4~14_combout\ & (input_2(4) $ (input_2(5)))) # (!\HEX_2|Mux4~14_combout\ & (input_2(4) & input_2(5))))) # (!input_2(1) & (\HEX_2|Mux4~14_combout\ & (input_2(4) & input_2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => \HEX_2|Mux4~14_combout\,
	datac => input_2(4),
	datad => input_2(5),
	combout => \HEX_2|Mux4~15_combout\);

-- Location: LCCOMB_X10_Y17_N6
\HEX_2|Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux4~11_combout\ = (!input_clear(2) & ((input_2(3) & (\HEX_2|Mux4~13_combout\)) # (!input_2(3) & ((\HEX_2|Mux4~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(3),
	datab => \HEX_2|Mux4~13_combout\,
	datac => input_clear(2),
	datad => \HEX_2|Mux4~15_combout\,
	combout => \HEX_2|Mux4~11_combout\);

-- Location: LCCOMB_X10_Y19_N10
\HEX_2|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux3~7_combout\ = (input_2(2) & (((input_2(0))) # (!input_2(1)))) # (!input_2(2) & ((input_2(1) $ (input_2(0))) # (!input_2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(2),
	datac => input_2(3),
	datad => input_2(0),
	combout => \HEX_2|Mux3~7_combout\);

-- Location: LCCOMB_X10_Y19_N12
\HEX_2|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux3~8_combout\ = (input_2(2) & (((!input_2(1) & input_2(3))) # (!input_2(0)))) # (!input_2(2) & (input_2(0) & ((input_2(3)) # (!input_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(2),
	datac => input_2(3),
	datad => input_2(0),
	combout => \HEX_2|Mux3~8_combout\);

-- Location: LCCOMB_X10_Y19_N8
\HEX_2|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux3~11_combout\ = (input_2(5) & ((input_2(4) & ((\HEX_2|Mux3~8_combout\))) # (!input_2(4) & (\HEX_2|Mux3~5_combout\)))) # (!input_2(5) & (((!input_2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_2|Mux3~5_combout\,
	datab => input_2(5),
	datac => input_2(4),
	datad => \HEX_2|Mux3~8_combout\,
	combout => \HEX_2|Mux3~11_combout\);

-- Location: LCCOMB_X10_Y19_N26
\HEX_2|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux3~12_combout\ = (\HEX_2|Mux3~11_combout\) # ((input_clear(2)) # ((\HEX_2|Mux3~7_combout\ & !input_2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_2|Mux3~7_combout\,
	datab => \HEX_2|Mux3~11_combout\,
	datac => input_clear(2),
	datad => input_2(5),
	combout => \HEX_2|Mux3~12_combout\);

-- Location: LCCOMB_X10_Y18_N2
\HEX_2|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux2~7_combout\ = (input_2(0) & ((input_2(1) & ((input_2(2)))) # (!input_2(1) & (input_2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(3),
	datac => input_2(0),
	datad => input_2(2),
	combout => \HEX_2|Mux2~7_combout\);

-- Location: LCCOMB_X10_Y18_N12
\HEX_2|Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux2~11_combout\ = (input_2(5) & ((\HEX_2|Mux2~5_combout\) # ((input_2(4))))) # (!input_2(5) & (((input_2(4) & \HEX_2|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_2|Mux2~5_combout\,
	datab => input_2(5),
	datac => input_2(4),
	datad => \HEX_2|Mux2~7_combout\,
	combout => \HEX_2|Mux2~11_combout\);

-- Location: LCCOMB_X10_Y18_N18
\HEX_2|Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux2~12_combout\ = (!input_clear(2) & (\HEX_2|Mux2~11_combout\ & ((\HEX_2|Mux2~7_combout\) # (input_2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_clear(2),
	datab => \HEX_2|Mux2~7_combout\,
	datac => \HEX_2|Mux2~11_combout\,
	datad => input_2(5),
	combout => \HEX_2|Mux2~12_combout\);

-- Location: LCCOMB_X10_Y18_N8
\HEX_2|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux1~7_combout\ = (input_2(1) & ((input_2(5) & (input_2(0))) # (!input_2(5) & ((input_2(2)))))) # (!input_2(1) & (input_2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(5),
	datac => input_2(0),
	datad => input_2(2),
	combout => \HEX_2|Mux1~7_combout\);

-- Location: LCCOMB_X10_Y18_N26
\HEX_2|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux1~8_combout\ = (input_2(1) & ((input_2(5)) # ((input_2(0)) # (!input_2(2))))) # (!input_2(1) & ((input_2(5) & ((input_2(0)) # (!input_2(2)))) # (!input_2(5) & (input_2(0) & !input_2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(5),
	datac => input_2(0),
	datad => input_2(2),
	combout => \HEX_2|Mux1~8_combout\);

-- Location: LCCOMB_X10_Y18_N4
\HEX_2|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux1~6_combout\ = (input_2(3) & ((\HEX_2|Mux1~8_combout\))) # (!input_2(3) & (\HEX_2|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => input_2(3),
	datac => \HEX_2|Mux1~7_combout\,
	datad => \HEX_2|Mux1~8_combout\,
	combout => \HEX_2|Mux1~6_combout\);

-- Location: LCCOMB_X10_Y18_N28
\HEX_2|Mux1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux1~12_combout\ = (input_2(1) & (input_2(3) $ (((input_2(0) & input_2(2)))))) # (!input_2(1) & (input_2(3) & ((input_2(2)) # (!input_2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(3),
	datac => input_2(0),
	datad => input_2(2),
	combout => \HEX_2|Mux1~12_combout\);

-- Location: LCCOMB_X10_Y18_N6
\HEX_2|Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux1~13_combout\ = (input_2(5) & \HEX_2|Mux1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => input_2(5),
	datad => \HEX_2|Mux1~12_combout\,
	combout => \HEX_2|Mux1~13_combout\);

-- Location: LCCOMB_X10_Y18_N30
\HEX_2|Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux1~11_combout\ = (!input_clear(2) & ((input_2(4) & (\HEX_2|Mux1~6_combout\)) # (!input_2(4) & ((\HEX_2|Mux1~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_clear(2),
	datab => \HEX_2|Mux1~6_combout\,
	datac => input_2(4),
	datad => \HEX_2|Mux1~13_combout\,
	combout => \HEX_2|Mux1~11_combout\);

-- Location: LCCOMB_X10_Y19_N20
\HEX_2|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux0~7_combout\ = ((input_2(1) & (!input_2(2))) # (!input_2(1) & ((input_2(2)) # (input_2(0))))) # (!input_2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(2),
	datac => input_2(3),
	datad => input_2(0),
	combout => \HEX_2|Mux0~7_combout\);

-- Location: LCCOMB_X10_Y19_N30
\HEX_2|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux0~8_combout\ = (input_2(1) & ((input_2(3)) # ((!input_2(2) & !input_2(0))))) # (!input_2(1) & (input_2(0) $ (((input_2(3)) # (!input_2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_2(1),
	datab => input_2(2),
	datac => input_2(3),
	datad => input_2(0),
	combout => \HEX_2|Mux0~8_combout\);

-- Location: LCCOMB_X10_Y19_N24
\HEX_2|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux0~11_combout\ = (input_2(5) & ((input_2(4) & ((\HEX_2|Mux0~8_combout\))) # (!input_2(4) & (\HEX_2|Mux0~5_combout\)))) # (!input_2(5) & (((!input_2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_2|Mux0~5_combout\,
	datab => input_2(5),
	datac => input_2(4),
	datad => \HEX_2|Mux0~8_combout\,
	combout => \HEX_2|Mux0~11_combout\);

-- Location: LCCOMB_X10_Y19_N2
\HEX_2|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_2|Mux0~12_combout\ = (input_clear(2)) # ((\HEX_2|Mux0~11_combout\) # ((\HEX_2|Mux0~7_combout\ & !input_2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_2|Mux0~7_combout\,
	datab => input_2(5),
	datac => input_clear(2),
	datad => \HEX_2|Mux0~11_combout\,
	combout => \HEX_2|Mux0~12_combout\);

-- Location: LCCOMB_X10_Y17_N20
\Mux55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = \input_code~combout\(4) $ ((((!\input_code~combout\(1) & !\input_code~combout\(2))) # (!\input_code~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(4),
	datab => \input_code~combout\(1),
	datac => \input_code~combout\(3),
	datad => \input_code~combout\(2),
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X10_Y17_N12
\Mux95~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux95~4_combout\ = ((\Mux55~0_combout\) # ((\setting_rotor~combout\(0) & \setting_rotor~combout\(1)))) # (!\Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_rotor~combout\(0),
	datab => \Mux21~0_combout\,
	datac => \setting_rotor~combout\(1),
	datad => \Mux55~0_combout\,
	combout => \Mux95~4_combout\);

-- Location: LCCOMB_X9_Y17_N16
\input_clear[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_clear[1]~feeder_combout\ = \Mux95~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux95~4_combout\,
	combout => \input_clear[1]~feeder_combout\);

-- Location: LCFF_X9_Y17_N17
\input_clear[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_clear[1]~feeder_combout\,
	sdata => VCC,
	sload => \ALT_INV_setting_init~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_clear(1));

-- Location: LCCOMB_X10_Y17_N2
\LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ((!\input_code~combout\(3) & !\input_code~combout\(2))) # (!\input_code~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(4),
	datac => \input_code~combout\(3),
	datad => \input_code~combout\(2),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\input_1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_1[0]~1_combout\ = !\LessThan7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan7~0_combout\,
	combout => \input_1[0]~1_combout\);

-- Location: LCCOMB_X10_Y15_N0
\Mux93~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux93~2_combout\ = (\setting_rotor~combout\(0) & \setting_rotor~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \setting_rotor~combout\(0),
	datac => \setting_rotor~combout\(1),
	combout => \Mux93~2_combout\);

-- Location: LCCOMB_X9_Y17_N6
\input_1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_1[2]~0_combout\ = (\Mux21~0_combout\ & (!\Mux93~2_combout\ & (\setting_init~combout\ & !\Mux55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux93~2_combout\,
	datac => \setting_init~combout\,
	datad => \Mux55~0_combout\,
	combout => \input_1[2]~0_combout\);

-- Location: LCFF_X1_Y21_N29
\input_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_1[0]~1_combout\,
	ena => \input_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_1(0));

-- Location: LCCOMB_X1_Y21_N20
\input_1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_1[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \input_1[2]~feeder_combout\);

-- Location: LCFF_X1_Y21_N21
\input_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_1[2]~feeder_combout\,
	ena => \input_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_1(2));

-- Location: LCCOMB_X1_Y21_N2
\input_1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_1[1]~feeder_combout\ = \LessThan7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan7~0_combout\,
	combout => \input_1[1]~feeder_combout\);

-- Location: LCFF_X1_Y21_N3
\input_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_1[1]~feeder_combout\,
	ena => \input_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_1(1));

-- Location: LCCOMB_X1_Y21_N22
\HEX_1|tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_1|tmp[0]~0_combout\ = (input_clear(1)) # ((input_1(0)) # ((!input_1(1)) # (!input_1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_clear(1),
	datab => input_1(0),
	datac => input_1(2),
	datad => input_1(1),
	combout => \HEX_1|tmp[0]~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\HEX_1|tmp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_1|tmp[1]~1_combout\ = (input_1(2) & !input_clear(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => input_1(2),
	datad => input_clear(1),
	combout => \HEX_1|tmp[1]~1_combout\);

-- Location: LCCOMB_X1_Y21_N26
\HEX_1|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_1|Mux11~0_combout\ = (input_clear(1)) # (((input_1(0) & !input_1(1))) # (!input_1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_clear(1),
	datab => input_1(0),
	datac => input_1(2),
	datad => input_1(1),
	combout => \HEX_1|Mux11~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\HEX_1|tmp[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_1|tmp[4]~2_combout\ = (input_1(0) & (input_1(2) & !input_clear(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => input_1(0),
	datac => input_1(2),
	datad => input_clear(1),
	combout => \HEX_1|tmp[4]~2_combout\);

-- Location: LCCOMB_X1_Y21_N18
\HEX_1|tmp[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_1|tmp[5]~3_combout\ = (input_clear(1)) # (((!input_1(1)) # (!input_1(2))) # (!input_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_clear(1),
	datab => input_1(0),
	datac => input_1(2),
	datad => input_1(1),
	combout => \HEX_1|tmp[5]~3_combout\);

-- Location: LCCOMB_X1_Y21_N0
\HEX_1|tmp[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_1|tmp[6]~4_combout\ = (input_1(1) & (input_1(2) & !input_clear(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => input_1(1),
	datac => input_1(2),
	datad => input_clear(1),
	combout => \HEX_1|tmp[6]~4_combout\);

-- Location: LCCOMB_X9_Y15_N20
\Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \input_code~combout\(4) $ (((\input_code~combout\(3)) # (\input_code~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(4),
	datac => \input_code~combout\(3),
	datad => \input_code~combout\(2),
	combout => \Add9~0_combout\);

-- Location: LCCOMB_X9_Y15_N4
\LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!\input_code~combout\(4) & (((!\input_code~combout\(1) & !\input_code~combout\(2))) # (!\input_code~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(4),
	datab => \input_code~combout\(1),
	datac => \input_code~combout\(3),
	datad => \input_code~combout\(2),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X10_Y15_N28
\input_0[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~16_combout\ = (\setting_init~combout\ & (!\Mux93~2_combout\ & (!\LessThan6~0_combout\ & \setting_mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_init~combout\,
	datab => \Mux93~2_combout\,
	datac => \LessThan6~0_combout\,
	datad => \setting_mode~combout\(1),
	combout => \input_0[4]~16_combout\);

-- Location: LCCOMB_X10_Y15_N30
\input_0[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~17_combout\ = (\input_0[4]~16_combout\ & ((\LessThan7~0_combout\))) # (!\input_0[4]~16_combout\ & (\input_0[4]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_0[4]~15_combout\,
	datab => \input_0[4]~16_combout\,
	datad => \LessThan7~0_combout\,
	combout => \input_0[4]~17_combout\);

-- Location: LCCOMB_X10_Y15_N16
\input_0[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~26_combout\ = (!\input_0[4]~16_combout\ & ((\input_0[4]~15_combout\) # ((!\setting_rotor~combout\(1)) # (!\setting_rotor~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_0[4]~15_combout\,
	datab => \setting_rotor~combout\(0),
	datac => \setting_rotor~combout\(1),
	datad => \input_0[4]~16_combout\,
	combout => \input_0[4]~26_combout\);

-- Location: LCCOMB_X9_Y15_N22
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \input_code~combout\(0) $ (VCC)
-- \Add6~1\ = CARRY(\input_code~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X9_Y15_N24
\Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\input_code~combout\(1) & (!\Add6~1\)) # (!\input_code~combout\(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!\input_code~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_code~combout\(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X9_Y15_N28
\Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\input_code~combout\(3) & (!\Add6~5\)) # (!\input_code~combout\(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!\input_code~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X9_Y15_N30
\Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = \Add6~7\ $ (!\input_code~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \input_code~combout\(4),
	cin => \Add6~7\,
	combout => \Add6~8_combout\);

-- Location: LCCOMB_X9_Y15_N14
\input_0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~20_combout\ = (\input_0[4]~17_combout\ & ((\input_code~combout\(4)) # ((!\input_0[4]~26_combout\)))) # (!\input_0[4]~17_combout\ & (((\input_0[4]~26_combout\ & \Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(4),
	datab => \input_0[4]~17_combout\,
	datac => \input_0[4]~26_combout\,
	datad => \Add6~8_combout\,
	combout => \input_0~20_combout\);

-- Location: LCCOMB_X8_Y15_N28
\input_0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~21_combout\ = (\input_0[4]~16_combout\ & ((\input_0~20_combout\ & ((!\Mux55~0_combout\))) # (!\input_0~20_combout\ & (!\Add9~0_combout\)))) # (!\input_0[4]~16_combout\ & (((!\input_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_0[4]~16_combout\,
	datab => \Add9~0_combout\,
	datac => \input_0~20_combout\,
	datad => \Mux55~0_combout\,
	combout => \input_0~21_combout\);

-- Location: LCCOMB_X9_Y15_N6
\input_0[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~3_combout\ = ((\setting_mode~combout\(0) & ((\input_0~2_combout\))) # (!\setting_mode~combout\(0) & (\LessThan5~0_combout\))) # (!\input_clear~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \input_0~2_combout\,
	datac => \input_clear~0_combout\,
	datad => \setting_mode~combout\(0),
	combout => \input_0[4]~3_combout\);

-- Location: LCFF_X8_Y15_N29
\input_0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_0~21_combout\,
	ena => \input_0[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_0(4));

-- Location: LCCOMB_X10_Y15_N18
\input_0[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~4_combout\ = (!\setting_mode~combout\(0) & (!\setting_mode~combout\(1) & ((!\setting_rotor~combout\(1)) # (!\setting_rotor~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => \setting_rotor~combout\(0),
	datac => \setting_rotor~combout\(1),
	datad => \setting_mode~combout\(1),
	combout => \input_0[4]~4_combout\);

-- Location: LCCOMB_X10_Y15_N6
\input_0[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~5_combout\ = (\input_0[4]~4_combout\) # (!\setting_init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_init~combout\,
	datad => \input_0[4]~4_combout\,
	combout => \input_0[4]~5_combout\);

-- Location: LCCOMB_X9_Y15_N16
\input_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~6_combout\ = ((\setting_mode~combout\(0) & ((\input_0~2_combout\))) # (!\setting_mode~combout\(0) & (\LessThan5~0_combout\))) # (!\input_clear~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \input_0~2_combout\,
	datac => \input_clear~0_combout\,
	datad => \setting_mode~combout\(0),
	combout => \input_0~6_combout\);

-- Location: LCFF_X10_Y15_N7
\input_0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_0[4]~5_combout\,
	ena => \input_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_0(5));

-- Location: LCCOMB_X9_Y15_N2
\input_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~8_combout\ = (\input_clear~0_combout\ & ((\setting_mode~combout\(0)) # (!\LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \input_clear~0_combout\,
	datad => \setting_mode~combout\(0),
	combout => \input_0~8_combout\);

-- Location: LCCOMB_X9_Y15_N10
\input_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~7_combout\ = (\setting_mode~combout\(0) & ((\input_0~2_combout\ & (!\Add6~0_combout\)) # (!\input_0~2_combout\ & ((input_0(0)))))) # (!\setting_mode~combout\(0) & (((input_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_mode~combout\(0),
	datab => \Add6~0_combout\,
	datac => \input_0~2_combout\,
	datad => input_0(0),
	combout => \input_0~7_combout\);

-- Location: LCCOMB_X9_Y15_N12
\input_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~9_combout\ = (\input_0~8_combout\ & ((\input_0~7_combout\))) # (!\input_0~8_combout\ & (!\input_code~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(0),
	datab => \input_0~8_combout\,
	datad => \input_0~7_combout\,
	combout => \input_0~9_combout\);

-- Location: LCFF_X9_Y15_N13
\input_0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_0(0));

-- Location: LCCOMB_X10_Y15_N26
\input_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~11_combout\ = (\setting_mode~combout\(0) & (((\input_code~combout\(1))))) # (!\setting_mode~combout\(0) & ((\input_0~10_combout\) # ((\Mux93~2_combout\ & \input_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_0~10_combout\,
	datab => \Mux93~2_combout\,
	datac => \input_code~combout\(1),
	datad => \setting_mode~combout\(0),
	combout => \input_0~11_combout\);

-- Location: LCCOMB_X10_Y15_N8
\input_0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~12_combout\ = (\input_code~combout\(1) & (((!\input_0~11_combout\)) # (!\setting_init~combout\))) # (!\input_code~combout\(1) & (((\input_clear~0_combout\ & \input_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setting_init~combout\,
	datab => \input_clear~0_combout\,
	datac => \input_code~combout\(1),
	datad => \input_0~11_combout\,
	combout => \input_0~12_combout\);

-- Location: LCCOMB_X10_Y15_N14
\input_0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~13_combout\ = (!\input_0~12_combout\ & (((!\Add6~2_combout\) # (!\input_clear~0_combout\)) # (!\Mux107~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux107~3_combout\,
	datab => \input_0~12_combout\,
	datac => \input_clear~0_combout\,
	datad => \Add6~2_combout\,
	combout => \input_0~13_combout\);

-- Location: LCFF_X9_Y15_N3
\input_0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \input_0~13_combout\,
	sload => VCC,
	ena => \input_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_0(1));

-- Location: LCCOMB_X8_Y18_N2
\HEX_0|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux6~8_combout\ = (input_0(5) & ((input_0(0)) # ((!input_0(2) & input_0(1))))) # (!input_0(5) & ((input_0(2) $ (!input_0(0))) # (!input_0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(2),
	datab => input_0(5),
	datac => input_0(0),
	datad => input_0(1),
	combout => \HEX_0|Mux6~8_combout\);

-- Location: LCCOMB_X8_Y18_N24
\HEX_0|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux6~6_combout\ = (input_0(4) & ((\HEX_0|Mux6~8_combout\))) # (!input_0(4) & (\HEX_0|Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_0|Mux6~7_combout\,
	datac => input_0(4),
	datad => \HEX_0|Mux6~8_combout\,
	combout => \HEX_0|Mux6~6_combout\);

-- Location: LCCOMB_X9_Y15_N8
\input_0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~22_combout\ = (\input_0[4]~17_combout\ & ((\input_code~combout\(3)) # ((!\input_0[4]~26_combout\)))) # (!\input_0[4]~17_combout\ & (((\input_0[4]~26_combout\ & \Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(3),
	datab => \input_0[4]~17_combout\,
	datac => \input_0[4]~26_combout\,
	datad => \Add6~6_combout\,
	combout => \input_0~22_combout\);

-- Location: LCCOMB_X8_Y15_N4
\input_0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~23_combout\ = (\input_code~combout\(2)) # ((\input_code~combout\(1) & \input_0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(2),
	datab => \input_code~combout\(1),
	datac => \input_0~22_combout\,
	combout => \input_0~23_combout\);

-- Location: LCCOMB_X8_Y15_N10
\input_0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~24_combout\ = \input_0~22_combout\ $ (((\input_0~23_combout\ $ (\input_code~combout\(3))) # (!\input_0[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_0[4]~16_combout\,
	datab => \input_0~22_combout\,
	datac => \input_0~23_combout\,
	datad => \input_code~combout\(3),
	combout => \input_0~24_combout\);

-- Location: LCFF_X8_Y15_N11
\input_0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_0~24_combout\,
	ena => \input_0[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_0(3));

-- Location: LCCOMB_X8_Y15_N0
\input_0[4]~3_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0[4]~3_wirecell_combout\ = !\input_0[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_0[4]~3_combout\,
	combout => \input_0[4]~3_wirecell_combout\);

-- Location: LCFF_X8_Y15_N1
\input_clear[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_0[4]~3_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_clear(0));

-- Location: LCCOMB_X8_Y18_N4
\HEX_0|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux6~12_combout\ = (input_0(1) & ((input_0(0) & (!input_0(2))) # (!input_0(0) & ((!input_0(4)))))) # (!input_0(1) & (((!input_0(4))) # (!input_0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(2),
	datab => input_0(0),
	datac => input_0(4),
	datad => input_0(1),
	combout => \HEX_0|Mux6~12_combout\);

-- Location: LCCOMB_X8_Y18_N6
\HEX_0|Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux6~13_combout\ = (\HEX_0|Mux6~12_combout\) # ((!input_0(5) & ((input_0(2)) # (input_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(2),
	datab => input_0(5),
	datac => \HEX_0|Mux6~12_combout\,
	datad => input_0(1),
	combout => \HEX_0|Mux6~13_combout\);

-- Location: LCCOMB_X8_Y18_N10
\HEX_0|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux6~11_combout\ = (input_clear(0)) # ((input_0(3) & (\HEX_0|Mux6~6_combout\)) # (!input_0(3) & ((\HEX_0|Mux6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_0|Mux6~6_combout\,
	datab => input_0(3),
	datac => input_clear(0),
	datad => \HEX_0|Mux6~13_combout\,
	combout => \HEX_0|Mux6~11_combout\);

-- Location: LCCOMB_X8_Y18_N28
\HEX_0|Mux5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux5~12_combout\ = (input_0(2) & (input_0(3) & (!input_0(5) & input_0(0)))) # (!input_0(2) & (input_0(5) & ((!input_0(0)) # (!input_0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(2),
	datab => input_0(3),
	datac => input_0(5),
	datad => input_0(0),
	combout => \HEX_0|Mux5~12_combout\);

-- Location: LCCOMB_X8_Y18_N18
\HEX_0|Mux5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux5~13_combout\ = (input_0(4) & (\HEX_0|Mux5~12_combout\ $ (((input_0(3) & !input_0(0)))))) # (!input_0(4) & (input_0(3) & (!input_0(0) & \HEX_0|Mux5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(4),
	datab => input_0(3),
	datac => input_0(0),
	datad => \HEX_0|Mux5~12_combout\,
	combout => \HEX_0|Mux5~13_combout\);

-- Location: LCCOMB_X8_Y18_N22
\HEX_0|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux5~8_combout\ = (input_0(5) & (input_0(2) $ (input_0(3) $ (input_0(4))))) # (!input_0(5) & (input_0(4) & ((input_0(2)) # (input_0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(2),
	datab => input_0(5),
	datac => input_0(3),
	datad => input_0(4),
	combout => \HEX_0|Mux5~8_combout\);

-- Location: LCCOMB_X8_Y18_N8
\HEX_0|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux5~6_combout\ = (input_0(0) & ((\HEX_0|Mux5~8_combout\))) # (!input_0(0) & (\HEX_0|Mux5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_0|Mux5~7_combout\,
	datac => input_0(0),
	datad => \HEX_0|Mux5~8_combout\,
	combout => \HEX_0|Mux5~6_combout\);

-- Location: LCCOMB_X8_Y18_N26
\HEX_0|Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux5~11_combout\ = (!input_clear(0) & ((input_0(1) & ((\HEX_0|Mux5~6_combout\))) # (!input_0(1) & (\HEX_0|Mux5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_clear(0),
	datab => \HEX_0|Mux5~13_combout\,
	datac => \HEX_0|Mux5~6_combout\,
	datad => input_0(1),
	combout => \HEX_0|Mux5~11_combout\);

-- Location: LCCOMB_X9_Y15_N18
\input_0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~18_combout\ = (\input_0[4]~17_combout\ & (((\input_code~combout\(2)) # (!\input_0[4]~26_combout\)))) # (!\input_0[4]~17_combout\ & (\Add6~4_combout\ & (\input_0[4]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \input_0[4]~17_combout\,
	datac => \input_0[4]~26_combout\,
	datad => \input_code~combout\(2),
	combout => \input_0~18_combout\);

-- Location: LCCOMB_X8_Y15_N22
\input_0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_0~19_combout\ = (\input_0[4]~16_combout\ & (\input_code~combout\(2) $ (((\input_code~combout\(1) & \input_0~18_combout\))))) # (!\input_0[4]~16_combout\ & (((!\input_0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(2),
	datab => \input_code~combout\(1),
	datac => \input_0[4]~16_combout\,
	datad => \input_0~18_combout\,
	combout => \input_0~19_combout\);

-- Location: LCFF_X8_Y15_N23
\input_0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \input_0~19_combout\,
	ena => \input_0[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => input_0(2));

-- Location: LCCOMB_X8_Y19_N8
\HEX_0|Mux4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux4~14_combout\ = (input_0(5) & (input_0(0) & (input_0(1) $ (!input_0(2))))) # (!input_0(5) & (input_0(1) & (input_0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(1),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(5),
	combout => \HEX_0|Mux4~14_combout\);

-- Location: LCCOMB_X8_Y19_N10
\HEX_0|Mux4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux4~15_combout\ = (input_0(1) & ((\HEX_0|Mux4~14_combout\ & (input_0(4) $ (input_0(5)))) # (!\HEX_0|Mux4~14_combout\ & (input_0(4) & input_0(5))))) # (!input_0(1) & (\HEX_0|Mux4~14_combout\ & (input_0(4) & input_0(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(1),
	datab => \HEX_0|Mux4~14_combout\,
	datac => input_0(4),
	datad => input_0(5),
	combout => \HEX_0|Mux4~15_combout\);

-- Location: LCCOMB_X8_Y19_N22
\HEX_0|Mux4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux4~13_combout\ = (input_0(5) & (\HEX_0|Mux4~12_combout\)) # (!input_0(5) & (input_0(4) & ((\HEX_0|Mux4~12_combout\) # (!input_0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_0|Mux4~12_combout\,
	datab => input_0(2),
	datac => input_0(4),
	datad => input_0(5),
	combout => \HEX_0|Mux4~13_combout\);

-- Location: LCCOMB_X8_Y19_N20
\HEX_0|Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux4~11_combout\ = (!input_clear(0) & ((input_0(3) & ((\HEX_0|Mux4~13_combout\))) # (!input_0(3) & (\HEX_0|Mux4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_0|Mux4~15_combout\,
	datab => input_0(3),
	datac => input_clear(0),
	datad => \HEX_0|Mux4~13_combout\,
	combout => \HEX_0|Mux4~11_combout\);

-- Location: LCCOMB_X8_Y15_N18
\HEX_0|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux3~8_combout\ = (input_0(2) & (((input_0(3) & !input_0(1))) # (!input_0(0)))) # (!input_0(2) & (input_0(0) & ((input_0(3)) # (!input_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(3),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(1),
	combout => \HEX_0|Mux3~8_combout\);

-- Location: LCCOMB_X8_Y15_N14
\HEX_0|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux3~5_combout\ = ((input_0(0)) # ((input_0(2) & !input_0(1)))) # (!input_0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(3),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(1),
	combout => \HEX_0|Mux3~5_combout\);

-- Location: LCCOMB_X8_Y15_N12
\HEX_0|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux3~11_combout\ = (input_0(4) & (\HEX_0|Mux3~8_combout\ & ((input_0(5))))) # (!input_0(4) & (((\HEX_0|Mux3~5_combout\) # (!input_0(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(4),
	datab => \HEX_0|Mux3~8_combout\,
	datac => \HEX_0|Mux3~5_combout\,
	datad => input_0(5),
	combout => \HEX_0|Mux3~11_combout\);

-- Location: LCCOMB_X8_Y15_N20
\HEX_0|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux3~7_combout\ = (input_0(2) & (((input_0(0)) # (!input_0(1))))) # (!input_0(2) & ((input_0(0) $ (input_0(1))) # (!input_0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(3),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(1),
	combout => \HEX_0|Mux3~7_combout\);

-- Location: LCCOMB_X8_Y15_N6
\HEX_0|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux3~12_combout\ = (\HEX_0|Mux3~11_combout\) # ((input_clear(0)) # ((\HEX_0|Mux3~7_combout\ & !input_0(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_0|Mux3~11_combout\,
	datab => input_clear(0),
	datac => \HEX_0|Mux3~7_combout\,
	datad => input_0(5),
	combout => \HEX_0|Mux3~12_combout\);

-- Location: LCCOMB_X8_Y15_N26
\HEX_0|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux2~7_combout\ = (input_0(0) & ((input_0(1) & ((input_0(2)))) # (!input_0(1) & (input_0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(3),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(1),
	combout => \HEX_0|Mux2~7_combout\);

-- Location: LCCOMB_X8_Y15_N8
\HEX_0|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux2~5_combout\ = (input_0(0) & (input_0(3) & ((input_0(1)) # (!input_0(2))))) # (!input_0(0) & ((input_0(1) & ((input_0(2)))) # (!input_0(1) & (input_0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(3),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(1),
	combout => \HEX_0|Mux2~5_combout\);

-- Location: LCCOMB_X8_Y15_N16
\HEX_0|Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux2~11_combout\ = (input_0(4) & ((\HEX_0|Mux2~7_combout\) # ((input_0(5))))) # (!input_0(4) & (((\HEX_0|Mux2~5_combout\ & input_0(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(4),
	datab => \HEX_0|Mux2~7_combout\,
	datac => \HEX_0|Mux2~5_combout\,
	datad => input_0(5),
	combout => \HEX_0|Mux2~11_combout\);

-- Location: LCCOMB_X8_Y15_N2
\HEX_0|Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux2~12_combout\ = (\HEX_0|Mux2~11_combout\ & (!input_clear(0) & ((input_0(5)) # (\HEX_0|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(5),
	datab => \HEX_0|Mux2~7_combout\,
	datac => \HEX_0|Mux2~11_combout\,
	datad => input_clear(0),
	combout => \HEX_0|Mux2~12_combout\);

-- Location: LCCOMB_X8_Y19_N16
\HEX_0|Mux1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux1~12_combout\ = (input_0(1) & (input_0(3) $ (((input_0(0) & input_0(2)))))) # (!input_0(1) & (input_0(3) & ((input_0(2)) # (!input_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(1),
	datab => input_0(3),
	datac => input_0(0),
	datad => input_0(2),
	combout => \HEX_0|Mux1~12_combout\);

-- Location: LCCOMB_X8_Y19_N14
\HEX_0|Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux1~13_combout\ = (\HEX_0|Mux1~12_combout\ & input_0(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HEX_0|Mux1~12_combout\,
	datad => input_0(5),
	combout => \HEX_0|Mux1~13_combout\);

-- Location: LCCOMB_X8_Y19_N4
\HEX_0|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux1~8_combout\ = (input_0(1) & (((input_0(0)) # (input_0(5))) # (!input_0(2)))) # (!input_0(1) & ((input_0(2) & (input_0(0) & input_0(5))) # (!input_0(2) & ((input_0(0)) # (input_0(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(1),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(5),
	combout => \HEX_0|Mux1~8_combout\);

-- Location: LCCOMB_X8_Y19_N30
\HEX_0|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux1~7_combout\ = (input_0(1) & ((input_0(5) & ((input_0(0)))) # (!input_0(5) & (input_0(2))))) # (!input_0(1) & (((input_0(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(1),
	datab => input_0(2),
	datac => input_0(0),
	datad => input_0(5),
	combout => \HEX_0|Mux1~7_combout\);

-- Location: LCCOMB_X8_Y19_N18
\HEX_0|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux1~6_combout\ = (input_0(3) & (\HEX_0|Mux1~8_combout\)) # (!input_0(3) & ((\HEX_0|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX_0|Mux1~8_combout\,
	datac => input_0(3),
	datad => \HEX_0|Mux1~7_combout\,
	combout => \HEX_0|Mux1~6_combout\);

-- Location: LCCOMB_X8_Y19_N0
\HEX_0|Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux1~11_combout\ = (!input_clear(0) & ((input_0(4) & ((\HEX_0|Mux1~6_combout\))) # (!input_0(4) & (\HEX_0|Mux1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(4),
	datab => \HEX_0|Mux1~13_combout\,
	datac => input_clear(0),
	datad => \HEX_0|Mux1~6_combout\,
	combout => \HEX_0|Mux1~11_combout\);

-- Location: LCCOMB_X8_Y19_N12
\HEX_0|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux0~7_combout\ = ((input_0(1) & ((!input_0(2)))) # (!input_0(1) & ((input_0(0)) # (input_0(2))))) # (!input_0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(1),
	datab => input_0(3),
	datac => input_0(0),
	datad => input_0(2),
	combout => \HEX_0|Mux0~7_combout\);

-- Location: LCCOMB_X8_Y19_N26
\HEX_0|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux0~5_combout\ = ((input_0(0) & ((input_0(2)))) # (!input_0(0) & (!input_0(1)))) # (!input_0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(1),
	datab => input_0(3),
	datac => input_0(0),
	datad => input_0(2),
	combout => \HEX_0|Mux0~5_combout\);

-- Location: LCCOMB_X8_Y19_N2
\HEX_0|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux0~8_combout\ = (input_0(1) & ((input_0(3)) # ((!input_0(0) & !input_0(2))))) # (!input_0(1) & (input_0(0) $ (((input_0(3)) # (!input_0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(1),
	datab => input_0(3),
	datac => input_0(0),
	datad => input_0(2),
	combout => \HEX_0|Mux0~8_combout\);

-- Location: LCCOMB_X8_Y19_N28
\HEX_0|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux0~11_combout\ = (input_0(5) & ((input_0(4) & ((\HEX_0|Mux0~8_combout\))) # (!input_0(4) & (\HEX_0|Mux0~5_combout\)))) # (!input_0(5) & (((!input_0(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input_0(5),
	datab => \HEX_0|Mux0~5_combout\,
	datac => input_0(4),
	datad => \HEX_0|Mux0~8_combout\,
	combout => \HEX_0|Mux0~11_combout\);

-- Location: LCCOMB_X8_Y19_N6
\HEX_0|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_0|Mux0~12_combout\ = (\HEX_0|Mux0~11_combout\) # ((input_clear(0)) # ((\HEX_0|Mux0~7_combout\ & !input_0(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX_0|Mux0~7_combout\,
	datab => \HEX_0|Mux0~11_combout\,
	datac => input_clear(0),
	datad => input_0(5),
	combout => \HEX_0|Mux0~12_combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_error[0]~I\ : cycloneii_io
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
	datain => \COUNTER|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_error(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_error[1]~I\ : cycloneii_io
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
	datain => \COUNTER|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_error(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_error[2]~I\ : cycloneii_io
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
	datain => \COUNTER|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_error(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_error[3]~I\ : cycloneii_io
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
	datain => \COUNTER|cnt\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_error(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_error[4]~I\ : cycloneii_io
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
	datain => \COUNTER|cnt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_error(4));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_3[0]~I\ : cycloneii_io
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
	datain => \HEX_3|ALT_INV_tmp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_3[1]~I\ : cycloneii_io
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
	datain => \HEX_3|ALT_INV_tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_3[2]~I\ : cycloneii_io
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
	datain => \HEX_3|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_3[3]~I\ : cycloneii_io
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
	datain => \HEX_3|ALT_INV_tmp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_3[4]~I\ : cycloneii_io
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
	datain => \HEX_3|ALT_INV_tmp[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_3[5]~I\ : cycloneii_io
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
	datain => \HEX_3|tmp[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_3[6]~I\ : cycloneii_io
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
	datain => \HEX_3|tmp[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_3(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_2[0]~I\ : cycloneii_io
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
	datain => \HEX_2|ALT_INV_Mux6~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_2[1]~I\ : cycloneii_io
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
	datain => \HEX_2|ALT_INV_Mux5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_2[2]~I\ : cycloneii_io
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
	datain => \HEX_2|ALT_INV_Mux4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_2[3]~I\ : cycloneii_io
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
	datain => \HEX_2|ALT_INV_Mux3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_2[4]~I\ : cycloneii_io
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
	datain => \HEX_2|ALT_INV_Mux2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_2[5]~I\ : cycloneii_io
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
	datain => \HEX_2|ALT_INV_Mux1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_2[6]~I\ : cycloneii_io
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
	datain => \HEX_2|ALT_INV_Mux0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_2(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_1[0]~I\ : cycloneii_io
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
	datain => \HEX_1|ALT_INV_tmp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_1[1]~I\ : cycloneii_io
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
	datain => \HEX_1|ALT_INV_tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_1[2]~I\ : cycloneii_io
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
	datain => \HEX_1|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_1[3]~I\ : cycloneii_io
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
	datain => \HEX_1|ALT_INV_tmp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_1[4]~I\ : cycloneii_io
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
	datain => \HEX_1|ALT_INV_tmp[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_1[5]~I\ : cycloneii_io
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
	datain => \HEX_1|tmp[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_1[6]~I\ : cycloneii_io
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
	datain => \HEX_1|tmp[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_1(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_0[0]~I\ : cycloneii_io
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
	datain => \HEX_0|ALT_INV_Mux6~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_0[1]~I\ : cycloneii_io
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
	datain => \HEX_0|ALT_INV_Mux5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_0[2]~I\ : cycloneii_io
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
	datain => \HEX_0|ALT_INV_Mux4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_0[3]~I\ : cycloneii_io
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
	datain => \HEX_0|ALT_INV_Mux3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_0[4]~I\ : cycloneii_io
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
	datain => \HEX_0|ALT_INV_Mux2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_0[5]~I\ : cycloneii_io
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
	datain => \HEX_0|ALT_INV_Mux1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_0[6]~I\ : cycloneii_io
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
	datain => \HEX_0|ALT_INV_Mux0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_0(6));
END structure;


