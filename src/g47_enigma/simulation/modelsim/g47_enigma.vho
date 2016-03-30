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

-- DATE "03/30/2016 15:38:44"

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

ENTITY 	g47_stecker IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	input_code : IN std_logic_vector(4 DOWNTO 0);
	output_code : OUT std_logic_vector(4 DOWNTO 0)
	);
END g47_stecker;

-- Design Ports Information
-- output_code[0]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_code[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_code[2]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_code[3]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_code[4]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- input_code[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[1]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[3]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_code[0]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA


ARCHITECTURE structure OF g47_stecker IS
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
SIGNAL ww_input_code : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_output_code : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~19\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~20_combout\ : std_logic;
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
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\ : std_logic;
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
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~combout\ : std_logic;
SIGNAL \altera_reserved_tck~combout\ : std_logic;
SIGNAL \altera_reserved_tdi~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\ : std_logic;
SIGNAL \QIC_SIGNALTAP_GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[13]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~11\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~13\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~15\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~17\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|~GND~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit1a[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~regout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \input_code~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_signaltap_0|acq_trigger_in_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|acq_data_in_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\ : std_logic_vector(20 DOWNTO 0);
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
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_input_code <= input_code;
output_code <= ww_output_code;
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

\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \altera_internal_jtag~TCKUTAP\);

\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\);
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_outclk\;
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\ <= NOT \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~10_combout\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;

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

-- Location: LCFF_X25_Y18_N11
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

-- Location: LCFF_X26_Y18_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCFF_X26_Y18_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: LCFF_X26_Y18_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: LCFF_X26_Y18_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCFF_X26_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCCOMB_X25_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCFF_X25_Y18_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: LCCOMB_X26_Y18_N2
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

-- Location: LCCOMB_X26_Y18_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\);

-- Location: LCCOMB_X26_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\);

-- Location: LCCOMB_X26_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\);

-- Location: LCCOMB_X26_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\);

-- Location: LCCOMB_X25_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCFF_X25_Y18_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: LCCOMB_X25_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCFF_X25_Y18_N9
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

-- Location: LCCOMB_X25_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCFF_X20_Y18_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\);

-- Location: LCFF_X26_Y19_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\);

-- Location: LCCOMB_X24_Y19_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X25_Y19_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCFF_X24_Y18_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LCCOMB_X26_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12\ : cycloneii_lcell_comb
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
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\);

-- Location: LCCOMB_X26_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~12_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~13_combout\);

-- Location: LCCOMB_X25_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X25_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: LCFF_X24_Y17_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X20_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X22_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X26_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: LCFF_X22_Y18_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\);

-- Location: LCCOMB_X26_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\);

-- Location: LCCOMB_X25_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\);

-- Location: LCFF_X24_Y18_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X25_Y18_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: LCFF_X24_Y18_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LCCOMB_X24_Y17_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCFF_X24_Y17_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X24_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCFF_X24_Y18_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X22_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: LCFF_X24_Y18_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: LCCOMB_X24_Y17_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCFF_X24_Y17_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X24_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCFF_X24_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X26_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\);

-- Location: LCCOMB_X26_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\);

-- Location: LCCOMB_X27_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\);

-- Location: LCFF_X24_Y18_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X24_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X24_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X24_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~15_combout\);

-- Location: LCFF_X24_Y18_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \altera_internal_jtag~TDIUTAP\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X26_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\);

-- Location: LCCOMB_X21_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~4_combout\);

-- Location: LCCOMB_X26_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\);

-- Location: LCCOMB_X26_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~18_combout\);

-- Location: LCCOMB_X26_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\);

-- Location: LCCOMB_X26_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~19_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~20_combout\);

-- Location: LCCOMB_X26_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\);

-- Location: LCCOMB_X26_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~21_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~22_combout\);

-- Location: LCFF_X22_Y22_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(1));

-- Location: LCCOMB_X22_Y22_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X22_Y22_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X22_Y22_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCFF_X21_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(1));

-- Location: LCFF_X21_Y23_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(4));

-- Location: LCFF_X21_Y23_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(5));

-- Location: LCFF_X21_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~20_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(7));

-- Location: LCCOMB_X19_Y25_N8
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

-- Location: LCCOMB_X19_Y25_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~regout\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\);

-- Location: LCCOMB_X21_Y23_N16
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

-- Location: LCCOMB_X21_Y23_N22
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

-- Location: LCCOMB_X21_Y23_N24
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

-- Location: LCCOMB_X21_Y23_N26
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

-- Location: LCCOMB_X21_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~19\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~20_combout\);

-- Location: M4K_X17_Y22
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
	clk0 => \QIC_SIGNALTAP_GND~combout\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	ena0 => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	ena1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	portadatain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X18_Y22_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(2));

-- Location: LCFF_X18_Y22_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(1));

-- Location: LCFF_X18_Y22_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(0));

-- Location: LCFF_X16_Y22_N1
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

-- Location: LCFF_X16_Y22_N3
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

-- Location: LCFF_X16_Y22_N5
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

-- Location: LCFF_X16_Y22_N7
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

-- Location: LCFF_X16_Y22_N9
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

-- Location: LCFF_X16_Y22_N11
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

-- Location: LCFF_X16_Y22_N13
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

-- Location: LCCOMB_X18_Y22_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X18_Y22_N8
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

