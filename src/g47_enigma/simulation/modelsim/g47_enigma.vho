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

-- DATE "03/24/2016 19:55:05"

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

ENTITY 	g47_fsm_testbed IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	init : IN std_logic;
	segments_l : OUT std_logic_vector(6 DOWNTO 0);
	segments_m : OUT std_logic_vector(6 DOWNTO 0);
	segments_r : OUT std_logic_vector(6 DOWNTO 0)
	);
END g47_fsm_testbed;

-- Design Ports Information
-- segments_l[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_l[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_l[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_l[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_l[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_l[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_l[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_m[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_m[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_m[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_m[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_m[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_m[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_m[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_r[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_r[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_r[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_r[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_r[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_r[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_r[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- init	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA


ARCHITECTURE structure OF g47_fsm_testbed IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_init : std_logic;
SIGNAL ww_segments_l : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_m : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_r : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \ROTOR_l|count_previous[4]~7_combout\ : std_logic;
SIGNAL \PULSE|Equal0~1_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\ : std_logic;
SIGNAL \QIC_SIGNALTAP_GND~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\ : std_logic;
SIGNAL \ROTOR_l|count_previous[0]~6\ : std_logic;
SIGNAL \ROTOR_l|count_previous[1]~10_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \ROTOR_l|count_previous[1]~11\ : std_logic;
SIGNAL \ROTOR_l|count_previous[2]~13\ : std_logic;
SIGNAL \ROTOR_l|count_previous[3]~14_combout\ : std_logic;
SIGNAL \init~combout\ : std_logic;
SIGNAL \FSM|state[0]~0_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
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
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita6~combout\ : std_logic;
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
SIGNAL \PULSE|Equal0~2_combout\ : std_logic;
SIGNAL \PULSE|Equal0~3_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \PULSE|Equal0~0_combout\ : std_logic;
SIGNAL \PULSE|Equal0~4_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \PULSE|Equal0~5_combout\ : std_logic;
SIGNAL \PULSE|COUNTER|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \PULSE|Equal0~6_combout\ : std_logic;
SIGNAL \PULSE|Equal0~7_combout\ : std_logic;
SIGNAL \FSM|state[0]~1_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[0]~5_combout\ : std_logic;
SIGNAL \init~_wirecell_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[0]~6\ : std_logic;
SIGNAL \ROTOR_m|count_previous[1]~11_combout\ : std_logic;
SIGNAL \ROTOR_r|count_previous[0]~5_combout\ : std_logic;
SIGNAL \ROTOR_r|count_previous[3]~14\ : std_logic;
SIGNAL \ROTOR_r|count_previous[4]~15_combout\ : std_logic;
SIGNAL \FSM|state[1]~2_combout\ : std_logic;
SIGNAL \FSM|state[1]~3_combout\ : std_logic;
SIGNAL \ROTOR_r|count_previous[4]~8_combout\ : std_logic;
SIGNAL \ROTOR_r|count_previous[2]~11_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[4]~8_combout\ : std_logic;
SIGNAL \ROTOR_r|count_previous[4]~7_combout\ : std_logic;
SIGNAL \ROTOR_r|count_previous[0]~6\ : std_logic;
SIGNAL \ROTOR_r|count_previous[1]~10\ : std_logic;
SIGNAL \ROTOR_r|count_previous[2]~12\ : std_logic;
SIGNAL \ROTOR_r|count_previous[3]~13_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[4]~9_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[4]~10_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[1]~12\ : std_logic;
SIGNAL \ROTOR_m|count_previous[2]~13_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[2]~14\ : std_logic;
SIGNAL \ROTOR_m|count_previous[3]~16\ : std_logic;
SIGNAL \ROTOR_m|count_previous[4]~17_combout\ : std_logic;
SIGNAL \COMP_m|Equal0~0_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[4]~7_combout\ : std_logic;
SIGNAL \ROTOR_m|count_previous[3]~15_combout\ : std_logic;
SIGNAL \COMP_m|Equal0~1_combout\ : std_logic;
SIGNAL \ROTOR_l|count_previous[4]~9_combout\ : std_logic;
SIGNAL \ROTOR_l|count_previous[3]~15\ : std_logic;
SIGNAL \ROTOR_l|count_previous[4]~16_combout\ : std_logic;
SIGNAL \ROTOR_l|count_previous[4]~8_combout\ : std_logic;
SIGNAL \ROTOR_l|count_previous[0]~5_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux6~0_combout\ : std_logic;
SIGNAL \ROTOR_l|count_previous[2]~12_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux6~1_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux5~0_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux5~1_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux4~1_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux4~0_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux4~2_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux3~1_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux3~0_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux3~2_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux2~0_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux2~1_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux1~0_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux1~1_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux0~0_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux0~1_combout\ : std_logic;
SIGNAL \DISPLAY_l|Mux0~2_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux6~0_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux6~1_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux5~0_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux5~1_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux4~1_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux4~0_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux4~2_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux3~1_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux3~0_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux3~2_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux2~0_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux2~1_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux1~0_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux1~1_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux0~1_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux0~0_combout\ : std_logic;
SIGNAL \DISPLAY_m|Mux0~2_combout\ : std_logic;
SIGNAL \ROTOR_r|count_previous[1]~9_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux6~0_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux6~1_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux5~0_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux5~1_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux4~0_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux4~1_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux4~2_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux3~1_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux3~0_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux3~2_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux2~0_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux2~1_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux1~0_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux1~1_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux0~0_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux0~1_combout\ : std_logic;
SIGNAL \DISPLAY_r|Mux0~2_combout\ : std_logic;
SIGNAL \altera_reserved_tms~combout\ : std_logic;
SIGNAL \altera_reserved_tck~combout\ : std_logic;
SIGNAL \altera_reserved_tdi~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[19]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[10]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit1a[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~11\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~13\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~15\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~17\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~19\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~20_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|acq_data_in_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \FSM|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROTOR_l|count_previous\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PULSE|COUNTER|auto_generated|safe_q\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|safe_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROTOR_m|count_previous\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ROTOR_r|count_previous\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DISPLAY_r|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \DISPLAY_m|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \DISPLAY_l|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_clock <= clock;
ww_reset <= reset;
ww_init <= init;
segments_l <= ww_segments_l;
segments_m <= ww_segments_m;
segments_r <= ww_segments_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~regout\ & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~regout\ & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~regout\ & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~regout\ & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~regout\ & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~regout\ & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~regout\);

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5) & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3) & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1) & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0));

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(6) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(5) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(4) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(3) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(2) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(1) & 
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(0));

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\ <= \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);

\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\);

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \altera_internal_jtag~TCKUTAP\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));
\DISPLAY_r|ALT_INV_Mux3~2_combout\ <= NOT \DISPLAY_r|Mux3~2_combout\;
\DISPLAY_m|ALT_INV_Mux3~2_combout\ <= NOT \DISPLAY_m|Mux3~2_combout\;
\DISPLAY_l|ALT_INV_Mux3~2_combout\ <= NOT \DISPLAY_l|Mux3~2_combout\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\ <= NOT \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~10_combout\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\;

-- Location: LCFF_X1_Y12_N17
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita21~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(21));

-- Location: LCFF_X1_Y12_N13
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita19~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(19));

-- Location: LCFF_X1_Y12_N11
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita18~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(18));

-- Location: LCFF_X1_Y12_N7
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita16~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(16));

-- Location: LCFF_X1_Y13_N25
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(9));

-- Location: LCFF_X1_Y13_N17
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita5~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(5));

-- Location: LCFF_X1_Y13_N11
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita2~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(2));

-- Location: LCCOMB_X1_Y13_N10
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

-- Location: LCCOMB_X1_Y13_N16
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

-- Location: LCCOMB_X1_Y13_N24
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

-- Location: LCCOMB_X1_Y12_N6
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

-- Location: LCCOMB_X1_Y12_N10
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

-- Location: LCCOMB_X1_Y12_N12
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

-- Location: LCCOMB_X1_Y12_N16
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

-- Location: LCCOMB_X1_Y18_N6
\ROTOR_l|count_previous[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_l|count_previous[4]~7_combout\ = (((\ROTOR_l|count_previous\(2)) # (\ROTOR_l|count_previous\(1))) # (!\ROTOR_l|count_previous\(3))) # (!\ROTOR_l|count_previous\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(0),
	datab => \ROTOR_l|count_previous\(3),
	datac => \ROTOR_l|count_previous\(2),
	datad => \ROTOR_l|count_previous\(1),
	combout => \ROTOR_l|count_previous[4]~7_combout\);

-- Location: LCCOMB_X1_Y12_N30
\PULSE|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~1_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(18) & (!\PULSE|COUNTER|auto_generated|safe_q\(20) & (!\PULSE|COUNTER|auto_generated|safe_q\(17) & !\PULSE|COUNTER|auto_generated|safe_q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(18),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(20),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(17),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(19),
	combout => \PULSE|Equal0~1_combout\);

-- Location: JTAG_X1_Y14_N0
altera_internal_jtag : cycloneii_jtag
PORT MAP (
	tms => \altera_reserved_tms~combout\,
	tck => \altera_reserved_tck~combout\,
	tdi => \altera_reserved_tdi~combout\,
	tdouser => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCFF_X21_Y20_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LCFF_X22_Y20_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LCFF_X20_Y20_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: LCFF_X20_Y20_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: LCFF_X20_Y20_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: LCFF_X20_Y20_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: LCFF_X22_Y20_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LCFF_X20_Y20_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X20_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X20_Y20_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X20_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X20_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\);

-- Location: LCCOMB_X20_Y20_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\);

-- Location: LCFF_X22_Y21_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\);

-- Location: LCFF_X20_Y20_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X21_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X21_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X21_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X20_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X19_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y20_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\);

-- Location: LCCOMB_X23_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\);

-- Location: LCCOMB_X23_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\);

-- Location: LCCOMB_X23_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\);

-- Location: LCFF_X20_Y20_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X21_Y20_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X20_Y20_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X21_Y20_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X20_Y20_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X20_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCFF_X22_Y20_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X22_Y20_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\);

-- Location: LCCOMB_X21_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\);

-- Location: LCCOMB_X23_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~14_combout\);

-- Location: LCCOMB_X21_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X20_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCFF_X20_Y20_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X20_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X20_Y20_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X20_Y20_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\);

-- Location: LCCOMB_X22_Y20_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\);

-- Location: LCCOMB_X22_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\);

-- Location: LCCOMB_X23_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~16_combout\);

-- Location: LCCOMB_X20_Y20_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCFF_X20_Y20_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X20_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCFF_X22_Y19_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X20_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X20_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X20_Y20_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\);

-- Location: LCCOMB_X20_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\);

-- Location: LCCOMB_X20_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\);

-- Location: LCCOMB_X21_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~4_combout\);

-- Location: LCCOMB_X21_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\);

-- Location: LCFF_X25_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(2));

-- Location: LCCOMB_X25_Y24_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X23_Y23_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(4));

-- Location: LCFF_X23_Y23_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(5));

-- Location: LCCOMB_X19_Y23_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~regout\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\);

-- Location: LCCOMB_X19_Y23_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~regout\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\);

-- Location: LCCOMB_X22_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\);

-- Location: LCCOMB_X23_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~13\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~15\);

-- Location: LCCOMB_X22_Y23_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\);

-- Location: LCCOMB_X23_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~15\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~17\);

-- Location: M4K_X17_Y24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sld_signaltap:auto_signaltap_0|sld_signaltap_impl:sld_signaltap_body|sld_signaltap_implb:sld_signaltap_body|altsyncram:\stp_non_zero_ram_gen:stp_buffer_ram|altsyncram_sm14:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 7,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 7,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 7,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 7,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	portbrewe => VCC,
	clk0 => \clock~clkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	ena0 => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	ena1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	portadatain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X19_Y22_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(2));

-- Location: LCFF_X19_Y22_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(1));

-- Location: LCFF_X19_Y22_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(0));

-- Location: LCFF_X18_Y24_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(0));

-- Location: LCFF_X18_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(1));

-- Location: LCFF_X18_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(2));

-- Location: LCFF_X18_Y24_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(3));

-- Location: LCFF_X18_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(4));

-- Location: LCFF_X18_Y24_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(5));

-- Location: LCFF_X18_Y24_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(6));

-- Location: LCCOMB_X19_Y22_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X19_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X19_Y22_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X19_Y22_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~0_combout\);

-- Location: LCCOMB_X18_Y24_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X18_Y24_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X18_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X18_Y24_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X18_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X18_Y24_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X18_Y24_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(6),
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\);

-- Location: LCCOMB_X22_Y22_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2_combout\);

-- Location: LCFF_X21_Y22_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(0));

-- Location: LCFF_X19_Y22_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~regout\);

-- Location: LCCOMB_X19_Y22_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~2_combout\);

