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

-- DATE "03/17/2016 13:29:34"

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

ENTITY 	g47_testbed IS
    PORT (
	clock : IN std_logic;
	letter_input : IN std_logic_vector(4 DOWNTO 0);
	counter_reset : IN std_logic;
	segments : OUT std_logic_vector(6 DOWNTO 0);
	error_decode : OUT std_logic;
	error_encode : OUT std_logic
	);
END g47_testbed;

-- Design Ports Information
-- segments[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- error_decode	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- error_encode	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- letter_input[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter_input[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter_input[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter_input[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- letter_input[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- counter_reset	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g47_testbed IS
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
SIGNAL ww_letter_input : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_counter_reset : std_logic;
SIGNAL ww_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_error_decode : std_logic;
SIGNAL ww_error_encode : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COUNTER|Add0~6_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~12_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~14_combout\ : std_logic;
SIGNAL \SHIFTER|Mux2~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~28_combout\ : std_logic;
SIGNAL \SHIFTER|Mux2~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~33_combout\ : std_logic;
SIGNAL \SHIFTER|Mux10~2_combout\ : std_logic;
SIGNAL \ENCODER|index[1]~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux12~0_combout\ : std_logic;
SIGNAL \SHIFTER|Mux12~1_combout\ : std_logic;
SIGNAL \ENCODER|index[1]~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux4~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux4~3_combout\ : std_logic;
SIGNAL \ENCODER|index[1]~5_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~44_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~45_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~5_combout\ : std_logic;
SIGNAL \SHIFTER|Mux25~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux25~3_combout\ : std_logic;
SIGNAL \ENCODER|index[0]~7_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~8_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~9_combout\ : std_logic;
SIGNAL \SHIFTER|Mux23~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux23~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~13_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~15_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~19_combout\ : std_logic;
SIGNAL \ENCODER|index[0]~8_combout\ : std_logic;
SIGNAL \ENCODER|index[0]~9_combout\ : std_logic;
SIGNAL \SHIFTER|Mux7~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux7~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux3~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux3~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux5~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux5~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux13~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux13~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux9~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux9~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux21~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux21~3_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~17_combout\ : std_logic;
SIGNAL \ENCODER|tmp~3_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~21_combout\ : std_logic;
SIGNAL \PULSE|Equal0~2_combout\ : std_logic;
SIGNAL \PULSE|Equal0~6_combout\ : std_logic;
SIGNAL \SHIFTER|Mux13~4_combout\ : std_logic;
SIGNAL \ENCODER|index[1]~33_combout\ : std_logic;
SIGNAL \SHIFTER|Mux23~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux18~7_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \COUNTER|Add0~1\ : std_logic;
SIGNAL \COUNTER|Add0~3\ : std_logic;
SIGNAL \COUNTER|Add0~4_combout\ : std_logic;
SIGNAL \counter_reset~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \PULSE|Equal0~5_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \PULSE|Equal0~0_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \PULSE|Equal0~1_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \PULSE|Equal0~3_combout\ : std_logic;
SIGNAL \PULSE|Equal0~4_combout\ : std_logic;
SIGNAL \PULSE|Equal0~7_combout\ : std_logic;
SIGNAL \COUNTER|Add0~0_combout\ : std_logic;
SIGNAL \DECODER|letter~7_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~55_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~49_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~53_combout\ : std_logic;
SIGNAL \COUNTER|Add0~2_combout\ : std_logic;
SIGNAL \COUNTER|count_previous~0_combout\ : std_logic;
SIGNAL \COUNTER|Add0~5\ : std_logic;
SIGNAL \COUNTER|Add0~7\ : std_logic;
SIGNAL \COUNTER|Add0~8_combout\ : std_logic;
SIGNAL \COUNTER|count_previous~2_combout\ : std_logic;
SIGNAL \COUNTER|Equal0~0_combout\ : std_logic;
SIGNAL \COUNTER|count_previous~1_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~21_combout\ : std_logic;
SIGNAL \DECODER|letter~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~46_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~25_combout\ : std_logic;
SIGNAL \SHIFTER|Mux5~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~43_combout\ : std_logic;
SIGNAL \DECODER|letter~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~54_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~11_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~12_combout\ : std_logic;
SIGNAL \SHIFTER|Mux18~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux18~4_combout\ : std_logic;
SIGNAL \DECODER|letter~1_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~52_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~17_combout\ : std_logic;
SIGNAL \SHIFTER|Mux17~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux17~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux17~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~1_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~6_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~7_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~27_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~28_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~48_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~50_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~24_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~26_combout\ : std_logic;
SIGNAL \DECODER|letter~0_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~42_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~22_combout\ : std_logic;
SIGNAL \SHIFTER|Mux9~4_combout\ : std_logic;
SIGNAL \ENCODER|index[0]~11_combout\ : std_logic;
SIGNAL \ENCODER|index[0]~12_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~11_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~47_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux21~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~10_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~16_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~14_combout\ : std_logic;
SIGNAL \SHIFTER|Mux19~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux19~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux19~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux18~2_combout\ : std_logic;
SIGNAL \ENCODER|tmp~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~20_combout\ : std_logic;
SIGNAL \SHIFTER|Mux7~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~23_combout\ : std_logic;
SIGNAL \SHIFTER|Mux3~4_combout\ : std_logic;
SIGNAL \ENCODER|index[0]~10_combout\ : std_logic;
SIGNAL \ENCODER|index[0]~13_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~10_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~13_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~5_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~25_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~26_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~34_combout\ : std_logic;
SIGNAL \SHIFTER|Mux24~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~23_combout\ : std_logic;
SIGNAL \DECODER|letter~8_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~24_combout\ : std_logic;
SIGNAL \SHIFTER|Mux24~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux24~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~7_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~6_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~8_combout\ : std_logic;
SIGNAL \DECODER|letter~6_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~18_combout\ : std_logic;
SIGNAL \SHIFTER|Mux20~0_combout\ : std_logic;
SIGNAL \SHIFTER|Mux20~1_combout\ : std_logic;
SIGNAL \ENCODER|index[0]~6_combout\ : std_logic;
SIGNAL \SHIFTER|Mux25~4_combout\ : std_logic;
SIGNAL \ENCODER|index[1]~14_combout\ : std_logic;
SIGNAL \ENCODER|tmp~4_combout\ : std_logic;
SIGNAL \DECODER|letter~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~9_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~27_combout\ : std_logic;
SIGNAL \SHIFTER|Mux6~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux6~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~32_combout\ : std_logic;
SIGNAL \SHIFTER|Mux6~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~15_combout\ : std_logic;
SIGNAL \SHIFTER|Mux8~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux8~3_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~28_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~36_combout\ : std_logic;
SIGNAL \SHIFTER|Mux4~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~29_combout\ : std_logic;
SIGNAL \SHIFTER|Mux2~4_combout\ : std_logic;
SIGNAL \ENCODER|index[3]~23_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~38_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~30_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~39_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~56_combout\ : std_logic;
SIGNAL \ENCODER|index[3]~16_combout\ : std_logic;
SIGNAL \ENCODER|index[3]~29_combout\ : std_logic;
SIGNAL \SHIFTER|Mux16~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~20_combout\ : std_logic;
SIGNAL \DECODER|letter~5_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~37_combout\ : std_logic;
SIGNAL \SHIFTER|Mux16~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~17_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~21_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~22_combout\ : std_logic;
SIGNAL \SHIFTER|Mux16~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux14~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~31_combout\ : std_logic;
SIGNAL \SHIFTER|Mux14~3_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~19_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~40_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~41_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~0_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~51_combout\ : std_logic;
SIGNAL \SHIFTER|Mux1~18_combout\ : std_logic;
SIGNAL \SHIFTER|Mux15~0_combout\ : std_logic;
SIGNAL \SHIFTER|Mux15~1_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~20_combout\ : std_logic;
SIGNAL \SHIFTER|Mux11~2_combout\ : std_logic;
SIGNAL \SHIFTER|Mux11~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux11~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~35_combout\ : std_logic;
SIGNAL \SHIFTER|Mux10~3_combout\ : std_logic;
SIGNAL \SHIFTER|Mux10~4_combout\ : std_logic;
SIGNAL \ENCODER|index[4]~24_combout\ : std_logic;
SIGNAL \ENCODER|index[4]~25_combout\ : std_logic;
SIGNAL \ENCODER|index[4]~30_combout\ : std_logic;
SIGNAL \ENCODER|index[4]~32_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~22_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~26_combout\ : std_logic;
SIGNAL \SHIFTER|Mux8~4_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~18_combout\ : std_logic;
SIGNAL \ENCODER|index[2]~27_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~16_combout\ : std_logic;
SIGNAL \SHIFTER|Mux0~19_combout\ : std_logic;
SIGNAL \SHIFTER|Mux14~4_combout\ : std_logic;
SIGNAL \SHIFTER|Mux18~5_combout\ : std_logic;
SIGNAL \SHIFTER|Mux18~6_combout\ : std_logic;
SIGNAL \ENCODER|tmp~0_combout\ : std_logic;
SIGNAL \SHIFTER|Mux22~0_combout\ : std_logic;
SIGNAL \SHIFTER|Mux22~1_combout\ : std_logic;
SIGNAL \ENCODER|tmp~1_combout\ : std_logic;
SIGNAL \ENCODER|index[1]~3_combout\ : std_logic;
SIGNAL \ENCODER|index[1]~15_combout\ : std_logic;
SIGNAL \DISPLAY|Mux6~0_combout\ : std_logic;
SIGNAL \DISPLAY|Mux6~1_combout\ : std_logic;
SIGNAL \DISPLAY|Mux5~0_combout\ : std_logic;
SIGNAL \ENCODER|index[3]~31_combout\ : std_logic;
SIGNAL \DISPLAY|Mux5~1_combout\ : std_logic;
SIGNAL \DISPLAY|Mux4~1_combout\ : std_logic;
SIGNAL \DISPLAY|Mux4~0_combout\ : std_logic;
SIGNAL \DISPLAY|Mux4~2_combout\ : std_logic;
SIGNAL \DISPLAY|Mux3~1_combout\ : std_logic;
SIGNAL \DISPLAY|Mux3~0_combout\ : std_logic;
SIGNAL \DISPLAY|Mux3~2_combout\ : std_logic;
SIGNAL \DISPLAY|Mux2~2_combout\ : std_logic;
SIGNAL \DISPLAY|Mux2~3_combout\ : std_logic;
SIGNAL \DISPLAY|Mux1~0_combout\ : std_logic;
SIGNAL \DISPLAY|Mux1~1_combout\ : std_logic;
SIGNAL \DISPLAY|Mux0~1_combout\ : std_logic;
SIGNAL \DISPLAY|Mux0~0_combout\ : std_logic;
SIGNAL \DISPLAY|Mux0~2_combout\ : std_logic;
SIGNAL \DECODER|error~0_combout\ : std_logic;
SIGNAL \ENCODER|Equal0~0_combout\ : std_logic;
SIGNAL \ENCODER|Equal0~1_combout\ : std_logic;
SIGNAL \letter_input~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \COUNTER|count_previous\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PULSE|COUNTER|auto_generated|safe_q\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \DISPLAY|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_counter_reset~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_letter_input <= letter_input;
ww_counter_reset <= counter_reset;
segments <= ww_segments;
error_decode <= ww_error_decode;
error_encode <= ww_error_encode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\DISPLAY|ALT_INV_Mux3~2_combout\ <= NOT \DISPLAY|Mux3~2_combout\;
\ALT_INV_counter_reset~combout\ <= NOT \counter_reset~combout\;

-- Location: LCFF_X39_Y12_N21
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita23~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(23));

-- Location: LCFF_X39_Y12_N13
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita19~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(19));

-- Location: LCFF_X39_Y12_N7
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita16~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(16));

-- Location: LCFF_X39_Y13_N17
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita5~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(5));

-- Location: LCFF_X39_Y13_N13
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita3~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(3));

-- Location: LCFF_X39_Y13_N11
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita2~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(2));

-- Location: LCCOMB_X40_Y14_N12
\COUNTER|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~6_combout\ = (\COUNTER|count_previous\(3) & (!\COUNTER|Add0~5\)) # (!\COUNTER|count_previous\(3) & ((\COUNTER|Add0~5\) # (GND)))
-- \COUNTER|Add0~7\ = CARRY((!\COUNTER|Add0~5\) # (!\COUNTER|count_previous\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|count_previous\(3),
	datad => VCC,
	cin => \COUNTER|Add0~5\,
	combout => \COUNTER|Add0~6_combout\,
	cout => \COUNTER|Add0~7\);

-- Location: LCCOMB_X39_Y13_N10
\PULSE|COUNTER|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita2~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(2) & (\PULSE|COUNTER|auto_generated|counter_comb_bita1~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(2) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita1~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(2) & !\PULSE|COUNTER|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita1~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita2~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X39_Y13_N12
\PULSE|COUNTER|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita3~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(3) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita2~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(3) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita2~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita3~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(3)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita2~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita3~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X39_Y13_N16
\PULSE|COUNTER|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita5~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(5) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita4~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(5) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita4~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita5~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(5)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita4~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita5~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X39_Y12_N6
\PULSE|COUNTER|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita16~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(16) & (\PULSE|COUNTER|auto_generated|counter_comb_bita15~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(16) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita15~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita16~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(16) & !\PULSE|COUNTER|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita15~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita16~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X39_Y12_N12
\PULSE|COUNTER|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita19~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(19) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita18~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(19) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita18~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita19~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(19)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita18~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita18~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita19~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCCOMB_X39_Y12_N20
\PULSE|COUNTER|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita23~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(23) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita22~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(23) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita22~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita23~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(23)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita22~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita22~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita23~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCCOMB_X36_Y11_N16
\SHIFTER|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~2_combout\ = (\letter_input~combout\(3) & (!\COUNTER|count_previous\(3) & (\letter_input~combout\(0) $ (\COUNTER|count_previous\(0))))) # (!\letter_input~combout\(3) & (\COUNTER|count_previous\(3) & (\letter_input~combout\(0) $ 
-- (\COUNTER|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(0),
	datac => \COUNTER|count_previous\(0),
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux0~2_combout\);

-- Location: LCCOMB_X35_Y11_N24
\SHIFTER|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~3_combout\ = (\SHIFTER|Mux0~2_combout\ & (!\letter_input~combout\(4) & (!\letter_input~combout\(1) & \letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~2_combout\,
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y11_N12
\SHIFTER|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~12_combout\ = (\SHIFTER|Mux0~5_combout\ & ((\COUNTER|count_previous\(3) & (!\DECODER|letter~5_combout\)) # (!\COUNTER|count_previous\(3) & ((\DECODER|letter~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~5_combout\,
	datab => \SHIFTER|Mux0~5_combout\,
	datac => \DECODER|letter~4_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux0~12_combout\);

-- Location: LCCOMB_X36_Y13_N24
\SHIFTER|Mux0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~14_combout\ = (\COUNTER|count_previous\(3) & (!\letter_input~combout\(4) & \letter_input~combout\(3))) # (!\COUNTER|count_previous\(3) & (\letter_input~combout\(4) & !\letter_input~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(3),
	combout => \SHIFTER|Mux0~14_combout\);

-- Location: LCCOMB_X37_Y11_N12
\SHIFTER|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux2~2_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux0~26_combout\) # ((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux0~23_combout\ & !\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~4_combout\,
	datab => \SHIFTER|Mux0~26_combout\,
	datac => \SHIFTER|Mux0~23_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux2~2_combout\);

-- Location: LCCOMB_X34_Y11_N16
\SHIFTER|Mux0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~28_combout\ = (\SHIFTER|Mux0~10_combout\ & ((\DECODER|letter~3_combout\) # ((\SHIFTER|Mux0~27_combout\ & !\COUNTER|count_previous\(4))))) # (!\SHIFTER|Mux0~10_combout\ & (\SHIFTER|Mux0~27_combout\ & ((!\COUNTER|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~10_combout\,
	datab => \SHIFTER|Mux0~27_combout\,
	datac => \DECODER|letter~3_combout\,
	datad => \COUNTER|count_previous\(4),
	combout => \SHIFTER|Mux0~28_combout\);

-- Location: LCCOMB_X37_Y11_N6
\SHIFTER|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux2~3_combout\ = (\SHIFTER|Mux2~2_combout\ & ((\SHIFTER|Mux0~28_combout\) # ((!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux2~2_combout\ & (((\SHIFTER|Mux0~20_combout\ & \SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux2~2_combout\,
	datab => \SHIFTER|Mux0~28_combout\,
	datac => \SHIFTER|Mux0~20_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux2~3_combout\);

-- Location: LCCOMB_X36_Y13_N18
\SHIFTER|Mux0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~33_combout\ = (\SHIFTER|Mux0~5_combout\ & (\SHIFTER|Mux0~16_combout\ & (\COUNTER|count_previous\(3) $ (\letter_input~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(3),
	datab => \SHIFTER|Mux0~5_combout\,
	datac => \letter_input~combout\(3),
	datad => \SHIFTER|Mux0~16_combout\,
	combout => \SHIFTER|Mux0~33_combout\);

-- Location: LCCOMB_X33_Y15_N24
\SHIFTER|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux10~2_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux0~12_combout\))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~33_combout\,
	datab => \SHIFTER|Mux0~12_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux10~2_combout\);

-- Location: LCCOMB_X29_Y9_N16
\ENCODER|index[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[1]~2_combout\ = (!\SHIFTER|Mux10~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux0~29_combout\)) # (!\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~29_combout\,
	datab => \SHIFTER|Mux10~4_combout\,
	datac => \SHIFTER|Mux18~2_combout\,
	datad => \SHIFTER|Mux2~3_combout\,
	combout => \ENCODER|index[1]~2_combout\);

-- Location: LCCOMB_X37_Y11_N2
\SHIFTER|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux12~0_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux0~23_combout\)) # (!\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~4_combout\,
	datab => \SHIFTER|Mux0~23_combout\,
	datac => \SHIFTER|Mux0~3_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux12~0_combout\);

-- Location: LCCOMB_X37_Y11_N20
\SHIFTER|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux12~1_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux12~0_combout\ & (\SHIFTER|Mux0~31_combout\)) # (!\SHIFTER|Mux12~0_combout\ & ((\SHIFTER|Mux0~35_combout\))))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~4_combout\,
	datab => \SHIFTER|Mux12~0_combout\,
	datac => \SHIFTER|Mux0~31_combout\,
	datad => \SHIFTER|Mux0~35_combout\,
	combout => \SHIFTER|Mux12~1_combout\);