-- Location: LCCOMB_X18_Y22_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X18_Y22_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~0_combout\);

-- Location: LCCOMB_X16_Y22_N0
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

-- Location: LCCOMB_X16_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X16_Y22_N4
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

-- Location: LCCOMB_X16_Y22_N6
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

-- Location: LCCOMB_X16_Y22_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X16_Y22_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X16_Y22_N12
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

-- Location: LCFF_X21_Y19_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~regout\);

-- Location: LCFF_X18_Y23_N1
\auto_signaltap_0|acq_data_in_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_data_in_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(0));

-- Location: LCFF_X20_Y22_N1
\auto_signaltap_0|acq_data_in_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_data_in_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(1));

-- Location: LCFF_X19_Y22_N1
\auto_signaltap_0|acq_data_in_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_data_in_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(2));

-- Location: LCFF_X19_Y23_N9
\auto_signaltap_0|acq_data_in_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_data_in_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(3));

-- Location: LCFF_X19_Y23_N11
\auto_signaltap_0|acq_data_in_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_data_in_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(4));

-- Location: LCFF_X19_Y22_N11
\auto_signaltap_0|acq_data_in_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_data_in_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(5));

-- Location: LCFF_X18_Y23_N3
\auto_signaltap_0|acq_data_in_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_data_in_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_data_in_reg\(6));

-- Location: LCFF_X21_Y20_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_ff~regout\);

-- Location: LCCOMB_X21_Y19_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\);

-- Location: LCFF_X21_Y20_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(1));

-- Location: LCCOMB_X21_Y19_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~regout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~0_combout\);

-- Location: LCFF_X21_Y20_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~regout\);

-- Location: LCCOMB_X20_Y24_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\);

-- Location: LCCOMB_X21_Y20_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\);

-- Location: LCCOMB_X21_Y20_N26
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

-- Location: LCCOMB_X21_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y19_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\);

-- Location: LCFF_X21_Y20_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(2));

-- Location: LCCOMB_X21_Y20_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~1_combout\);

-- Location: LCCOMB_X21_Y20_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_out_mode_ff~0_combout\);

-- Location: LCFF_X19_Y25_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~regout\);

-- Location: LCFF_X19_Y25_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~regout\);

-- Location: LCFF_X19_Y25_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~regout\);

-- Location: LCCOMB_X20_Y25_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\);

-- Location: LCFF_X19_Y25_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~regout\);

-- Location: LCCOMB_X20_Y25_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\);

-- Location: LCFF_X21_Y20_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(3));

-- Location: LCCOMB_X21_Y20_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|state_status[2]~1_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~2_combout\);

-- Location: LCFF_X21_Y20_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~regout\);

-- Location: LCFF_X21_Y20_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(4));

-- Location: LCCOMB_X21_Y20_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\);

-- Location: LCCOMB_X21_Y20_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~3_combout\);

-- Location: LCCOMB_X21_Y20_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~0_combout\);

-- Location: LCFF_X20_Y21_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~regout\);

-- Location: LCFF_X21_Y25_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(3));

-- Location: LCFF_X21_Y20_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(5));

-- Location: LCCOMB_X21_Y20_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~4_combout\);

-- Location: LCFF_X20_Y21_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~regout\);

-- Location: LCFF_X18_Y21_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(6));

-- Location: LCFF_X21_Y20_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(6));

-- Location: LCCOMB_X21_Y20_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(6),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~5_combout\);

-- Location: LCFF_X20_Y21_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(6));

-- Location: LCFF_X18_Y21_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(7));

-- Location: LCCOMB_X18_Y21_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\);

-- Location: LCCOMB_X21_Y20_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~1_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~6_combout\);

-- Location: LCFF_X18_Y21_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~regout\);

-- Location: LCFF_X20_Y21_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~regout\);

-- Location: LCCOMB_X20_Y21_N6
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

-- Location: LCFF_X21_Y21_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(7));

-- Location: LCFF_X18_Y21_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(8));

-- Location: LCCOMB_X18_Y21_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(8),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\);

-- Location: LCFF_X20_Y22_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5));

-- Location: LCFF_X21_Y21_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~regout\);

-- Location: LCFF_X20_Y22_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~regout\);

-- Location: LCCOMB_X21_Y21_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\);

-- Location: LCFF_X19_Y21_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(8));

-- Location: LCFF_X18_Y21_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(9));

-- Location: LCCOMB_X18_Y21_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(9),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\);

-- Location: LCFF_X20_Y25_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~regout\);

-- Location: LCFF_X20_Y22_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6));

-- Location: LCFF_X19_Y21_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~regout\);

-- Location: LCFF_X20_Y21_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~regout\);

-- Location: LCCOMB_X19_Y21_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\);

-- Location: LCFF_X19_Y21_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(9));

-- Location: LCFF_X18_Y21_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(10));

-- Location: LCCOMB_X18_Y21_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(10),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(9),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\);

-- Location: LCFF_X20_Y25_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(10));

-- Location: LCFF_X20_Y25_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~regout\);

-- Location: LCFF_X19_Y25_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(0));

-- Location: LCFF_X19_Y21_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~regout\);

-- Location: LCFF_X20_Y21_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~regout\);

-- Location: LCCOMB_X19_Y21_N12
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

-- Location: LCFF_X19_Y21_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(10));

-- Location: LCFF_X18_Y21_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(11));

