-- Copyright (C) 1991-2009 Altera Corporation
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

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 222 10/21/2009 SJ Web Edition"

-- DATE "10/14/2018 22:21:35"

-- 
-- Device: Altera EPM7064SLC44-10 Package PLCC44
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	elevator IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	S : IN std_logic;
	B : IN std_logic_vector(3 DOWNTO 0);
	SENSE : OUT std_logic;
	MOTOR : OUT std_logic;
	DOOR : OUT std_logic;
	FLOOR : OUT std_logic_vector(1 DOWNTO 0);
	TARGET : OUT std_logic_vector(1 DOWNTO 0)
	);
END elevator;

-- Design Ports Information
-- CLK	=>  Location: PIN_43
-- RESET	=>  Location: PIN_41
-- S	=>  Location: PIN_37
-- B[0]	=>  Location: PIN_25
-- B[1]	=>  Location: PIN_40
-- B[2]	=>  Location: PIN_31
-- B[3]	=>  Location: PIN_29
-- DOOR	=>  Location: PIN_11
-- FLOOR[0]	=>  Location: PIN_8
-- TARGET[0]	=>  Location: PIN_6
-- TARGET[1]	=>  Location: PIN_9
-- FLOOR[1]	=>  Location: PIN_5
-- SENSE	=>  Location: PIN_12
-- MOTOR	=>  Location: PIN_4

