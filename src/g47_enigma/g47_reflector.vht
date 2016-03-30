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
-- Generated on "03/30/2016 15:22:49"

-- Vhdl Test Bench template for design  :  g47_reflector
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY g47_reflector_vhd_tst IS
END g47_reflector_vhd_tst;
ARCHITECTURE g47_reflector_arch OF g47_reflector_vhd_tst IS
-- constants
-- signals
SIGNAL input_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL output_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reflector_type : STD_LOGIC;
COMPONENT g47_reflector
	PORT (
	input_code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	output_code : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	reflector_type : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g47_reflector
	PORT MAP (
-- list connections between master ports and signals
	input_code => input_code,
	output_code => output_code,
	reflector_type => reflector_type
	);
init : PROCESS
-- variable declarations
BEGIN
        -- code that executes only once
WAIT;
END PROCESS init;
always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
BEGIN
  input_code <= "00000";
  reflector_type <= '0';
  WAIT FOR 10 ns;
  FOR i IN 0 to 30 LOOP
    input_code <= input_code+'1';
    WAIT FOR 10 ns;
  END LOOP;

  input_code <= "00000";
  reflector_type <= '1';
  WAIT FOR 10 ns;
  FOR i IN 0 to 30 LOOP
    input_code <= input_code+'1';
    WAIT FOR 10 ns;
  END LOOP;
WAIT;
END PROCESS always;
END g47_reflector_arch;