-- Location: LCCOMB_X23_Y24_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~3_combout\);

-- Location: LCFF_X16_Y24_N17
\auto_signaltap_0|acq_data_in_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_data_in_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(0));

-- Location: LCFF_X16_Y24_N19
\auto_signaltap_0|acq_data_in_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(1));

-- Location: LCFF_X15_Y24_N17
\auto_signaltap_0|acq_data_in_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \QIC_SIGNALTAP_GND~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(2));

-- Location: LCFF_X15_Y24_N11
\auto_signaltap_0|acq_data_in_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \QIC_SIGNALTAP_GND~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(3));

-- Location: LCFF_X16_Y23_N9
\auto_signaltap_0|acq_data_in_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(4));

-- Location: LCFF_X16_Y23_N19
\auto_signaltap_0|acq_data_in_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(5));

-- Location: LCFF_X15_Y24_N5
\auto_signaltap_0|acq_data_in_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \QIC_SIGNALTAP_GND~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(6));

-- Location: LCFF_X21_Y22_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~regout\);

-- Location: LCFF_X20_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(1));

-- Location: LCFF_X21_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~regout\);

-- Location: LCFF_X21_Y22_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(1));

-- Location: LCCOMB_X22_Y22_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\);

-- Location: LCCOMB_X21_Y22_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\);

-- Location: LCCOMB_X19_Y22_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\);

-- Location: LCFF_X23_Y22_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~regout\);

-- Location: LCCOMB_X21_Y22_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\);

-- Location: LCCOMB_X21_Y22_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\);

-- Location: LCCOMB_X21_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0_combout\);

-- Location: LCFF_X24_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~regout\);

-- Location: LCFF_X23_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(2));

-- Location: LCFF_X20_Y23_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(2));

-- Location: LCFF_X22_Y23_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(0));

-- Location: LCCOMB_X20_Y23_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\);

-- Location: LCFF_X22_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5));

-- Location: LCCOMB_X23_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\);

-- Location: LCCOMB_X21_Y23_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\);

-- Location: LCCOMB_X23_Y20_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~1_combout\);

-- Location: LCCOMB_X21_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\);

-- Location: LCFF_X21_Y22_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(2));

-- Location: LCCOMB_X21_Y22_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\);

-- Location: LCCOMB_X23_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\);

-- Location: LCFF_X19_Y23_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~regout\);

-- Location: LCFF_X19_Y23_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~regout\);

-- Location: LCFF_X21_Y23_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~regout\);

-- Location: LCFF_X24_Y24_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~regout\);

-- Location: LCFF_X23_Y24_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(2));

-- Location: LCFF_X23_Y24_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(3));

-- Location: LCCOMB_X23_Y24_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\);

-- Location: LCFF_X20_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(3));

-- Location: LCFF_X22_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(1));

-- Location: LCCOMB_X20_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\);

-- Location: LCCOMB_X21_Y23_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\);

-- Location: LCCOMB_X22_Y23_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\);

-- Location: LCFF_X21_Y22_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(3));

-- Location: LCCOMB_X21_Y22_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\);

-- Location: LCFF_X21_Y22_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(0));

-- Location: LCCOMB_X19_Y23_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\);

-- Location: LCCOMB_X19_Y23_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\);

-- Location: LCCOMB_X21_Y23_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\);

-- Location: LCFF_X24_Y24_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~regout\);

-- Location: LCFF_X24_Y24_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~regout\);

-- Location: LCCOMB_X23_Y24_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X23_Y24_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(3));

-- Location: LCFF_X23_Y24_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(4));

-- Location: LCCOMB_X23_Y24_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\);

-- Location: LCFF_X20_Y23_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(4));

-- Location: LCFF_X22_Y23_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(2));

-- Location: LCCOMB_X20_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\);

-- Location: LCFF_X21_Y22_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(4));

-- Location: LCCOMB_X22_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\);

-- Location: LCCOMB_X21_Y22_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\);

-- Location: LCCOMB_X21_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]~1_combout\);

-- Location: LCFF_X20_Y23_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1));

-- Location: LCFF_X24_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~regout\);

-- Location: LCFF_X24_Y24_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~regout\);

-- Location: LCCOMB_X23_Y24_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\);

-- Location: LCFF_X23_Y24_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(4));

-- Location: LCFF_X23_Y24_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(5));

-- Location: LCCOMB_X23_Y24_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\);

-- Location: LCFF_X20_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(5));

-- Location: LCFF_X22_Y23_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(3));

-- Location: LCCOMB_X20_Y23_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\);

-- Location: LCFF_X21_Y22_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(5));

-- Location: LCCOMB_X21_Y22_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\);

-- Location: LCFF_X19_Y23_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~regout\);

-- Location: LCFF_X24_Y23_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2));

-- Location: LCFF_X24_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~regout\);

-- Location: LCFF_X24_Y24_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~regout\);

-- Location: LCCOMB_X23_Y24_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\);

-- Location: LCFF_X22_Y24_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(5));

-- Location: LCFF_X21_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(6));

-- Location: LCCOMB_X23_Y24_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(6),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\);

-- Location: LCFF_X20_Y23_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(6));

-- Location: LCFF_X19_Y22_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(4));

-- Location: LCCOMB_X20_Y23_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\);

-- Location: LCFF_X21_Y22_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(6));

-- Location: LCCOMB_X21_Y22_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\);

-- Location: LCFF_X24_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~regout\);

-- Location: LCFF_X24_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3));

-- Location: LCFF_X22_Y24_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~regout\);

-- Location: LCFF_X24_Y24_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~regout\);

-- Location: LCCOMB_X22_Y24_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\);

-- Location: LCFF_X21_Y24_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(6));

-- Location: LCFF_X21_Y24_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(7));

-- Location: LCCOMB_X21_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\);

-- Location: LCFF_X20_Y23_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(7));

-- Location: LCFF_X19_Y22_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(5));

-- Location: LCCOMB_X20_Y23_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\);

-- Location: LCCOMB_X21_Y22_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\);

-- Location: LCFF_X24_Y23_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~regout\);

-- Location: LCFF_X20_Y22_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4));

-- Location: LCFF_X24_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~regout\);

-- Location: LCFF_X24_Y24_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~regout\);

-- Location: LCCOMB_X21_Y24_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\);

-- Location: LCFF_X21_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(7));

-- Location: LCFF_X21_Y24_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(8));

-- Location: LCCOMB_X21_Y24_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\);

-- Location: LCFF_X20_Y23_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(8));

-- Location: LCFF_X19_Y22_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(6));

-- Location: LCCOMB_X20_Y23_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\);

-- Location: LCFF_X19_Y23_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~regout\);

-- Location: LCFF_X20_Y22_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5));

-- Location: LCFF_X24_Y24_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~regout\);

-- Location: LCFF_X24_Y24_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~regout\);

-- Location: LCCOMB_X21_Y24_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\);

-- Location: LCFF_X21_Y24_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(8));

-- Location: LCFF_X21_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(9));

-- Location: LCCOMB_X21_Y24_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(8),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\);

-- Location: LCFF_X20_Y23_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(9));

-- Location: LCCOMB_X20_Y23_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(9),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\);

-- Location: LCFF_X19_Y23_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~regout\);

-- Location: LCFF_X24_Y22_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6));

-- Location: LCFF_X20_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~regout\);

-- Location: LCFF_X20_Y24_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~regout\);

-- Location: LCCOMB_X21_Y24_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\);

-- Location: LCFF_X21_Y24_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(9));

-- Location: LCFF_X21_Y24_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(10));

-- Location: LCCOMB_X21_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(9),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(10),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\);

-- Location: LCFF_X20_Y23_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(10));

-- Location: LCCOMB_X20_Y23_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(10),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\);

-- Location: LCFF_X19_Y23_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~regout\);

-- Location: LCFF_X19_Y24_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0));

-- Location: LCFF_X20_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~regout\);

-- Location: LCFF_X20_Y24_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~regout\);

-- Location: LCCOMB_X21_Y24_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\);

-- Location: LCFF_X21_Y24_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(10));

-- Location: LCFF_X21_Y24_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(11));

-- Location: LCCOMB_X21_Y24_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(11),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(10),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\);

-- Location: LCFF_X20_Y22_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(11));

-- Location: LCCOMB_X20_Y23_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(11),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\);

-- Location: LCFF_X19_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1));

-- Location: LCFF_X20_Y24_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~regout\);

-- Location: LCFF_X20_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~regout\);

-- Location: LCCOMB_X21_Y24_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\);

-- Location: LCFF_X21_Y24_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(11));

-- Location: LCFF_X21_Y24_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(12));

-- Location: LCCOMB_X21_Y24_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(12),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(11),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\);

-- Location: LCFF_X20_Y22_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(12));

-- Location: LCCOMB_X20_Y22_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(12),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\);

-- Location: LCFF_X19_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2));

-- Location: LCFF_X20_Y24_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~regout\);

-- Location: LCFF_X20_Y24_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~regout\);

-- Location: LCCOMB_X21_Y24_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\);

-- Location: LCFF_X21_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(12));

-- Location: LCFF_X21_Y24_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(13));

-- Location: LCCOMB_X21_Y24_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(13),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\);

-- Location: LCFF_X20_Y22_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(13));

-- Location: LCCOMB_X20_Y22_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(13),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\);

-- Location: LCFF_X19_Y24_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3));

-- Location: LCFF_X20_Y24_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~regout\);

-- Location: LCFF_X20_Y24_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~regout\);

-- Location: LCCOMB_X21_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\);

-- Location: LCFF_X22_Y24_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(13));

-- Location: LCFF_X21_Y24_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(14));

-- Location: LCCOMB_X21_Y24_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(13),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(14),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\);

-- Location: LCFF_X20_Y22_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(14));

-- Location: LCCOMB_X20_Y22_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(14),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\);

-- Location: LCFF_X19_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4));

-- Location: LCFF_X22_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~regout\);

-- Location: LCFF_X20_Y24_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~regout\);

-- Location: LCCOMB_X22_Y24_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\);

-- Location: LCFF_X22_Y24_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(14));

-- Location: LCCOMB_X21_Y24_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(14),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\);

-- Location: LCFF_X20_Y22_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(0));

-- Location: LCCOMB_X20_Y22_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\);

-- Location: LCFF_X19_Y24_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5));

-- Location: LCFF_X22_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~regout\);

-- Location: LCFF_X24_Y24_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~regout\);

-- Location: LCCOMB_X22_Y24_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\);

-- Location: LCFF_X20_Y22_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(1));

-- Location: LCCOMB_X20_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\);

-- Location: LCCOMB_X19_Y22_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y22_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\);

-- Location: LCFF_X19_Y24_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6));

-- Location: LCFF_X16_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~regout\);

-- Location: LCFF_X20_Y22_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(2));

-- Location: LCCOMB_X20_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\);

-- Location: LCCOMB_X20_Y22_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\);

-- Location: LCFF_X16_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~regout\);

-- Location: LCCOMB_X19_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\);

-- Location: LCCOMB_X19_Y22_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\);

-- Location: LCFF_X16_Y24_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~regout\);

-- Location: LCFF_X20_Y22_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(3));

-- Location: LCCOMB_X20_Y22_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\);

-- Location: LCFF_X16_Y24_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~regout\);

-- Location: LCFF_X16_Y24_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~regout\);

-- Location: LCFF_X15_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~regout\);

-- Location: LCFF_X20_Y22_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(4));

-- Location: LCCOMB_X20_Y22_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\);

-- Location: LCFF_X16_Y24_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|acq_data_in_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~regout\);

-- Location: LCFF_X16_Y24_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~regout\);

-- Location: LCFF_X15_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~regout\);

-- Location: LCFF_X15_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~regout\);

-- Location: LCFF_X20_Y22_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(5));

-- Location: LCCOMB_X20_Y22_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\);

-- Location: LCFF_X16_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~regout\);

-- Location: LCFF_X15_Y24_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~regout\);

-- Location: LCFF_X15_Y24_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~regout\);

-- Location: LCFF_X16_Y23_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~regout\);

-- Location: LCFF_X20_Y22_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(6));

-- Location: LCCOMB_X20_Y22_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\);

-- Location: LCFF_X15_Y24_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|acq_data_in_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~regout\);

-- Location: LCFF_X15_Y24_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~regout\);

-- Location: LCFF_X16_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~regout\);

-- Location: LCFF_X16_Y23_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~regout\);

-- Location: LCCOMB_X20_Y22_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\);

-- Location: LCFF_X15_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~regout\);

-- Location: LCFF_X16_Y23_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~regout\);

-- Location: LCFF_X16_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~regout\);

-- Location: LCFF_X15_Y24_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~regout\);

-- Location: LCFF_X16_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|acq_data_in_reg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~regout\);

-- Location: LCFF_X16_Y23_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~regout\);

-- Location: LCFF_X15_Y24_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~regout\);

-- Location: LCFF_X16_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~regout\);

