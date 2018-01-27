-------------------------------------------------------------------------------
-- Company: BAE Systems
-- Engineer: Dugan Yoon
-- 
-- Create Date:    08:15:07 01/26/2018 
-- Design Name:    func_gen
-- Module Name:    func_gen - synthesizable 
-- Project Name:   EECE.5780-041 � Modeling and Implementation of Digital 
-- Systems using MATLAB
-- Target Devices: Xilinx Spartan6 XC6SLX16 CSG324 -3
-- Tool versions:  ISE version 14.7
-- Description: 
-- function generator that produces a sine, pulse, triangle and sawtooth wave. 
-- In addition, it should produce a DC offset level. All of the output signals 
-- have 16 bit resolution and use two�s complement representations. The input 
-- clock is a rising edge 100 MHz and there is an active low reset. All of the 
-- parameters are passed as generics. The final design should be synthesizeable 
-- to the BASYS2 and simulated in Modelsim.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
-------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-------------------------------------------------------------------------------
ENTITY func_gen IS
-------------------------------------------------------------------------------
-- GENERICS
  GENERIC (
    -- Sine Wave Parameters
    FUNC_GEN_SINE_AMPLITUDE     : STD_LOGIC_VECTOR(14 DOWNTO 0);
    FUNC_GEN_SINE_FREQUENCY     : STD_LOGIC_VECTOR(9 DOWNTO 0);  -- 100 KHz steps
    FUNC_GEN_SINE_PHASE         : STD_LOGIC_VECTOR(2 DOWNTO 0);  -- 0, 45, 90, 135, 180,
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE    : STD_LOGIC_VECTOR(14 DOWNTO 0);
    FUNC_GEN_PULSE_FREQUENCY    : STD_LOGIC_VECTOR(9 DOWNTO 0);  -- 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE    : STD_LOGIC_VECTOR(6 DOWNTO 0);  -- 0-100
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0);
    FUNC_GEN_TRIANGLE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0);  -- 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0);
    FUNC_GEN_SAWTOOTH_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0);  -- 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE  : STD_LOGIC_VECTOR(14 DOWNTO 0)
  );
    
-------------------------------------------------------------------------------
-- PORTS
  PORT ( 
    func_gen_clk_in       : IN  STD_LOGIC;  -- 100 MHz clock input
    func_gen_rst_l_in     : IN  STD_LOGIC;  -- Active low reset input
    -- Wave Ouputs
    func_gen_sine_out     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Sine Wave Output
    func_gen_pulse_out    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Pulse Wave Output
    func_gen_triangle_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Triangle Wave Output
    func_gen_sawtooth_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Sawtooth Wave Output
    func_gen_dcoffset_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);  -- DC Offset Output
  );
END func_gen;

-------------------------------------------------------------------------------
ARCHITECTURE Structural OF func_gen IS
-------------------------------------------------------------------------------
-- CONSTANTS

-------------------------------------------------------------------------------
-- SIGNALS
SIGNAL func_gen_int_cnt : STD_LOGIC_VECTOR(CNT_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_addr : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_data : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

-------------------------------------------------------------------------------
-- COMPONENTS
COMPONENT sine_rom
  PORT (
    clka  : IN  STD_LOGIC;
    addra : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
--

-------------------------------------------------------------------------------
BEGIN
  u2: sine_rom PORT MAP (
    clka  => func_gen_clk_in,
    addra => func_gen_int_sine_addr,
    douta => func_gen_int_sine_data
    );
  counter_cnt_out <= int_cnt;

  -- counter free runs at clk rate when cnt_en='1'
  -- counter resets to zero after MAX_CNT or when rst='1'
  binary_counter: PROCESS(func_gen_clk_in,func_gen_rst_l_in)
  BEGIN
  	
  END PROCESS binary_counter;
END Structural; 

-------------------------------------------------------------------------------