-- Location: LCCOMB_X18_Y21_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(10),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(11),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\);

-- Location: LCFF_X20_Y25_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(11));

-- Location: LCCOMB_X20_Y25_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(11),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\);

-- Location: LCFF_X19_Y25_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(1));

-- Location: LCFF_X19_Y21_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~regout\);

-- Location: LCFF_X20_Y21_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~regout\);

-- Location: LCCOMB_X19_Y21_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\);

-- Location: LCFF_X19_Y21_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(11));

-- Location: LCFF_X18_Y21_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(12));

-- Location: LCCOMB_X18_Y21_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(12),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(11),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\);

-- Location: LCFF_X20_Y25_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(12));

-- Location: LCCOMB_X20_Y25_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(12),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\);

-- Location: LCFF_X19_Y23_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2));

-- Location: LCFF_X19_Y21_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~regout\);

-- Location: LCFF_X20_Y21_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~regout\);

-- Location: LCCOMB_X19_Y21_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\);

-- Location: LCFF_X19_Y21_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(12));

-- Location: LCFF_X18_Y21_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(13));

-- Location: LCCOMB_X18_Y21_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(13),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(12),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\);

-- Location: LCFF_X20_Y25_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(13));

-- Location: LCCOMB_X20_Y25_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\);

-- Location: LCFF_X19_Y23_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(3));

-- Location: LCFF_X19_Y21_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~regout\);

-- Location: LCFF_X20_Y21_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~regout\);

-- Location: LCCOMB_X19_Y21_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\);

-- Location: LCFF_X19_Y21_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(13));

-- Location: LCFF_X18_Y21_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(14));

-- Location: LCCOMB_X18_Y21_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(14),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\);

-- Location: LCFF_X20_Y25_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(14));

-- Location: LCCOMB_X20_Y25_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(14),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\);

-- Location: LCFF_X19_Y23_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4));

-- Location: LCFF_X19_Y21_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~regout\);

-- Location: LCFF_X20_Y21_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~regout\);

-- Location: LCCOMB_X19_Y21_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\);

-- Location: LCFF_X21_Y21_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(14));

-- Location: LCCOMB_X18_Y21_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(14),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\);

-- Location: LCFF_X18_Y22_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(0));

-- Location: LCCOMB_X20_Y25_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\);

-- Location: LCFF_X19_Y25_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(5));

-- Location: LCFF_X21_Y21_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~regout\);

-- Location: LCFF_X20_Y21_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~regout\);

-- Location: LCCOMB_X21_Y21_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\);

-- Location: LCFF_X18_Y22_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(1));

-- Location: LCCOMB_X21_Y19_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\);

-- Location: LCCOMB_X18_Y22_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y22_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\);

-- Location: LCFF_X19_Y25_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(6));

-- Location: LCFF_X18_Y23_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~regout\);

-- Location: LCFF_X18_Y22_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(2));

-- Location: LCCOMB_X18_Y22_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\);

-- Location: LCCOMB_X18_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit1a[2]~0_combout\);

-- Location: LCFF_X18_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~regout\);

-- Location: LCCOMB_X21_Y22_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\);

-- Location: LCCOMB_X18_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|safe_q\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\);

-- Location: LCFF_X20_Y22_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~regout\);

-- Location: LCFF_X18_Y22_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(3));

-- Location: LCCOMB_X18_Y22_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\);

-- Location: LCFF_X18_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~regout\);

-- Location: LCFF_X20_Y22_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~regout\);

-- Location: LCFF_X19_Y22_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~regout\);

-- Location: LCFF_X18_Y22_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(4));

-- Location: LCCOMB_X18_Y22_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\);

-- Location: LCFF_X18_Y23_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~regout\);

-- Location: LCFF_X20_Y22_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~regout\);

-- Location: LCFF_X19_Y22_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~regout\);

-- Location: LCFF_X19_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~regout\);

-- Location: LCFF_X18_Y22_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(5));

-- Location: LCCOMB_X18_Y22_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\);

-- Location: LCFF_X20_Y22_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~regout\);

-- Location: LCFF_X19_Y22_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~regout\);

-- Location: LCFF_X19_Y23_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~regout\);

-- Location: LCFF_X19_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~regout\);

-- Location: LCFF_X18_Y22_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(6));

-- Location: LCCOMB_X18_Y22_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\);

-- Location: LCFF_X19_Y22_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~regout\);

-- Location: LCFF_X19_Y23_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~regout\);

-- Location: LCFF_X19_Y23_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~regout\);

-- Location: LCFF_X19_Y22_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~regout\);

-- Location: LCCOMB_X18_Y22_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal1~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\);

-- Location: LCFF_X19_Y23_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|acq_data_in_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~regout\);

-- Location: LCFF_X19_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~regout\);

-- Location: LCFF_X19_Y22_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~regout\);

-- Location: LCFF_X18_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~regout\);

-- Location: LCFF_X19_Y23_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~regout\);

-- Location: LCFF_X19_Y22_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~regout\);

-- Location: LCFF_X18_Y23_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~regout\);

-- Location: LCFF_X19_Y22_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~regout\);

-- Location: LCFF_X18_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~regout\);

-- Location: LCFF_X18_Y23_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~regout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X20_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|acq_data_in_reg\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\);

-- Location: LCCOMB_X19_Y25_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y25_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y25_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\);

-- Location: LCCOMB_X20_Y25_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~feeder_combout\);