-- Location: LCFF_X15_Y24_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~regout\);

-- Location: LCFF_X15_Y24_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|acq_data_in_reg\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~regout\);

-- Location: LCCOMB_X22_Y22_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\);

-- Location: LCCOMB_X15_Y23_N10
QIC_SIGNALTAP_GND : cycloneii_lcell_comb
-- Equation(s):
-- \QIC_SIGNALTAP_GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \QIC_SIGNALTAP_GND~combout\);

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

-- Location: CLKCTRL_G3
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

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

-- Location: LCCOMB_X22_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\);

-- Location: LCCOMB_X15_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\);

-- Location: LCCOMB_X19_Y24_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y24_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y24_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\);

-- Location: LCCOMB_X22_Y23_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y23_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\);

-- Location: LCCOMB_X20_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\);

-- Location: LCCOMB_X24_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]~feeder_combout\);

-- Location: LCCOMB_X24_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\);

-- Location: LCCOMB_X24_Y22_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~feeder_combout\);

-- Location: LCCOMB_X22_Y24_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\);

-- Location: LCCOMB_X15_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\);

-- Location: LCCOMB_X15_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\);

-- Location: LCCOMB_X15_Y24_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X15_Y24_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\);

-- Location: LCCOMB_X15_Y24_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\);

-- Location: LCCOMB_X15_Y24_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N0
\auto_signaltap_0|acq_trigger_in_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[0]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N8
\auto_signaltap_0|acq_data_in_reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N18
\auto_signaltap_0|acq_data_in_reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N4
\auto_signaltap_0|acq_trigger_in_reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N20
\auto_signaltap_0|acq_trigger_in_reg[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N6
\auto_signaltap_0|acq_trigger_in_reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N6
\auto_signaltap_0|acq_trigger_in_reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N16
\auto_signaltap_0|acq_data_in_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[0]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_data_in_reg[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N4
\auto_signaltap_0|acq_trigger_in_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[1]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N14
\auto_signaltap_0|acq_trigger_in_reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N18
\auto_signaltap_0|acq_data_in_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\);

-- Location: LCCOMB_X1_Y18_N20
\ROTOR_l|count_previous[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_l|count_previous[0]~5_combout\ = \ROTOR_l|count_previous\(0) $ (VCC)
-- \ROTOR_l|count_previous[0]~6\ = CARRY(\ROTOR_l|count_previous\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(0),
	datad => VCC,
	combout => \ROTOR_l|count_previous[0]~5_combout\,
	cout => \ROTOR_l|count_previous[0]~6\);

-- Location: LCCOMB_X1_Y18_N22
\ROTOR_l|count_previous[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_l|count_previous[1]~10_combout\ = (\ROTOR_l|count_previous\(1) & (!\ROTOR_l|count_previous[0]~6\)) # (!\ROTOR_l|count_previous\(1) & ((\ROTOR_l|count_previous[0]~6\) # (GND)))
-- \ROTOR_l|count_previous[1]~11\ = CARRY((!\ROTOR_l|count_previous[0]~6\) # (!\ROTOR_l|count_previous\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_l|count_previous\(1),
	datad => VCC,
	cin => \ROTOR_l|count_previous[0]~6\,
	combout => \ROTOR_l|count_previous[1]~10_combout\,
	cout => \ROTOR_l|count_previous[1]~11\);

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

-- Location: LCCOMB_X1_Y18_N24
\ROTOR_l|count_previous[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_l|count_previous[2]~12_combout\ = (\ROTOR_l|count_previous\(2) & (\ROTOR_l|count_previous[1]~11\ $ (GND))) # (!\ROTOR_l|count_previous\(2) & (!\ROTOR_l|count_previous[1]~11\ & VCC))
-- \ROTOR_l|count_previous[2]~13\ = CARRY((\ROTOR_l|count_previous\(2) & !\ROTOR_l|count_previous[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(2),
	datad => VCC,
	cin => \ROTOR_l|count_previous[1]~11\,
	combout => \ROTOR_l|count_previous[2]~12_combout\,
	cout => \ROTOR_l|count_previous[2]~13\);

-- Location: LCCOMB_X1_Y18_N26
\ROTOR_l|count_previous[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_l|count_previous[3]~14_combout\ = (\ROTOR_l|count_previous\(3) & (!\ROTOR_l|count_previous[2]~13\)) # (!\ROTOR_l|count_previous\(3) & ((\ROTOR_l|count_previous[2]~13\) # (GND)))
-- \ROTOR_l|count_previous[3]~15\ = CARRY((!\ROTOR_l|count_previous[2]~13\) # (!\ROTOR_l|count_previous\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_l|count_previous\(3),
	datad => VCC,
	cin => \ROTOR_l|count_previous[2]~13\,
	combout => \ROTOR_l|count_previous[3]~14_combout\,
	cout => \ROTOR_l|count_previous[3]~15\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\init~I\ : cycloneii_io
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
	padio => ww_init,
	combout => \init~combout\);

-- Location: LCCOMB_X2_Y13_N18
\FSM|state[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|state[0]~0_combout\ = (\init~combout\ & ((!\FSM|state[0]~1_combout\) # (!\FSM|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state\(1),
	datac => \FSM|state[0]~1_combout\,
	datad => \init~combout\,
	combout => \FSM|state[0]~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
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

-- Location: LCCOMB_X1_Y13_N8
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

-- Location: LCCOMB_X1_Y12_N0
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

-- Location: LCCOMB_X1_Y12_N2
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

-- Location: LCFF_X1_Y12_N3
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita14~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(14));

-- Location: LCCOMB_X1_Y12_N4
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

-- Location: LCCOMB_X2_Y18_N24
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

-- Location: LCFF_X1_Y12_N5
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(15));

-- Location: LCCOMB_X1_Y12_N8
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

-- Location: LCFF_X1_Y12_N9
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(17));

-- Location: LCCOMB_X1_Y12_N14
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

-- Location: LCFF_X1_Y12_N15
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita20~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(20));

-- Location: LCCOMB_X1_Y12_N18
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

-- Location: LCFF_X1_Y12_N19
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita22~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(22));

-- Location: LCCOMB_X1_Y12_N20
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

-- Location: LCCOMB_X1_Y12_N22
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

-- Location: LCFF_X1_Y12_N23
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita24~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(24));

-- Location: LCCOMB_X1_Y12_N24
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

-- Location: LCFF_X1_Y13_N9
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita1~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(1));

-- Location: LCCOMB_X1_Y13_N12
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

-- Location: LCCOMB_X1_Y13_N14
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

-- Location: LCFF_X1_Y13_N15
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita4~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(4));

-- Location: LCCOMB_X1_Y13_N18
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

-- Location: LCFF_X1_Y13_N19
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(6));

-- Location: LCCOMB_X1_Y13_N20
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

-- Location: LCCOMB_X1_Y13_N22
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

-- Location: LCFF_X1_Y13_N23
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(8));

-- Location: LCCOMB_X1_Y13_N26
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

-- Location: LCFF_X1_Y13_N27
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(10));

-- Location: LCCOMB_X1_Y13_N28
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

-- Location: LCFF_X1_Y13_N29
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita11~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(11));

-- Location: LCCOMB_X1_Y13_N30
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

-- Location: LCFF_X1_Y13_N31
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita12~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(12));

-- Location: LCFF_X1_Y12_N1
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita13~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(13));

