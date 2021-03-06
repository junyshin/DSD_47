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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to
-- suit user's needs .Comments are provided in each section to help the user
-- fill out necessary details.
-- ***************************************************************************
-- Generated on "02/15/2016 20:01:10"

-- Vhdl Test Bench template for design  :  g47_7_segment_Decoder
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY g47_7_segment_Decoder_vhd_tst IS
END g47_7_segment_Decoder_vhd_tst;
ARCHITECTURE g47_7_segment_Decoder_arch OF g47_7_segment_Decoder_vhd_tst IS
-- constants
-- signals
SIGNAL code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL segments : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g47_7_segment_Decoder
	PORT (
	code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	segments : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g47_7_segment_Decoder
	PORT MAP (
-- list connections between master ports and signals
	code => code,
	segments => segments
	);

always : PROCESS

BEGIN
	code  <= "00000";
	WAIT FOR 10 ns;
	FOR i IN 0 to 30 LOOP
	code <= code+'1';
	WAIT FOR 10 ns;
	END LOOP; -- end the i loop
WAIT;-- we have gone through all possible input patterns, so suspend simulator forever
END PROCESS always;
END g47_7_segment_Decoder_arch;