-- Location: LCCOMB_X20_Y21_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\);

-- Location: LCCOMB_X20_Y21_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\);

-- Location: LCCOMB_X18_Y21_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~feeder_combout\);

-- Location: LCCOMB_X19_Y21_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\);

-- Location: LCCOMB_X20_Y21_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\);

-- Location: LCCOMB_X19_Y21_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\);

-- Location: LCCOMB_X20_Y21_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N0
\auto_signaltap_0|acq_data_in_reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[2]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_data_in_reg[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N10
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

-- Location: LCCOMB_X19_Y22_N4
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

-- Location: LCCOMB_X19_Y22_N14
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

-- Location: LCCOMB_X18_Y23_N0
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

-- Location: LCCOMB_X18_Y23_N2
\auto_signaltap_0|acq_data_in_reg[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[6]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_data_in_reg[6]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N4
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

-- Location: LCCOMB_X18_Y23_N14
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

-- Location: LCCOMB_X19_Y23_N8
\auto_signaltap_0|acq_data_in_reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|acq_data_in_reg[3]~feeder_combout\ = \QIC_SIGNALTAP_GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QIC_SIGNALTAP_GND~combout\,
	combout => \auto_signaltap_0|acq_data_in_reg[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N10
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

-- Location: LCCOMB_X19_Y23_N4
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

-- Location: LCCOMB_X20_Y22_N0
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

-- Location: LCCOMB_X20_Y22_N4
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

-- Location: LCCOMB_X20_Y22_N10
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

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y7_N16
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\input_code~combout\(3) & (\input_code~combout\(4) & ((\input_code~combout\(2)) # (\input_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(3),
	datab => \input_code~combout\(2),
	datac => \input_code~combout\(4),
	datad => \input_code~combout\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y7_N18
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # (!\input_code~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(0),
	datac => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y7_N12
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\input_code~combout\(1)) # ((\input_code~combout\(3) & (\input_code~combout\(2) & \input_code~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(3),
	datab => \input_code~combout\(2),
	datac => \input_code~combout\(4),
	datad => \input_code~combout\(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y7_N22
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\input_code~combout\(2) & (((\input_code~combout\(3) & \input_code~combout\(4))) # (!\input_code~combout\(1)))) # (!\input_code~combout\(2) & (((\input_code~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(3),
	datab => \input_code~combout\(2),
	datac => \input_code~combout\(4),
	datad => \input_code~combout\(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y7_N0
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = \input_code~combout\(3) $ (((\input_code~combout\(2)) # (\input_code~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(3),
	datab => \input_code~combout\(2),
	datad => \input_code~combout\(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y7_N2
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = \input_code~combout\(4) $ (((\input_code~combout\(3) & ((\input_code~combout\(2)) # (\input_code~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_code~combout\(3),
	datab => \input_code~combout\(2),
	datac => \input_code~combout\(4),
	datad => \input_code~combout\(1),
	combout => \Mux0~0_combout\);

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

-- Location: LCCOMB_X23_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: LCFF_X23_Y18_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X22_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: LCFF_X22_Y18_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X23_Y18_N18
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

-- Location: LCFF_X23_Y18_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LCCOMB_X22_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: LCFF_X22_Y18_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LCCOMB_X22_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: LCFF_X22_Y18_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LCCOMB_X24_Y19_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: LCFF_X24_Y19_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LCCOMB_X24_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: LCFF_X24_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LCCOMB_X24_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: LCFF_X24_Y19_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: LCCOMB_X24_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: LCFF_X24_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LCCOMB_X24_Y19_N12
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

-- Location: LCFF_X24_Y19_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LCCOMB_X24_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: LCFF_X24_Y19_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LCCOMB_X24_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCFF_X24_Y19_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LCCOMB_X24_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: LCFF_X24_Y19_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LCCOMB_X22_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: LCFF_X22_Y18_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LCCOMB_X22_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\);

-- Location: LCCOMB_X18_Y20_N24
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

-- Location: LCCOMB_X20_Y19_N28
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

-- Location: LCFF_X20_Y19_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X20_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\);

-- Location: LCFF_X20_Y19_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X20_Y19_N8
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

-- Location: LCFF_X20_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X24_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: LCFF_X24_Y19_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: LCCOMB_X24_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: LCFF_X24_Y19_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

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

-- Location: LCFF_X25_Y19_N29
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

-- Location: LCCOMB_X25_Y19_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: LCFF_X25_Y19_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: LCCOMB_X25_Y19_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\);

-- Location: LCFF_X25_Y19_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: LCCOMB_X25_Y19_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCFF_X25_Y19_N27
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

-- Location: LCCOMB_X25_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\);

-- Location: LCFF_X25_Y19_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: LCCOMB_X25_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: LCFF_X25_Y19_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: LCFF_X25_Y19_N13
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

-- Location: LCCOMB_X25_Y19_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: LCFF_X25_Y19_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LCCOMB_X25_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: LCFF_X25_Y19_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X25_Y19_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: LCFF_X25_Y19_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: LCCOMB_X26_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: LCFF_X26_Y19_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\);

-- Location: LCCOMB_X22_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
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

-- Location: LCFF_X22_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LCCOMB_X25_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\);

-- Location: LCCOMB_X26_Y19_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~6_combout\);

-- Location: LCFF_X26_Y19_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~6_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LCCOMB_X24_Y19_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: LCFF_X24_Y19_N25
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

-- Location: LCFF_X22_Y18_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\,
	sdata => \QIC_SIGNALTAP_GND~combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8));

-- Location: LCCOMB_X22_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X22_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\);

-- Location: LCFF_X22_Y18_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LCCOMB_X21_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\);

-- Location: LCCOMB_X25_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y18_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~3_combout\);

-- Location: LCFF_X22_Y18_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: LCCOMB_X20_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\);