-- Location: LCCOMB_X1_Y12_N26
\PULSE|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~2_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(16) & (!\PULSE|COUNTER|auto_generated|safe_q\(13) & (!\PULSE|COUNTER|auto_generated|safe_q\(15) & !\PULSE|COUNTER|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(16),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(13),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(15),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(14),
	combout => \PULSE|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y13_N4
\PULSE|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~3_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(9) & (!\PULSE|COUNTER|auto_generated|safe_q\(11) & (!\PULSE|COUNTER|auto_generated|safe_q\(12) & !\PULSE|COUNTER|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(9),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(11),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(12),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(10),
	combout => \PULSE|Equal0~3_combout\);

-- Location: LCFF_X1_Y12_N21
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita23~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(23));

-- Location: LCCOMB_X1_Y12_N28
\PULSE|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~0_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(21) & (!\PULSE|COUNTER|auto_generated|safe_q\(24) & (!\PULSE|COUNTER|auto_generated|safe_q\(23) & !\PULSE|COUNTER|auto_generated|safe_q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(21),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(24),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(23),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(22),
	combout => \PULSE|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y13_N20
\PULSE|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~4_combout\ = (\PULSE|Equal0~1_combout\ & (\PULSE|Equal0~2_combout\ & (\PULSE|Equal0~3_combout\ & \PULSE|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|Equal0~1_combout\,
	datab => \PULSE|Equal0~2_combout\,
	datac => \PULSE|Equal0~3_combout\,
	datad => \PULSE|Equal0~0_combout\,
	combout => \PULSE|Equal0~4_combout\);

-- Location: LCFF_X1_Y13_N7
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita0~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(0));

-- Location: LCFF_X1_Y13_N21
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(7));

-- Location: LCCOMB_X1_Y13_N0
\PULSE|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~5_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(5) & (!\PULSE|COUNTER|auto_generated|safe_q\(8) & (!\PULSE|COUNTER|auto_generated|safe_q\(7) & !\PULSE|COUNTER|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(5),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(8),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(7),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(6),
	combout => \PULSE|Equal0~5_combout\);

-- Location: LCFF_X1_Y13_N13
\PULSE|COUNTER|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \PULSE|COUNTER|auto_generated|counter_comb_bita3~combout\,
	sdata => VCC,
	sload => \PULSE|COUNTER|auto_generated|counter_comb_bita24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PULSE|COUNTER|auto_generated|safe_q\(3));

-- Location: LCCOMB_X1_Y13_N2
\PULSE|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~6_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(2) & (!\PULSE|COUNTER|auto_generated|safe_q\(4) & (!\PULSE|COUNTER|auto_generated|safe_q\(1) & !\PULSE|COUNTER|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|COUNTER|auto_generated|safe_q\(2),
	datab => \PULSE|COUNTER|auto_generated|safe_q\(4),
	datac => \PULSE|COUNTER|auto_generated|safe_q\(1),
	datad => \PULSE|COUNTER|auto_generated|safe_q\(3),
	combout => \PULSE|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y13_N10
\PULSE|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PULSE|Equal0~7_combout\ = (!\PULSE|COUNTER|auto_generated|safe_q\(0) & (\PULSE|Equal0~5_combout\ & \PULSE|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PULSE|COUNTER|auto_generated|safe_q\(0),
	datac => \PULSE|Equal0~5_combout\,
	datad => \PULSE|Equal0~6_combout\,
	combout => \PULSE|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y13_N24
\FSM|state[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|state[0]~1_combout\ = (\FSM|state[0]~0_combout\ & ((\FSM|state\(1)) # ((\PULSE|Equal0~4_combout\ & \PULSE|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state\(1),
	datab => \FSM|state[0]~0_combout\,
	datac => \PULSE|Equal0~4_combout\,
	datad => \PULSE|Equal0~7_combout\,
	combout => \FSM|state[0]~1_combout\);

-- Location: LCCOMB_X2_Y13_N0
\ROTOR_m|count_previous[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[0]~5_combout\ = \ROTOR_m|count_previous\(0) $ (VCC)
-- \ROTOR_m|count_previous[0]~6\ = CARRY(\ROTOR_m|count_previous\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_m|count_previous\(0),
	datad => VCC,
	combout => \ROTOR_m|count_previous[0]~5_combout\,
	cout => \ROTOR_m|count_previous[0]~6\);

-- Location: LCCOMB_X2_Y18_N18
\init~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \init~_wirecell_combout\ = !\init~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init~combout\,
	combout => \init~_wirecell_combout\);

-- Location: LCCOMB_X2_Y13_N2
\ROTOR_m|count_previous[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[1]~11_combout\ = (\ROTOR_m|count_previous\(1) & (!\ROTOR_m|count_previous[0]~6\)) # (!\ROTOR_m|count_previous\(1) & ((\ROTOR_m|count_previous[0]~6\) # (GND)))
-- \ROTOR_m|count_previous[1]~12\ = CARRY((!\ROTOR_m|count_previous[0]~6\) # (!\ROTOR_m|count_previous\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_m|count_previous\(1),
	datad => VCC,
	cin => \ROTOR_m|count_previous[0]~6\,
	combout => \ROTOR_m|count_previous[1]~11_combout\,
	cout => \ROTOR_m|count_previous[1]~12\);

-- Location: LCCOMB_X2_Y18_N8
\ROTOR_r|count_previous[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_r|count_previous[0]~5_combout\ = \ROTOR_r|count_previous\(0) $ (VCC)
-- \ROTOR_r|count_previous[0]~6\ = CARRY(\ROTOR_r|count_previous\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_r|count_previous\(0),
	datad => VCC,
	combout => \ROTOR_r|count_previous[0]~5_combout\,
	cout => \ROTOR_r|count_previous[0]~6\);

-- Location: LCCOMB_X2_Y18_N14
\ROTOR_r|count_previous[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_r|count_previous[3]~13_combout\ = (\ROTOR_r|count_previous\(3) & (!\ROTOR_r|count_previous[2]~12\)) # (!\ROTOR_r|count_previous\(3) & ((\ROTOR_r|count_previous[2]~12\) # (GND)))
-- \ROTOR_r|count_previous[3]~14\ = CARRY((!\ROTOR_r|count_previous[2]~12\) # (!\ROTOR_r|count_previous\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_r|count_previous\(3),
	datad => VCC,
	cin => \ROTOR_r|count_previous[2]~12\,
	combout => \ROTOR_r|count_previous[3]~13_combout\,
	cout => \ROTOR_r|count_previous[3]~14\);

-- Location: LCCOMB_X2_Y18_N16
\ROTOR_r|count_previous[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_r|count_previous[4]~15_combout\ = \ROTOR_r|count_previous\(4) $ (!\ROTOR_r|count_previous[3]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(4),
	cin => \ROTOR_r|count_previous[3]~14\,
	combout => \ROTOR_r|count_previous[4]~15_combout\);

-- Location: LCCOMB_X3_Y13_N24
\FSM|state[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|state[1]~2_combout\ = \FSM|state\(1) $ (\FSM|state[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state\(1),
	datad => \FSM|state[0]~1_combout\,
	combout => \FSM|state[1]~2_combout\);

-- Location: LCCOMB_X2_Y13_N28
\FSM|state[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|state[1]~3_combout\ = (\FSM|state\(1)) # (\FSM|state[0]~1_combout\ $ (((\PULSE|Equal0~4_combout\ & \PULSE|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE|Equal0~4_combout\,
	datab => \FSM|state\(1),
	datac => \FSM|state[0]~1_combout\,
	datad => \PULSE|Equal0~7_combout\,
	combout => \FSM|state[1]~3_combout\);

-- Location: LCCOMB_X2_Y13_N12
\FSM|state[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \FSM|state\(1) = (\init~combout\ & ((\FSM|state[1]~3_combout\ & (\FSM|state[1]~2_combout\)) # (!\FSM|state[1]~3_combout\ & ((\FSM|state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~combout\,
	datab => \FSM|state[1]~2_combout\,
	datac => \FSM|state\(1),
	datad => \FSM|state[1]~3_combout\,
	combout => \FSM|state\(1));

-- Location: LCCOMB_X2_Y18_N20
\ROTOR_r|count_previous[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_r|count_previous[4]~8_combout\ = ((!\FSM|state[0]~1_combout\ & \FSM|state\(1))) # (!\init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~combout\,
	datab => \FSM|state[0]~1_combout\,
	datac => \FSM|state\(1),
	combout => \ROTOR_r|count_previous[4]~8_combout\);

-- Location: LCFF_X2_Y18_N17
\ROTOR_r|count_previous[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_r|count_previous[4]~15_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_r|count_previous[4]~7_combout\,
	ena => \ROTOR_r|count_previous[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_r|count_previous\(4));

-- Location: LCCOMB_X2_Y18_N12
\ROTOR_r|count_previous[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_r|count_previous[2]~11_combout\ = (\ROTOR_r|count_previous\(2) & (\ROTOR_r|count_previous[1]~10\ $ (GND))) # (!\ROTOR_r|count_previous\(2) & (!\ROTOR_r|count_previous[1]~10\ & VCC))
-- \ROTOR_r|count_previous[2]~12\ = CARRY((\ROTOR_r|count_previous\(2) & !\ROTOR_r|count_previous[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(2),
	datad => VCC,
	cin => \ROTOR_r|count_previous[1]~10\,
	combout => \ROTOR_r|count_previous[2]~11_combout\,
	cout => \ROTOR_r|count_previous[2]~12\);

-- Location: LCFF_X2_Y18_N13
\ROTOR_r|count_previous[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_r|count_previous[2]~11_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_r|count_previous[4]~7_combout\,
	ena => \ROTOR_r|count_previous[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_r|count_previous\(2));

-- Location: LCCOMB_X2_Y18_N0
\ROTOR_m|count_previous[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[4]~8_combout\ = (!\ROTOR_r|count_previous\(1) & (\ROTOR_r|count_previous\(4) & !\ROTOR_r|count_previous\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datac => \ROTOR_r|count_previous\(4),
	datad => \ROTOR_r|count_previous\(2),
	combout => \ROTOR_m|count_previous[4]~8_combout\);

-- Location: LCCOMB_X2_Y18_N2
\ROTOR_r|count_previous[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_r|count_previous[4]~7_combout\ = ((\ROTOR_r|count_previous\(3) & (\ROTOR_r|count_previous\(0) & \ROTOR_m|count_previous[4]~8_combout\))) # (!\init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~combout\,
	datab => \ROTOR_r|count_previous\(3),
	datac => \ROTOR_r|count_previous\(0),
	datad => \ROTOR_m|count_previous[4]~8_combout\,
	combout => \ROTOR_r|count_previous[4]~7_combout\);

-- Location: LCFF_X2_Y18_N9
\ROTOR_r|count_previous[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_r|count_previous[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_r|count_previous[4]~7_combout\,
	ena => \ROTOR_r|count_previous[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_r|count_previous\(0));

-- Location: LCCOMB_X2_Y18_N10
\ROTOR_r|count_previous[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_r|count_previous[1]~9_combout\ = (\ROTOR_r|count_previous\(1) & (!\ROTOR_r|count_previous[0]~6\)) # (!\ROTOR_r|count_previous\(1) & ((\ROTOR_r|count_previous[0]~6\) # (GND)))
-- \ROTOR_r|count_previous[1]~10\ = CARRY((!\ROTOR_r|count_previous[0]~6\) # (!\ROTOR_r|count_previous\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datad => VCC,
	cin => \ROTOR_r|count_previous[0]~6\,
	combout => \ROTOR_r|count_previous[1]~9_combout\,
	cout => \ROTOR_r|count_previous[1]~10\);

-- Location: LCFF_X2_Y18_N15
\ROTOR_r|count_previous[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_r|count_previous[3]~13_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_r|count_previous[4]~7_combout\,
	ena => \ROTOR_r|count_previous[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_r|count_previous\(3));

-- Location: LCCOMB_X2_Y13_N22
\ROTOR_m|count_previous[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[4]~9_combout\ = (\COMP_m|Equal0~1_combout\) # ((\ROTOR_m|count_previous[4]~8_combout\ & (!\ROTOR_r|count_previous\(3) & !\ROTOR_r|count_previous\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous[4]~8_combout\,
	datab => \ROTOR_r|count_previous\(3),
	datac => \COMP_m|Equal0~1_combout\,
	datad => \ROTOR_r|count_previous\(0),
	combout => \ROTOR_m|count_previous[4]~9_combout\);

-- Location: LCCOMB_X2_Y13_N30
\ROTOR_m|count_previous[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[4]~10_combout\ = ((\FSM|state\(1) & (!\FSM|state[0]~1_combout\ & \ROTOR_m|count_previous[4]~9_combout\))) # (!\init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state\(1),
	datab => \FSM|state[0]~1_combout\,
	datac => \ROTOR_m|count_previous[4]~9_combout\,
	datad => \init~combout\,
	combout => \ROTOR_m|count_previous[4]~10_combout\);

-- Location: LCFF_X2_Y13_N3
\ROTOR_m|count_previous[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_m|count_previous[1]~11_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_m|count_previous[4]~7_combout\,
	ena => \ROTOR_m|count_previous[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_m|count_previous\(1));

-- Location: LCCOMB_X2_Y13_N4
\ROTOR_m|count_previous[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[2]~13_combout\ = (\ROTOR_m|count_previous\(2) & (\ROTOR_m|count_previous[1]~12\ $ (GND))) # (!\ROTOR_m|count_previous\(2) & (!\ROTOR_m|count_previous[1]~12\ & VCC))
-- \ROTOR_m|count_previous[2]~14\ = CARRY((\ROTOR_m|count_previous\(2) & !\ROTOR_m|count_previous[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_m|count_previous\(2),
	datad => VCC,
	cin => \ROTOR_m|count_previous[1]~12\,
	combout => \ROTOR_m|count_previous[2]~13_combout\,
	cout => \ROTOR_m|count_previous[2]~14\);

-- Location: LCFF_X2_Y13_N5
\ROTOR_m|count_previous[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_m|count_previous[2]~13_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_m|count_previous[4]~7_combout\,
	ena => \ROTOR_m|count_previous[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_m|count_previous\(2));

-- Location: LCCOMB_X2_Y13_N6
\ROTOR_m|count_previous[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[3]~15_combout\ = (\ROTOR_m|count_previous\(3) & (!\ROTOR_m|count_previous[2]~14\)) # (!\ROTOR_m|count_previous\(3) & ((\ROTOR_m|count_previous[2]~14\) # (GND)))
-- \ROTOR_m|count_previous[3]~16\ = CARRY((!\ROTOR_m|count_previous[2]~14\) # (!\ROTOR_m|count_previous\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(3),
	datad => VCC,
	cin => \ROTOR_m|count_previous[2]~14\,
	combout => \ROTOR_m|count_previous[3]~15_combout\,
	cout => \ROTOR_m|count_previous[3]~16\);

-- Location: LCCOMB_X2_Y13_N8
\ROTOR_m|count_previous[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[4]~17_combout\ = \ROTOR_m|count_previous\(4) $ (!\ROTOR_m|count_previous[3]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_m|count_previous\(4),
	cin => \ROTOR_m|count_previous[3]~16\,
	combout => \ROTOR_m|count_previous[4]~17_combout\);

-- Location: LCFF_X2_Y13_N9
\ROTOR_m|count_previous[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_m|count_previous[4]~17_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_m|count_previous[4]~7_combout\,
	ena => \ROTOR_m|count_previous[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_m|count_previous\(4));

-- Location: LCCOMB_X1_Y20_N10
\COMP_m|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_m|Equal0~0_combout\ = (!\ROTOR_m|count_previous\(2) & (\ROTOR_m|count_previous\(4) & !\ROTOR_m|count_previous\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datac => \ROTOR_m|count_previous\(4),
	datad => \ROTOR_m|count_previous\(1),
	combout => \COMP_m|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y13_N14
\ROTOR_m|count_previous[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_m|count_previous[4]~7_combout\ = ((\ROTOR_m|count_previous\(3) & (\ROTOR_m|count_previous\(0) & \COMP_m|Equal0~0_combout\))) # (!\init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(3),
	datab => \ROTOR_m|count_previous\(0),
	datac => \COMP_m|Equal0~0_combout\,
	datad => \init~combout\,
	combout => \ROTOR_m|count_previous[4]~7_combout\);

-- Location: LCFF_X2_Y13_N1
\ROTOR_m|count_previous[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_m|count_previous[0]~5_combout\,
	sdata => \init~_wirecell_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_m|count_previous[4]~7_combout\,
	ena => \ROTOR_m|count_previous[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_m|count_previous\(0));

-- Location: LCFF_X2_Y13_N7
\ROTOR_m|count_previous[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_m|count_previous[3]~15_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_m|count_previous[4]~7_combout\,
	ena => \ROTOR_m|count_previous[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_m|count_previous\(3));

-- Location: LCCOMB_X2_Y13_N26
\COMP_m|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_m|Equal0~1_combout\ = (\COMP_m|Equal0~0_combout\ & (!\ROTOR_m|count_previous\(0) & !\ROTOR_m|count_previous\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_m|Equal0~0_combout\,
	datab => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(3),
	combout => \COMP_m|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y13_N16
\ROTOR_l|count_previous[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_l|count_previous[4]~9_combout\ = ((\FSM|state\(1) & (!\FSM|state[0]~1_combout\ & \COMP_m|Equal0~1_combout\))) # (!\init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state\(1),
	datab => \FSM|state[0]~1_combout\,
	datac => \COMP_m|Equal0~1_combout\,
	datad => \init~combout\,
	combout => \ROTOR_l|count_previous[4]~9_combout\);

-- Location: LCFF_X1_Y18_N27
\ROTOR_l|count_previous[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_l|count_previous[3]~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \ROTOR_l|count_previous[4]~8_combout\,
	ena => \ROTOR_l|count_previous[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_l|count_previous\(3));

-- Location: LCCOMB_X1_Y18_N28
\ROTOR_l|count_previous[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_l|count_previous[4]~16_combout\ = \ROTOR_l|count_previous[3]~15\ $ (!\ROTOR_l|count_previous\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ROTOR_l|count_previous\(4),
	cin => \ROTOR_l|count_previous[3]~15\,
	combout => \ROTOR_l|count_previous[4]~16_combout\);

-- Location: LCFF_X1_Y18_N29
\ROTOR_l|count_previous[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_l|count_previous[4]~16_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \ROTOR_l|count_previous[4]~8_combout\,
	ena => \ROTOR_l|count_previous[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_l|count_previous\(4));

-- Location: LCCOMB_X1_Y18_N16
\ROTOR_l|count_previous[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ROTOR_l|count_previous[4]~8_combout\ = ((!\ROTOR_l|count_previous[4]~7_combout\ & \ROTOR_l|count_previous\(4))) # (!\init~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous[4]~7_combout\,
	datab => \ROTOR_l|count_previous\(4),
	datad => \init~combout\,
	combout => \ROTOR_l|count_previous[4]~8_combout\);

-- Location: LCFF_X1_Y18_N23
\ROTOR_l|count_previous[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_l|count_previous[1]~10_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \ROTOR_l|count_previous[4]~8_combout\,
	ena => \ROTOR_l|count_previous[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_l|count_previous\(1));

-- Location: LCFF_X1_Y18_N21
\ROTOR_l|count_previous[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_l|count_previous[0]~5_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \ROTOR_l|count_previous[4]~8_combout\,
	ena => \ROTOR_l|count_previous[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_l|count_previous\(0));

-- Location: LCCOMB_X1_Y22_N20
\DISPLAY_l|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux6~0_combout\ = (\ROTOR_l|count_previous\(0) & (\ROTOR_l|count_previous\(1) $ (((\ROTOR_l|count_previous\(3) & !\ROTOR_l|count_previous\(4)))))) # (!\ROTOR_l|count_previous\(0) & ((\ROTOR_l|count_previous\(3)) # ((!\ROTOR_l|count_previous\(1) 
-- & \ROTOR_l|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(3),
	datab => \ROTOR_l|count_previous\(1),
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux6~0_combout\);

-- Location: LCFF_X1_Y18_N25
\ROTOR_l|count_previous[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_l|count_previous[2]~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	sclr => \ROTOR_l|count_previous[4]~8_combout\,
	ena => \ROTOR_l|count_previous[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_l|count_previous\(2));

-- Location: LCCOMB_X1_Y22_N22
\DISPLAY_l|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux6~1_combout\ = (\ROTOR_l|count_previous\(2) & ((\ROTOR_l|count_previous\(4)) # ((\DISPLAY_l|Mux6~0_combout\ & \ROTOR_l|count_previous\(0))))) # (!\ROTOR_l|count_previous\(2) & ((\DISPLAY_l|Mux6~0_combout\) # ((\ROTOR_l|count_previous\(0) & 
-- !\ROTOR_l|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_l|Mux6~0_combout\,
	datab => \ROTOR_l|count_previous\(2),
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y22_N24
\DISPLAY_l|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux5~0_combout\ = (\ROTOR_l|count_previous\(1) & ((\ROTOR_l|count_previous\(3)) # ((!\ROTOR_l|count_previous\(0))))) # (!\ROTOR_l|count_previous\(1) & (!\ROTOR_l|count_previous\(4) & (\ROTOR_l|count_previous\(3) $ 
-- (\ROTOR_l|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(3),
	datab => \ROTOR_l|count_previous\(1),
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y22_N26
\DISPLAY_l|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux5~1_combout\ = (\DISPLAY_l|Mux5~0_combout\ & (((\ROTOR_l|count_previous\(4)) # (!\ROTOR_l|count_previous\(2))) # (!\ROTOR_l|count_previous\(3)))) # (!\DISPLAY_l|Mux5~0_combout\ & (\ROTOR_l|count_previous\(2) $ (((!\ROTOR_l|count_previous\(3) 
-- & \ROTOR_l|count_previous\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(3),
	datab => \ROTOR_l|count_previous\(2),
	datac => \DISPLAY_l|Mux5~0_combout\,
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux5~1_combout\);

-- Location: LCCOMB_X1_Y18_N10
\DISPLAY_l|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux4~1_combout\ = (\ROTOR_l|count_previous\(0) & (!\ROTOR_l|count_previous\(1) & ((!\ROTOR_l|count_previous\(4))))) # (!\ROTOR_l|count_previous\(0) & ((\ROTOR_l|count_previous\(2) & ((!\ROTOR_l|count_previous\(4)))) # 
-- (!\ROTOR_l|count_previous\(2) & (!\ROTOR_l|count_previous\(1) & \ROTOR_l|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(0),
	datab => \ROTOR_l|count_previous\(1),
	datac => \ROTOR_l|count_previous\(2),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux4~1_combout\);

-- Location: LCCOMB_X1_Y18_N0
\DISPLAY_l|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux4~0_combout\ = (\ROTOR_l|count_previous\(2) & (((!\ROTOR_l|count_previous\(1) & !\ROTOR_l|count_previous\(4))))) # (!\ROTOR_l|count_previous\(2) & ((\ROTOR_l|count_previous\(0) & ((\ROTOR_l|count_previous\(4)))) # 
-- (!\ROTOR_l|count_previous\(0) & (\ROTOR_l|count_previous\(1) & !\ROTOR_l|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(0),
	datab => \ROTOR_l|count_previous\(1),
	datac => \ROTOR_l|count_previous\(2),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\DISPLAY_l|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux4~2_combout\ = (\ROTOR_l|count_previous\(3) & (!\DISPLAY_l|Mux4~1_combout\)) # (!\ROTOR_l|count_previous\(3) & ((\DISPLAY_l|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_l|Mux4~1_combout\,
	datab => \DISPLAY_l|Mux4~0_combout\,
	datad => \ROTOR_l|count_previous\(3),
	combout => \DISPLAY_l|Mux4~2_combout\);

-- Location: LCCOMB_X1_Y22_N2
\DISPLAY_l|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux3~1_combout\ = (\ROTOR_l|count_previous\(2) & (((!\ROTOR_l|count_previous\(0))))) # (!\ROTOR_l|count_previous\(2) & ((\ROTOR_l|count_previous\(1)) # (\ROTOR_l|count_previous\(0) $ (\ROTOR_l|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(1),
	datab => \ROTOR_l|count_previous\(2),
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y22_N0
\DISPLAY_l|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux3~0_combout\ = (\ROTOR_l|count_previous\(1) & (!\ROTOR_l|count_previous\(4) & (\ROTOR_l|count_previous\(2) $ (\ROTOR_l|count_previous\(0))))) # (!\ROTOR_l|count_previous\(1) & (!\ROTOR_l|count_previous\(2) & ((\ROTOR_l|count_previous\(0)) # 
-- (\ROTOR_l|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(1),
	datab => \ROTOR_l|count_previous\(2),
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y22_N12
\DISPLAY_l|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux3~2_combout\ = (\ROTOR_l|count_previous\(3) & ((\DISPLAY_l|Mux3~0_combout\))) # (!\ROTOR_l|count_previous\(3) & (\DISPLAY_l|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_l|Mux3~1_combout\,
	datac => \ROTOR_l|count_previous\(3),
	datad => \DISPLAY_l|Mux3~0_combout\,
	combout => \DISPLAY_l|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y22_N6
\DISPLAY_l|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux2~0_combout\ = (\ROTOR_l|count_previous\(1) & ((\ROTOR_l|count_previous\(3)) # ((!\ROTOR_l|count_previous\(0) & !\ROTOR_l|count_previous\(2))))) # (!\ROTOR_l|count_previous\(1) & ((\ROTOR_l|count_previous\(0) & 
-- ((\ROTOR_l|count_previous\(2)))) # (!\ROTOR_l|count_previous\(0) & (\ROTOR_l|count_previous\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(3),
	datab => \ROTOR_l|count_previous\(1),
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(2),
	combout => \DISPLAY_l|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y22_N8
\DISPLAY_l|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux2~1_combout\ = (\ROTOR_l|count_previous\(4) & \DISPLAY_l|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROTOR_l|count_previous\(4),
	datad => \DISPLAY_l|Mux2~0_combout\,
	combout => \DISPLAY_l|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y18_N2
\DISPLAY_l|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux1~0_combout\ = (\ROTOR_l|count_previous\(2) & ((\ROTOR_l|count_previous\(1) & (!\ROTOR_l|count_previous\(0))) # (!\ROTOR_l|count_previous\(1) & ((\ROTOR_l|count_previous\(3)))))) # (!\ROTOR_l|count_previous\(2) & (\ROTOR_l|count_previous\(0) 
-- $ (\ROTOR_l|count_previous\(3) $ (!\ROTOR_l|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(0),
	datab => \ROTOR_l|count_previous\(3),
	datac => \ROTOR_l|count_previous\(2),
	datad => \ROTOR_l|count_previous\(1),
	combout => \DISPLAY_l|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y18_N4
\DISPLAY_l|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux1~1_combout\ = (\ROTOR_l|count_previous\(0) & ((\ROTOR_l|count_previous\(4) & (\ROTOR_l|count_previous\(3))) # (!\ROTOR_l|count_previous\(4) & ((\DISPLAY_l|Mux1~0_combout\))))) # (!\ROTOR_l|count_previous\(0) & (((\DISPLAY_l|Mux1~0_combout\ 
-- & \ROTOR_l|count_previous\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(3),
	datab => \DISPLAY_l|Mux1~0_combout\,
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y22_N18
\DISPLAY_l|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux0~0_combout\ = (\ROTOR_l|count_previous\(0) & (!\ROTOR_l|count_previous\(1) & ((\ROTOR_l|count_previous\(4))))) # (!\ROTOR_l|count_previous\(0) & ((\ROTOR_l|count_previous\(4) & ((\ROTOR_l|count_previous\(2)))) # 
-- (!\ROTOR_l|count_previous\(4) & (\ROTOR_l|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(1),
	datab => \ROTOR_l|count_previous\(2),
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y22_N28
\DISPLAY_l|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux0~1_combout\ = (\ROTOR_l|count_previous\(2) & (((\ROTOR_l|count_previous\(0) & !\ROTOR_l|count_previous\(4))))) # (!\ROTOR_l|count_previous\(2) & ((\ROTOR_l|count_previous\(1) & (!\ROTOR_l|count_previous\(0) & !\ROTOR_l|count_previous\(4))) 
-- # (!\ROTOR_l|count_previous\(1) & ((\ROTOR_l|count_previous\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_l|count_previous\(1),
	datab => \ROTOR_l|count_previous\(2),
	datac => \ROTOR_l|count_previous\(0),
	datad => \ROTOR_l|count_previous\(4),
	combout => \DISPLAY_l|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y22_N14
\DISPLAY_l|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_l|Mux0~2_combout\ = (\ROTOR_l|count_previous\(3) & ((!\DISPLAY_l|Mux0~1_combout\))) # (!\ROTOR_l|count_previous\(3) & (\DISPLAY_l|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_l|Mux0~0_combout\,
	datac => \ROTOR_l|count_previous\(3),
	datad => \DISPLAY_l|Mux0~1_combout\,
	combout => \DISPLAY_l|Mux0~2_combout\);

-- Location: LCCOMB_X1_Y20_N28
\DISPLAY_m|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux6~0_combout\ = (\ROTOR_m|count_previous\(0) & (\ROTOR_m|count_previous\(1) $ (((\ROTOR_m|count_previous\(3) & !\ROTOR_m|count_previous\(4)))))) # (!\ROTOR_m|count_previous\(0) & ((\ROTOR_m|count_previous\(3)) # ((\ROTOR_m|count_previous\(4) 
-- & !\ROTOR_m|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(0),
	datab => \ROTOR_m|count_previous\(3),
	datac => \ROTOR_m|count_previous\(4),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y20_N22
\DISPLAY_m|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux6~1_combout\ = (\ROTOR_m|count_previous\(0) & ((\DISPLAY_m|Mux6~0_combout\) # (\ROTOR_m|count_previous\(4) $ (!\ROTOR_m|count_previous\(2))))) # (!\ROTOR_m|count_previous\(0) & ((\ROTOR_m|count_previous\(2) & ((\ROTOR_m|count_previous\(4)))) 
-- # (!\ROTOR_m|count_previous\(2) & (\DISPLAY_m|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(0),
	datab => \DISPLAY_m|Mux6~0_combout\,
	datac => \ROTOR_m|count_previous\(4),
	datad => \ROTOR_m|count_previous\(2),
	combout => \DISPLAY_m|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y20_N24
\DISPLAY_m|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux5~0_combout\ = (\ROTOR_m|count_previous\(1) & (((\ROTOR_m|count_previous\(3))) # (!\ROTOR_m|count_previous\(0)))) # (!\ROTOR_m|count_previous\(1) & (!\ROTOR_m|count_previous\(4) & (\ROTOR_m|count_previous\(0) $ 
-- (\ROTOR_m|count_previous\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(0),
	datab => \ROTOR_m|count_previous\(3),
	datac => \ROTOR_m|count_previous\(4),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y20_N26
\DISPLAY_m|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux5~1_combout\ = (\DISPLAY_m|Mux5~0_combout\ & (((\ROTOR_m|count_previous\(4)) # (!\ROTOR_m|count_previous\(2))) # (!\ROTOR_m|count_previous\(3)))) # (!\DISPLAY_m|Mux5~0_combout\ & (\ROTOR_m|count_previous\(2) $ (((!\ROTOR_m|count_previous\(3) 
-- & \ROTOR_m|count_previous\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_m|Mux5~0_combout\,
	datab => \ROTOR_m|count_previous\(3),
	datac => \ROTOR_m|count_previous\(4),
	datad => \ROTOR_m|count_previous\(2),
	combout => \DISPLAY_m|Mux5~1_combout\);

-- Location: LCCOMB_X1_Y20_N18
\DISPLAY_m|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux4~1_combout\ = (\ROTOR_m|count_previous\(2) & (!\ROTOR_m|count_previous\(4) & ((!\ROTOR_m|count_previous\(1)) # (!\ROTOR_m|count_previous\(0))))) # (!\ROTOR_m|count_previous\(2) & (!\ROTOR_m|count_previous\(1) & (\ROTOR_m|count_previous\(4) 
-- $ (\ROTOR_m|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datab => \ROTOR_m|count_previous\(4),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux4~1_combout\);

-- Location: LCCOMB_X1_Y20_N16
\DISPLAY_m|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux4~0_combout\ = (\ROTOR_m|count_previous\(2) & (!\ROTOR_m|count_previous\(4) & ((!\ROTOR_m|count_previous\(1))))) # (!\ROTOR_m|count_previous\(2) & ((\ROTOR_m|count_previous\(4) & (\ROTOR_m|count_previous\(0))) # (!\ROTOR_m|count_previous\(4) 
-- & (!\ROTOR_m|count_previous\(0) & \ROTOR_m|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datab => \ROTOR_m|count_previous\(4),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux4~0_combout\);

-- Location: LCCOMB_X2_Y20_N16
\DISPLAY_m|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux4~2_combout\ = (\ROTOR_m|count_previous\(3) & (!\DISPLAY_m|Mux4~1_combout\)) # (!\ROTOR_m|count_previous\(3) & ((\DISPLAY_m|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(3),
	datab => \DISPLAY_m|Mux4~1_combout\,
	datad => \DISPLAY_m|Mux4~0_combout\,
	combout => \DISPLAY_m|Mux4~2_combout\);

-- Location: LCCOMB_X1_Y20_N30
\DISPLAY_m|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux3~1_combout\ = (\ROTOR_m|count_previous\(2) & (((!\ROTOR_m|count_previous\(0))))) # (!\ROTOR_m|count_previous\(2) & ((\ROTOR_m|count_previous\(1)) # (\ROTOR_m|count_previous\(4) $ (\ROTOR_m|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datab => \ROTOR_m|count_previous\(4),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y20_N4
\DISPLAY_m|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux3~0_combout\ = (\ROTOR_m|count_previous\(2) & (!\ROTOR_m|count_previous\(4) & (!\ROTOR_m|count_previous\(0) & \ROTOR_m|count_previous\(1)))) # (!\ROTOR_m|count_previous\(2) & ((\ROTOR_m|count_previous\(4) & ((!\ROTOR_m|count_previous\(1)))) 
-- # (!\ROTOR_m|count_previous\(4) & (\ROTOR_m|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datab => \ROTOR_m|count_previous\(4),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y20_N0
\DISPLAY_m|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux3~2_combout\ = (\ROTOR_m|count_previous\(3) & ((\DISPLAY_m|Mux3~0_combout\))) # (!\ROTOR_m|count_previous\(3) & (\DISPLAY_m|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_m|Mux3~1_combout\,
	datac => \DISPLAY_m|Mux3~0_combout\,
	datad => \ROTOR_m|count_previous\(3),
	combout => \DISPLAY_m|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y20_N2
\DISPLAY_m|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux2~0_combout\ = (\ROTOR_m|count_previous\(0) & ((\ROTOR_m|count_previous\(1) & ((\ROTOR_m|count_previous\(3)))) # (!\ROTOR_m|count_previous\(1) & (\ROTOR_m|count_previous\(2))))) # (!\ROTOR_m|count_previous\(0) & 
-- ((\ROTOR_m|count_previous\(3)) # ((!\ROTOR_m|count_previous\(2) & \ROTOR_m|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datab => \ROTOR_m|count_previous\(3),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\DISPLAY_m|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux2~1_combout\ = (\ROTOR_m|count_previous\(4) & \DISPLAY_m|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROTOR_m|count_previous\(4),
	datad => \DISPLAY_m|Mux2~0_combout\,
	combout => \DISPLAY_m|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y20_N12
\DISPLAY_m|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux1~0_combout\ = (\ROTOR_m|count_previous\(2) & ((\ROTOR_m|count_previous\(1) & ((!\ROTOR_m|count_previous\(0)))) # (!\ROTOR_m|count_previous\(1) & (\ROTOR_m|count_previous\(3))))) # (!\ROTOR_m|count_previous\(2) & (\ROTOR_m|count_previous\(3) 
-- $ (\ROTOR_m|count_previous\(0) $ (!\ROTOR_m|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datab => \ROTOR_m|count_previous\(3),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y20_N14
\DISPLAY_m|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux1~1_combout\ = (\ROTOR_m|count_previous\(4) & ((\ROTOR_m|count_previous\(0) & ((\ROTOR_m|count_previous\(3)))) # (!\ROTOR_m|count_previous\(0) & (\DISPLAY_m|Mux1~0_combout\)))) # (!\ROTOR_m|count_previous\(4) & (\DISPLAY_m|Mux1~0_combout\ & 
-- (\ROTOR_m|count_previous\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_m|Mux1~0_combout\,
	datab => \ROTOR_m|count_previous\(4),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(3),
	combout => \DISPLAY_m|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y20_N6
\DISPLAY_m|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux0~1_combout\ = (\ROTOR_m|count_previous\(2) & (!\ROTOR_m|count_previous\(4) & (\ROTOR_m|count_previous\(0)))) # (!\ROTOR_m|count_previous\(2) & ((\ROTOR_m|count_previous\(4) & ((!\ROTOR_m|count_previous\(1)))) # (!\ROTOR_m|count_previous\(4) 
-- & (!\ROTOR_m|count_previous\(0) & \ROTOR_m|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datab => \ROTOR_m|count_previous\(4),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y20_N20
\DISPLAY_m|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux0~0_combout\ = (\ROTOR_m|count_previous\(4) & ((\ROTOR_m|count_previous\(0) & ((!\ROTOR_m|count_previous\(1)))) # (!\ROTOR_m|count_previous\(0) & (\ROTOR_m|count_previous\(2))))) # (!\ROTOR_m|count_previous\(4) & 
-- (((!\ROTOR_m|count_previous\(0) & \ROTOR_m|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_m|count_previous\(2),
	datab => \ROTOR_m|count_previous\(4),
	datac => \ROTOR_m|count_previous\(0),
	datad => \ROTOR_m|count_previous\(1),
	combout => \DISPLAY_m|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y20_N8
\DISPLAY_m|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_m|Mux0~2_combout\ = (\ROTOR_m|count_previous\(3) & (!\DISPLAY_m|Mux0~1_combout\)) # (!\ROTOR_m|count_previous\(3) & ((\DISPLAY_m|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_m|Mux0~1_combout\,
	datac => \DISPLAY_m|Mux0~0_combout\,
	datad => \ROTOR_m|count_previous\(3),
	combout => \DISPLAY_m|Mux0~2_combout\);

-- Location: LCFF_X2_Y18_N11
\ROTOR_r|count_previous[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ROTOR_r|count_previous[1]~9_combout\,
	sdata => \init~_wirecell_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => \ROTOR_r|count_previous[4]~7_combout\,
	ena => \ROTOR_r|count_previous[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ROTOR_r|count_previous\(1));

-- Location: LCCOMB_X2_Y18_N28
\DISPLAY_r|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux6~0_combout\ = (\ROTOR_r|count_previous\(0) & (\ROTOR_r|count_previous\(1) $ (((!\ROTOR_r|count_previous\(4) & \ROTOR_r|count_previous\(3)))))) # (!\ROTOR_r|count_previous\(0) & ((\ROTOR_r|count_previous\(3)) # ((\ROTOR_r|count_previous\(4) 
-- & !\ROTOR_r|count_previous\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(4),
	datab => \ROTOR_r|count_previous\(3),
	datac => \ROTOR_r|count_previous\(0),
	datad => \ROTOR_r|count_previous\(1),
	combout => \DISPLAY_r|Mux6~0_combout\);

-- Location: LCCOMB_X2_Y18_N22
\DISPLAY_r|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux6~1_combout\ = (\ROTOR_r|count_previous\(0) & ((\DISPLAY_r|Mux6~0_combout\) # (\ROTOR_r|count_previous\(4) $ (!\ROTOR_r|count_previous\(2))))) # (!\ROTOR_r|count_previous\(0) & ((\ROTOR_r|count_previous\(2) & (\ROTOR_r|count_previous\(4))) # 
-- (!\ROTOR_r|count_previous\(2) & ((\DISPLAY_r|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(4),
	datab => \DISPLAY_r|Mux6~0_combout\,
	datac => \ROTOR_r|count_previous\(0),
	datad => \ROTOR_r|count_previous\(2),
	combout => \DISPLAY_r|Mux6~1_combout\);

-- Location: LCCOMB_X2_Y18_N30
\DISPLAY_r|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux5~0_combout\ = (\ROTOR_r|count_previous\(1) & (((\ROTOR_r|count_previous\(3)) # (!\ROTOR_r|count_previous\(0))))) # (!\ROTOR_r|count_previous\(1) & (!\ROTOR_r|count_previous\(4) & (\ROTOR_r|count_previous\(3) $ 
-- (\ROTOR_r|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(4),
	datab => \ROTOR_r|count_previous\(3),
	datac => \ROTOR_r|count_previous\(0),
	datad => \ROTOR_r|count_previous\(1),
	combout => \DISPLAY_r|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y18_N26
\DISPLAY_r|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux5~1_combout\ = (\DISPLAY_r|Mux5~0_combout\ & ((\ROTOR_r|count_previous\(4)) # ((!\ROTOR_r|count_previous\(2)) # (!\ROTOR_r|count_previous\(3))))) # (!\DISPLAY_r|Mux5~0_combout\ & (\ROTOR_r|count_previous\(2) $ (((\ROTOR_r|count_previous\(4) 
-- & !\ROTOR_r|count_previous\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(4),
	datab => \DISPLAY_r|Mux5~0_combout\,
	datac => \ROTOR_r|count_previous\(3),
	datad => \ROTOR_r|count_previous\(2),
	combout => \DISPLAY_r|Mux5~1_combout\);

-- Location: LCCOMB_X1_Y19_N24
\DISPLAY_r|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux4~0_combout\ = (\ROTOR_r|count_previous\(4) & (((!\ROTOR_r|count_previous\(2) & \ROTOR_r|count_previous\(0))))) # (!\ROTOR_r|count_previous\(4) & ((\ROTOR_r|count_previous\(1) & (!\ROTOR_r|count_previous\(2) & !\ROTOR_r|count_previous\(0))) 
-- # (!\ROTOR_r|count_previous\(1) & (\ROTOR_r|count_previous\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datab => \ROTOR_r|count_previous\(4),
	datac => \ROTOR_r|count_previous\(2),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N2
\DISPLAY_r|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux4~1_combout\ = (\ROTOR_r|count_previous\(1) & (!\ROTOR_r|count_previous\(4) & (\ROTOR_r|count_previous\(2) & !\ROTOR_r|count_previous\(0)))) # (!\ROTOR_r|count_previous\(1) & (\ROTOR_r|count_previous\(4) $ (((\ROTOR_r|count_previous\(2)) # 
-- (\ROTOR_r|count_previous\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datab => \ROTOR_r|count_previous\(4),
	datac => \ROTOR_r|count_previous\(2),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux4~1_combout\);

-- Location: LCCOMB_X1_Y19_N12
\DISPLAY_r|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux4~2_combout\ = (\ROTOR_r|count_previous\(3) & ((!\DISPLAY_r|Mux4~1_combout\))) # (!\ROTOR_r|count_previous\(3) & (\DISPLAY_r|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_r|Mux4~0_combout\,
	datab => \DISPLAY_r|Mux4~1_combout\,
	datac => \ROTOR_r|count_previous\(3),
	combout => \DISPLAY_r|Mux4~2_combout\);

-- Location: LCCOMB_X1_Y19_N8
\DISPLAY_r|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux3~1_combout\ = (\ROTOR_r|count_previous\(2) & (((!\ROTOR_r|count_previous\(0))))) # (!\ROTOR_r|count_previous\(2) & ((\ROTOR_r|count_previous\(1)) # (\ROTOR_r|count_previous\(4) $ (\ROTOR_r|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datab => \ROTOR_r|count_previous\(4),
	datac => \ROTOR_r|count_previous\(2),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y19_N30
\DISPLAY_r|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux3~0_combout\ = (\ROTOR_r|count_previous\(1) & (!\ROTOR_r|count_previous\(4) & (\ROTOR_r|count_previous\(2) $ (\ROTOR_r|count_previous\(0))))) # (!\ROTOR_r|count_previous\(1) & (!\ROTOR_r|count_previous\(2) & ((\ROTOR_r|count_previous\(4)) # 
-- (\ROTOR_r|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datab => \ROTOR_r|count_previous\(4),
	datac => \ROTOR_r|count_previous\(2),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
\DISPLAY_r|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux3~2_combout\ = (\ROTOR_r|count_previous\(3) & ((\DISPLAY_r|Mux3~0_combout\))) # (!\ROTOR_r|count_previous\(3) & (\DISPLAY_r|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_r|Mux3~1_combout\,
	datac => \ROTOR_r|count_previous\(3),
	datad => \DISPLAY_r|Mux3~0_combout\,
	combout => \DISPLAY_r|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y19_N28
\DISPLAY_r|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux2~0_combout\ = (\ROTOR_r|count_previous\(1) & ((\ROTOR_r|count_previous\(3)) # ((!\ROTOR_r|count_previous\(2) & !\ROTOR_r|count_previous\(0))))) # (!\ROTOR_r|count_previous\(1) & ((\ROTOR_r|count_previous\(0) & (\ROTOR_r|count_previous\(2))) 
-- # (!\ROTOR_r|count_previous\(0) & ((\ROTOR_r|count_previous\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datab => \ROTOR_r|count_previous\(2),
	datac => \ROTOR_r|count_previous\(3),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\DISPLAY_r|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux2~1_combout\ = (\DISPLAY_r|Mux2~0_combout\ & \ROTOR_r|count_previous\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_r|Mux2~0_combout\,
	datad => \ROTOR_r|count_previous\(4),
	combout => \DISPLAY_r|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y19_N6
\DISPLAY_r|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux1~0_combout\ = (\ROTOR_r|count_previous\(1) & (\ROTOR_r|count_previous\(0) $ (((\ROTOR_r|count_previous\(2)) # (\ROTOR_r|count_previous\(3)))))) # (!\ROTOR_r|count_previous\(1) & (\ROTOR_r|count_previous\(3) $ (((!\ROTOR_r|count_previous\(2) 
-- & !\ROTOR_r|count_previous\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datab => \ROTOR_r|count_previous\(2),
	datac => \ROTOR_r|count_previous\(3),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y19_N0
\DISPLAY_r|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux1~1_combout\ = (\ROTOR_r|count_previous\(4) & ((\ROTOR_r|count_previous\(0) & ((\ROTOR_r|count_previous\(3)))) # (!\ROTOR_r|count_previous\(0) & (\DISPLAY_r|Mux1~0_combout\)))) # (!\ROTOR_r|count_previous\(4) & (\DISPLAY_r|Mux1~0_combout\ & 
-- ((\ROTOR_r|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_r|Mux1~0_combout\,
	datab => \ROTOR_r|count_previous\(4),
	datac => \ROTOR_r|count_previous\(3),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y19_N16
\DISPLAY_r|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux0~0_combout\ = (\ROTOR_r|count_previous\(4) & ((\ROTOR_r|count_previous\(0) & (!\ROTOR_r|count_previous\(1))) # (!\ROTOR_r|count_previous\(0) & ((\ROTOR_r|count_previous\(2)))))) # (!\ROTOR_r|count_previous\(4) & (\ROTOR_r|count_previous\(1) 
-- & ((!\ROTOR_r|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datab => \ROTOR_r|count_previous\(4),
	datac => \ROTOR_r|count_previous\(2),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y19_N18
\DISPLAY_r|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux0~1_combout\ = (\ROTOR_r|count_previous\(4) & (!\ROTOR_r|count_previous\(1) & (!\ROTOR_r|count_previous\(2)))) # (!\ROTOR_r|count_previous\(4) & ((\ROTOR_r|count_previous\(2) & ((\ROTOR_r|count_previous\(0)))) # (!\ROTOR_r|count_previous\(2) 
-- & (\ROTOR_r|count_previous\(1) & !\ROTOR_r|count_previous\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROTOR_r|count_previous\(1),
	datab => \ROTOR_r|count_previous\(4),
	datac => \ROTOR_r|count_previous\(2),
	datad => \ROTOR_r|count_previous\(0),
	combout => \DISPLAY_r|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y19_N4
\DISPLAY_r|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DISPLAY_r|Mux0~2_combout\ = (\ROTOR_r|count_previous\(3) & ((!\DISPLAY_r|Mux0~1_combout\))) # (!\ROTOR_r|count_previous\(3) & (\DISPLAY_r|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_r|Mux0~0_combout\,
	datab => \DISPLAY_r|Mux0~1_combout\,
	datac => \ROTOR_r|count_previous\(3),
	combout => \DISPLAY_r|Mux0~2_combout\);

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tms~I\ : cycloneii_io
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
	padio => ww_altera_reserved_tms,
	combout => \altera_reserved_tms~combout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tck~I\ : cycloneii_io
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
	padio => ww_altera_reserved_tck,
	combout => \altera_reserved_tck~combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tdi~I\ : cycloneii_io
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
	padio => ww_altera_reserved_tdi,
	combout => \altera_reserved_tdi~combout\);

-- Location: LCCOMB_X21_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: LCFF_X21_Y20_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LCCOMB_X22_Y20_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: LCFF_X22_Y20_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LCCOMB_X22_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: LCFF_X22_Y20_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: LCCOMB_X21_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: LCFF_X21_Y20_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X21_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: LCFF_X21_Y20_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LCCOMB_X21_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: LCFF_X21_Y20_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

-- Location: LCCOMB_X21_Y20_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: LCFF_X21_Y20_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LCCOMB_X22_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: LCFF_X22_Y20_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LCCOMB_X21_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: LCFF_X21_Y20_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X21_Y21_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\);

-- Location: LCCOMB_X21_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: LCFF_X21_Y20_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\);

-- Location: LCCOMB_X21_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~4_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\);

-- Location: LCFF_X21_Y21_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LCCOMB_X21_Y20_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~6_combout\);

-- Location: CLKCTRL_G9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: LCFF_X20_Y19_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LCCOMB_X20_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\);

-- Location: LCFF_X20_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LCCOMB_X20_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: LCFF_X20_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LCCOMB_X20_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: LCFF_X20_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LCCOMB_X20_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: LCFF_X20_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: LCFF_X19_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \altera_internal_jtag~TDIUTAP\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: LCFF_X19_Y19_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: LCCOMB_X19_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\);

-- Location: LCFF_X19_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: LCFF_X19_Y19_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: LCCOMB_X19_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\);

-- Location: LCFF_X19_Y19_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: LCCOMB_X19_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: LCFF_X19_Y19_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: LCFF_X19_Y19_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3));

-- Location: LCCOMB_X19_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: LCFF_X19_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LCCOMB_X19_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: LCFF_X19_Y19_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X19_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: LCFF_X19_Y19_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: LCCOMB_X19_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCFF_X19_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\);

-- Location: LCFF_X21_Y20_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~6_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LCCOMB_X21_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: LCFF_X21_Y20_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\);

-- Location: CLKCTRL_G8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\);

-- Location: LCFF_X21_Y21_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\,
	sdata => \~GND~combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8));

-- Location: LCCOMB_X21_Y20_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: LCFF_X21_Y20_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\);

-- Location: LCCOMB_X22_Y22_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\);

-- Location: LCCOMB_X22_Y22_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X21_Y21_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~3_combout\);

-- Location: LCFF_X21_Y21_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: LCCOMB_X22_Y22_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X22_Y22_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X22_Y22_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\);

-- Location: LCFF_X22_Y22_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LCCOMB_X22_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X21_Y21_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: LCFF_X22_Y21_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\);

-- Location: LCCOMB_X23_Y21_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]~feeder_combout\);

-- Location: LCCOMB_X22_Y21_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\);

-- Location: LCCOMB_X22_Y21_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\);

-- Location: LCFF_X22_Y21_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCFF_X22_Y21_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\);

-- Location: LCCOMB_X19_Y22_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0_combout\);

-- Location: LCFF_X19_Y22_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\);

-- Location: CLKCTRL_G11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: LCFF_X19_Y19_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\);

-- Location: LCFF_X20_Y19_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LCCOMB_X20_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X22_Y22_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: LCFF_X22_Y22_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\);

-- Location: LCCOMB_X22_Y22_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\);

-- Location: LCFF_X23_Y21_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(20));

-- Location: LCCOMB_X23_Y21_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[19]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(20),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[19]~feeder_combout\);

-- Location: LCFF_X23_Y21_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[19]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(19));

-- Location: LCCOMB_X23_Y21_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(19),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\);

-- Location: LCFF_X23_Y21_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(18));

-- Location: LCFF_X23_Y21_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(18),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(17));

-- Location: LCCOMB_X23_Y21_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(17),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]~feeder_combout\);

-- Location: LCFF_X23_Y21_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(16));

-- Location: LCFF_X23_Y21_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(16),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(15));

-- Location: LCCOMB_X23_Y21_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(15),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\);

-- Location: LCFF_X23_Y21_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(14));

-- Location: LCFF_X23_Y21_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(14),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(13));

-- Location: LCCOMB_X23_Y21_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]~feeder_combout\);

-- Location: LCFF_X23_Y21_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(12));

-- Location: LCCOMB_X23_Y21_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]~feeder_combout\);

-- Location: LCFF_X23_Y21_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(11));

-- Location: LCCOMB_X23_Y21_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[10]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(11),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[10]~feeder_combout\);

-- Location: LCFF_X23_Y21_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[10]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(10));

-- Location: LCFF_X23_Y21_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(10),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(9));

-- Location: LCCOMB_X23_Y21_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\);

-- Location: LCFF_X23_Y21_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(8));

-- Location: LCFF_X23_Y21_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(8),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(7));

-- Location: LCCOMB_X23_Y22_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]~feeder_combout\);

-- Location: LCFF_X23_Y22_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(6));

-- Location: LCFF_X23_Y22_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(6),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(5));

-- Location: LCCOMB_X23_Y22_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y22_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(4));

-- Location: LCCOMB_X23_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[3]~feeder_combout\);

-- Location: LCFF_X23_Y22_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[3]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(3));

-- Location: LCCOMB_X23_Y22_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]~feeder_combout\);

-- Location: LCFF_X23_Y22_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(2));

-- Location: LCFF_X23_Y22_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(2),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(1));

-- Location: LCCOMB_X23_Y22_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]~feeder_combout\);

-- Location: LCFF_X23_Y22_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(0));

-- Location: LCFF_X23_Y22_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(0),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(3));

-- Location: LCCOMB_X23_Y22_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\);

-- Location: LCFF_X23_Y22_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(2));

-- Location: LCCOMB_X23_Y22_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\);

-- Location: LCFF_X23_Y22_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(1));

-- Location: LCCOMB_X23_Y22_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\);

-- Location: LCFF_X23_Y22_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0));

-- Location: LCCOMB_X23_Y22_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\);

-- Location: LCFF_X23_Y22_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6));

-- Location: LCFF_X23_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5));

-- Location: LCCOMB_X23_Y23_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y23_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4));

-- Location: LCFF_X23_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3));

-- Location: LCCOMB_X23_Y21_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]~feeder_combout\);

-- Location: LCFF_X23_Y21_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2));

-- Location: LCCOMB_X23_Y23_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\);

-- Location: LCFF_X23_Y23_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1));

-- Location: LCFF_X23_Y23_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0));

-- Location: LCCOMB_X22_Y21_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\);

-- Location: LCFF_X22_Y21_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7));

-- Location: LCFF_X22_Y21_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\);

-- Location: LCCOMB_X22_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\);

-- Location: LCCOMB_X26_Y24_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X18_Y24_N24
\auto_signaltap_0|~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|~GND~combout\);

-- Location: LCCOMB_X22_Y21_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\);

-- Location: LCFF_X22_Y21_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\);

-- Location: LCCOMB_X22_Y21_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\);

-- Location: LCFF_X22_Y21_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCCOMB_X22_Y21_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: LCFF_X22_Y21_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCFF_X22_Y21_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\);

-- Location: LCCOMB_X22_Y22_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\);

-- Location: LCCOMB_X19_Y22_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\);

-- Location: LCCOMB_X26_Y24_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\);

-- Location: LCCOMB_X26_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit1a[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|safe_q\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit1a[0]~0_combout\);

-- Location: LCCOMB_X25_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X25_Y24_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\);

-- Location: LCCOMB_X25_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X25_Y24_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X25_Y24_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\);

-- Location: LCFF_X25_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(0));

-- Location: LCCOMB_X25_Y24_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X25_Y24_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(1));

-- Location: LCFF_X25_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(3));

-- Location: LCCOMB_X25_Y24_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\);

-- Location: LCFF_X26_Y24_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit1a[0]~0_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|safe_q\(0));

