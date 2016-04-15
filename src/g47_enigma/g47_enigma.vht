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
-- Generated on "04/05/2016 16:55:48"

-- Vhdl Test Bench template for design  :  g47_enigma
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all ;

ENTITY g47_enigma_vhd_tst IS
END g47_enigma_vhd_tst;
ARCHITECTURE g47_enigma_arch OF g47_enigma_vhd_tst IS
-- constants
-- signals
SIGNAL clock : STD_LOGIC;
SIGNAL init : STD_LOGIC;
SIGNAL input_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL keypress : STD_LOGIC;
SIGNAL left_data : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL left_ring_shift : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL left_rotor_type : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL middle_data : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL middle_ring_shift : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL middle_rotor_type : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL output_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reflector_type : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL right_data : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL right_ring_shift : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL right_rotor_type : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT g47_enigma
	PORT (
	clock : IN STD_LOGIC;
	init : IN STD_LOGIC;
	input_code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	keypress : IN STD_LOGIC;
	left_data : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	left_ring_shift : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	left_rotor_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	middle_data : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	middle_ring_shift : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	middle_rotor_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	output_code : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	reflector_type : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	right_data : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	right_ring_shift : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	right_rotor_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g47_enigma
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	init => init,
	input_code => input_code,
	keypress => keypress,
	left_data => left_data,
	left_ring_shift => left_ring_shift,
	left_rotor_type => left_rotor_type,
	middle_data => middle_data,
	middle_ring_shift => middle_ring_shift,
	middle_rotor_type => middle_rotor_type,
	output_code => output_code,
	reflector_type => reflector_type,
	reset => reset,
	right_data => right_data,
	right_ring_shift => right_ring_shift,
	right_rotor_type => right_rotor_type
	);
init_process : PROCESS
-- variable declarations
BEGIN
        -- code that executes only once
WAIT;
END PROCESS init_process;
always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
BEGIN
  clock <= '0';
  reset <= '1';
  init <= '1';
  keypress <= '1';
  input_code <= "00000";
  -- left
  left_data <= "00000";
  left_ring_shift <= "00000";
  left_rotor_type <= "01";
  -- middle
  middle_data <= "00000";
  middle_ring_shift <= "00000";
  middle_rotor_type <= "01";
  -- right
  right_data <= "00000";
  right_ring_shift <= "00010";
  right_rotor_type <= "01";
  -- reflector
  reflector_type <= '0';
  wait for 10 ns;
  init <= '0';
  wait for 10 ns;
  for i in 0 to 25 loop
    -- read input
    input_code <= std_logic_vector(to_unsigned(i, 5));
    -- reset fsm
    --init <= '0';
    --for j in 0 to 5 loop
    --    clock <= '1';
    --    wait for 10 ns;
    --    clock <= '0';
    --    wait for 10 ns;
    --  end loop ;
    --init <= '1';
    -- key press
    keypress <= '0';
    clock <= '1';
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
    -- key release
    keypress <= '1';
    clock <= '1';
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
    -- wait
    for j in 0 to 5 loop
      clock <= '1';
      wait for 10 ns;
      clock <= '0';
      wait for 10 ns;
    end loop ;
    -- reset
    init <= '0';
    clock <= '1';
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
    clock <= '1';
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
    clock <= '1';
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
    clock <= '1';
    wait for 10 ns;
    clock <= '0';
    wait for 10 ns;
  end loop ;
WAIT;
END PROCESS always;
END g47_enigma_arch;