-- Location: LCCOMB_X20_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\);

-- Location: LCFF_X21_Y18_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCCOMB_X21_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: LCFF_X21_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCCOMB_X21_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: LCFF_X21_Y18_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\);

-- Location: LCCOMB_X21_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\);

-- Location: LCFF_X21_Y18_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCCOMB_X20_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\);

-- Location: LCFF_X20_Y18_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\);

-- Location: LCCOMB_X20_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\);

-- Location: LCFF_X20_Y18_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~13_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7));

-- Location: LCCOMB_X20_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\);

-- Location: LCFF_X20_Y18_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~12_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6));

-- Location: LCCOMB_X20_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\);

-- Location: LCFF_X20_Y18_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\);

-- Location: LCCOMB_X21_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\);

-- Location: LCFF_X21_Y18_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\);

-- Location: LCCOMB_X20_Y18_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2_combout\);

-- Location: LCCOMB_X24_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X24_Y19_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: LCFF_X24_Y19_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\);

-- Location: LCCOMB_X21_Y19_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\);

-- Location: LCCOMB_X21_Y19_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\);

-- Location: LCFF_X21_Y20_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\);

-- Location: LCCOMB_X21_Y20_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]~1_combout\);

-- Location: LCCOMB_X21_Y22_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~0_combout\);

-- Location: LCFF_X21_Y22_N1
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

-- Location: LCFF_X21_Y20_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[0]~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(0));

-- Location: LCCOMB_X21_Y20_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|run~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]~0_combout\);

-- Location: LCFF_X21_Y20_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg[1]~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|state_reg\(1));

-- Location: LCCOMB_X21_Y20_N8
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

-- Location: LCFF_X21_Y20_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg[0]~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0));

-- Location: LCCOMB_X21_Y24_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\);

-- Location: LCFF_X21_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(0));

-- Location: LCCOMB_X21_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\);

-- Location: LCFF_X21_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(1));

-- Location: LCCOMB_X21_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\);

-- Location: LCFF_X21_Y24_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(2));

-- Location: LCFF_X20_Y24_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3));

-- Location: LCCOMB_X20_Y24_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~0_combout\);

-- Location: LCFF_X20_Y24_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\);

-- Location: LCCOMB_X19_Y25_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\);

-- Location: LCCOMB_X20_Y23_N0
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

-- Location: LCCOMB_X20_Y23_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~1_combout\);

-- Location: LCCOMB_X20_Y24_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\);

-- Location: LCFF_X20_Y23_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0));

-- Location: LCCOMB_X20_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\);

-- Location: LCFF_X20_Y18_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\);

-- Location: LCCOMB_X21_Y19_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\);

-- Location: LCFF_X22_Y20_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \altera_internal_jtag~TDIUTAP\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(20));

-- Location: LCFF_X22_Y20_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(20),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(19));

-- Location: LCCOMB_X22_Y20_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(19),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\);

-- Location: LCFF_X22_Y20_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(18));

-- Location: LCCOMB_X22_Y20_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(18),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]~feeder_combout\);

-- Location: LCFF_X22_Y20_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(17));

-- Location: LCCOMB_X22_Y20_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(17),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]~feeder_combout\);

-- Location: LCFF_X22_Y20_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(16));

-- Location: LCFF_X22_Y20_N23
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

-- Location: LCCOMB_X22_Y20_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(15),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\);

-- Location: LCFF_X22_Y20_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(14));

-- Location: LCCOMB_X22_Y20_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[13]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(14),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[13]~feeder_combout\);

-- Location: LCFF_X22_Y20_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[13]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(13));

-- Location: LCCOMB_X22_Y20_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]~feeder_combout\);

-- Location: LCFF_X22_Y20_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(12));

-- Location: LCCOMB_X22_Y21_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]~feeder_combout\);

-- Location: LCFF_X22_Y21_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(11));

-- Location: LCFF_X22_Y21_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(11),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(10));

-- Location: LCFF_X22_Y21_N27
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

-- Location: LCCOMB_X22_Y21_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\);

-- Location: LCFF_X22_Y21_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(8));

-- Location: LCFF_X22_Y21_N31
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

-- Location: LCCOMB_X22_Y21_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]~feeder_combout\);

-- Location: LCFF_X22_Y21_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(6));

-- Location: LCFF_X22_Y21_N11
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

-- Location: LCCOMB_X22_Y21_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]~feeder_combout\);

-- Location: LCFF_X22_Y21_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(4));

-- Location: LCFF_X22_Y21_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(4),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(3));

-- Location: LCCOMB_X22_Y21_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]~feeder_combout\);

-- Location: LCFF_X22_Y21_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(2));

-- Location: LCCOMB_X22_Y21_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y21_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[1]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(1));

-- Location: LCCOMB_X22_Y21_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]~feeder_combout\);

-- Location: LCFF_X22_Y21_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(0));