-- Location: LCCOMB_X26_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|safe_q\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]~feeder_combout\);

-- Location: LCFF_X26_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0));

-- Location: LCCOMB_X18_Y23_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\);

-- Location: LCFF_X18_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(0));

-- Location: LCCOMB_X18_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\);

-- Location: LCFF_X18_Y23_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(1));

-- Location: LCCOMB_X18_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\);

-- Location: LCFF_X18_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(2));

-- Location: LCFF_X21_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3));

-- Location: LCCOMB_X21_Y22_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\);

-- Location: LCFF_X21_Y22_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~regout\);

-- Location: LCCOMB_X21_Y22_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]~0_combout\);

-- Location: LCFF_X21_Y22_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1));

-- Location: LCCOMB_X21_Y22_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg[0]~0_combout\);

-- Location: LCFF_X21_Y22_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg[0]~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0));

-- Location: LCCOMB_X21_Y23_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~0_combout\);

-- Location: LCFF_X21_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\);

-- Location: LCCOMB_X21_Y22_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\);

-- Location: LCCOMB_X23_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y23_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\);

-- Location: LCCOMB_X21_Y23_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\);

-- Location: LCFF_X21_Y22_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\);

-- Location: LCCOMB_X21_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\);

-- Location: LCFF_X21_Y23_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3));

