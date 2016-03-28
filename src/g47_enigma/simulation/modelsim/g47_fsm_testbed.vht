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
-- Generated on "03/28/2016 12:31:52"
                                                            
-- Vhdl Test Bench template for design  :  g47_fsm_testbed
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g47_fsm_testbed_vhd_tst IS
END g47_fsm_testbed_vhd_tst;
ARCHITECTURE g47_fsm_testbed_arch OF g47_fsm_testbed_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL init : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL segments_l : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments_m : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments_r : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g47_fsm_testbed
	PORT (
	clock : IN STD_LOGIC;
	init : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	segments_l : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments_m : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments_r : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g47_fsm_testbed
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	init => init,
	reset => reset,
	segments_l => segments_l,
	segments_m => segments_m,
	segments_r => segments_r
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
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g47_fsm_testbed_arch;
