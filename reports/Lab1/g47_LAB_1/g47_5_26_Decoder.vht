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
-- Generated on "02/01/2016 09:53:14"

-- Vhdl Test Bench template for design  :  decoder
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder_vhd_tst IS
END decoder_vhd_tst;
ARCHITECTURE decoder_arch OF decoder_vhd_tst IS
-- constants
-- signals
SIGNAL D : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL ERROR : STD_LOGIC;
SIGNAL INDEX : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT decoder
	PORT (
	D : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
	ERROR : OUT STD_LOGIC;
	INDEX : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : decoder
	PORT MAP (
-- list connections between master ports and signals
	D => D,
	ERROR => ERROR,
	INDEX => INDEX
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
    INDEX <= "00000";
    wait for 10 ns;
    INDEX <= "00001";
    wait for 10 ns;
    INDEX <= "00010";
    wait for 10 ns;
    INDEX <= "00011";
    wait for 10 ns;
    --
    INDEX <= "00100";
    wait for 10 ns;
    INDEX <= "00101";
    wait for 10 ns;
    INDEX <= "00110";
    wait for 10 ns;
    INDEX <= "00111";
    wait for 10 ns;
    --
    INDEX <= "01000";
    wait for 10 ns;
    INDEX <= "01001";
    wait for 10 ns;
    INDEX <= "01010";
    wait for 10 ns;
    INDEX <= "01011";
    wait for 10 ns;
    --
    INDEX <= "01100";
    wait for 10 ns;
    INDEX <= "01101";
    wait for 10 ns;
    INDEX <= "01110";
    wait for 10 ns;
    INDEX <= "01111";
    wait for 10 ns;
    --
    INDEX <= "10000";
    wait for 10 ns;
    INDEX <= "10001";
    wait for 10 ns;
    INDEX <= "10010";
    wait for 10 ns;
    INDEX <= "10011";
    wait for 10 ns;
    --
    INDEX <= "10100";
    wait for 10 ns;
    INDEX <= "10101";
    wait for 10 ns;
    INDEX <= "10110";
    wait for 10 ns;
    INDEX <= "10111";
    wait for 10 ns;
    --
    INDEX <= "11000";
    wait for 10 ns;
    INDEX <= "11001";
    wait for 10 ns;
    INDEX <= "11010";
    wait for 10 ns;
    INDEX <= "11011";
    wait for 10 ns;
    --
    INDEX <= "11100";
    wait for 10 ns;
    INDEX <= "11101";
    wait for 10 ns;
    INDEX <= "11110";
    wait for 10 ns;
    INDEX <= "11111";
WAIT;
END PROCESS always;
END decoder_arch;