-- Location: LCCOMB_X22_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\);

-- Location: LCCOMB_X21_Y23_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~1_combout\);

-- Location: LCFF_X21_Y23_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0));

-- Location: LCCOMB_X21_Y23_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y23_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\);

-- Location: LCFF_X21_Y23_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1));

-- Location: LCCOMB_X22_Y23_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\);

-- Location: LCCOMB_X21_Y23_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\);

-- Location: LCFF_X21_Y23_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2));

-- Location: LCCOMB_X22_Y23_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\);

-- Location: LCCOMB_X22_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\);

-- Location: LCFF_X22_Y23_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4));

-- Location: LCCOMB_X22_Y23_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\);

-- Location: LCCOMB_X22_Y23_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\);

-- Location: LCFF_X22_Y23_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6));

-- Location: LCCOMB_X22_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\);

-- Location: LCCOMB_X22_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\);

-- Location: LCFF_X22_Y23_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7));

-- Location: LCCOMB_X23_Y23_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~9\);

-- Location: LCCOMB_X23_Y23_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~9\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~11\);

-- Location: LCCOMB_X23_Y23_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~11\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~13\);

-- Location: LCCOMB_X23_Y23_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~17\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~19\);

-- Location: LCCOMB_X23_Y23_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~19\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~20_combout\);

