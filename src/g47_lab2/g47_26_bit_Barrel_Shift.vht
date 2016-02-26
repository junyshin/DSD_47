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
-- Generated on "02/15/2016 19:57:49"

-- Vhdl Test Bench template for design  :  g47_26_bit_Barrel_Shift
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY g47_26_bit_Barrel_Shift_vhd_tst IS
END g47_26_bit_Barrel_Shift_vhd_tst;
ARCHITECTURE g47_26_bit_Barrel_Shift_arch OF g47_26_bit_Barrel_Shift_vhd_tst IS
-- constants
-- signals
SIGNAL N : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(25 DOWNTO 0);
COMPONENT g47_26_bit_Barrel_Shift
  PORT (
  N : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
  X : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
  Y : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
  );
END COMPONENT;
BEGIN
  i1 : g47_26_bit_Barrel_Shift
  PORT MAP (
-- list connections between master ports and signals
  N => N,
  X => X,
  Y => Y
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
  X <= "00000000001000000000000000";
  N <= "00000";
  wait for 10 ns;
  N <= "00010";
  wait for 10 ns;
  N <= "01000";
  wait for 10 ns;
  N <= "11001";
  wait for 10 ns;
  N <= "11100";
WAIT;
END PROCESS always;
END g47_26_bit_Barrel_Shift_arch;