-- Location: LCCOMB_X29_Y9_N22
\ENCODER|index[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[1]~4_combout\ = (!\SHIFTER|Mux16~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux0~37_combout\))) # (!\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux12~1_combout\,
	datab => \SHIFTER|Mux16~4_combout\,
	datac => \SHIFTER|Mux18~2_combout\,
	datad => \SHIFTER|Mux0~37_combout\,
	combout => \ENCODER|index[1]~4_combout\);

-- Location: LCCOMB_X34_Y11_N2
\SHIFTER|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux4~2_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux0~28_combout\) # (\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux0~25_combout\ & ((!\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~25_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux0~28_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux4~2_combout\);

-- Location: LCCOMB_X34_Y11_N12
\SHIFTER|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux4~3_combout\ = (\SHIFTER|Mux4~2_combout\ & ((\SHIFTER|Mux0~29_combout\) # ((!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux4~2_combout\ & (((\SHIFTER|Mux0~18_combout\ & \SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~29_combout\,
	datab => \SHIFTER|Mux4~2_combout\,
	datac => \SHIFTER|Mux0~18_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux4~3_combout\);

-- Location: LCCOMB_X34_Y13_N18
\ENCODER|index[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[1]~5_combout\ = (!\SHIFTER|Mux8~4_combout\ & (!\SHIFTER|Mux0~56_combout\ & (!\SHIFTER|Mux4~4_combout\ & \ENCODER|index[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux8~4_combout\,
	datab => \SHIFTER|Mux0~56_combout\,
	datac => \SHIFTER|Mux4~4_combout\,
	datad => \ENCODER|index[1]~4_combout\,
	combout => \ENCODER|index[1]~5_combout\);

-- Location: LCCOMB_X35_Y11_N16
\SHIFTER|Mux0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~44_combout\ = (\letter_input~combout\(3) & (!\letter_input~combout\(4) & (\letter_input~combout\(1) & \letter_input~combout\(2)))) # (!\letter_input~combout\(3) & (\letter_input~combout\(4) & (!\letter_input~combout\(1) & 
-- !\letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~44_combout\);

-- Location: LCCOMB_X36_Y11_N14
\SHIFTER|Mux0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~45_combout\ = (\SHIFTER|Mux0~44_combout\ & ((\letter_input~combout\(4) & (!\COUNTER|count_previous\(0) & !\letter_input~combout\(0))) # (!\letter_input~combout\(4) & (\COUNTER|count_previous\(0) & \letter_input~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(4),
	datab => \COUNTER|count_previous\(0),
	datac => \letter_input~combout\(0),
	datad => \SHIFTER|Mux0~44_combout\,
	combout => \SHIFTER|Mux0~45_combout\);

-- Location: LCCOMB_X34_Y10_N20
\SHIFTER|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~2_combout\ = (\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~45_combout\)) # (!\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~45_combout\,
	datac => \SHIFTER|Mux0~46_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~2_combout\);

-- Location: LCCOMB_X35_Y10_N18
\SHIFTER|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~5_combout\ = (\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~51_combout\)) # (!\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~51_combout\,
	datab => \SHIFTER|Mux0~52_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~5_combout\);

-- Location: LCCOMB_X35_Y10_N20
\SHIFTER|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux25~2_combout\ = (\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux18~4_combout\) # ((\SHIFTER|Mux1~4_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~3_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux1~4_combout\,
	datad => \SHIFTER|Mux1~5_combout\,
	combout => \SHIFTER|Mux25~2_combout\);

-- Location: LCCOMB_X33_Y14_N24
\SHIFTER|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux25~3_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux25~2_combout\ & ((\SHIFTER|Mux1~7_combout\))) # (!\SHIFTER|Mux25~2_combout\ & (\SHIFTER|Mux1~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~4_combout\,
	datab => \SHIFTER|Mux1~3_combout\,
	datac => \SHIFTER|Mux1~7_combout\,
	datad => \SHIFTER|Mux25~2_combout\,
	combout => \SHIFTER|Mux25~3_combout\);

-- Location: LCCOMB_X33_Y14_N10
\ENCODER|index[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[0]~7_combout\ = (((!\SHIFTER|Mux25~4_combout\) # (!\ENCODER|index[0]~6_combout\)) # (!\ENCODER|index[1]~3_combout\)) # (!\ENCODER|index[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[1]~5_combout\,
	datab => \ENCODER|index[1]~3_combout\,
	datac => \ENCODER|index[0]~6_combout\,
	datad => \SHIFTER|Mux25~4_combout\,
	combout => \ENCODER|index[0]~7_combout\);

-- Location: LCCOMB_X34_Y10_N12
\SHIFTER|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~8_combout\ = (\COUNTER|count_previous\(3) & (((\SHIFTER|Mux0~43_combout\)))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~40_combout\ & ((\SHIFTER|Mux0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(3),
	datab => \SHIFTER|Mux0~40_combout\,
	datac => \SHIFTER|Mux0~43_combout\,
	datad => \SHIFTER|Mux0~41_combout\,
	combout => \SHIFTER|Mux1~8_combout\);

-- Location: LCCOMB_X35_Y10_N14
\SHIFTER|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~9_combout\ = (\COUNTER|count_previous\(4) & (((\SHIFTER|Mux0~50_combout\ & !\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (\SHIFTER|Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(4),
	datab => \SHIFTER|Mux1~5_combout\,
	datac => \SHIFTER|Mux0~50_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~9_combout\);

-- Location: LCCOMB_X33_Y14_N28
\SHIFTER|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux23~2_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux1~9_combout\) # ((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux1~10_combout\ & !\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~9_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux1~10_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux23~2_combout\);

-- Location: LCCOMB_X33_Y14_N6
\SHIFTER|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux23~3_combout\ = (\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux23~2_combout\ & ((\SHIFTER|Mux1~3_combout\))) # (!\SHIFTER|Mux23~2_combout\ & (\SHIFTER|Mux1~8_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~3_combout\,
	datab => \SHIFTER|Mux23~2_combout\,
	datac => \SHIFTER|Mux1~8_combout\,
	datad => \SHIFTER|Mux1~3_combout\,
	combout => \SHIFTER|Mux23~3_combout\);

-- Location: LCCOMB_X34_Y10_N8
\SHIFTER|Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~13_combout\ = (\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~47_combout\))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~45_combout\,
	datab => \COUNTER|count_previous\(3),
	datad => \SHIFTER|Mux0~47_combout\,
	combout => \SHIFTER|Mux1~13_combout\);

-- Location: LCCOMB_X34_Y10_N4
\SHIFTER|Mux1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~15_combout\ = (\SHIFTER|Mux0~40_combout\ & (!\COUNTER|count_previous\(3) & (\COUNTER|count_previous\(4) & \SHIFTER|Mux0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~40_combout\,
	datab => \COUNTER|count_previous\(3),
	datac => \COUNTER|count_previous\(4),
	datad => \SHIFTER|Mux0~41_combout\,
	combout => \SHIFTER|Mux1~15_combout\);

-- Location: LCCOMB_X34_Y10_N24
\SHIFTER|Mux1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~19_combout\ = (\COUNTER|count_previous\(4) & (\SHIFTER|Mux0~45_combout\ & ((!\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (((\SHIFTER|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~45_combout\,
	datab => \SHIFTER|Mux1~14_combout\,
	datac => \COUNTER|count_previous\(4),
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~19_combout\);

-- Location: LCCOMB_X34_Y14_N4
\ENCODER|index[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[0]~8_combout\ = (!\SHIFTER|Mux1~18_combout\ & !\SHIFTER|Mux1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER|Mux1~18_combout\,
	datad => \SHIFTER|Mux1~12_combout\,
	combout => \ENCODER|index[0]~8_combout\);

-- Location: LCCOMB_X30_Y17_N18
\ENCODER|index[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[0]~9_combout\ = (\SHIFTER|Mux18~2_combout\ & (\ENCODER|index[0]~8_combout\)) # (!\SHIFTER|Mux18~2_combout\ & (((!\SHIFTER|Mux15~1_combout\ & !\SHIFTER|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~2_combout\,
	datab => \ENCODER|index[0]~8_combout\,
	datac => \SHIFTER|Mux15~1_combout\,
	datad => \SHIFTER|Mux11~3_combout\,
	combout => \ENCODER|index[0]~9_combout\);

-- Location: LCCOMB_X35_Y10_N4
\SHIFTER|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux7~2_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux1~10_combout\)) # (!\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux1~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~10_combout\,
	datab => \SHIFTER|Mux1~24_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux7~2_combout\);

-- Location: LCCOMB_X34_Y13_N12
\SHIFTER|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux7~3_combout\ = (\SHIFTER|Mux7~2_combout\ & (((\SHIFTER|Mux1~25_combout\)) # (!\SHIFTER|Mux18~4_combout\))) # (!\SHIFTER|Mux7~2_combout\ & (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux7~2_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux1~25_combout\,
	datad => \SHIFTER|Mux1~23_combout\,
	combout => \SHIFTER|Mux7~3_combout\);

-- Location: LCCOMB_X35_Y10_N30
\SHIFTER|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux3~2_combout\ = (\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux1~14_combout\) # ((\SHIFTER|Mux18~4_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & (((!\SHIFTER|Mux18~4_combout\ & \SHIFTER|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~3_combout\,
	datab => \SHIFTER|Mux1~14_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux1~6_combout\,
	combout => \SHIFTER|Mux3~2_combout\);

-- Location: LCCOMB_X35_Y10_N2
\SHIFTER|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux3~3_combout\ = (\SHIFTER|Mux3~2_combout\ & (((\SHIFTER|Mux1~26_combout\) # (!\SHIFTER|Mux18~4_combout\)))) # (!\SHIFTER|Mux3~2_combout\ & (\SHIFTER|Mux1~1_combout\ & (\SHIFTER|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~1_combout\,
	datab => \SHIFTER|Mux3~2_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux1~26_combout\,
	combout => \SHIFTER|Mux3~3_combout\);

-- Location: LCCOMB_X34_Y14_N14
\SHIFTER|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux5~2_combout\ = (\SHIFTER|Mux18~3_combout\ & (((\SHIFTER|Mux1~11_combout\) # (\SHIFTER|Mux18~4_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux1~0_combout\ & ((!\SHIFTER|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~0_combout\,
	datab => \SHIFTER|Mux1~11_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux18~4_combout\,
	combout => \SHIFTER|Mux5~2_combout\);

-- Location: LCCOMB_X34_Y13_N24
\SHIFTER|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux5~3_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux5~2_combout\ & ((\SHIFTER|Mux1~23_combout\))) # (!\SHIFTER|Mux5~2_combout\ & (\SHIFTER|Mux1~26_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~4_combout\,
	datab => \SHIFTER|Mux5~2_combout\,
	datac => \SHIFTER|Mux1~26_combout\,
	datad => \SHIFTER|Mux1~23_combout\,
	combout => \SHIFTER|Mux5~3_combout\);

-- Location: LCCOMB_X34_Y14_N16
\SHIFTER|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux13~2_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\) # (\SHIFTER|Mux1~22_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux1~8_combout\ & (!\SHIFTER|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~8_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux1~22_combout\,
	combout => \SHIFTER|Mux13~2_combout\);

-- Location: LCCOMB_X34_Y14_N10
\SHIFTER|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux13~3_combout\ = (\SHIFTER|Mux13~2_combout\ & ((\SHIFTER|Mux1~18_combout\) # ((!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux13~2_combout\ & (((\SHIFTER|Mux18~3_combout\ & \SHIFTER|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux13~2_combout\,
	datab => \SHIFTER|Mux1~18_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux1~6_combout\,
	combout => \SHIFTER|Mux13~3_combout\);

-- Location: LCCOMB_X35_Y10_N28
\SHIFTER|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux9~2_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux1~5_combout\))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~13_combout\,
	datab => \SHIFTER|Mux1~5_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux9~2_combout\);

-- Location: LCCOMB_X35_Y10_N6
\SHIFTER|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux9~3_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux9~2_combout\ & ((\SHIFTER|Mux1~20_combout\))) # (!\SHIFTER|Mux9~2_combout\ & (\SHIFTER|Mux1~25_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~25_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux1~20_combout\,
	datad => \SHIFTER|Mux9~2_combout\,
	combout => \SHIFTER|Mux9~3_combout\);

-- Location: LCCOMB_X34_Y14_N18
\SHIFTER|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux21~2_combout\ = (\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux1~21_combout\) # ((\SHIFTER|Mux18~4_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & (((\SHIFTER|Mux1~11_combout\ & !\SHIFTER|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~21_combout\,
	datab => \SHIFTER|Mux1~11_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux18~4_combout\,
	combout => \SHIFTER|Mux21~2_combout\);

-- Location: LCCOMB_X33_Y14_N12
\SHIFTER|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux21~3_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux21~2_combout\ & (\SHIFTER|Mux1~9_combout\)) # (!\SHIFTER|Mux21~2_combout\ & ((\SHIFTER|Mux1~16_combout\))))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~9_combout\,
	datab => \SHIFTER|Mux1~16_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux21~2_combout\,
	combout => \SHIFTER|Mux21~3_combout\);

-- Location: LCCOMB_X34_Y13_N8
\ENCODER|index[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~17_combout\ = (!\SHIFTER|Mux9~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux1~20_combout\)) # (!\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~20_combout\,
	datab => \SHIFTER|Mux9~4_combout\,
	datac => \SHIFTER|Mux18~2_combout\,
	datad => \SHIFTER|Mux7~3_combout\,
	combout => \ENCODER|index[2]~17_combout\);

-- Location: LCCOMB_X29_Y9_N2
\ENCODER|tmp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|tmp~3_combout\ = (!\SHIFTER|Mux24~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux0~24_combout\))) # (!\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux24~4_combout\,
	datab => \SHIFTER|Mux22~1_combout\,
	datac => \SHIFTER|Mux18~2_combout\,
	datad => \SHIFTER|Mux0~24_combout\,
	combout => \ENCODER|tmp~3_combout\);