-- Location: LCCOMB_X21_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\);

-- Location: LCFF_X23_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~20_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(7));

-- Location: LCFF_X23_Y23_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(6));

-- Location: LCCOMB_X23_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(7),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\);

-- Location: LCFF_X23_Y23_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(0));

-- Location: LCFF_X23_Y23_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(1));

-- Location: LCCOMB_X23_Y23_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\);

-- Location: LCFF_X23_Y23_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(3));

-- Location: LCFF_X23_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(2));

-- Location: LCCOMB_X23_Y23_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y23_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\);

-- Location: LCCOMB_X21_Y23_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\);

-- Location: LCCOMB_X19_Y23_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\);

-- Location: LCCOMB_X19_Y23_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\);

-- Location: LCFF_X19_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~regout\);

-- Location: LCCOMB_X19_Y23_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\);

-- Location: LCFF_X19_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~regout\);

-- Location: LCCOMB_X19_Y23_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~regout\,
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\);

-- Location: LCCOMB_X19_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~regout\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\);

-- Location: LCCOMB_X22_Y23_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\);

-- Location: LCFF_X19_Y23_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~regout\);

-- Location: LCCOMB_X19_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~regout\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\);

-- Location: LCCOMB_X22_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\);

-- Location: LCFF_X19_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~regout\);