-- Location: LCCOMB_X22_Y21_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[3]~feeder_combout\);

-- Location: LCFF_X22_Y21_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[3]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(3));

-- Location: LCCOMB_X22_Y21_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\);

-- Location: LCFF_X22_Y21_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(2));

-- Location: LCCOMB_X22_Y21_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y21_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(1));

-- Location: LCCOMB_X22_Y21_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\);

-- Location: LCFF_X22_Y21_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0));

-- Location: LCCOMB_X21_Y23_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\);

-- Location: LCFF_X21_Y23_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6));

-- Location: LCCOMB_X21_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]~feeder_combout\);

-- Location: LCFF_X21_Y23_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5));

-- Location: LCFF_X21_Y23_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4));

-- Location: LCCOMB_X21_Y23_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]~feeder_combout\);

-- Location: LCFF_X21_Y23_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3));

-- Location: LCCOMB_X21_Y23_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]~feeder_combout\);

-- Location: LCFF_X21_Y23_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2));

-- Location: LCFF_X21_Y19_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1));

-- Location: LCFF_X21_Y19_N5
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

-- Location: LCCOMB_X20_Y24_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\);

-- Location: LCFF_X21_Y23_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(0));

-- Location: LCCOMB_X20_Y23_N2
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

-- Location: LCCOMB_X20_Y23_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\);

-- Location: LCFF_X20_Y23_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1));

-- Location: LCCOMB_X21_Y23_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y23_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\);

-- Location: LCCOMB_X20_Y23_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\);

-- Location: LCFF_X20_Y23_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2));

-- Location: LCCOMB_X21_Y23_N18
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

-- Location: LCCOMB_X21_Y23_N20
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

-- Location: LCFF_X21_Y23_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(3));

-- Location: LCFF_X21_Y23_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(2));

-- Location: LCCOMB_X21_Y23_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y23_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\);

-- Location: LCCOMB_X20_Y23_N30
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

-- Location: LCFF_X20_Y23_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3));

-- Location: LCCOMB_X20_Y23_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\);

-- Location: LCCOMB_X20_Y23_N10
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

-- Location: LCCOMB_X20_Y23_N12
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

-- Location: LCCOMB_X20_Y23_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\);

-- Location: LCFF_X20_Y23_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6));

-- Location: LCCOMB_X20_Y23_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\);

-- Location: LCCOMB_X20_Y23_N20
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

-- Location: LCFF_X20_Y23_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7));

-- Location: LCFF_X21_Y23_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(6));

-- Location: LCCOMB_X19_Y23_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\);

-- Location: LCCOMB_X21_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\);

-- Location: LCCOMB_X20_Y24_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\);

-- Location: LCFF_X20_Y24_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\);

-- Location: LCCOMB_X20_Y24_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\);

-- Location: LCFF_X20_Y24_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~regout\);

-- Location: LCCOMB_X21_Y20_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_load_on~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\);

-- Location: LCCOMB_X21_Y20_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][6]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\);

-- Location: LCFF_X21_Y20_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|_~0_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(0));

-- Location: LCCOMB_X21_Y19_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|bypass_reg_out~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_shift_enable~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|status_register|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~2_combout\);

-- Location: LCCOMB_X20_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\);

-- Location: LCFF_X20_Y18_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~11_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5));

-- Location: LCCOMB_X20_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\);

-- Location: LCFF_X20_Y18_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~10_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: LCCOMB_X20_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\);

-- Location: LCFF_X20_Y18_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\);

-- Location: LCCOMB_X21_Y19_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][5]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~3_combout\);

-- Location: LCCOMB_X20_Y23_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\);

-- Location: LCFF_X20_Y23_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5));

-- Location: LCCOMB_X20_Y23_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y24_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y24_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|process_0~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\);

-- Location: LCFF_X20_Y24_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4));

-- Location: LCCOMB_X19_Y23_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y24_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|ela_control|generated:ela_trigger_flow_mgr_entity|auto_generated|mgl_prim1|final_trigger_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\);

-- Location: LCCOMB_X19_Y25_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\);

-- Location: LCCOMB_X20_Y24_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|condition_delay_reg\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|run~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\);

-- Location: LCFF_X21_Y25_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(2));

-- Location: LCCOMB_X21_Y19_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\);

-- Location: LCCOMB_X19_Y25_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\);

-- Location: LCCOMB_X20_Y25_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~feeder_combout\);

-- Location: LCFF_X20_Y25_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~regout\);

-- Location: LCCOMB_X20_Y25_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(10),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\);

-- Location: LCFF_X20_Y25_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(9));

-- Location: LCCOMB_X19_Y25_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~regout\,
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\);

-- Location: LCCOMB_X20_Y25_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\);

-- Location: LCFF_X20_Y25_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~regout\);

-- Location: LCCOMB_X21_Y25_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(9),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\);

-- Location: LCFF_X21_Y25_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(8));

-- Location: LCFF_X19_Y25_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~regout\);

-- Location: LCFF_X19_Y25_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~regout\);

-- Location: LCCOMB_X19_Y25_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~regout\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\);

-- Location: LCCOMB_X19_Y25_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~regout\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\);

-- Location: LCCOMB_X20_Y25_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\);

-- Location: LCFF_X19_Y25_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~regout\);

-- Location: LCCOMB_X19_Y25_N16
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

-- Location: LCCOMB_X19_Y25_N18
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