ARCHITECTURE structure OF elevator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SENSE : std_logic;
SIGNAL ww_MOTOR : std_logic;
SIGNAL ww_DOOR : std_logic;
SIGNAL ww_FLOOR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_TARGET : std_logic_vector(1 DOWNTO 0);
SIGNAL \ed|q_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ed|q_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r0|s_out[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|s_count[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \r1|s_out[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|motor~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cm|sense~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0~dataout\ : std_logic;
SIGNAL \CLK~dataout\ : std_logic;
SIGNAL \RESET~dataout\ : std_logic;
SIGNAL \S~dataout\ : std_logic;
SIGNAL \ed|q~dataout\ : std_logic;
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~43_pexpout\ : std_logic;
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~39_pexpout\ : std_logic;
SIGNAL \ct|Add0|adder|result_node|sout_node[1]~29_pexpout\ : std_logic;
SIGNAL \cm|sense~5_dataout\ : std_logic;
SIGNAL \cm|motor~6_dataout\ : std_logic;
SIGNAL \ct|s_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \r0|s_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \B~dataout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r1|s_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ed|ALT_INV_q~dataout\ : std_logic;
SIGNAL \ct|ALT_INV_s_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \r1|ALT_INV_s_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \r0|ALT_INV_s_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_B~dataout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_S <= S;
ww_B <= B;
SENSE <= ww_SENSE;
MOTOR <= ww_MOTOR;
DOOR <= ww_DOOR;
FLOOR <= ww_FLOOR;
TARGET <= ww_TARGET;

\ed|q_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S~dataout\);

\ed|q_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ed|q_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ed|q_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\ed|q_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ct|s_count\(0));

\ct|s_count[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ed|q~dataout\ & \S~dataout\);

\ct|s_count[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\ct|s_count[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(0));

\r1|s_out[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\r1|s_out[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\r1|s_out[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(0) & \B~dataout\(2) & NOT \B~dataout\(0) & NOT \B~dataout\(3) & NOT \B~dataout\(1));

\r0|s_out[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(0) & NOT \B~dataout\(2) & NOT \B~dataout\(0) & NOT \B~dataout\(3) & \B~dataout\(1));

\r0|s_out[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(0) & NOT \B~dataout\(2) & NOT \B~dataout\(0) & \B~dataout\(3) & NOT \B~dataout\(1));

\r0|s_out[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(0) & NOT \B~dataout\(2) & \B~dataout\(0) & NOT \B~dataout\(3) & NOT \B~dataout\(1));

\r0|s_out[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\r0|s_out[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\r0|s_out[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(1) & NOT \B~dataout\(2) & NOT \B~dataout\(3) & \B~dataout\(0) & NOT \B~dataout\(1));

\r0|s_out[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(1) & \B~dataout\(2) & NOT \B~dataout\(3) & NOT \B~dataout\(0) & NOT \B~dataout\(1));

\r0|s_out[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(1) & NOT \B~dataout\(2) & \B~dataout\(3) & NOT \B~dataout\(0) & NOT \B~dataout\(1));

\r0|s_out[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(1) & NOT \B~dataout\(2) & NOT \B~dataout\(3) & NOT \B~dataout\(0) & \B~dataout\(1));

\r0|s_out[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r0|s_out[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\r0|s_out[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\r0|s_out[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(1) & NOT \ct|s_count\(0) & NOT \r1|s_out\(0) & \r0|s_out\(0) & \r0|s_out\(1));

\ct|s_count[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ct|s_count\(1) & \ct|s_count\(0) & NOT \r1|s_out\(0) & \r0|s_out\(0) & \r0|s_out\(1));

\ct|s_count[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(1) & NOT \ct|s_count\(1) & NOT \ct|s_count\(0) & NOT \r0|s_out\(0));

\ct|s_count[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|s_count[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ed|q~dataout\ & \S~dataout\);

\ct|s_count[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\ct|s_count[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(1));

\r1|s_out[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\r1|s_out[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\r1|s_out[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RESET~dataout\);

\r1|s_out[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|motor~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|motor~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(0) & \r0|s_out\(0));

\cm|motor~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(0) & NOT \r0|s_out\(0));

\cm|motor~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(1) & \r1|s_out\(1));

\cm|motor~6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r0|s_out\(1) & NOT \r1|s_out\(1));

\cm|motor~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|motor~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|motor~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|motor~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cm|motor~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|motor~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|sense~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|sense~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(0) & \r0|s_out\(0) & \r0|s_out\(1));

\cm|sense~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(1) & NOT \r1|s_out\(0) & \r0|s_out\(0));

\cm|sense~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(1) & \r0|s_out\(1));

\cm|sense~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|sense~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|sense~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|sense~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|sense~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cm|sense~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cm|sense~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~29_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(0) & \ct|s_count\(1) & \r1|s_out\(1) & \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~29_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ct|s_count\(1) & \r0|s_out\(1) & NOT \r1|s_out\(1) & \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~29_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(1) & \r0|s_out\(1) & NOT \r1|s_out\(1) & NOT \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~29_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(0) & \ct|s_count\(1) & NOT \r0|s_out\(1) & \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~29_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r0|s_out\(0) & NOT \ct|s_count\(1) & NOT \r0|s_out\(1) & NOT \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~29_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~29_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~29_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~29_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ct|Add0|adder|result_node|sout_node[1]~29_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~29_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~39_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(1) & \ct|s_count\(1) & \r1|s_out\(0) & \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~39_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ct|s_count\(1) & NOT \r0|s_out\(1) & \r1|s_out\(0) & \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~39_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(1) & \ct|s_count\(1) & NOT \r0|s_out\(1) & \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~39_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ct|s_count\(1) & NOT \r0|s_out\(1) & \r1|s_out\(0) & NOT \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~39_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(1) & NOT \ct|s_count\(1) & NOT \r0|s_out\(1) & NOT \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~39_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~39_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~39_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~39_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ct|Add0|adder|result_node|sout_node[1]~39_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~39_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~43_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~43_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(1) & NOT \ct|s_count\(1) & \r0|s_out\(0) & NOT \r1|s_out\(0) & \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~43_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \r1|s_out\(1) & \ct|s_count\(1) & \r0|s_out\(0) & NOT \r1|s_out\(0) & NOT \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~43_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \r1|s_out\(1) & NOT \ct|s_count\(1) & \r1|s_out\(0) & NOT \ct|s_count\(0));

\ct|Add0|adder|result_node|sout_node[1]~43_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~43_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~43_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~43_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~43_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ct|Add0|adder|result_node|sout_node[1]~43_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ct|Add0|adder|result_node|sout_node[1]~43_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ed|ALT_INV_q~dataout\ <= NOT \ed|q~dataout\;
\ct|ALT_INV_s_count\(0) <= NOT \ct|s_count\(0);
\r1|ALT_INV_s_out\(0) <= NOT \r1|s_out\(0);
\r0|ALT_INV_s_out\(0) <= NOT \r0|s_out\(0);
\r0|ALT_INV_s_out\(1) <= NOT \r0|s_out\(1);
\ct|ALT_INV_s_count\(1) <= NOT \ct|s_count\(1);
\r1|ALT_INV_s_out\(1) <= NOT \r1|s_out\(1);
\ALT_INV_B~dataout\(0) <= NOT \B~dataout\(0);
\ALT_INV_B~dataout\(1) <= NOT \B~dataout\(1);
\ALT_INV_B~dataout\(2) <= NOT \B~dataout\(2);
\ALT_INV_B~dataout\(3) <= NOT \B~dataout\(3);

-- Location: LC3
\~GND~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~0_pterm0_bus\,
	pterm1 => \~GND~0_pterm1_bus\,
	pterm2 => \~GND~0_pterm2_bus\,
	pterm3 => \~GND~0_pterm3_bus\,
	pterm4 => \~GND~0_pterm4_bus\,
	pterm5 => \~GND~0_pterm5_bus\,
	pxor => \~GND~0_pxor_bus\,
	pclk => \~GND~0_pclk_bus\,
	papre => \~GND~0_papre_bus\,
	paclr => \~GND~0_paclr_bus\,
	pena => \~GND~0_pena_bus\,
	dataout => \~GND~0~dataout\);

-- Location: PIN_43
\CLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	dataout => \CLK~dataout\);

-- Location: PIN_41
\RESET~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RESET,
	dataout => \RESET~dataout\);

-- Location: PIN_37
\S~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_S,
	dataout => \S~dataout\);

-- Location: LC2
\ed|q\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \ed|q_pterm0_bus\,
	pterm1 => \ed|q_pterm1_bus\,
	pterm2 => \ed|q_pterm2_bus\,
	pterm3 => \ed|q_pterm3_bus\,
	pterm4 => \ed|q_pterm4_bus\,
	pterm5 => \ed|q_pterm5_bus\,
	pxor => \ed|q_pxor_bus\,
	pclk => \ed|q_pclk_bus\,
	papre => \ed|q_papre_bus\,
	paclr => \ed|q_paclr_bus\,
	pena => \ed|q_pena_bus\,
	dataout => \ed|q~dataout\);

-- Location: LC12
\ct|s_count[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \ct|s_count[0]_pterm0_bus\,
	pterm1 => \ct|s_count[0]_pterm1_bus\,
	pterm2 => \ct|s_count[0]_pterm2_bus\,
	pterm3 => \ct|s_count[0]_pterm3_bus\,
	pterm4 => \ct|s_count[0]_pterm4_bus\,
	pterm5 => \ct|s_count[0]_pterm5_bus\,
	pxor => \ct|s_count[0]_pxor_bus\,
	pclk => \ct|s_count[0]_pclk_bus\,
	papre => \ct|s_count[0]_papre_bus\,
	paclr => \ct|s_count[0]_paclr_bus\,
	pena => \ct|s_count[0]_pena_bus\,
	dataout => \ct|s_count\(0));

-- Location: LC5
\r1|s_out[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \r1|s_out[0]_pterm0_bus\,
	pterm1 => \r1|s_out[0]_pterm1_bus\,
	pterm2 => \r1|s_out[0]_pterm2_bus\,
	pterm3 => \r1|s_out[0]_pterm3_bus\,
	pterm4 => \r1|s_out[0]_pterm4_bus\,
	pterm5 => \r1|s_out[0]_pterm5_bus\,
	pxor => \r1|s_out[0]_pxor_bus\,
	pclk => \r1|s_out[0]_pclk_bus\,
	papre => \r1|s_out[0]_papre_bus\,
	paclr => \r1|s_out[0]_paclr_bus\,
	pena => \r1|s_out[0]_pena_bus\,
	dataout => \r1|s_out\(0));

-- Location: PIN_40
\B[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	dataout => \B~dataout\(1));

-- Location: PIN_29
\B[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	dataout => \B~dataout\(3));

-- Location: PIN_25
\B[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	dataout => \B~dataout\(0));

-- Location: PIN_31
\B[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	dataout => \B~dataout\(2));

-- Location: LC11
\r0|s_out[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \r0|s_out[0]_pterm0_bus\,
	pterm1 => \r0|s_out[0]_pterm1_bus\,
	pterm2 => \r0|s_out[0]_pterm2_bus\,
	pterm3 => \r0|s_out[0]_pterm3_bus\,
	pterm4 => \r0|s_out[0]_pterm4_bus\,
	pterm5 => \r0|s_out[0]_pterm5_bus\,
	pxor => \r0|s_out[0]_pxor_bus\,
	pclk => \r0|s_out[0]_pclk_bus\,
	papre => \r0|s_out[0]_papre_bus\,
	paclr => \r0|s_out[0]_paclr_bus\,
	pena => \r0|s_out[0]_pena_bus\,
	dataout => \r0|s_out\(0));

-- Location: LC4
\r0|s_out[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \r0|s_out[1]_pterm0_bus\,
	pterm1 => \r0|s_out[1]_pterm1_bus\,
	pterm2 => \r0|s_out[1]_pterm2_bus\,
	pterm3 => \r0|s_out[1]_pterm3_bus\,
	pterm4 => \r0|s_out[1]_pterm4_bus\,
	pterm5 => \r0|s_out[1]_pterm5_bus\,
	pxor => \r0|s_out[1]_pxor_bus\,
	pclk => \r0|s_out[1]_pclk_bus\,
	papre => \r0|s_out[1]_papre_bus\,
	paclr => \r0|s_out[1]_paclr_bus\,
	pena => \r0|s_out[1]_pena_bus\,
	dataout => \r0|s_out\(1));

-- Location: LC6
\ct|Add0|adder|result_node|sout_node[1]~43\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ct|Add0|adder|result_node|sout_node[1]~43_pterm0_bus\,
	pterm1 => \ct|Add0|adder|result_node|sout_node[1]~43_pterm1_bus\,
	pterm2 => \ct|Add0|adder|result_node|sout_node[1]~43_pterm2_bus\,
	pterm3 => \ct|Add0|adder|result_node|sout_node[1]~43_pterm3_bus\,
	pterm4 => \ct|Add0|adder|result_node|sout_node[1]~43_pterm4_bus\,
	pterm5 => \ct|Add0|adder|result_node|sout_node[1]~43_pterm5_bus\,
	pxor => \ct|Add0|adder|result_node|sout_node[1]~43_pxor_bus\,
	pclk => \ct|Add0|adder|result_node|sout_node[1]~43_pclk_bus\,
	papre => \ct|Add0|adder|result_node|sout_node[1]~43_papre_bus\,
	paclr => \ct|Add0|adder|result_node|sout_node[1]~43_paclr_bus\,
	pena => \ct|Add0|adder|result_node|sout_node[1]~43_pena_bus\,
	pexpout => \ct|Add0|adder|result_node|sout_node[1]~43_pexpout\);

