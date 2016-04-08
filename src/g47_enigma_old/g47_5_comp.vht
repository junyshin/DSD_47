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
-- Generated on "03/28/2016 12:33:37"

-- Vhdl Test Bench template for design  :  g47_5_comp
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY g47_5_comp_vhd_tst IS
END g47_5_comp_vhd_tst;
ARCHITECTURE g47_5_comp_arch OF g47_5_comp_vhd_tst IS
-- constants
-- signals
SIGNAL A : std_logic_vector(4 DOWNTO 0);
SIGNAL B : std_logic_vector(4 DOWNTO 0);
SIGNAL Eq : STD_LOGIC;
COMPONENT g47_5_comp
	PORT (
	A : IN std_logic_vector(4 DOWNTO 0);
	B : IN std_logic_vector(4 DOWNTO 0);
	Eq : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g47_5_comp
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Eq => Eq
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
  A <= "00000";
  B <= "00000";
  wait for 10 ns;
  B <= "11111";
  wait for 10 ns;
  A <= "11111";
  wait for 10 ns;
  B <= "11110";
  wait for 10 ns;
  A <= "11110";
  wait for 10 ns;
WAIT;
END PROCESS always;
END g47_5_comp_arch;
