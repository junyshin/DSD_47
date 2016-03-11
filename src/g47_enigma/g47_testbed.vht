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

ENTITY g47_testbed_vhd_tst IS
END g47_testbed_vhd_tst;
ARCHITECTURE g47_testbed_arch OF g47_testbed_vhd_tst IS
-- constants
-- signals
SIGNAL clock : STD_LOGIC;
SIGNAL counter_reset : STD_LOGIC;
SIGNAL error_decode : STD_LOGIC;
SIGNAL error_encode : STD_LOGIC;
SIGNAL letter_input : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL segments : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g47_testbed
	PORT (
  	clock : IN STD_LOGIC;
  	counter_reset : IN STD_LOGIC;
  	error_decode : OUT STD_LOGIC;
  	error_encode : OUT STD_LOGIC;
  	letter_input : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
  	segments : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g47_testbed
	PORT MAP (
-- list connections between master ports and signals
  	clock => clock,
  	counter_reset => counter_reset,
  	error_decode => error_decode,
  	error_encode => error_encode,
  	letter_input => letter_input,
  	segments => segments
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
  counter_reset <= '0';
  letter_input <= "00000";
  wait for 10 ns;
  clock <= '1';
  counter_reset <= '1';
  wait for 10 ns;
  clock <= '0';
  wait for 10 ns;
  -- test sequence
  for i in 0 to 5000 loop
    clock <= '1';
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
  end loop ;
WAIT;
END PROCESS always;
END g47_testbed_arch;
