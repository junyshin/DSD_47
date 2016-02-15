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
-- Generated on "02/15/2016 13:35:33"
                                                            
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
SIGNAL N : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(25 DOWNTO 0);
COMPONENT g47_26_bit_Barrel_Shift
	PORT (
	N : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
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
                                        
always : PROCESS                                              

BEGIN                                                         
    X <= "00000000001000000000000000";
	N <= "000000";
	wait for 10 ns;
	N <= "000010";
	wait for 10 ns;
	N <= "001000";
	wait for 10 ns;
	N <= "011001";
	wait for 10 ns;
	N <= "011010";
WAIT;        

END PROCESS always;                                          
END g47_26_bit_Barrel_Shift_arch;