-- Location: LCCOMB_X19_Y23_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~regout\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\);

-- Location: LCCOMB_X19_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\);

-- Location: LCFF_X19_Y23_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~regout\);

-- Location: LCCOMB_X19_Y23_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~regout\,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\);

-- Location: LCCOMB_X19_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\);

-- Location: LCCOMB_X19_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\);

-- Location: LCCOMB_X19_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\);

-- Location: LCFF_X19_Y23_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\);

-- Location: LCCOMB_X21_Y22_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\);

-- Location: LCFF_X21_Y22_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~regout\);

-- Location: LCCOMB_X24_Y24_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\);

-- Location: LCFF_X21_Y23_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\);

-- Location: LCCOMB_X18_Y22_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\);

-- Location: LCFF_X18_Y22_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\);

-- Location: LCCOMB_X21_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\);

-- Location: LCFF_X21_Y23_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\);

-- Location: LCFF_X20_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0));

-- Location: LCCOMB_X20_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\);

-- Location: LCFF_X24_Y24_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~regout\);

-- Location: LCCOMB_X23_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\);

-- Location: LCFF_X23_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(0));

-- Location: LCFF_X19_Y23_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~regout\);

-- Location: LCCOMB_X20_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]~feeder_combout\);

-- Location: LCFF_X20_Y23_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0));

-- Location: LCCOMB_X20_Y23_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\);

-- Location: LCFF_X24_Y24_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~regout\);

-- Location: LCCOMB_X23_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X23_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(1));

-- Location: LCCOMB_X23_Y24_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\);

-- Location: LCFF_X23_Y24_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(1));

-- Location: LCCOMB_X23_Y24_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\);

-- Location: LCFF_X23_Y24_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(0));

-- Location: LCCOMB_X20_Y23_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\);

-- Location: LCFF_X20_Y23_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~regout\);

-- Location: LCCOMB_X20_Y22_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\);

-- Location: LCCOMB_X20_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\);

-- Location: LCFF_X20_Y23_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(0));

-- Location: LCCOMB_X22_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\);

-- Location: LCFF_X22_Y21_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\);

-- Location: LCCOMB_X22_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\);

-- Location: LCFF_X22_Y21_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6));

-- Location: LCCOMB_X22_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\);

-- Location: LCFF_X22_Y21_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5));

-- Location: LCCOMB_X22_Y21_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\);

-- Location: LCFF_X22_Y21_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: LCFF_X22_Y21_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\);

-- Location: LCCOMB_X22_Y22_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X23_Y20_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~12_combout\);

-- Location: LCCOMB_X22_Y22_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~10_combout\);

-- Location: LCFF_X23_Y20_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~12_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3));

-- Location: LCCOMB_X23_Y20_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\);

-- Location: LCCOMB_X23_Y20_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~9_combout\);

-- Location: LCFF_X23_Y20_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~9_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1));

-- Location: LCCOMB_X23_Y20_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~11_combout\);

-- Location: LCFF_X23_Y20_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~11_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2));

-- Location: LCCOMB_X23_Y20_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~2_combout\);

-- Location: LCCOMB_X23_Y20_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~13_combout\);

-- Location: LCFF_X23_Y20_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~13_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0));

-- Location: LCCOMB_X23_Y20_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\);

-- Location: LCCOMB_X23_Y20_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X23_Y20_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~9_combout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X22_Y22_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\);

-- Location: LCFF_X23_Y20_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X23_Y20_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\);

-- Location: LCCOMB_X23_Y20_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\);

-- Location: LCFF_X23_Y20_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X23_Y20_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\);

-- Location: LCFF_X23_Y20_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X23_Y20_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~2_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~3_combout\);

-- Location: LCFF_X23_Y20_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X23_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~0_combout\);

-- Location: LCCOMB_X23_Y24_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~1_combout\);

-- Location: LCCOMB_X23_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4_combout\);

-- Location: LCCOMB_X21_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X22_Y20_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X22_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: LCFF_X22_Y20_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X22_Y20_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: LCFF_X22_Y20_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X22_Y20_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: LCFF_X22_Y20_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X22_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: LCFF_X22_Y20_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X21_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X21_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X23_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\);

-- Location: LCCOMB_X23_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\);

-- Location: LCCOMB_X23_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~16\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\);

-- Location: LCCOMB_X20_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\);

-- Location: LCFF_X23_Y19_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCCOMB_X23_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\);

-- Location: LCCOMB_X23_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\);

-- Location: LCFF_X23_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: LCCOMB_X23_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~13_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\);

-- Location: LCFF_X23_Y19_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCCOMB_X23_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\);

-- Location: LCFF_X23_Y19_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: LCFF_X23_Y19_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~15_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCCOMB_X23_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\);

-- Location: LCCOMB_X22_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~9_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\);

-- Location: LCCOMB_X22_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: LCFF_X22_Y19_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \altera_internal_jtag~TDIUTAP\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X22_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: LCFF_X22_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCFF_X22_Y19_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: LCFF_X22_Y19_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X22_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: LCFF_X22_Y19_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LCCOMB_X21_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~12_combout\);

-- Location: LCFF_X22_Y19_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LCCOMB_X23_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\);

-- Location: LCCOMB_X22_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~14_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~15_combout\);

-- Location: LCCOMB_X22_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~12_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~15_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X21_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~16_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~17_combout\);

-- Location: LCFF_X22_Y19_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: LCCOMB_X22_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~20_combout\);

-- Location: LCCOMB_X22_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~17_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~20_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X21_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\);

-- Location: LCCOMB_X23_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\);

-- Location: LCCOMB_X21_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X20_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X20_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: LCFF_X21_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\,
	sdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: LCFF_X21_Y19_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~feeder_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: LCFF_X21_Y19_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~feeder_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: LCFF_X21_Y19_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0));

-- Location: LCCOMB_X21_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: LCFF_X21_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\);

-- Location: LCCOMB_X21_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: LCCOMB_X48_Y20_N0
\auto_hub|~GND\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X21_Y20_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X22_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: LCFF_X15_Y23_N1
\auto_signaltap_0|acq_trigger_in_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(0));

-- Location: LCFF_X16_Y24_N5
\auto_signaltap_0|acq_trigger_in_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(1));

-- Location: LCFF_X16_Y24_N7
\auto_signaltap_0|acq_trigger_in_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(2));

-- Location: LCFF_X16_Y23_N5
\auto_signaltap_0|acq_trigger_in_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(3));

-- Location: LCFF_X16_Y24_N15
\auto_signaltap_0|acq_trigger_in_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(4));

-- Location: LCFF_X16_Y23_N7
\auto_signaltap_0|acq_trigger_in_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(5));

-- Location: LCFF_X16_Y23_N21
\auto_signaltap_0|acq_trigger_in_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_l[0]~I\ : cycloneii_io
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
	datain => \DISPLAY_l|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_l(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_l[1]~I\ : cycloneii_io
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
	datain => \DISPLAY_l|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_l(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_l[2]~I\ : cycloneii_io
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
	datain => \DISPLAY_l|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_l(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_l[3]~I\ : cycloneii_io
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
	datain => \DISPLAY_l|ALT_INV_Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_l(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_l[4]~I\ : cycloneii_io
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
	datain => \DISPLAY_l|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_l(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_l[5]~I\ : cycloneii_io
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
	datain => \DISPLAY_l|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_l(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_l[6]~I\ : cycloneii_io
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
	datain => \DISPLAY_l|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_l(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_m[0]~I\ : cycloneii_io
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
	datain => \DISPLAY_m|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_m(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_m[1]~I\ : cycloneii_io
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
	datain => \DISPLAY_m|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_m(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_m[2]~I\ : cycloneii_io
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
	datain => \DISPLAY_m|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_m(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_m[3]~I\ : cycloneii_io
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
	datain => \DISPLAY_m|ALT_INV_Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_m(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_m[4]~I\ : cycloneii_io
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
	datain => \DISPLAY_m|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_m(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_m[5]~I\ : cycloneii_io
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
	datain => \DISPLAY_m|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_m(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_m[6]~I\ : cycloneii_io
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
	datain => \DISPLAY_m|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_m(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_r[0]~I\ : cycloneii_io
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
	datain => \DISPLAY_r|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_r(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_r[1]~I\ : cycloneii_io
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
	datain => \DISPLAY_r|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_r(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_r[2]~I\ : cycloneii_io
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
	datain => \DISPLAY_r|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_r(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_r[3]~I\ : cycloneii_io
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
	datain => \DISPLAY_r|ALT_INV_Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_r(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_r[4]~I\ : cycloneii_io
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
	datain => \DISPLAY_r|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_r(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_r[5]~I\ : cycloneii_io
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
	datain => \DISPLAY_r|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_r(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_r[6]~I\ : cycloneii_io
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
	datain => \DISPLAY_r|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_r(6));

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altera_reserved_tdo~I\ : cycloneii_io
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
	datain => \altera_internal_jtag~TDO\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altera_reserved_tdo);
END structure;