-- Location: LC7
\ct|Add0|adder|result_node|sout_node[1]~39\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \ct|Add0|adder|result_node|sout_node[1]~43_pexpout\,
	pterm0 => \ct|Add0|adder|result_node|sout_node[1]~39_pterm0_bus\,
	pterm1 => \ct|Add0|adder|result_node|sout_node[1]~39_pterm1_bus\,
	pterm2 => \ct|Add0|adder|result_node|sout_node[1]~39_pterm2_bus\,
	pterm3 => \ct|Add0|adder|result_node|sout_node[1]~39_pterm3_bus\,
	pterm4 => \ct|Add0|adder|result_node|sout_node[1]~39_pterm4_bus\,
	pterm5 => \ct|Add0|adder|result_node|sout_node[1]~39_pterm5_bus\,
	pxor => \ct|Add0|adder|result_node|sout_node[1]~39_pxor_bus\,
	pclk => \ct|Add0|adder|result_node|sout_node[1]~39_pclk_bus\,
	papre => \ct|Add0|adder|result_node|sout_node[1]~39_papre_bus\,
	paclr => \ct|Add0|adder|result_node|sout_node[1]~39_paclr_bus\,
	pena => \ct|Add0|adder|result_node|sout_node[1]~39_pena_bus\,
	pexpout => \ct|Add0|adder|result_node|sout_node[1]~39_pexpout\);