-- Location: LCCOMB_X33_Y14_N4
\ENCODER|index[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~21_combout\ = (\SHIFTER|Mux21~4_combout\) # ((!\SHIFTER|Mux23~4_combout\ & (\ENCODER|tmp~3_combout\ & !\SHIFTER|Mux25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux21~4_combout\,
	datab => \SHIFTER|Mux23~4_combout\,
	datac => \ENCODER|tmp~3_combout\,
	datad => \SHIFTER|Mux25~4_combout\,
	combout => \ENCODER|index[2]~21_combout\);

-- Location: LCCOMB_X39_Y12_N30
\PULSE|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~2_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(16) & (!\PULSE|COUNTER|auto_generated|safe_q\(14) & (!\PULSE|COUNTER|auto_generated|safe_q\(15) & !\PULSE|COUNTER|auto_generated|safe_q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(16),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(14),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(15),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(13),
	combout => \PULSE|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y13_N4
\PULSE|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~6_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(3) & (!\PULSE|COUNTER|auto_generated|safe_q\(1) & (!\PULSE|COUNTER|auto_generated|safe_q\(4) & !\PULSE|COUNTER|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(3),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(1),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(4),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(2),
	combout => \PULSE|Equal0~6_combout\);

-- Location: LCCOMB_X34_Y14_N20
\SHIFTER|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux13~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux1~19_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux13~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux13~3_combout\,
	datab => \COUNTER|count_previous\(2),
	datac => \SHIFTER|Mux1~19_combout\,
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux13~4_combout\);

-- Location: LCCOMB_X33_Y14_N20
\ENCODER|index[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[1]~33_combout\ = (\ENCODER|index[1]~5_combout\ & (!\SHIFTER|Mux21~4_combout\ & (\ENCODER|index[0]~6_combout\ & !\SHIFTER|Mux25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[1]~5_combout\,
	datab => \SHIFTER|Mux21~4_combout\,
	datac => \ENCODER|index[0]~6_combout\,
	datad => \SHIFTER|Mux25~4_combout\,
	combout => \ENCODER|index[1]~33_combout\);

-- Location: LCCOMB_X33_Y14_N30
\SHIFTER|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux23~4_combout\ = (\COUNTER|count_previous\(1) & ((\COUNTER|count_previous\(2) & ((\SHIFTER|Mux1~7_combout\))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux23~3_combout\)))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux23~3_combout\,
	datab => \SHIFTER|Mux1~7_combout\,
	datac => \COUNTER|count_previous\(1),
	datad => \COUNTER|count_previous\(2),
	combout => \SHIFTER|Mux23~4_combout\);

-- Location: LCCOMB_X29_Y9_N12
\SHIFTER|Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux18~7_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux0~8_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux18~6_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux18~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(2),
	datab => \SHIFTER|Mux18~6_combout\,
	datac => \SHIFTER|Mux0~8_combout\,
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux18~7_combout\);

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

-- Location: LCCOMB_X40_Y14_N6
\COUNTER|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~0_combout\ = \COUNTER|count_previous\(0) $ (VCC)
-- \COUNTER|Add0~1\ = CARRY(\COUNTER|count_previous\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(0),
	datad => VCC,
	combout => \COUNTER|Add0~0_combout\,
	cout => \COUNTER|Add0~1\);

-- Location: LCCOMB_X40_Y14_N8
\COUNTER|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~2_combout\ = (\COUNTER|count_previous\(1) & (!\COUNTER|Add0~1\)) # (!\COUNTER|count_previous\(1) & ((\COUNTER|Add0~1\) # (GND)))
-- \COUNTER|Add0~3\ = CARRY((!\COUNTER|Add0~1\) # (!\COUNTER|count_previous\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(1),
	datad => VCC,
	cin => \COUNTER|Add0~1\,
	combout => \COUNTER|Add0~2_combout\,
	cout => \COUNTER|Add0~3\);

-- Location: LCCOMB_X40_Y14_N10
\COUNTER|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~4_combout\ = (\COUNTER|count_previous\(2) & (\COUNTER|Add0~3\ $ (GND))) # (!\COUNTER|count_previous\(2) & (!\COUNTER|Add0~3\ & VCC))
-- \COUNTER|Add0~5\ = CARRY((\COUNTER|count_previous\(2) & !\COUNTER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|count_previous\(2),
	datad => VCC,
	cin => \COUNTER|Add0~3\,
	combout => \COUNTER|Add0~4_combout\,
	cout => \COUNTER|Add0~5\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\counter_reset~I\ : cycloneii_io
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
	padio => ww_counter_reset,
	combout => \counter_reset~combout\);

-- Location: LCCOMB_X39_Y13_N6
\PULSE|COUNTER|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita0~combout\ = !\PULSE|COUNTER|auto_generated|safe_q\(0)
-- \PULSE|COUNTER|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\PULSE|COUNTER|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(0),
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita0~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X39_Y13_N8
\PULSE|COUNTER|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita1~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(1) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita0~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(1) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita0~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita1~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(1)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita0~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita1~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X39_Y13_N9
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita1~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(1));

-- Location: LCCOMB_X39_Y13_N14
\PULSE|COUNTER|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita4~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(4) & (\PULSE|COUNTER|auto_generated|counter_comb_bita3~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(4) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita3~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(4) & !\PULSE|COUNTER|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita3~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita4~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X39_Y13_N15
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita4~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(4));

-- Location: LCCOMB_X39_Y13_N18
\PULSE|COUNTER|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita6~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(6) & (\PULSE|COUNTER|auto_generated|counter_comb_bita5~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(6) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita5~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita6~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(6) & !\PULSE|COUNTER|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita5~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita6~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X26_Y14_N24
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCFF_X39_Y13_N19
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(6));

-- Location: LCCOMB_X39_Y13_N20
\PULSE|COUNTER|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita7~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(7) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita6~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(7) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita6~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita7~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(7)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita6~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita6~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita7~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X39_Y13_N22
\PULSE|COUNTER|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita8~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(8) & (\PULSE|COUNTER|auto_generated|counter_comb_bita7~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(8) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita7~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita8~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(8) & !\PULSE|COUNTER|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita7~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita8~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X39_Y13_N23
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(8));

-- Location: LCCOMB_X39_Y13_N24
\PULSE|COUNTER|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita9~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(9) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita8~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(9) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita8~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita9~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(9)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita8~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita8~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita9~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X39_Y13_N26
\PULSE|COUNTER|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita10~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(10) & (\PULSE|COUNTER|auto_generated|counter_comb_bita9~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(10) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita9~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita10~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(10) & !\PULSE|COUNTER|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita9~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita10~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X39_Y13_N27
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(10));

-- Location: LCCOMB_X39_Y13_N28
\PULSE|COUNTER|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita11~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(11) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita10~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(11) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita10~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita11~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(11)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita10~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita10~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita11~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X39_Y13_N29
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita11~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(11));

-- Location: LCCOMB_X39_Y13_N30
\PULSE|COUNTER|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita12~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(12) & (\PULSE|COUNTER|auto_generated|counter_comb_bita11~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(12) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita11~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita12~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(12) & !\PULSE|COUNTER|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita11~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita12~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X39_Y13_N31
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita12~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(12));

-- Location: LCCOMB_X39_Y12_N0
\PULSE|COUNTER|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita13~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(13) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita12~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(13) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita12~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita13~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(13)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita12~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita12~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita13~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X39_Y12_N1
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita13~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(13));

-- Location: LCCOMB_X39_Y12_N2
\PULSE|COUNTER|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita14~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(14) & (\PULSE|COUNTER|auto_generated|counter_comb_bita13~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(14) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita13~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita14~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(14) & !\PULSE|COUNTER|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita13~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita14~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X39_Y12_N3
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita14~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(14));

-- Location: LCCOMB_X39_Y12_N4
\PULSE|COUNTER|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita15~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(15) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita14~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(15) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita14~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita15~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(15)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita14~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita14~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita15~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X39_Y12_N5
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(15));

-- Location: LCCOMB_X39_Y12_N8
\PULSE|COUNTER|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita17~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(17) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita16~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(17) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita16~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita17~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(17)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita16~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita16~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita17~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCFF_X39_Y12_N9
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(17));

-- Location: LCCOMB_X39_Y12_N10
\PULSE|COUNTER|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita18~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(18) & (\PULSE|COUNTER|auto_generated|counter_comb_bita17~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(18) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita17~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita18~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(18) & !\PULSE|COUNTER|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita17~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita18~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X39_Y12_N14
\PULSE|COUNTER|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita20~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(20) & (\PULSE|COUNTER|auto_generated|counter_comb_bita19~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(20) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita19~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita20~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(20) & !\PULSE|COUNTER|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita19~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita20~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCFF_X39_Y12_N15
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita20~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(20));

-- Location: LCCOMB_X39_Y12_N16
\PULSE|COUNTER|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita21~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(21) & ((GND) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita20~COUT\))) # (!\PULSE|COUNTER|auto_generated|safe_q\(21) & 
-- (\PULSE|COUNTER|auto_generated|counter_comb_bita20~COUT\ $ (GND)))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita21~COUT\ = CARRY((\PULSE|COUNTER|auto_generated|safe_q\(21)) # (!\PULSE|COUNTER|auto_generated|counter_comb_bita20~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita20~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita21~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X39_Y12_N18
\PULSE|COUNTER|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita22~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(22) & (\PULSE|COUNTER|auto_generated|counter_comb_bita21~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(22) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita21~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita22~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(22) & !\PULSE|COUNTER|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita21~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita22~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCFF_X39_Y12_N19
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita22~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(22));

-- Location: LCCOMB_X39_Y12_N22
\PULSE|COUNTER|auto_generated|counter_comb_bita24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita24~combout\ = (\PULSE|COUNTER|auto_generated|safe_q\(24) & (\PULSE|COUNTER|auto_generated|counter_comb_bita23~COUT\ & VCC)) # (!\PULSE|COUNTER|auto_generated|safe_q\(24) & 
-- (!\PULSE|COUNTER|auto_generated|counter_comb_bita23~COUT\))
-- \PULSE|COUNTER|auto_generated|counter_comb_bita24~COUT\ = CARRY((!\PULSE|COUNTER|auto_generated|safe_q\(24) & !\PULSE|COUNTER|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(24),
	datad => VCC,
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita23~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita24~combout\,
	cout => \PULSE|COUNTER|auto_generated|counter_comb_bita24~COUT\);

-- Location: LCFF_X39_Y12_N23
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita24~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(24));

-- Location: LCCOMB_X39_Y12_N24
\PULSE|COUNTER|auto_generated|counter_comb_bita24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\ = \PULSE|COUNTER|auto_generated|counter_comb_bita24~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \PULSE|COUNTER|auto_generated|counter_comb_bita24~COUT\,
	combout => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\);

-- Location: LCFF_X39_Y13_N7
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita0~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(0));

-- Location: LCFF_X39_Y13_N21
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(7));

-- Location: LCCOMB_X39_Y13_N2
\PULSE|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~5_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(5) & (!\PULSE|COUNTER|auto_generated|safe_q\(6) & (!\PULSE|COUNTER|auto_generated|safe_q\(7) & !\PULSE|COUNTER|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(5),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(6),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(7),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(8),
	combout => \PULSE|Equal0~5_combout\);

-- Location: LCFF_X39_Y12_N17
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita21~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(21));

-- Location: LCCOMB_X39_Y12_N26
\PULSE|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~0_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(23) & (!\PULSE|COUNTER|auto_generated|safe_q\(24) & (!\PULSE|COUNTER|auto_generated|safe_q\(21) & !\PULSE|COUNTER|auto_generated|safe_q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(23),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(24),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(21),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(22),
	combout => \PULSE|Equal0~0_combout\);

-- Location: LCFF_X39_Y12_N11
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita18~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(18));

-- Location: LCCOMB_X39_Y12_N28
\PULSE|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~1_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(19) & (!\PULSE|COUNTER|auto_generated|safe_q\(20) & (!\PULSE|COUNTER|auto_generated|safe_q\(17) & !\PULSE|COUNTER|auto_generated|safe_q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(19),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(20),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(17),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(18),
	combout => \PULSE|Equal0~1_combout\);

-- Location: LCFF_X39_Y13_N25
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(9));

