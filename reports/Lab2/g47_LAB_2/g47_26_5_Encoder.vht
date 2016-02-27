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
-- Generated on "02/15/2016 13:35:04"

-- Vhdl Test Bench template for design  :  g47_26_5_Encoder
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY g47_26_5_Encoder_vhd_tst IS
END g47_26_5_Encoder_vhd_tst;
ARCHITECTURE g47_26_5_Encoder_arch OF g47_26_5_Encoder_vhd_tst IS
-- constants
-- signals
SIGNAL ERROR : STD_LOGIC;
SIGNAL INDEX : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL letter : STD_LOGIC_VECTOR(25 DOWNTO 0);
COMPONENT g47_26_5_Encoder
	PORT (
	ERROR : OUT STD_LOGIC;
	INDEX : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	letter : IN STD_LOGIC_VECTOR(25 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g47_26_5_Encoder
	PORT MAP (
-- list connections between master ports and signals
	ERROR => ERROR,
	INDEX => INDEX,
	letter => letter
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

  letter <= "00000000000000000000000001";
  wait for 10 ns;
  letter <= "00000000000000000000000010";
  wait for 10 ns;
  letter <= "00000000000000000000000100";
  wait for 10 ns;
  letter <= "00000000000000000000001000";
  wait for 10 ns;
  letter <= "00000000000000000000010000";
  wait for 10 ns;
  letter <= "00000000000000000000100000";
  wait for 10 ns;
  letter <= "00000000000000000001000000";
  wait for 10 ns;
  letter <= "00000000000000000010000000";
  wait for 10 ns;
  letter <= "00000000000000000100000000";
  wait for 10 ns;
  letter <= "00000000000000001000000000";
  wait for 10 ns;
  letter <= "00000000000000010000000000";
  wait for 10 ns;
  letter <= "00000000000000100000000000";
  wait for 10 ns;
  letter <= "00000000000001000000000000";
  wait for 10 ns;
  letter <= "00000000000010000000000000";
  wait for 10 ns;
  letter <= "00000000000100000000000000";
  wait for 10 ns;
  letter <= "00000000001000000000000000";
  wait for 10 ns;
  letter <= "00000000010000000000000000";
  wait for 10 ns;
  letter <= "00000000100000000000000000";
  wait for 10 ns;
  letter <= "00000001000000000000000000";
  wait for 10 ns;
  letter <= "00000010000000000000000000";
  wait for 10 ns;
  letter <= "00000100000000000000000000";
  wait for 10 ns;
  letter <= "00001000000000000000000000";
  wait for 10 ns;
  letter <= "00010000000000000000000000";
  wait for 10 ns;
  letter <= "00100000000000000000000000";
  wait for 10 ns;
  letter <= "01000000000000000000000000";
  wait for 10 ns;
  letter <= "10000000000000000000000000";
  wait for 10 ns;
  -- Error
  letter <= "00000000000000000000000000";
  wait for 10 ns;
  -- Multiple
  letter <= "00000001000100000000000000";
  wait for 10 ns;
  letter <= "00000000000000000000000011";
  wait for 10 ns;
WAIT;
END PROCESS always;
END g47_26_5_Encoder_arch;
