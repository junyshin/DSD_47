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
-- Generated on "03/24/2016 16:53:30"
                                                            
-- Vhdl Test Bench template for design  :  g47_fsm
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g47_fsm_vhd_tst IS
END g47_fsm_vhd_tst;
ARCHITECTURE g47_fsm_arch OF g47_fsm_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL en_l : STD_LOGIC;
SIGNAL en_m : STD_LOGIC;
SIGNAL en_r : STD_LOGIC;
SIGNAL init : STD_LOGIC;
SIGNAL keypress : STD_LOGIC;
SIGNAL knock_m : STD_LOGIC;
SIGNAL knock_r : STD_LOGIC;
SIGNAL load : STD_LOGIC;
COMPONENT g47_fsm
	PORT (
	clock : IN STD_LOGIC;
	en_l : OUT STD_LOGIC;
	en_m : OUT STD_LOGIC;
	en_r : OUT STD_LOGIC;
	init : IN STD_LOGIC;
	keypress : IN STD_LOGIC;
	knock_m : IN STD_LOGIC;
	knock_r : IN STD_LOGIC;
	load : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g47_fsm
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	en_l => en_l,
	en_m => en_m,
	en_r => en_r,
	init => init,
	keypress => keypress,
	knock_m => knock_m,
	knock_r => knock_r,
	load => load
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
END g47_fsm_arch;