-- Location: LC8
\ct|Add0|adder|result_node|sout_node[1]~29\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \ct|Add0|adder|result_node|sout_node[1]~39_pexpout\,
	pterm0 => \ct|Add0|adder|result_node|sout_node[1]~29_pterm0_bus\,
	pterm1 => \ct|Add0|adder|result_node|sout_node[1]~29_pterm1_bus\,
	pterm2 => \ct|Add0|adder|result_node|sout_node[1]~29_pterm2_bus\,
	pterm3 => \ct|Add0|adder|result_node|sout_node[1]~29_pterm3_bus\,
	pterm4 => \ct|Add0|adder|result_node|sout_node[1]~29_pterm4_bus\,
	pterm5 => \ct|Add0|adder|result_node|sout_node[1]~29_pterm5_bus\,
	pxor => \ct|Add0|adder|result_node|sout_node[1]~29_pxor_bus\,
	pclk => \ct|Add0|adder|result_node|sout_node[1]~29_pclk_bus\,
	papre => \ct|Add0|adder|result_node|sout_node[1]~29_papre_bus\,
	paclr => \ct|Add0|adder|result_node|sout_node[1]~29_paclr_bus\,
	pena => \ct|Add0|adder|result_node|sout_node[1]~29_pena_bus\,
	pexpout => \ct|Add0|adder|result_node|sout_node[1]~29_pexpout\);

