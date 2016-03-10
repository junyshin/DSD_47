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
-- Generated on "03/09/2016 15:27:12"

-- Vhdl Test Bench template for design  :  g47_0_25_Counter
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY g47_0_25_Counter_vhd_tst IS
END g47_0_25_Counter_vhd_tst;
ARCHITECTURE g47_0_25_Counter_arch OF g47_0_25_Counter_vhd_tst IS
-- constants
-- signals
SIGNAL clock : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL count_enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT g47_0_25_Counter
	PORT (
	clock : IN STD_LOGIC;
	count : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	count_enable : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g47_0_25_Counter
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	count => count,
	count_enable => count_enable,
	reset => reset
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
  reset <= '0';
  count_enable <='0';
  wait for 50 ns;
  reset <= '1';
  count_enable <='0';
  wait for 50 ns;
  -- test sequence
  count_enable <='1';
  wait for 50 ns;
  for i in 0 to 50 loop
    clock <= '1';
    wait for 50 ns;
    clock <= '0';
    wait for 50 ns;
  end loop ;
  -- test reset
  clock <= '1';
  reset <= '0';
  wait for 200 ns;
  clock <= '0';
  reset <= '0';
  wait for 200 ns;
  reset <= '1';
  wait for 50 ns;
  -- test count_enable
  count_enable <= '0';
  wait for 50 ns;
  for i in 0 to 20 loop
    clock <= '1';
    wait for 50 ns;
    clock <= '0';
    wait for 50 ns;
  end loop ;
WAIT;
END PROCESS always;
END g47_0_25_Counter_arch;
