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
-- Generated on "03/11/2016 13:59:09"

-- Vhdl Test Bench template for design  :  g47_testbed
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY g47_pulse_generator_tst IS
END g47_pulse_generator_tst;
ARCHITECTURE g47_pulse_generator_arch OF g47_pulse_generator_tst IS
-- constants
-- signals

COMPONENT g47_pulse_generator
  port (
    clock : in STD_LOGIC;
    epulse : out STD_LOGIC
  );
END COMPONENT;
SIGNAL clock : STD_LOGIC;
SIGNAL epulse : STD_LOGIC;
BEGIN
  i1 : g47_pulse_generator
  PORT MAP (
-- list connections between master ports and signals
    clock => clock,
    epulse => epulse
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
  -- init
  clock <= '0';
  wait for 20 ns;
  -- test sequence
  for i in 0 to 5000 loop
    clock <= '1';
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
  end loop ;
WAIT;
END PROCESS always;
END g47_pulse_generator_arch;