-- Location: LCCOMB_X21_Y25_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\);

-- Location: LCFF_X21_Y25_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(6));

-- Location: LCCOMB_X21_Y25_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\);

-- Location: LCFF_X21_Y25_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(7));

-- Location: LCCOMB_X20_Y25_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\);

-- Location: LCFF_X21_Y25_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(5));

-- Location: LCCOMB_X21_Y25_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\);

-- Location: LCFF_X21_Y25_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(6));

-- Location: LCCOMB_X21_Y25_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\);

-- Location: LCFF_X21_Y25_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(4));

-- Location: LCCOMB_X21_Y25_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\);

-- Location: LCFF_X21_Y25_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(5));

-- Location: LCCOMB_X21_Y25_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\);

-- Location: LCFF_X21_Y25_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(4));

-- Location: LCCOMB_X21_Y25_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\);

-- Location: LCFF_X21_Y25_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(3));

-- Location: LCCOMB_X21_Y25_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]~feeder_combout\);

-- Location: LCFF_X21_Y25_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]~feeder_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(1));

-- Location: LCCOMB_X21_Y25_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\);

-- Location: LCFF_X21_Y25_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(2));

-- Location: LCFF_X21_Y25_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(0));

-- Location: LCCOMB_X21_Y25_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\);

-- Location: LCFF_X21_Y25_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(1));

-- Location: LCCOMB_X20_Y24_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\);

-- Location: LCCOMB_X20_Y24_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\);

-- Location: LCFF_X20_Y24_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~regout\);

-- Location: LCCOMB_X21_Y25_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\);

-- Location: LCFF_X21_Y25_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(0));

-- Location: LCCOMB_X22_Y19_N8
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

-- Location: LCCOMB_X22_Y19_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~12_combout\);

-- Location: LCCOMB_X21_Y19_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~10_combout\);

-- Location: LCFF_X22_Y19_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~12_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(3));

-- Location: LCCOMB_X22_Y19_N28
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

-- Location: LCCOMB_X22_Y19_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~13_combout\);

-- Location: LCFF_X22_Y19_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~13_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0));

-- Location: LCCOMB_X22_Y19_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~9_combout\);

-- Location: LCFF_X22_Y19_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~9_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(1));

-- Location: LCCOMB_X22_Y19_N30
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

-- Location: LCCOMB_X22_Y19_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|Add0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~11_combout\);

-- Location: LCFF_X22_Y19_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter~11_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|word_counter\(2));

-- Location: LCCOMB_X22_Y19_N0
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

-- Location: LCCOMB_X22_Y19_N26
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

-- Location: LCCOMB_X22_Y19_N14
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

-- Location: LCCOMB_X22_Y19_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~9_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X21_Y19_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\);

-- Location: LCFF_X22_Y19_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~10_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X22_Y19_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\);

-- Location: LCFF_X22_Y19_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X22_Y19_N18
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\);

-- Location: LCFF_X22_Y19_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X22_Y19_N4
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

-- Location: LCCOMB_X22_Y19_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~2_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~3_combout\);

-- Location: LCFF_X22_Y19_N25
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X21_Y19_N28
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

-- Location: LCFF_X20_Y25_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~regout\);

-- Location: LCCOMB_X20_Y22_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\);

-- Location: LCFF_X20_Y22_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4));

-- Location: LCCOMB_X20_Y21_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\);

-- Location: LCFF_X20_Y24_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\);

-- Location: LCFF_X20_Y24_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0));

-- Location: LCFF_X21_Y18_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\);

-- Location: LCCOMB_X19_Y25_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\);

-- Location: LCFF_X19_Y25_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~regout\);

-- Location: LCCOMB_X20_Y24_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\);

-- Location: LCFF_X20_Y21_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~regout\);

-- Location: LCCOMB_X21_Y21_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N6
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\);

-- Location: LCFF_X20_Y24_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\);

-- Location: LCCOMB_X20_Y24_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|current_segment_delayed\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|buffer_write_enable_delayed~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\);

-- Location: LCFF_X21_Y21_N7
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~regout\);

-- Location: LCCOMB_X21_Y21_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\);

-- Location: LCFF_X21_Y21_N13
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(5));

-- Location: LCCOMB_X22_Y22_N4
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

-- Location: LCCOMB_X16_Y22_N22
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

-- Location: LCCOMB_X21_Y19_N12
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\);

-- Location: LCCOMB_X22_Y22_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\);

-- Location: LCFF_X22_Y22_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(0));

-- Location: LCCOMB_X22_Y22_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X22_Y22_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(2));

-- Location: LCFF_X22_Y22_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	sdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit1a[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(3));

-- Location: LCCOMB_X22_Y22_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\);

-- Location: LCCOMB_X18_Y21_N26
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\);

-- Location: LCFF_X18_Y21_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(5));

-- Location: LCCOMB_X20_Y25_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\);

-- Location: LCFF_X20_Y25_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~regout\);

-- Location: LCCOMB_X20_Y22_N20
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\);

-- Location: LCFF_X20_Y22_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3));

-- Location: LCFF_X21_Y21_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(3),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~regout\);

-- Location: LCCOMB_X21_Y22_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X21_Y22_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\);

-- Location: LCCOMB_X21_Y22_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit1a[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|safe_q\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit1a[0]~0_combout\);

-- Location: LCCOMB_X22_Y22_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|safe_q\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\);