-- Location: LCCOMB_X39_Y13_N0
\PULSE|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~3_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(12) & (!\PULSE|COUNTER|auto_generated|safe_q\(11) & (!\PULSE|COUNTER|auto_generated|safe_q\(9) & !\PULSE|COUNTER|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(12),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(11),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(9),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(10),
	combout => \PULSE|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y14_N2
\PULSE|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~4_combout\ = (\PULSE|Equal0~2_combout\ & (\PULSE|Equal0~0_combout\ & (\PULSE|Equal0~1_combout\ & \PULSE|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|Equal0~2_combout\,
	datab => \PULSE|Equal0~0_combout\,
	datac => \PULSE|Equal0~1_combout\,
	datad => \PULSE|Equal0~3_combout\,
	combout => \PULSE|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y14_N20
\PULSE|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~7_combout\ = (\PULSE|Equal0~6_combout\ & (!\PULSE|COUNTER|auto_generated|safe_q\(0) & (\PULSE|Equal0~5_combout\ & \PULSE|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|Equal0~6_combout\,
	datab => \PULSE|COUNTER|auto_generated|safe_q\(0),
	datac => \PULSE|Equal0~5_combout\,
	datad => \PULSE|Equal0~4_combout\,
	combout => \PULSE|Equal0~7_combout\);

-- Location: LCFF_X40_Y14_N11
\COUNTER|count_previous[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|Add0~4_combout\,
	aclr => \ALT_INV_counter_reset~combout\,
	ena => \PULSE|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|count_previous\(2));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter_input[0]~I\ : cycloneii_io
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
	padio => ww_letter_input(0),
	combout => \letter_input~combout\(0));

-- Location: LCFF_X40_Y14_N7
\COUNTER|count_previous[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|Add0~0_combout\,
	aclr => \ALT_INV_counter_reset~combout\,
	ena => \PULSE|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|count_previous\(0));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter_input[4]~I\ : cycloneii_io
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
	padio => ww_letter_input(4),
	combout => \letter_input~combout\(4));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter_input[1]~I\ : cycloneii_io
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
	padio => ww_letter_input(1),
	combout => \letter_input~combout\(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter_input[2]~I\ : cycloneii_io
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
	padio => ww_letter_input(2),
	combout => \letter_input~combout\(2));

-- Location: LCCOMB_X35_Y11_N26
\DECODER|letter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~7_combout\ = (!\letter_input~combout\(3) & (!\letter_input~combout\(4) & (!\letter_input~combout\(1) & \letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~7_combout\);

-- Location: LCCOMB_X36_Y11_N22
\SHIFTER|Mux0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~55_combout\ = (\letter_input~combout\(0) & (((\COUNTER|count_previous\(0) & \DECODER|letter~7_combout\)))) # (!\letter_input~combout\(0) & (\DECODER|letter~8_combout\ & (!\COUNTER|count_previous\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~8_combout\,
	datab => \letter_input~combout\(0),
	datac => \COUNTER|count_previous\(0),
	datad => \DECODER|letter~7_combout\,
	combout => \SHIFTER|Mux0~55_combout\);

-- Location: LCCOMB_X36_Y11_N30
\SHIFTER|Mux0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~49_combout\ = (\letter_input~combout\(0) & (\COUNTER|count_previous\(0) & !\letter_input~combout\(1))) # (!\letter_input~combout\(0) & (!\COUNTER|count_previous\(0) & \letter_input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter_input~combout\(0),
	datac => \COUNTER|count_previous\(0),
	datad => \letter_input~combout\(1),
	combout => \SHIFTER|Mux0~49_combout\);

-- Location: LCCOMB_X35_Y11_N4
\SHIFTER|Mux0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~53_combout\ = (\letter_input~combout\(3) & (\SHIFTER|Mux0~49_combout\ & (!\letter_input~combout\(4) & \letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \SHIFTER|Mux0~49_combout\,
	datac => \letter_input~combout\(4),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~53_combout\);

-- Location: LCCOMB_X40_Y14_N16
\COUNTER|count_previous~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|count_previous~0_combout\ = \COUNTER|Add0~2_combout\ $ (((!\COUNTER|count_previous\(2) & \COUNTER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|Add0~2_combout\,
	datac => \COUNTER|count_previous\(2),
	datad => \COUNTER|Equal0~0_combout\,
	combout => \COUNTER|count_previous~0_combout\);

-- Location: LCFF_X40_Y14_N17
\COUNTER|count_previous[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|count_previous~0_combout\,
	aclr => \ALT_INV_counter_reset~combout\,
	ena => \PULSE|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|count_previous\(1));

-- Location: LCCOMB_X40_Y14_N14
\COUNTER|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Add0~8_combout\ = \COUNTER|Add0~7\ $ (!\COUNTER|count_previous\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER|count_previous\(4),
	cin => \COUNTER|Add0~7\,
	combout => \COUNTER|Add0~8_combout\);

-- Location: LCCOMB_X40_Y14_N28
\COUNTER|count_previous~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|count_previous~2_combout\ = \COUNTER|Add0~8_combout\ $ (((!\COUNTER|count_previous\(2) & \COUNTER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|Add0~8_combout\,
	datac => \COUNTER|count_previous\(2),
	datad => \COUNTER|Equal0~0_combout\,
	combout => \COUNTER|count_previous~2_combout\);

-- Location: LCFF_X40_Y14_N29
\COUNTER|count_previous[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|count_previous~2_combout\,
	aclr => \ALT_INV_counter_reset~combout\,
	ena => \PULSE|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|count_previous\(4));

-- Location: LCCOMB_X40_Y14_N30
\COUNTER|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|Equal0~0_combout\ = (\COUNTER|count_previous\(0) & (\COUNTER|count_previous\(3) & (!\COUNTER|count_previous\(1) & \COUNTER|count_previous\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(0),
	datab => \COUNTER|count_previous\(3),
	datac => \COUNTER|count_previous\(1),
	datad => \COUNTER|count_previous\(4),
	combout => \COUNTER|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y14_N26
\COUNTER|count_previous~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNTER|count_previous~1_combout\ = \COUNTER|Add0~6_combout\ $ (((\COUNTER|Equal0~0_combout\ & !\COUNTER|count_previous\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|Add0~6_combout\,
	datab => \COUNTER|Equal0~0_combout\,
	datac => \COUNTER|count_previous\(2),
	combout => \COUNTER|count_previous~1_combout\);

-- Location: LCFF_X40_Y14_N27
\COUNTER|count_previous[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \COUNTER|count_previous~1_combout\,
	aclr => \ALT_INV_counter_reset~combout\,
	ena => \PULSE|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COUNTER|count_previous\(3));

-- Location: LCCOMB_X34_Y10_N28
\SHIFTER|Mux1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~21_combout\ = (\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~55_combout\)) # (!\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER|Mux0~55_combout\,
	datac => \SHIFTER|Mux0~53_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~21_combout\);

-- Location: LCCOMB_X35_Y11_N12
\DECODER|letter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~4_combout\ = (\letter_input~combout\(3) & (\letter_input~combout\(4) & (!\letter_input~combout\(1) & !\letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~4_combout\);

-- Location: LCCOMB_X36_Y11_N0
\SHIFTER|Mux0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~46_combout\ = (\COUNTER|count_previous\(0) & (\DECODER|letter~6_combout\ & ((\letter_input~combout\(0))))) # (!\COUNTER|count_previous\(0) & (((\DECODER|letter~4_combout\ & !\letter_input~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~6_combout\,
	datab => \COUNTER|count_previous\(0),
	datac => \DECODER|letter~4_combout\,
	datad => \letter_input~combout\(0),
	combout => \SHIFTER|Mux0~46_combout\);

-- Location: LCCOMB_X34_Y10_N14
\SHIFTER|Mux1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~25_combout\ = (\COUNTER|count_previous\(4) & (((\SHIFTER|Mux0~46_combout\ & !\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (\SHIFTER|Mux1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(4),
	datab => \SHIFTER|Mux1~21_combout\,
	datac => \SHIFTER|Mux0~46_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~25_combout\);

-- Location: LCCOMB_X34_Y13_N28
\SHIFTER|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux5~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux1~25_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux5~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux5~3_combout\,
	datab => \COUNTER|count_previous\(2),
	datac => \SHIFTER|Mux1~25_combout\,
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux5~4_combout\);

-- Location: LCCOMB_X36_Y11_N4
\SHIFTER|Mux0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~43_combout\ = (\COUNTER|count_previous\(0) & (\DECODER|letter~3_combout\ & (\letter_input~combout\(0)))) # (!\COUNTER|count_previous\(0) & (((!\letter_input~combout\(0) & \DECODER|letter~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~3_combout\,
	datab => \COUNTER|count_previous\(0),
	datac => \letter_input~combout\(0),
	datad => \DECODER|letter~7_combout\,
	combout => \SHIFTER|Mux0~43_combout\);

-- Location: LCCOMB_X35_Y11_N14
\DECODER|letter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~2_combout\ = (!\letter_input~combout\(3) & (\letter_input~combout\(4) & (!\letter_input~combout\(1) & \letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~2_combout\);

-- Location: LCCOMB_X36_Y11_N28
\SHIFTER|Mux0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~54_combout\ = (\COUNTER|count_previous\(0) & (((\letter_input~combout\(0) & \DECODER|letter~2_combout\)))) # (!\COUNTER|count_previous\(0) & (\DECODER|letter~6_combout\ & (!\letter_input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~6_combout\,
	datab => \COUNTER|count_previous\(0),
	datac => \letter_input~combout\(0),
	datad => \DECODER|letter~2_combout\,
	combout => \SHIFTER|Mux0~54_combout\);

-- Location: LCCOMB_X34_Y10_N22
\SHIFTER|Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~11_combout\ = (\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~54_combout\))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER|Mux0~43_combout\,
	datac => \SHIFTER|Mux0~54_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~11_combout\);

-- Location: LCCOMB_X34_Y14_N0
\SHIFTER|Mux1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~12_combout\ = (\COUNTER|count_previous\(4) & (\SHIFTER|Mux0~53_combout\ & ((!\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (((\SHIFTER|Mux1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~53_combout\,
	datab => \SHIFTER|Mux1~11_combout\,
	datac => \COUNTER|count_previous\(4),
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~12_combout\);

-- Location: LCCOMB_X40_Y14_N0
\SHIFTER|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux18~3_combout\ = (\COUNTER|count_previous\(2)) # ((!\COUNTER|count_previous\(1) & \COUNTER|count_previous\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(1),
	datab => \COUNTER|count_previous\(4),
	datac => \COUNTER|count_previous\(2),
	combout => \SHIFTER|Mux18~3_combout\);

-- Location: LCCOMB_X34_Y13_N0
\SHIFTER|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux18~4_combout\ = (\COUNTER|count_previous\(2)) # (\COUNTER|count_previous\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER|count_previous\(2),
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux18~4_combout\);

-- Location: LCCOMB_X35_Y11_N28
\DECODER|letter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~1_combout\ = (\letter_input~combout\(3)) # ((\letter_input~combout\(4)) # ((\letter_input~combout\(1)) # (\letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~1_combout\);

-- Location: LCCOMB_X36_Y11_N18
\SHIFTER|Mux0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~52_combout\ = (\letter_input~combout\(0) & (\DECODER|letter~4_combout\ & (\COUNTER|count_previous\(0)))) # (!\letter_input~combout\(0) & (((!\COUNTER|count_previous\(0) & !\DECODER|letter~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(0),
	datab => \DECODER|letter~4_combout\,
	datac => \COUNTER|count_previous\(0),
	datad => \DECODER|letter~1_combout\,
	combout => \SHIFTER|Mux0~52_combout\);

-- Location: LCCOMB_X34_Y10_N6
\SHIFTER|Mux1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~17_combout\ = (\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~52_combout\))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~47_combout\,
	datab => \SHIFTER|Mux0~52_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~17_combout\);

-- Location: LCCOMB_X34_Y14_N28
\SHIFTER|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux17~2_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux1~19_combout\) # ((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((!\SHIFTER|Mux18~3_combout\ & \SHIFTER|Mux1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~19_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux1~17_combout\,
	combout => \SHIFTER|Mux17~2_combout\);

-- Location: LCCOMB_X34_Y14_N22
\SHIFTER|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux17~3_combout\ = (\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux17~2_combout\ & ((\SHIFTER|Mux1~12_combout\))) # (!\SHIFTER|Mux17~2_combout\ & (\SHIFTER|Mux1~24_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & (((\SHIFTER|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~24_combout\,
	datab => \SHIFTER|Mux1~12_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux17~2_combout\,
	combout => \SHIFTER|Mux17~3_combout\);

-- Location: LCCOMB_X30_Y17_N12
\SHIFTER|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux17~4_combout\ = (\COUNTER|count_previous\(1) & ((\COUNTER|count_previous\(2) & (\SHIFTER|Mux1~16_combout\)) # (!\COUNTER|count_previous\(2) & ((\SHIFTER|Mux17~3_combout\))))) # (!\COUNTER|count_previous\(1) & (((\SHIFTER|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~16_combout\,
	datab => \SHIFTER|Mux17~3_combout\,
	datac => \COUNTER|count_previous\(1),
	datad => \COUNTER|count_previous\(2),
	combout => \SHIFTER|Mux17~4_combout\);

-- Location: LCCOMB_X34_Y10_N2
\SHIFTER|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~1_combout\ = (\COUNTER|count_previous\(4) & (((\SHIFTER|Mux0~43_combout\ & !\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (\SHIFTER|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~0_combout\,
	datab => \SHIFTER|Mux0~43_combout\,
	datac => \COUNTER|count_previous\(4),
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~1_combout\);

-- Location: LCCOMB_X34_Y10_N16
\SHIFTER|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~6_combout\ = (\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~53_combout\))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER|Mux0~54_combout\,
	datac => \SHIFTER|Mux0~53_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~6_combout\);

-- Location: LCCOMB_X34_Y10_N10
\SHIFTER|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~7_combout\ = (\COUNTER|count_previous\(4) & (\SHIFTER|Mux0~55_combout\ & ((!\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (((\SHIFTER|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(4),
	datab => \SHIFTER|Mux0~55_combout\,
	datac => \SHIFTER|Mux1~6_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~7_combout\);

-- Location: LCCOMB_X34_Y14_N24
\SHIFTER|Mux1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~27_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux1~17_combout\))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~2_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux1~17_combout\,
	combout => \SHIFTER|Mux1~27_combout\);

-- Location: LCCOMB_X33_Y14_N18
\SHIFTER|Mux1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~28_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux1~27_combout\ & (\SHIFTER|Mux1~1_combout\)) # (!\SHIFTER|Mux1~27_combout\ & ((\SHIFTER|Mux1~7_combout\))))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~4_combout\,
	datab => \SHIFTER|Mux1~1_combout\,
	datac => \SHIFTER|Mux1~7_combout\,
	datad => \SHIFTER|Mux1~27_combout\,
	combout => \SHIFTER|Mux1~28_combout\);

-- Location: LCCOMB_X36_Y11_N20
\SHIFTER|Mux0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~48_combout\ = (\COUNTER|count_previous\(0) & (((\letter_input~combout\(0) & !\DECODER|letter~1_combout\)))) # (!\COUNTER|count_previous\(0) & (\DECODER|letter~3_combout\ & (!\letter_input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~3_combout\,
	datab => \COUNTER|count_previous\(0),
	datac => \letter_input~combout\(0),
	datad => \DECODER|letter~1_combout\,
	combout => \SHIFTER|Mux0~48_combout\);

-- Location: LCCOMB_X35_Y11_N10
\SHIFTER|Mux0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~50_combout\ = (\letter_input~combout\(3) & (\SHIFTER|Mux0~49_combout\ & (!\letter_input~combout\(4) & !\letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \SHIFTER|Mux0~49_combout\,
	datac => \letter_input~combout\(4),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~50_combout\);

-- Location: LCCOMB_X35_Y10_N10
\SHIFTER|Mux1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~24_combout\ = (\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~50_combout\))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~51_combout\,
	datac => \SHIFTER|Mux0~50_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~24_combout\);

-- Location: LCCOMB_X35_Y10_N0
\SHIFTER|Mux1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~26_combout\ = (\COUNTER|count_previous\(4) & (\SHIFTER|Mux0~48_combout\ & ((!\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (((\SHIFTER|Mux1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(4),
	datab => \SHIFTER|Mux0~48_combout\,
	datac => \SHIFTER|Mux1~24_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~26_combout\);

-- Location: LCCOMB_X35_Y11_N2
\DECODER|letter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~0_combout\ = (!\letter_input~combout\(3) & (\letter_input~combout\(4) & (\letter_input~combout\(1) & !\letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~0_combout\);

-- Location: LCCOMB_X36_Y11_N10
\SHIFTER|Mux0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~42_combout\ = (\COUNTER|count_previous\(0) & (((\letter_input~combout\(0) & \DECODER|letter~0_combout\)))) # (!\COUNTER|count_previous\(0) & (\DECODER|letter~2_combout\ & (!\letter_input~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~2_combout\,
	datab => \COUNTER|count_previous\(0),
	datac => \letter_input~combout\(0),
	datad => \DECODER|letter~0_combout\,
	combout => \SHIFTER|Mux0~42_combout\);

-- Location: LCCOMB_X35_Y10_N8
\SHIFTER|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~4_combout\ = (\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~48_combout\)) # (!\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER|Mux0~48_combout\,
	datac => \SHIFTER|Mux0~50_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~4_combout\);

-- Location: LCCOMB_X35_Y10_N22
\SHIFTER|Mux1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~22_combout\ = (\COUNTER|count_previous\(4) & (\SHIFTER|Mux0~42_combout\ & ((!\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (((\SHIFTER|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(4),
	datab => \SHIFTER|Mux0~42_combout\,
	datac => \SHIFTER|Mux1~4_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~22_combout\);

-- Location: LCCOMB_X34_Y13_N30
\SHIFTER|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux9~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux1~22_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux9~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux9~3_combout\,
	datab => \SHIFTER|Mux1~22_combout\,
	datac => \COUNTER|count_previous\(2),
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux9~4_combout\);

-- Location: LCCOMB_X34_Y13_N26
\ENCODER|index[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[0]~11_combout\ = (\SHIFTER|Mux9~4_combout\) # ((\SHIFTER|Mux18~2_combout\ & ((\SHIFTER|Mux1~26_combout\))) # (!\SHIFTER|Mux18~2_combout\ & (\SHIFTER|Mux1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~2_combout\,
	datab => \SHIFTER|Mux1~28_combout\,
	datac => \SHIFTER|Mux1~26_combout\,
	datad => \SHIFTER|Mux9~4_combout\,
	combout => \ENCODER|index[0]~11_combout\);

-- Location: LCCOMB_X34_Y13_N4
\ENCODER|index[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[0]~12_combout\ = (!\SHIFTER|Mux13~4_combout\ & (!\SHIFTER|Mux5~4_combout\ & (!\SHIFTER|Mux17~4_combout\ & !\ENCODER|index[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux13~4_combout\,
	datab => \SHIFTER|Mux5~4_combout\,
	datac => \SHIFTER|Mux17~4_combout\,
	datad => \ENCODER|index[0]~11_combout\,
	combout => \ENCODER|index[0]~12_combout\);

-- Location: LCCOMB_X35_Y11_N18
\SHIFTER|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~11_combout\ = (\letter_input~combout\(3) & (!\letter_input~combout\(4) & (!\letter_input~combout\(1) & !\letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~11_combout\);

-- Location: LCCOMB_X36_Y11_N26
\SHIFTER|Mux0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~47_combout\ = (\letter_input~combout\(0) & (\DECODER|letter~8_combout\ & (\COUNTER|count_previous\(0)))) # (!\letter_input~combout\(0) & (((!\COUNTER|count_previous\(0) & \SHIFTER|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~8_combout\,
	datab => \letter_input~combout\(0),
	datac => \COUNTER|count_previous\(0),
	datad => \SHIFTER|Mux0~11_combout\,
	combout => \SHIFTER|Mux0~47_combout\);

-- Location: LCCOMB_X34_Y10_N30
\SHIFTER|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~3_combout\ = (\COUNTER|count_previous\(4) & (((!\COUNTER|count_previous\(3) & \SHIFTER|Mux0~47_combout\)))) # (!\COUNTER|count_previous\(4) & (\SHIFTER|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~2_combout\,
	datab => \COUNTER|count_previous\(3),
	datac => \COUNTER|count_previous\(4),
	datad => \SHIFTER|Mux0~47_combout\,
	combout => \SHIFTER|Mux1~3_combout\);

-- Location: LCCOMB_X33_Y14_N26
\SHIFTER|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux21~4_combout\ = (\COUNTER|count_previous\(1) & ((\COUNTER|count_previous\(2) & ((\SHIFTER|Mux1~3_combout\))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux21~3_combout\)))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux21~3_combout\,
	datab => \SHIFTER|Mux1~3_combout\,
	datac => \COUNTER|count_previous\(1),
	datad => \COUNTER|count_previous\(2),
	combout => \SHIFTER|Mux21~4_combout\);

-- Location: LCCOMB_X35_Y10_N16
\SHIFTER|Mux1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~10_combout\ = (\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~42_combout\))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER|Mux0~48_combout\,
	datac => \SHIFTER|Mux0~42_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~10_combout\);

-- Location: LCCOMB_X34_Y11_N8
\SHIFTER|Mux1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~16_combout\ = (\SHIFTER|Mux1~15_combout\) # ((\SHIFTER|Mux1~10_combout\ & !\COUNTER|count_previous\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~15_combout\,
	datac => \SHIFTER|Mux1~10_combout\,
	datad => \COUNTER|count_previous\(4),
	combout => \SHIFTER|Mux1~16_combout\);

-- Location: LCCOMB_X34_Y10_N18
\SHIFTER|Mux1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~14_combout\ = (\COUNTER|count_previous\(3) & ((\SHIFTER|Mux0~46_combout\))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER|Mux0~55_combout\,
	datac => \SHIFTER|Mux0~46_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~14_combout\);

-- Location: LCCOMB_X35_Y10_N26
\SHIFTER|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux19~2_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux1~13_combout\)) # (!\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~13_combout\,
	datab => \SHIFTER|Mux1~14_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux19~2_combout\);

-- Location: LCCOMB_X35_Y10_N12
\SHIFTER|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux19~3_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux19~2_combout\ & ((\SHIFTER|Mux1~16_combout\))) # (!\SHIFTER|Mux19~2_combout\ & (\SHIFTER|Mux1~12_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~12_combout\,
	datab => \SHIFTER|Mux1~16_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux19~2_combout\,
	combout => \SHIFTER|Mux19~3_combout\);

-- Location: LCCOMB_X33_Y14_N16
\SHIFTER|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux19~4_combout\ = (\COUNTER|count_previous\(1) & ((\COUNTER|count_previous\(2) & (\SHIFTER|Mux1~9_combout\)) # (!\COUNTER|count_previous\(2) & ((\SHIFTER|Mux19~3_combout\))))) # (!\COUNTER|count_previous\(1) & (((\SHIFTER|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~9_combout\,
	datab => \SHIFTER|Mux19~3_combout\,
	datac => \COUNTER|count_previous\(1),
	datad => \COUNTER|count_previous\(2),
	combout => \SHIFTER|Mux19~4_combout\);

-- Location: LCCOMB_X30_Y17_N16
\SHIFTER|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux18~2_combout\ = (\COUNTER|count_previous\(2) & \COUNTER|count_previous\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(2),
	datac => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux18~2_combout\);

-- Location: LCCOMB_X33_Y14_N8
\ENCODER|tmp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|tmp~2_combout\ = (!\SHIFTER|Mux19~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux1~7_combout\))) # (!\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux23~3_combout\,
	datab => \SHIFTER|Mux19~4_combout\,
	datac => \SHIFTER|Mux1~7_combout\,
	datad => \SHIFTER|Mux18~2_combout\,
	combout => \ENCODER|tmp~2_combout\);

-- Location: LCCOMB_X34_Y10_N26
\SHIFTER|Mux1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~20_combout\ = (\COUNTER|count_previous\(4) & (((\SHIFTER|Mux0~54_combout\ & !\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (\SHIFTER|Mux1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~8_combout\,
	datab => \SHIFTER|Mux0~54_combout\,
	datac => \COUNTER|count_previous\(4),
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~20_combout\);

-- Location: LCCOMB_X34_Y13_N16
\SHIFTER|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux7~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux1~20_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux7~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux7~3_combout\,
	datab => \COUNTER|count_previous\(2),
	datac => \SHIFTER|Mux1~20_combout\,
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux7~4_combout\);

-- Location: LCCOMB_X35_Y10_N24
\SHIFTER|Mux1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~23_combout\ = (\COUNTER|count_previous\(4) & (((\SHIFTER|Mux0~52_combout\ & !\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (\SHIFTER|Mux1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~13_combout\,
	datab => \SHIFTER|Mux0~52_combout\,
	datac => \COUNTER|count_previous\(4),
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~23_combout\);

-- Location: LCCOMB_X34_Y13_N10
\SHIFTER|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux3~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux1~23_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux3~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux3~3_combout\,
	datab => \SHIFTER|Mux1~23_combout\,
	datac => \COUNTER|count_previous\(2),
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux3~4_combout\);

-- Location: LCCOMB_X34_Y13_N14
\ENCODER|index[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[0]~10_combout\ = (\ENCODER|index[0]~9_combout\ & (\ENCODER|tmp~2_combout\ & (!\SHIFTER|Mux7~4_combout\ & !\SHIFTER|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[0]~9_combout\,
	datab => \ENCODER|tmp~2_combout\,
	datac => \SHIFTER|Mux7~4_combout\,
	datad => \SHIFTER|Mux3~4_combout\,
	combout => \ENCODER|index[0]~10_combout\);

-- Location: LCCOMB_X33_Y14_N14
\ENCODER|index[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[0]~13_combout\ = (\ENCODER|index[0]~7_combout\ & (\ENCODER|index[0]~12_combout\ & (!\SHIFTER|Mux21~4_combout\ & \ENCODER|index[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[0]~7_combout\,
	datab => \ENCODER|index[0]~12_combout\,
	datac => \SHIFTER|Mux21~4_combout\,
	datad => \ENCODER|index[0]~10_combout\,
	combout => \ENCODER|index[0]~13_combout\);

-- Location: LCCOMB_X40_Y14_N4
\SHIFTER|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~10_combout\ = (!\COUNTER|count_previous\(3) & (\COUNTER|count_previous\(4) & (\COUNTER|count_previous\(0) $ (\letter_input~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(0),
	datab => \COUNTER|count_previous\(3),
	datac => \letter_input~combout\(0),
	datad => \COUNTER|count_previous\(4),
	combout => \SHIFTER|Mux0~10_combout\);

-- Location: LCCOMB_X33_Y15_N26
\SHIFTER|Mux0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~13_combout\ = (\SHIFTER|Mux0~12_combout\ & (((\SHIFTER|Mux0~11_combout\ & \SHIFTER|Mux0~10_combout\)) # (!\COUNTER|count_previous\(4)))) # (!\SHIFTER|Mux0~12_combout\ & (((\SHIFTER|Mux0~11_combout\ & \SHIFTER|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~12_combout\,
	datab => \COUNTER|count_previous\(4),
	datac => \SHIFTER|Mux0~11_combout\,
	datad => \SHIFTER|Mux0~10_combout\,
	combout => \SHIFTER|Mux0~13_combout\);

-- Location: LCCOMB_X36_Y11_N2
\SHIFTER|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~5_combout\ = \letter_input~combout\(0) $ (\COUNTER|count_previous\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter_input~combout\(0),
	datac => \COUNTER|count_previous\(0),
	combout => \SHIFTER|Mux0~5_combout\);

-- Location: LCCOMB_X36_Y13_N14
\SHIFTER|Mux0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~25_combout\ = (\SHIFTER|Mux0~14_combout\ & (\letter_input~combout\(2) & (\SHIFTER|Mux0~5_combout\ & !\letter_input~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~14_combout\,
	datab => \letter_input~combout\(2),
	datac => \SHIFTER|Mux0~5_combout\,
	datad => \letter_input~combout\(1),
	combout => \SHIFTER|Mux0~25_combout\);

-- Location: LCCOMB_X37_Y11_N26
\SHIFTER|Mux0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~26_combout\ = (\SHIFTER|Mux0~10_combout\ & ((\DECODER|letter~7_combout\) # ((\SHIFTER|Mux0~25_combout\ & !\COUNTER|count_previous\(4))))) # (!\SHIFTER|Mux0~10_combout\ & (((\SHIFTER|Mux0~25_combout\ & !\COUNTER|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~10_combout\,
	datab => \DECODER|letter~7_combout\,
	datac => \SHIFTER|Mux0~25_combout\,
	datad => \COUNTER|count_previous\(4),
	combout => \SHIFTER|Mux0~26_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\letter_input[3]~I\ : cycloneii_io
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
	padio => ww_letter_input(3),
	combout => \letter_input~combout\(3));

-- Location: LCCOMB_X40_Y14_N18
\SHIFTER|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~4_combout\ = (\letter_input~combout\(1) & (!\letter_input~combout\(2) & (\COUNTER|count_previous\(0) $ (\letter_input~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(0),
	datab => \letter_input~combout\(1),
	datac => \letter_input~combout\(0),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~4_combout\);

-- Location: LCCOMB_X36_Y13_N20
\SHIFTER|Mux0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~34_combout\ = (!\letter_input~combout\(4) & (\SHIFTER|Mux0~4_combout\ & (\COUNTER|count_previous\(3) $ (\letter_input~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(3),
	datad => \SHIFTER|Mux0~4_combout\,
	combout => \SHIFTER|Mux0~34_combout\);

-- Location: LCCOMB_X33_Y15_N4
\SHIFTER|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux24~2_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux0~34_combout\))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~6_combout\,
	datab => \SHIFTER|Mux0~34_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux24~2_combout\);

-- Location: LCCOMB_X36_Y13_N12
\SHIFTER|Mux0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~23_combout\ = (\SHIFTER|Mux0~14_combout\ & (\letter_input~combout\(2) & (\SHIFTER|Mux0~5_combout\ & \letter_input~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~14_combout\,
	datab => \letter_input~combout\(2),
	datac => \SHIFTER|Mux0~5_combout\,
	datad => \letter_input~combout\(1),
	combout => \SHIFTER|Mux0~23_combout\);

-- Location: LCCOMB_X35_Y11_N20
\DECODER|letter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~8_combout\ = (!\letter_input~combout\(3) & (!\letter_input~combout\(4) & (\letter_input~combout\(1) & \letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~8_combout\);

-- Location: LCCOMB_X37_Y11_N16
\SHIFTER|Mux0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~24_combout\ = (\SHIFTER|Mux0~10_combout\ & ((\DECODER|letter~8_combout\) # ((\SHIFTER|Mux0~23_combout\ & !\COUNTER|count_previous\(4))))) # (!\SHIFTER|Mux0~10_combout\ & (\SHIFTER|Mux0~23_combout\ & ((!\COUNTER|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~10_combout\,
	datab => \SHIFTER|Mux0~23_combout\,
	datac => \DECODER|letter~8_combout\,
	datad => \COUNTER|count_previous\(4),
	combout => \SHIFTER|Mux0~24_combout\);

-- Location: LCCOMB_X33_Y15_N30
\SHIFTER|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux24~3_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux24~2_combout\ & ((\SHIFTER|Mux0~24_combout\))) # (!\SHIFTER|Mux24~2_combout\ & (\SHIFTER|Mux0~13_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~4_combout\,
	datab => \SHIFTER|Mux0~13_combout\,
	datac => \SHIFTER|Mux24~2_combout\,
	datad => \SHIFTER|Mux0~24_combout\,
	combout => \SHIFTER|Mux24~3_combout\);

-- Location: LCCOMB_X33_Y15_N14
\SHIFTER|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux24~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & (\SHIFTER|Mux0~26_combout\)) # (!\COUNTER|count_previous\(1) & ((\SHIFTER|Mux24~3_combout\))))) # (!\COUNTER|count_previous\(2) & (((\SHIFTER|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(2),
	datab => \SHIFTER|Mux0~26_combout\,
	datac => \COUNTER|count_previous\(1),
	datad => \SHIFTER|Mux24~3_combout\,
	combout => \SHIFTER|Mux24~4_combout\);

-- Location: LCCOMB_X36_Y13_N26
\SHIFTER|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~7_combout\ = (!\COUNTER|count_previous\(3) & (!\letter_input~combout\(4) & \letter_input~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(3),
	combout => \SHIFTER|Mux0~7_combout\);

-- Location: LCCOMB_X36_Y13_N16
\SHIFTER|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~6_combout\ = (\SHIFTER|Mux0~5_combout\ & ((\COUNTER|count_previous\(3) & ((\DECODER|letter~0_combout\))) # (!\COUNTER|count_previous\(3) & (!\DECODER|letter~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~1_combout\,
	datab => \SHIFTER|Mux0~5_combout\,
	datac => \COUNTER|count_previous\(3),
	datad => \DECODER|letter~0_combout\,
	combout => \SHIFTER|Mux0~6_combout\);

-- Location: LCCOMB_X36_Y13_N4
\SHIFTER|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~8_combout\ = (\COUNTER|count_previous\(4) & (\SHIFTER|Mux0~7_combout\ & ((\SHIFTER|Mux0~4_combout\)))) # (!\COUNTER|count_previous\(4) & (((\SHIFTER|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(4),
	datab => \SHIFTER|Mux0~7_combout\,
	datac => \SHIFTER|Mux0~6_combout\,
	datad => \SHIFTER|Mux0~4_combout\,
	combout => \SHIFTER|Mux0~8_combout\);

-- Location: LCCOMB_X35_Y11_N0
\DECODER|letter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~6_combout\ = (!\letter_input~combout\(3) & (\letter_input~combout\(4) & (\letter_input~combout\(1) & \letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~6_combout\);

-- Location: LCCOMB_X36_Y11_N6
\SHIFTER|Mux0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~18_combout\ = (\SHIFTER|Mux0~5_combout\ & ((\COUNTER|count_previous\(3) & ((\DECODER|letter~6_combout\))) # (!\COUNTER|count_previous\(3) & (\DECODER|letter~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~7_combout\,
	datab => \SHIFTER|Mux0~5_combout\,
	datac => \DECODER|letter~6_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux0~18_combout\);

-- Location: LCCOMB_X34_Y11_N30
\SHIFTER|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux20~0_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux0~22_combout\) # ((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux0~18_combout\ & !\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~22_combout\,
	datab => \SHIFTER|Mux0~18_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux20~0_combout\);

-- Location: LCCOMB_X33_Y15_N18
\SHIFTER|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux20~1_combout\ = (\SHIFTER|Mux20~0_combout\ & (((\SHIFTER|Mux0~8_combout\) # (!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux20~0_combout\ & (\SHIFTER|Mux0~33_combout\ & ((\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~33_combout\,
	datab => \SHIFTER|Mux0~8_combout\,
	datac => \SHIFTER|Mux20~0_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux20~1_combout\);

-- Location: LCCOMB_X33_Y15_N16
\ENCODER|index[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[0]~6_combout\ = (!\SHIFTER|Mux24~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux0~13_combout\)) # (!\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~2_combout\,
	datab => \SHIFTER|Mux0~13_combout\,
	datac => \SHIFTER|Mux24~4_combout\,
	datad => \SHIFTER|Mux20~1_combout\,
	combout => \ENCODER|index[0]~6_combout\);

-- Location: LCCOMB_X33_Y14_N22
\SHIFTER|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux25~4_combout\ = (\COUNTER|count_previous\(1) & ((\COUNTER|count_previous\(2) & ((\SHIFTER|Mux1~1_combout\))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux25~3_combout\)))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux25~3_combout\,
	datab => \SHIFTER|Mux1~1_combout\,
	datac => \COUNTER|count_previous\(1),
	datad => \COUNTER|count_previous\(2),
	combout => \SHIFTER|Mux25~4_combout\);

-- Location: LCCOMB_X33_Y14_N0
\ENCODER|index[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[1]~14_combout\ = (!\SHIFTER|Mux21~4_combout\ & (\ENCODER|index[0]~6_combout\ & !\SHIFTER|Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER|Mux21~4_combout\,
	datac => \ENCODER|index[0]~6_combout\,
	datad => \SHIFTER|Mux25~4_combout\,
	combout => \ENCODER|index[1]~14_combout\);

-- Location: LCCOMB_X30_Y17_N28
\ENCODER|tmp~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|tmp~4_combout\ = ((!\ENCODER|index[1]~14_combout\) # (!\ENCODER|tmp~2_combout\)) # (!\ENCODER|tmp~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|tmp~1_combout\,
	datab => \ENCODER|tmp~2_combout\,
	datad => \ENCODER|index[1]~14_combout\,
	combout => \ENCODER|tmp~4_combout\);

-- Location: LCCOMB_X35_Y11_N8
\DECODER|letter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~3_combout\ = (!\letter_input~combout\(3) & (!\letter_input~combout\(4) & (\letter_input~combout\(1) & !\letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~3_combout\);

-- Location: LCCOMB_X36_Y13_N6
\SHIFTER|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~9_combout\ = (\SHIFTER|Mux0~5_combout\ & ((\COUNTER|count_previous\(3) & (\DECODER|letter~2_combout\)) # (!\COUNTER|count_previous\(3) & ((\DECODER|letter~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~2_combout\,
	datab => \SHIFTER|Mux0~5_combout\,
	datac => \COUNTER|count_previous\(3),
	datad => \DECODER|letter~3_combout\,
	combout => \SHIFTER|Mux0~9_combout\);

-- Location: LCCOMB_X36_Y13_N0
\SHIFTER|Mux0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~27_combout\ = (\SHIFTER|Mux0~14_combout\ & (!\letter_input~combout\(2) & (\SHIFTER|Mux0~5_combout\ & \letter_input~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~14_combout\,
	datab => \letter_input~combout\(2),
	datac => \SHIFTER|Mux0~5_combout\,
	datad => \letter_input~combout\(1),
	combout => \SHIFTER|Mux0~27_combout\);

-- Location: LCCOMB_X34_Y11_N4
\SHIFTER|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux6~2_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux0~29_combout\) # ((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux0~27_combout\ & !\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~29_combout\,
	datab => \SHIFTER|Mux0~27_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux6~2_combout\);

-- Location: LCCOMB_X34_Y11_N6
\SHIFTER|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux6~3_combout\ = (\SHIFTER|Mux6~2_combout\ & ((\SHIFTER|Mux0~36_combout\) # ((!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux6~2_combout\ & (((\SHIFTER|Mux0~9_combout\ & \SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~36_combout\,
	datab => \SHIFTER|Mux0~9_combout\,
	datac => \SHIFTER|Mux6~2_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux6~3_combout\);

-- Location: LCCOMB_X33_Y15_N6
\SHIFTER|Mux0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~32_combout\ = (\SHIFTER|Mux0~3_combout\ & (((\DECODER|letter~6_combout\ & \SHIFTER|Mux0~10_combout\)) # (!\COUNTER|count_previous\(4)))) # (!\SHIFTER|Mux0~3_combout\ & (((\DECODER|letter~6_combout\ & \SHIFTER|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~3_combout\,
	datab => \COUNTER|count_previous\(4),
	datac => \DECODER|letter~6_combout\,
	datad => \SHIFTER|Mux0~10_combout\,
	combout => \SHIFTER|Mux0~32_combout\);

-- Location: LCCOMB_X29_Y9_N30
\SHIFTER|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux6~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux0~32_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux6~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(2),
	datab => \SHIFTER|Mux6~3_combout\,
	datac => \SHIFTER|Mux0~32_combout\,
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux6~4_combout\);

-- Location: LCCOMB_X36_Y13_N2
\SHIFTER|Mux0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~15_combout\ = (\SHIFTER|Mux0~14_combout\ & (!\letter_input~combout\(2) & (\SHIFTER|Mux0~5_combout\ & !\letter_input~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~14_combout\,
	datab => \letter_input~combout\(2),
	datac => \SHIFTER|Mux0~5_combout\,
	datad => \letter_input~combout\(1),
	combout => \SHIFTER|Mux0~15_combout\);

-- Location: LCCOMB_X33_Y15_N22
\SHIFTER|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux8~2_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux0~36_combout\) # ((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux0~15_combout\ & !\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~36_combout\,
	datab => \SHIFTER|Mux0~15_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux8~2_combout\);

-- Location: LCCOMB_X33_Y15_N0
\SHIFTER|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux8~3_combout\ = (\SHIFTER|Mux8~2_combout\ & (((\SHIFTER|Mux0~32_combout\) # (!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux8~2_combout\ & (\SHIFTER|Mux0~6_combout\ & (\SHIFTER|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~6_combout\,
	datab => \SHIFTER|Mux8~2_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux0~32_combout\,
	combout => \SHIFTER|Mux8~3_combout\);

-- Location: LCCOMB_X30_Y17_N22
\ENCODER|index[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~28_combout\ = (!\SHIFTER|Mux6~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux0~35_combout\)) # (!\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux8~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~35_combout\,
	datab => \SHIFTER|Mux6~4_combout\,
	datac => \SHIFTER|Mux18~2_combout\,
	datad => \SHIFTER|Mux8~3_combout\,
	combout => \ENCODER|index[2]~28_combout\);

-- Location: LCCOMB_X33_Y15_N12
\SHIFTER|Mux0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~36_combout\ = (\SHIFTER|Mux0~33_combout\ & (((\DECODER|letter~4_combout\ & \SHIFTER|Mux0~10_combout\)) # (!\COUNTER|count_previous\(4)))) # (!\SHIFTER|Mux0~33_combout\ & (((\DECODER|letter~4_combout\ & \SHIFTER|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~33_combout\,
	datab => \COUNTER|count_previous\(4),
	datac => \DECODER|letter~4_combout\,
	datad => \SHIFTER|Mux0~10_combout\,
	combout => \SHIFTER|Mux0~36_combout\);

-- Location: LCCOMB_X34_Y13_N20
\SHIFTER|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux4~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux0~36_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux4~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux4~3_combout\,
	datab => \SHIFTER|Mux0~36_combout\,
	datac => \COUNTER|count_previous\(2),
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux4~4_combout\);

-- Location: LCCOMB_X34_Y11_N10
\SHIFTER|Mux0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~29_combout\ = (\SHIFTER|Mux0~15_combout\ & (((!\DECODER|letter~1_combout\ & \SHIFTER|Mux0~10_combout\)) # (!\COUNTER|count_previous\(4)))) # (!\SHIFTER|Mux0~15_combout\ & (!\DECODER|letter~1_combout\ & ((\SHIFTER|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~15_combout\,
	datab => \DECODER|letter~1_combout\,
	datac => \COUNTER|count_previous\(4),
	datad => \SHIFTER|Mux0~10_combout\,
	combout => \SHIFTER|Mux0~29_combout\);

-- Location: LCCOMB_X29_Y9_N6
\SHIFTER|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux2~4_combout\ = (\COUNTER|count_previous\(1) & ((\COUNTER|count_previous\(2) & ((\SHIFTER|Mux0~29_combout\))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux2~3_combout\)))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux2~3_combout\,
	datab => \COUNTER|count_previous\(1),
	datac => \SHIFTER|Mux0~29_combout\,
	datad => \COUNTER|count_previous\(2),
	combout => \SHIFTER|Mux2~4_combout\);

-- Location: LCCOMB_X34_Y13_N2
\ENCODER|index[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[3]~23_combout\ = (!\SHIFTER|Mux3~4_combout\ & (!\SHIFTER|Mux5~4_combout\ & (!\SHIFTER|Mux4~4_combout\ & !\SHIFTER|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux3~4_combout\,
	datab => \SHIFTER|Mux5~4_combout\,
	datac => \SHIFTER|Mux4~4_combout\,
	datad => \SHIFTER|Mux2~4_combout\,
	combout => \ENCODER|index[3]~23_combout\);

-- Location: LCCOMB_X37_Y11_N30
\SHIFTER|Mux0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~38_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux0~24_combout\) # (\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux0~12_combout\ & ((!\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~12_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux0~24_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux0~38_combout\);

-- Location: LCCOMB_X35_Y11_N22
\SHIFTER|Mux0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~30_combout\ = (\SHIFTER|Mux0~2_combout\ & (!\letter_input~combout\(4) & (!\letter_input~combout\(1) & !\letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~2_combout\,
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~30_combout\);

-- Location: LCCOMB_X37_Y11_N0
\SHIFTER|Mux0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~39_combout\ = (\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux0~38_combout\ & ((\SHIFTER|Mux0~26_combout\))) # (!\SHIFTER|Mux0~38_combout\ & (\SHIFTER|Mux0~30_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~3_combout\,
	datab => \SHIFTER|Mux0~38_combout\,
	datac => \SHIFTER|Mux0~30_combout\,
	datad => \SHIFTER|Mux0~26_combout\,
	combout => \SHIFTER|Mux0~39_combout\);

-- Location: LCCOMB_X34_Y13_N22
\SHIFTER|Mux0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~56_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & (\SHIFTER|Mux0~28_combout\)) # (!\COUNTER|count_previous\(1) & ((\SHIFTER|Mux0~39_combout\))))) # (!\COUNTER|count_previous\(2) & (((\SHIFTER|Mux0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~28_combout\,
	datab => \SHIFTER|Mux0~39_combout\,
	datac => \COUNTER|count_previous\(2),
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux0~56_combout\);

-- Location: LCCOMB_X34_Y13_N6
\ENCODER|index[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[3]~16_combout\ = (!\SHIFTER|Mux0~56_combout\ & ((\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux1~26_combout\))) # (!\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~2_combout\,
	datab => \SHIFTER|Mux1~28_combout\,
	datac => \SHIFTER|Mux1~26_combout\,
	datad => \SHIFTER|Mux0~56_combout\,
	combout => \ENCODER|index[3]~16_combout\);

-- Location: LCCOMB_X30_Y17_N8
\ENCODER|index[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[3]~29_combout\ = (\ENCODER|index[2]~17_combout\ & (\ENCODER|index[2]~28_combout\ & (\ENCODER|index[3]~23_combout\ & \ENCODER|index[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~17_combout\,
	datab => \ENCODER|index[2]~28_combout\,
	datac => \ENCODER|index[3]~23_combout\,
	datad => \ENCODER|index[3]~16_combout\,
	combout => \ENCODER|index[3]~29_combout\);

-- Location: LCCOMB_X34_Y11_N24
\SHIFTER|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux16~2_combout\ = (\SHIFTER|Mux18~3_combout\ & (((\SHIFTER|Mux18~4_combout\) # (\SHIFTER|Mux0~27_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux0~30_combout\ & (!\SHIFTER|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~3_combout\,
	datab => \SHIFTER|Mux0~30_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux0~27_combout\,
	combout => \SHIFTER|Mux16~2_combout\);

-- Location: LCCOMB_X36_Y11_N8
\SHIFTER|Mux0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~20_combout\ = (\SHIFTER|Mux0~5_combout\ & ((\COUNTER|count_previous\(3) & ((\DECODER|letter~4_combout\))) # (!\COUNTER|count_previous\(3) & (\DECODER|letter~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~8_combout\,
	datab => \SHIFTER|Mux0~5_combout\,
	datac => \DECODER|letter~4_combout\,
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux0~20_combout\);

-- Location: LCCOMB_X35_Y11_N30
\DECODER|letter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|letter~5_combout\ = (\letter_input~combout\(3)) # (((\letter_input~combout\(1)) # (\letter_input~combout\(2))) # (!\letter_input~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|letter~5_combout\);

-- Location: LCCOMB_X37_Y11_N22
\SHIFTER|Mux0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~37_combout\ = (\SHIFTER|Mux0~10_combout\ & (((\SHIFTER|Mux0~20_combout\ & !\COUNTER|count_previous\(4))) # (!\DECODER|letter~5_combout\))) # (!\SHIFTER|Mux0~10_combout\ & (\SHIFTER|Mux0~20_combout\ & ((!\COUNTER|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~10_combout\,
	datab => \SHIFTER|Mux0~20_combout\,
	datac => \DECODER|letter~5_combout\,
	datad => \COUNTER|count_previous\(4),
	combout => \SHIFTER|Mux0~37_combout\);

-- Location: LCCOMB_X29_Y9_N28
\SHIFTER|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux16~3_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux16~2_combout\ & (\SHIFTER|Mux0~19_combout\)) # (!\SHIFTER|Mux16~2_combout\ & ((\SHIFTER|Mux0~37_combout\))))) # (!\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~19_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux16~2_combout\,
	datad => \SHIFTER|Mux0~37_combout\,
	combout => \SHIFTER|Mux16~3_combout\);

-- Location: LCCOMB_X36_Y13_N28
\SHIFTER|Mux0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~17_combout\ = (\letter_input~combout\(3) & (\SHIFTER|Mux0~5_combout\ & (!\COUNTER|count_previous\(3) & \COUNTER|count_previous\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \SHIFTER|Mux0~5_combout\,
	datac => \COUNTER|count_previous\(3),
	datad => \COUNTER|count_previous\(4),
	combout => \SHIFTER|Mux0~17_combout\);

-- Location: LCCOMB_X36_Y13_N8
\SHIFTER|Mux0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~21_combout\ = (!\letter_input~combout\(1) & (!\letter_input~combout\(4) & \letter_input~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(1),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~21_combout\);

-- Location: LCCOMB_X36_Y13_N10
\SHIFTER|Mux0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~22_combout\ = (\SHIFTER|Mux0~9_combout\ & (((\SHIFTER|Mux0~17_combout\ & \SHIFTER|Mux0~21_combout\)) # (!\COUNTER|count_previous\(4)))) # (!\SHIFTER|Mux0~9_combout\ & (\SHIFTER|Mux0~17_combout\ & (\SHIFTER|Mux0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~9_combout\,
	datab => \SHIFTER|Mux0~17_combout\,
	datac => \SHIFTER|Mux0~21_combout\,
	datad => \COUNTER|count_previous\(4),
	combout => \SHIFTER|Mux0~22_combout\);

-- Location: LCCOMB_X29_Y9_N18
\SHIFTER|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux16~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux0~22_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux16~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux16~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(2),
	datab => \SHIFTER|Mux16~3_combout\,
	datac => \SHIFTER|Mux0~22_combout\,
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux16~4_combout\);

-- Location: LCCOMB_X37_Y11_N28
\SHIFTER|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux14~2_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux0~25_combout\))) # (!\SHIFTER|Mux18~3_combout\ & (\SHIFTER|Mux0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~34_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux0~25_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux14~2_combout\);

-- Location: LCCOMB_X37_Y11_N24
\SHIFTER|Mux0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~31_combout\ = (\SHIFTER|Mux0~30_combout\ & (((\DECODER|letter~0_combout\ & \SHIFTER|Mux0~10_combout\)) # (!\COUNTER|count_previous\(4)))) # (!\SHIFTER|Mux0~30_combout\ & (((\DECODER|letter~0_combout\ & \SHIFTER|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~30_combout\,
	datab => \COUNTER|count_previous\(4),
	datac => \DECODER|letter~0_combout\,
	datad => \SHIFTER|Mux0~10_combout\,
	combout => \SHIFTER|Mux0~31_combout\);

-- Location: LCCOMB_X37_Y11_N8
\SHIFTER|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux14~3_combout\ = (\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux14~2_combout\ & ((\SHIFTER|Mux0~37_combout\))) # (!\SHIFTER|Mux14~2_combout\ & (\SHIFTER|Mux0~31_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~4_combout\,
	datab => \SHIFTER|Mux14~2_combout\,
	datac => \SHIFTER|Mux0~31_combout\,
	datad => \SHIFTER|Mux0~37_combout\,
	combout => \SHIFTER|Mux14~3_combout\);

-- Location: LCCOMB_X29_Y9_N24
\ENCODER|index[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~19_combout\ = (!\SHIFTER|Mux16~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux0~19_combout\)) # (!\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux14~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~19_combout\,
	datab => \SHIFTER|Mux16~4_combout\,
	datac => \SHIFTER|Mux18~2_combout\,
	datad => \SHIFTER|Mux14~3_combout\,
	combout => \ENCODER|index[2]~19_combout\);

-- Location: LCCOMB_X36_Y13_N30
\SHIFTER|Mux0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~40_combout\ = (\letter_input~combout\(3) & !\letter_input~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \letter_input~combout\(3),
	datad => \letter_input~combout\(4),
	combout => \SHIFTER|Mux0~40_combout\);

-- Location: LCCOMB_X40_Y14_N24
\SHIFTER|Mux0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~41_combout\ = (\COUNTER|count_previous\(0) & (\letter_input~combout\(1) & (\letter_input~combout\(0) & !\letter_input~combout\(2)))) # (!\COUNTER|count_previous\(0) & (!\letter_input~combout\(1) & (!\letter_input~combout\(0) & 
-- \letter_input~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(0),
	datab => \letter_input~combout\(1),
	datac => \letter_input~combout\(0),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~41_combout\);

-- Location: LCCOMB_X34_Y10_N0
\SHIFTER|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~0_combout\ = (\COUNTER|count_previous\(3) & (((\SHIFTER|Mux0~40_combout\ & \SHIFTER|Mux0~41_combout\)))) # (!\COUNTER|count_previous\(3) & (\SHIFTER|Mux0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~42_combout\,
	datab => \COUNTER|count_previous\(3),
	datac => \SHIFTER|Mux0~40_combout\,
	datad => \SHIFTER|Mux0~41_combout\,
	combout => \SHIFTER|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y11_N24
\SHIFTER|Mux0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~51_combout\ = (\letter_input~combout\(0) & (!\DECODER|letter~5_combout\ & (\COUNTER|count_previous\(0)))) # (!\letter_input~combout\(0) & (((!\COUNTER|count_previous\(0) & \DECODER|letter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|letter~5_combout\,
	datab => \letter_input~combout\(0),
	datac => \COUNTER|count_previous\(0),
	datad => \DECODER|letter~0_combout\,
	combout => \SHIFTER|Mux0~51_combout\);

-- Location: LCCOMB_X34_Y14_N26
\SHIFTER|Mux1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux1~18_combout\ = (\COUNTER|count_previous\(4) & (((\SHIFTER|Mux0~51_combout\ & !\COUNTER|count_previous\(3))))) # (!\COUNTER|count_previous\(4) & (\SHIFTER|Mux1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~17_combout\,
	datab => \SHIFTER|Mux0~51_combout\,
	datac => \COUNTER|count_previous\(4),
	datad => \COUNTER|count_previous\(3),
	combout => \SHIFTER|Mux1~18_combout\);

-- Location: LCCOMB_X34_Y14_N12
\SHIFTER|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux15~0_combout\ = (\SHIFTER|Mux18~3_combout\ & (((\SHIFTER|Mux18~4_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux1~18_combout\))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~4_combout\,
	datab => \SHIFTER|Mux1~18_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux18~4_combout\,
	combout => \SHIFTER|Mux15~0_combout\);

-- Location: LCCOMB_X34_Y14_N6
\SHIFTER|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux15~1_combout\ = (\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux15~0_combout\ & (\SHIFTER|Mux1~19_combout\)) # (!\SHIFTER|Mux15~0_combout\ & ((\SHIFTER|Mux1~0_combout\))))) # (!\SHIFTER|Mux18~3_combout\ & (((\SHIFTER|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~19_combout\,
	datab => \SHIFTER|Mux18~3_combout\,
	datac => \SHIFTER|Mux1~0_combout\,
	datad => \SHIFTER|Mux15~0_combout\,
	combout => \SHIFTER|Mux15~1_combout\);

-- Location: LCCOMB_X30_Y17_N30
\ENCODER|index[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~20_combout\ = (\ENCODER|index[2]~19_combout\ & ((\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux1~12_combout\))) # (!\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~2_combout\,
	datab => \ENCODER|index[2]~19_combout\,
	datac => \SHIFTER|Mux15~1_combout\,
	datad => \SHIFTER|Mux1~12_combout\,
	combout => \ENCODER|index[2]~20_combout\);

-- Location: LCCOMB_X34_Y14_N8
\SHIFTER|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux11~2_combout\ = (\SHIFTER|Mux18~3_combout\ & (((\SHIFTER|Mux18~4_combout\)))) # (!\SHIFTER|Mux18~3_combout\ & ((\SHIFTER|Mux18~4_combout\ & ((\SHIFTER|Mux1~20_combout\))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~21_combout\,
	datab => \SHIFTER|Mux1~20_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux18~4_combout\,
	combout => \SHIFTER|Mux11~2_combout\);

-- Location: LCCOMB_X34_Y14_N2
\SHIFTER|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux11~3_combout\ = (\SHIFTER|Mux11~2_combout\ & (((\SHIFTER|Mux1~22_combout\) # (!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux11~2_combout\ & (\SHIFTER|Mux1~2_combout\ & (\SHIFTER|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux1~2_combout\,
	datab => \SHIFTER|Mux11~2_combout\,
	datac => \SHIFTER|Mux18~3_combout\,
	datad => \SHIFTER|Mux1~22_combout\,
	combout => \SHIFTER|Mux11~3_combout\);

-- Location: LCCOMB_X34_Y14_N30
\SHIFTER|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux11~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & (\SHIFTER|Mux1~18_combout\)) # (!\COUNTER|count_previous\(1) & ((\SHIFTER|Mux11~3_combout\))))) # (!\COUNTER|count_previous\(2) & (((\SHIFTER|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(2),
	datab => \SHIFTER|Mux1~18_combout\,
	datac => \SHIFTER|Mux11~3_combout\,
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux11~4_combout\);

-- Location: LCCOMB_X37_Y11_N18
\SHIFTER|Mux0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~35_combout\ = (\SHIFTER|Mux0~34_combout\ & (((\DECODER|letter~2_combout\ & \SHIFTER|Mux0~10_combout\)) # (!\COUNTER|count_previous\(4)))) # (!\SHIFTER|Mux0~34_combout\ & (((\DECODER|letter~2_combout\ & \SHIFTER|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~34_combout\,
	datab => \COUNTER|count_previous\(4),
	datac => \DECODER|letter~2_combout\,
	datad => \SHIFTER|Mux0~10_combout\,
	combout => \SHIFTER|Mux0~35_combout\);

-- Location: LCCOMB_X33_Y15_N10
\SHIFTER|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux10~3_combout\ = (\SHIFTER|Mux10~2_combout\ & ((\SHIFTER|Mux0~35_combout\) # ((!\SHIFTER|Mux18~4_combout\)))) # (!\SHIFTER|Mux10~2_combout\ & (((\SHIFTER|Mux18~4_combout\ & \SHIFTER|Mux0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux10~2_combout\,
	datab => \SHIFTER|Mux0~35_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux0~32_combout\,
	combout => \SHIFTER|Mux10~3_combout\);

-- Location: LCCOMB_X33_Y15_N28
\SHIFTER|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux10~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & (\SHIFTER|Mux0~31_combout\)) # (!\COUNTER|count_previous\(1) & ((\SHIFTER|Mux10~3_combout\))))) # (!\COUNTER|count_previous\(2) & (((\SHIFTER|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(2),
	datab => \SHIFTER|Mux0~31_combout\,
	datac => \COUNTER|count_previous\(1),
	datad => \SHIFTER|Mux10~3_combout\,
	combout => \SHIFTER|Mux10~4_combout\);

-- Location: LCCOMB_X29_Y9_N20
\ENCODER|index[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[4]~24_combout\ = (!\SHIFTER|Mux10~4_combout\ & ((\SHIFTER|Mux18~2_combout\ & ((!\SHIFTER|Mux0~37_combout\))) # (!\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux12~1_combout\,
	datab => \SHIFTER|Mux10~4_combout\,
	datac => \SHIFTER|Mux18~2_combout\,
	datad => \SHIFTER|Mux0~37_combout\,
	combout => \ENCODER|index[4]~24_combout\);

-- Location: LCCOMB_X30_Y17_N24
\ENCODER|index[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[4]~25_combout\ = (!\SHIFTER|Mux13~4_combout\ & (\ENCODER|index[3]~23_combout\ & (!\SHIFTER|Mux11~4_combout\ & \ENCODER|index[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux13~4_combout\,
	datab => \ENCODER|index[3]~23_combout\,
	datac => \SHIFTER|Mux11~4_combout\,
	datad => \ENCODER|index[4]~24_combout\,
	combout => \ENCODER|index[4]~25_combout\);

-- Location: LCCOMB_X30_Y17_N10
\ENCODER|index[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[4]~30_combout\ = (\ENCODER|index[2]~18_combout\ & (\ENCODER|index[2]~20_combout\ & (\ENCODER|index[4]~25_combout\ & !\SHIFTER|Mux17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~18_combout\,
	datab => \ENCODER|index[2]~20_combout\,
	datac => \ENCODER|index[4]~25_combout\,
	datad => \SHIFTER|Mux17~4_combout\,
	combout => \ENCODER|index[4]~30_combout\);

-- Location: LCCOMB_X30_Y17_N0
\ENCODER|index[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[4]~32_combout\ = (\ENCODER|index[4]~30_combout\ & (!\ENCODER|tmp~4_combout\)) # (!\ENCODER|index[4]~30_combout\ & ((!\ENCODER|index[3]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENCODER|tmp~4_combout\,
	datac => \ENCODER|index[3]~29_combout\,
	datad => \ENCODER|index[4]~30_combout\,
	combout => \ENCODER|index[4]~32_combout\);

-- Location: LCCOMB_X33_Y15_N2
\ENCODER|index[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~22_combout\ = (\SHIFTER|Mux18~7_combout\) # ((\SHIFTER|Mux18~2_combout\ & (\SHIFTER|Mux0~13_combout\)) # (!\SHIFTER|Mux18~2_combout\ & ((\SHIFTER|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~7_combout\,
	datab => \SHIFTER|Mux0~13_combout\,
	datac => \SHIFTER|Mux18~2_combout\,
	datad => \SHIFTER|Mux20~1_combout\,
	combout => \ENCODER|index[2]~22_combout\);

-- Location: LCCOMB_X30_Y17_N26
\ENCODER|index[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~26_combout\ = (\ENCODER|index[2]~21_combout\) # ((\SHIFTER|Mux19~4_combout\) # ((\ENCODER|index[2]~22_combout\) # (!\ENCODER|index[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~21_combout\,
	datab => \SHIFTER|Mux19~4_combout\,
	datac => \ENCODER|index[4]~25_combout\,
	datad => \ENCODER|index[2]~22_combout\,
	combout => \ENCODER|index[2]~26_combout\);

-- Location: LCCOMB_X30_Y17_N2
\SHIFTER|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux8~4_combout\ = (\COUNTER|count_previous\(1) & ((\COUNTER|count_previous\(2) & (\SHIFTER|Mux0~35_combout\)) # (!\COUNTER|count_previous\(2) & ((\SHIFTER|Mux8~3_combout\))))) # (!\COUNTER|count_previous\(1) & (((\SHIFTER|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~35_combout\,
	datab => \SHIFTER|Mux8~3_combout\,
	datac => \COUNTER|count_previous\(1),
	datad => \COUNTER|count_previous\(2),
	combout => \SHIFTER|Mux8~4_combout\);

-- Location: LCCOMB_X30_Y17_N20
\ENCODER|index[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~18_combout\ = (\ENCODER|index[2]~17_combout\ & (!\SHIFTER|Mux8~4_combout\ & (!\SHIFTER|Mux6~4_combout\ & \ENCODER|index[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~17_combout\,
	datab => \SHIFTER|Mux8~4_combout\,
	datac => \SHIFTER|Mux6~4_combout\,
	datad => \ENCODER|index[3]~16_combout\,
	combout => \ENCODER|index[2]~18_combout\);

-- Location: LCCOMB_X30_Y17_N4
\ENCODER|index[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[2]~27_combout\ = (!\SHIFTER|Mux17~4_combout\ & (\ENCODER|index[2]~26_combout\ & (\ENCODER|index[2]~18_combout\ & \ENCODER|index[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux17~4_combout\,
	datab => \ENCODER|index[2]~26_combout\,
	datac => \ENCODER|index[2]~18_combout\,
	datad => \ENCODER|index[2]~20_combout\,
	combout => \ENCODER|index[2]~27_combout\);

-- Location: LCCOMB_X40_Y14_N22
\SHIFTER|Mux0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~16_combout\ = (!\letter_input~combout\(4) & (\letter_input~combout\(1) & \letter_input~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \SHIFTER|Mux0~16_combout\);

-- Location: LCCOMB_X36_Y13_N22
\SHIFTER|Mux0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux0~19_combout\ = (\COUNTER|count_previous\(4) & (\SHIFTER|Mux0~17_combout\ & ((\SHIFTER|Mux0~16_combout\)))) # (!\COUNTER|count_previous\(4) & ((\SHIFTER|Mux0~18_combout\) # ((\SHIFTER|Mux0~17_combout\ & \SHIFTER|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(4),
	datab => \SHIFTER|Mux0~17_combout\,
	datac => \SHIFTER|Mux0~18_combout\,
	datad => \SHIFTER|Mux0~16_combout\,
	combout => \SHIFTER|Mux0~19_combout\);

-- Location: LCCOMB_X29_Y9_N0
\SHIFTER|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux14~4_combout\ = (\COUNTER|count_previous\(2) & ((\COUNTER|count_previous\(1) & ((\SHIFTER|Mux0~19_combout\))) # (!\COUNTER|count_previous\(1) & (\SHIFTER|Mux14~3_combout\)))) # (!\COUNTER|count_previous\(2) & (\SHIFTER|Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|count_previous\(2),
	datab => \SHIFTER|Mux14~3_combout\,
	datac => \SHIFTER|Mux0~19_combout\,
	datad => \COUNTER|count_previous\(1),
	combout => \SHIFTER|Mux14~4_combout\);

-- Location: LCCOMB_X29_Y9_N8
\SHIFTER|Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux18~5_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux0~19_combout\) # (\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux0~20_combout\ & ((!\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~20_combout\,
	datab => \SHIFTER|Mux18~4_combout\,
	datac => \SHIFTER|Mux0~19_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux18~5_combout\);

-- Location: LCCOMB_X29_Y9_N26
\SHIFTER|Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux18~6_combout\ = (\SHIFTER|Mux18~5_combout\ & (((\SHIFTER|Mux0~22_combout\) # (!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~5_combout\ & (\SHIFTER|Mux0~15_combout\ & ((\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~15_combout\,
	datab => \SHIFTER|Mux0~22_combout\,
	datac => \SHIFTER|Mux18~5_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux18~6_combout\);

-- Location: LCCOMB_X29_Y9_N4
\ENCODER|tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|tmp~0_combout\ = (!\SHIFTER|Mux0~8_combout\ & !\SHIFTER|Mux0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SHIFTER|Mux0~8_combout\,
	datad => \SHIFTER|Mux0~24_combout\,
	combout => \ENCODER|tmp~0_combout\);

-- Location: LCCOMB_X33_Y15_N8
\SHIFTER|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux22~0_combout\ = (\SHIFTER|Mux18~4_combout\ & (((\SHIFTER|Mux0~8_combout\) # (\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux18~4_combout\ & (\SHIFTER|Mux0~9_combout\ & ((!\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~9_combout\,
	datab => \SHIFTER|Mux0~8_combout\,
	datac => \SHIFTER|Mux18~4_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux22~0_combout\);

-- Location: LCCOMB_X33_Y15_N20
\SHIFTER|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SHIFTER|Mux22~1_combout\ = (\SHIFTER|Mux22~0_combout\ & (((\SHIFTER|Mux0~13_combout\) # (!\SHIFTER|Mux18~3_combout\)))) # (!\SHIFTER|Mux22~0_combout\ & (\SHIFTER|Mux0~3_combout\ & ((\SHIFTER|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux0~3_combout\,
	datab => \SHIFTER|Mux0~13_combout\,
	datac => \SHIFTER|Mux22~0_combout\,
	datad => \SHIFTER|Mux18~3_combout\,
	combout => \SHIFTER|Mux22~1_combout\);

-- Location: LCCOMB_X29_Y9_N14
\ENCODER|tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|tmp~1_combout\ = (\SHIFTER|Mux18~2_combout\ & (((\ENCODER|tmp~0_combout\)))) # (!\SHIFTER|Mux18~2_combout\ & (!\SHIFTER|Mux18~6_combout\ & ((!\SHIFTER|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER|Mux18~2_combout\,
	datab => \SHIFTER|Mux18~6_combout\,
	datac => \ENCODER|tmp~0_combout\,
	datad => \SHIFTER|Mux22~1_combout\,
	combout => \ENCODER|tmp~1_combout\);

-- Location: LCCOMB_X29_Y9_N10
\ENCODER|index[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[1]~3_combout\ = (\ENCODER|index[1]~2_combout\ & (!\SHIFTER|Mux14~4_combout\ & (\ENCODER|tmp~1_combout\ & !\SHIFTER|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[1]~2_combout\,
	datab => \SHIFTER|Mux14~4_combout\,
	datac => \ENCODER|tmp~1_combout\,
	datad => \SHIFTER|Mux6~4_combout\,
	combout => \ENCODER|index[1]~3_combout\);

-- Location: LCCOMB_X33_Y14_N2
\ENCODER|index[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[1]~15_combout\ = (((\ENCODER|index[1]~33_combout\ & \ENCODER|index[0]~12_combout\)) # (!\ENCODER|index[0]~10_combout\)) # (!\ENCODER|index[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[1]~33_combout\,
	datab => \ENCODER|index[0]~12_combout\,
	datac => \ENCODER|index[1]~3_combout\,
	datad => \ENCODER|index[0]~10_combout\,
	combout => \ENCODER|index[1]~15_combout\);

-- Location: LCCOMB_X12_Y18_N4
\DISPLAY|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux6~0_combout\ = (\ENCODER|index[0]~13_combout\ & (\ENCODER|index[1]~15_combout\ $ (((\ENCODER|index[3]~31_combout\ & !\ENCODER|index[4]~32_combout\))))) # (!\ENCODER|index[0]~13_combout\ & ((\ENCODER|index[3]~31_combout\) # 
-- ((!\ENCODER|index[1]~15_combout\ & \ENCODER|index[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[3]~31_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[4]~32_combout\,
	combout => \DISPLAY|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y18_N14
\DISPLAY|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux6~1_combout\ = (\ENCODER|index[0]~13_combout\ & ((\DISPLAY|Mux6~0_combout\) # (\ENCODER|index[4]~32_combout\ $ (!\ENCODER|index[2]~27_combout\)))) # (!\ENCODER|index[0]~13_combout\ & ((\ENCODER|index[2]~27_combout\ & 
-- (\ENCODER|index[4]~32_combout\)) # (!\ENCODER|index[2]~27_combout\ & ((\DISPLAY|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[0]~13_combout\,
	datab => \ENCODER|index[4]~32_combout\,
	datac => \ENCODER|index[2]~27_combout\,
	datad => \DISPLAY|Mux6~0_combout\,
	combout => \DISPLAY|Mux6~1_combout\);

-- Location: LCCOMB_X12_Y18_N24
\DISPLAY|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux5~0_combout\ = (\ENCODER|index[1]~15_combout\ & ((\ENCODER|index[3]~31_combout\) # ((!\ENCODER|index[0]~13_combout\)))) # (!\ENCODER|index[1]~15_combout\ & (!\ENCODER|index[4]~32_combout\ & (\ENCODER|index[3]~31_combout\ $ 
-- (\ENCODER|index[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[3]~31_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[4]~32_combout\,
	combout => \DISPLAY|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y17_N14
\ENCODER|index[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|index[3]~31_combout\ = ((\ENCODER|index[4]~30_combout\ & (!\ENCODER|tmp~4_combout\)) # (!\ENCODER|index[4]~30_combout\ & ((\ENCODER|index[3]~29_combout\)))) # (!\ENCODER|index[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[4]~30_combout\,
	datab => \ENCODER|tmp~4_combout\,
	datac => \ENCODER|index[3]~29_combout\,
	datad => \ENCODER|index[3]~16_combout\,
	combout => \ENCODER|index[3]~31_combout\);

-- Location: LCCOMB_X12_Y18_N26
\DISPLAY|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux5~1_combout\ = (\DISPLAY|Mux5~0_combout\ & ((\ENCODER|index[4]~32_combout\) # ((!\ENCODER|index[3]~31_combout\) # (!\ENCODER|index[2]~27_combout\)))) # (!\DISPLAY|Mux5~0_combout\ & (\ENCODER|index[2]~27_combout\ $ 
-- (((\ENCODER|index[4]~32_combout\ & !\ENCODER|index[3]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY|Mux5~0_combout\,
	datab => \ENCODER|index[4]~32_combout\,
	datac => \ENCODER|index[2]~27_combout\,
	datad => \ENCODER|index[3]~31_combout\,
	combout => \DISPLAY|Mux5~1_combout\);

-- Location: LCCOMB_X12_Y18_N10
\DISPLAY|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux4~1_combout\ = (\ENCODER|index[2]~27_combout\ & (!\ENCODER|index[4]~32_combout\ & ((!\ENCODER|index[0]~13_combout\) # (!\ENCODER|index[1]~15_combout\)))) # (!\ENCODER|index[2]~27_combout\ & (!\ENCODER|index[1]~15_combout\ & 
-- (\ENCODER|index[0]~13_combout\ $ (\ENCODER|index[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[4]~32_combout\,
	combout => \DISPLAY|Mux4~1_combout\);

-- Location: LCCOMB_X12_Y18_N0
\DISPLAY|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux4~0_combout\ = (\ENCODER|index[2]~27_combout\ & (!\ENCODER|index[1]~15_combout\ & ((!\ENCODER|index[4]~32_combout\)))) # (!\ENCODER|index[2]~27_combout\ & ((\ENCODER|index[0]~13_combout\ & ((\ENCODER|index[4]~32_combout\))) # 
-- (!\ENCODER|index[0]~13_combout\ & (\ENCODER|index[1]~15_combout\ & !\ENCODER|index[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[4]~32_combout\,
	combout => \DISPLAY|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y18_N12
\DISPLAY|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux4~2_combout\ = (\ENCODER|index[3]~31_combout\ & (!\DISPLAY|Mux4~1_combout\)) # (!\ENCODER|index[3]~31_combout\ & ((\DISPLAY|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY|Mux4~1_combout\,
	datab => \DISPLAY|Mux4~0_combout\,
	datad => \ENCODER|index[3]~31_combout\,
	combout => \DISPLAY|Mux4~2_combout\);

-- Location: LCCOMB_X12_Y18_N16
\DISPLAY|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux3~1_combout\ = (\ENCODER|index[2]~27_combout\ & (((!\ENCODER|index[0]~13_combout\)))) # (!\ENCODER|index[2]~27_combout\ & ((\ENCODER|index[1]~15_combout\) # (\ENCODER|index[0]~13_combout\ $ (\ENCODER|index[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[4]~32_combout\,
	combout => \DISPLAY|Mux3~1_combout\);

-- Location: LCCOMB_X12_Y18_N6
\DISPLAY|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux3~0_combout\ = (\ENCODER|index[2]~27_combout\ & (\ENCODER|index[1]~15_combout\ & (!\ENCODER|index[0]~13_combout\ & !\ENCODER|index[4]~32_combout\))) # (!\ENCODER|index[2]~27_combout\ & ((\ENCODER|index[4]~32_combout\ & 
-- (!\ENCODER|index[1]~15_combout\)) # (!\ENCODER|index[4]~32_combout\ & ((\ENCODER|index[0]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[4]~32_combout\,
	combout => \DISPLAY|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y17_N0
\DISPLAY|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux3~2_combout\ = (\ENCODER|index[3]~31_combout\ & ((\DISPLAY|Mux3~0_combout\))) # (!\ENCODER|index[3]~31_combout\ & (\DISPLAY|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY|Mux3~1_combout\,
	datab => \DISPLAY|Mux3~0_combout\,
	datac => \ENCODER|index[3]~31_combout\,
	combout => \DISPLAY|Mux3~2_combout\);

-- Location: LCCOMB_X12_Y18_N2
\DISPLAY|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux2~2_combout\ = (\ENCODER|index[1]~15_combout\ & ((\ENCODER|index[3]~31_combout\) # ((!\ENCODER|index[2]~27_combout\ & !\ENCODER|index[0]~13_combout\)))) # (!\ENCODER|index[1]~15_combout\ & ((\ENCODER|index[0]~13_combout\ & 
-- (\ENCODER|index[2]~27_combout\)) # (!\ENCODER|index[0]~13_combout\ & ((\ENCODER|index[3]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[3]~31_combout\,
	combout => \DISPLAY|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y17_N6
\DISPLAY|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux2~3_combout\ = (\DISPLAY|Mux2~2_combout\ & ((\ENCODER|index[4]~30_combout\ & (!\ENCODER|tmp~4_combout\)) # (!\ENCODER|index[4]~30_combout\ & ((!\ENCODER|index[3]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY|Mux2~2_combout\,
	datab => \ENCODER|tmp~4_combout\,
	datac => \ENCODER|index[3]~29_combout\,
	datad => \ENCODER|index[4]~30_combout\,
	combout => \DISPLAY|Mux2~3_combout\);

-- Location: LCCOMB_X12_Y18_N28
\DISPLAY|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux1~0_combout\ = (\ENCODER|index[2]~27_combout\ & ((\ENCODER|index[1]~15_combout\ & (!\ENCODER|index[0]~13_combout\)) # (!\ENCODER|index[1]~15_combout\ & ((\ENCODER|index[3]~31_combout\))))) # (!\ENCODER|index[2]~27_combout\ & 
-- (\ENCODER|index[1]~15_combout\ $ (\ENCODER|index[0]~13_combout\ $ (!\ENCODER|index[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[3]~31_combout\,
	combout => \DISPLAY|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y18_N22
\DISPLAY|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux1~1_combout\ = (\ENCODER|index[4]~32_combout\ & ((\ENCODER|index[0]~13_combout\ & (\ENCODER|index[3]~31_combout\)) # (!\ENCODER|index[0]~13_combout\ & ((\DISPLAY|Mux1~0_combout\))))) # (!\ENCODER|index[4]~32_combout\ & 
-- (((\ENCODER|index[0]~13_combout\ & \DISPLAY|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[3]~31_combout\,
	datab => \ENCODER|index[4]~32_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \DISPLAY|Mux1~0_combout\,
	combout => \DISPLAY|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y18_N30
\DISPLAY|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux0~1_combout\ = (\ENCODER|index[2]~27_combout\ & (((\ENCODER|index[0]~13_combout\ & !\ENCODER|index[4]~32_combout\)))) # (!\ENCODER|index[2]~27_combout\ & ((\ENCODER|index[1]~15_combout\ & (!\ENCODER|index[0]~13_combout\ & 
-- !\ENCODER|index[4]~32_combout\)) # (!\ENCODER|index[1]~15_combout\ & ((\ENCODER|index[4]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[4]~32_combout\,
	combout => \DISPLAY|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y18_N20
\DISPLAY|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux0~0_combout\ = (\ENCODER|index[0]~13_combout\ & (((!\ENCODER|index[1]~15_combout\ & \ENCODER|index[4]~32_combout\)))) # (!\ENCODER|index[0]~13_combout\ & ((\ENCODER|index[4]~32_combout\ & (\ENCODER|index[2]~27_combout\)) # 
-- (!\ENCODER|index[4]~32_combout\ & ((\ENCODER|index[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[1]~15_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[4]~32_combout\,
	combout => \DISPLAY|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y18_N8
\DISPLAY|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY|Mux0~2_combout\ = (\ENCODER|index[3]~31_combout\ & (!\DISPLAY|Mux0~1_combout\)) # (!\ENCODER|index[3]~31_combout\ & ((\DISPLAY|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY|Mux0~1_combout\,
	datac => \DISPLAY|Mux0~0_combout\,
	datad => \ENCODER|index[3]~31_combout\,
	combout => \DISPLAY|Mux0~2_combout\);

-- Location: LCCOMB_X35_Y11_N6
\DECODER|error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DECODER|error~0_combout\ = (\letter_input~combout\(3) & (\letter_input~combout\(4) & ((\letter_input~combout\(1)) # (\letter_input~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter_input~combout\(3),
	datab => \letter_input~combout\(4),
	datac => \letter_input~combout\(1),
	datad => \letter_input~combout\(2),
	combout => \DECODER|error~0_combout\);

-- Location: LCCOMB_X12_Y18_N18
\ENCODER|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|Equal0~0_combout\ = (\ENCODER|index[2]~27_combout\ & (\ENCODER|index[4]~32_combout\ & (\ENCODER|index[0]~13_combout\ & \ENCODER|index[3]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|index[2]~27_combout\,
	datab => \ENCODER|index[4]~32_combout\,
	datac => \ENCODER|index[0]~13_combout\,
	datad => \ENCODER|index[3]~31_combout\,
	combout => \ENCODER|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y17_N10
\ENCODER|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ENCODER|Equal0~1_combout\ = (\ENCODER|Equal0~0_combout\ & \ENCODER|index[1]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENCODER|Equal0~0_combout\,
	datad => \ENCODER|index[1]~15_combout\,
	combout => \ENCODER|Equal0~1_combout\);

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
	datain => \DISPLAY|Mux6~1_combout\,
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
	datain => \DISPLAY|Mux5~1_combout\,
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
	datain => \DISPLAY|Mux4~2_combout\,
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
	datain => \DISPLAY|ALT_INV_Mux3~2_combout\,
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
	datain => \DISPLAY|Mux2~3_combout\,
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
	datain => \DISPLAY|Mux1~1_combout\,
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
	datain => \DISPLAY|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\error_decode~I\ : cycloneii_io
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
	datain => \DECODER|error~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_error_decode);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\error_encode~I\ : cycloneii_io
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
	datain => \ENCODER|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_error_encode);
END structure;