-- Location: LC9
\ct|s_count[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pexpin => \ct|Add0|adder|result_node|sout_node[1]~29_pexpout\,
	pterm0 => \ct|s_count[1]_pterm0_bus\,
	pterm1 => \ct|s_count[1]_pterm1_bus\,
	pterm2 => \ct|s_count[1]_pterm2_bus\,
	pterm3 => \ct|s_count[1]_pterm3_bus\,
	pterm4 => \ct|s_count[1]_pterm4_bus\,
	pterm5 => \ct|s_count[1]_pterm5_bus\,
	pxor => \ct|s_count[1]_pxor_bus\,
	pclk => \ct|s_count[1]_pclk_bus\,
	papre => \ct|s_count[1]_papre_bus\,
	paclr => \ct|s_count[1]_paclr_bus\,
	pena => \ct|s_count[1]_pena_bus\,
	dataout => \ct|s_count\(1));

-- Location: LC14
\r1|s_out[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \r1|s_out[1]_pterm0_bus\,
	pterm1 => \r1|s_out[1]_pterm1_bus\,
	pterm2 => \r1|s_out[1]_pterm2_bus\,
	pterm3 => \r1|s_out[1]_pterm3_bus\,
	pterm4 => \r1|s_out[1]_pterm4_bus\,
	pterm5 => \r1|s_out[1]_pterm5_bus\,
	pxor => \r1|s_out[1]_pxor_bus\,
	pclk => \r1|s_out[1]_pclk_bus\,
	papre => \r1|s_out[1]_papre_bus\,
	paclr => \r1|s_out[1]_paclr_bus\,
	pena => \r1|s_out[1]_pena_bus\,
	dataout => \r1|s_out\(1));

-- Location: LC1
\cm|sense~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \cm|sense~5_pterm0_bus\,
	pterm1 => \cm|sense~5_pterm1_bus\,
	pterm2 => \cm|sense~5_pterm2_bus\,
	pterm3 => \cm|sense~5_pterm3_bus\,
	pterm4 => \cm|sense~5_pterm4_bus\,
	pterm5 => \cm|sense~5_pterm5_bus\,
	pxor => \cm|sense~5_pxor_bus\,
	pclk => \cm|sense~5_pclk_bus\,
	papre => \cm|sense~5_papre_bus\,
	paclr => \cm|sense~5_paclr_bus\,
	pena => \cm|sense~5_pena_bus\,
	dataout => \cm|sense~5_dataout\);

-- Location: LC16
\cm|motor~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \cm|motor~6_pterm0_bus\,
	pterm1 => \cm|motor~6_pterm1_bus\,
	pterm2 => \cm|motor~6_pterm2_bus\,
	pterm3 => \cm|motor~6_pterm3_bus\,
	pterm4 => \cm|motor~6_pterm4_bus\,
	pterm5 => \cm|motor~6_pterm5_bus\,
	pxor => \cm|motor~6_pxor_bus\,
	pclk => \cm|motor~6_pclk_bus\,
	papre => \cm|motor~6_papre_bus\,
	paclr => \cm|motor~6_paclr_bus\,
	pena => \cm|motor~6_pena_bus\,
	dataout => \cm|motor~6_dataout\);

-- Location: PIN_11
\DOOR~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~0~dataout\,
	oe => VCC,
	padio => ww_DOOR);

-- Location: PIN_8
\FLOOR[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \r1|s_out\(0),
	oe => VCC,
	padio => ww_FLOOR(0));

-- Location: PIN_6
\TARGET[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \r0|s_out\(0),
	oe => VCC,
	padio => ww_TARGET(0));

-- Location: PIN_9
\TARGET[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \r0|s_out\(1),
	oe => VCC,
	padio => ww_TARGET(1));

-- Location: PIN_5
\FLOOR[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \r1|s_out\(1),
	oe => VCC,
	padio => ww_FLOOR(1));

-- Location: PIN_12
\SENSE~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \cm|sense~5_dataout\,
	oe => VCC,
	padio => ww_SENSE);

-- Location: PIN_4
\MOTOR~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \cm|motor~6_dataout\,
	oe => VCC,
	padio => ww_MOTOR);
END structure;