-- Location: LCFF_X21_Y22_N23
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

-- Location: LCFF_X20_Y21_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|safe_q\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0));

-- Location: LCCOMB_X21_Y21_N8
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\);

-- Location: LCFF_X21_Y21_N9
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(4));

-- Location: LCCOMB_X18_Y21_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\);

-- Location: LCFF_X18_Y21_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(4));

-- Location: LCFF_X20_Y25_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~regout\);

-- Location: LCFF_X20_Y22_N19
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2));

-- Location: LCCOMB_X21_Y21_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\);

-- Location: LCFF_X21_Y21_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~regout\);

-- Location: LCCOMB_X21_Y21_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\);

-- Location: LCFF_X21_Y21_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(3));

-- Location: LCCOMB_X18_Y21_N30
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\);

-- Location: LCFF_X18_Y21_N31
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(3));

-- Location: LCCOMB_X21_Y24_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\);

-- Location: LCFF_X21_Y24_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1));

-- Location: LCCOMB_X20_Y21_N14
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\);

-- Location: LCFF_X20_Y21_N15
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~regout\);

-- Location: LCCOMB_X21_Y21_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\);

-- Location: LCFF_X21_Y21_N11
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~regout\);

-- Location: LCCOMB_X21_Y21_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X21_Y21_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(2));

-- Location: LCCOMB_X18_Y21_N28
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\);

-- Location: LCFF_X18_Y21_N29
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(2));

-- Location: LCCOMB_X20_Y22_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]~feeder_combout\);

-- Location: LCFF_X20_Y22_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0));

-- Location: LCFF_X20_Y21_N21
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~regout\);

-- Location: LCFF_X21_Y21_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|last_trigger_address_delayed\(0),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~regout\);

-- Location: LCCOMB_X21_Y21_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X21_Y21_N5
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(1));

-- Location: LCCOMB_X18_Y21_N2
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\);

-- Location: LCFF_X18_Y21_N3
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(1));

-- Location: LCCOMB_X20_Y25_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|counter[6]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\);

-- Location: LCCOMB_X19_Y25_N0
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~regout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\);

-- Location: LCFF_X19_Y25_N1
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\);

-- Location: LCCOMB_X20_Y22_N22
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\);

-- Location: LCFF_X20_Y22_N23
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~regout\);

-- Location: LCCOMB_X20_Y21_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\);

-- Location: LCFF_X20_Y21_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~regout\);

-- Location: LCFF_X21_Y21_N27
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	sdata => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_wrapped_delayed~regout\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~regout\);

-- Location: LCCOMB_X21_Y21_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~regout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\);

-- Location: LCFF_X21_Y21_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(0));

-- Location: LCCOMB_X18_Y21_N16
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\);

-- Location: LCFF_X18_Y21_N17
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\,
	aclr => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(0));

-- Location: LCCOMB_X21_Y19_N10
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][7]~regout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~1_combout\);

-- Location: LCCOMB_X21_Y19_N4
\auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~3_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4_combout\);

-- Location: LCCOMB_X22_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: LCFF_X22_Y18_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\);

-- Location: LCCOMB_X25_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X25_Y18_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_signaltap_body|tdo~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X25_Y19_N4
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

-- Location: LCCOMB_X25_Y19_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: LCFF_X25_Y19_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X25_Y19_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: LCFF_X25_Y19_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X25_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: LCFF_X25_Y19_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X25_Y19_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: LCFF_X25_Y19_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X25_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X25_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X24_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X24_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\);

-- Location: LCFF_X25_Y17_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X25_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\);

-- Location: LCFF_X25_Y17_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X25_Y17_N22
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

-- Location: LCFF_X25_Y17_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X25_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\);

-- Location: LCFF_X25_Y17_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X24_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X24_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\);

-- Location: LCFF_X25_Y17_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~13_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X24_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X24_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X24_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X24_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X24_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\);

-- Location: LCFF_X24_Y17_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X25_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X25_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X25_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: LCFF_X25_Y18_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\);

-- Location: LCCOMB_X21_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: LCCOMB_X24_Y5_N0
\auto_hub|~GND\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X23_Y19_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X24_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: LCFF_X19_Y22_N5
\auto_signaltap_0|acq_trigger_in_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(0));

-- Location: LCFF_X19_Y22_N15
\auto_signaltap_0|acq_trigger_in_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(1));

-- Location: LCFF_X18_Y23_N5
\auto_signaltap_0|acq_trigger_in_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(2));

-- Location: LCFF_X19_Y23_N5
\auto_signaltap_0|acq_trigger_in_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(3));

-- Location: LCFF_X18_Y23_N15
\auto_signaltap_0|acq_trigger_in_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(4));

-- Location: LCFF_X20_Y22_N5
\auto_signaltap_0|acq_trigger_in_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(5));

-- Location: LCFF_X20_Y22_N11
\auto_signaltap_0|acq_trigger_in_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \QIC_SIGNALTAP_GND~combout\,
	datain => \auto_signaltap_0|acq_trigger_in_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_signaltap_0|acq_trigger_in_reg\(6));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_code[0]~I\ : cycloneii_io
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
	datain => \Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_code(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_code[1]~I\ : cycloneii_io
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
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_code(1));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_code[2]~I\ : cycloneii_io
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
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_code(2));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_code[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_code(3));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_code[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_code(4));

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


