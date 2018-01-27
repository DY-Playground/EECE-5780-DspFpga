-------------------------------------------------------------------------------
-- Company: BAE Systems
-- Engineer: Dugan Yoon
-- 
-- Create Date:    17:00:00 01/26/2018 
-- Design Name:    func_gen
-- Module Name:    dsp - synthesizable 
-- Project Name:   EECE.5780-041 — Modeling and Implementation of Digital 
-- Systems using MATLAB
-- Target Devices: Xilinx Spartan6 XC6SLX16 CSG324 -3
-- Tool versions:  ISE version 14.7
-- Description: 
-- function generator that produces a sine, pulse, triangle and sawtooth wave. 
-- In addition, it should produce a DC offset level. All of the output signals 
-- have 16 bit resolution and use two’s complement representations. The input 
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
ENTITY dsp IS
-------------------------------------------------------------------------------
-- GENERICS
    
-------------------------------------------------------------------------------
-- PORTS
  PORT ( 
    dsp_clk_in       : IN  STD_LOGIC;  -- 100 MHz clock input
    dsp_rst_l_in     : IN  STD_LOGIC;  -- Active low reset input
    -- Wave Ouputs
    dsp_out     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);  -- DSP Output
  );
END dsp;

-------------------------------------------------------------------------------
ARCHITECTURE Structural OF dsp IS
-------------------------------------------------------------------------------
-- CONSTANTS

-------------------------------------------------------------------------------
-- SIGNALS
SIGNAL int_cnt : STD_LOGIC_VECTOR(CNT_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
	
-------------------------------------------------------------------------------
-- COMPONENTS
COMPONENT clk_wiz_v3_6
  PORT (
    -- Clock in ports
    clk_in1  : IN  STD_LOGIC;
    -- Clock out ports
    clk_out1 : OUT STD_LOGIC
  );
END COMPONENT;
--
COMPONENT func_gen
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
END COMPONENT;
--

-------------------------------------------------------------------------------
BEGIN
  u100: clk_wiz_v3_6 PORT MAP (
    clk_in1  => dsp_clk_in,
    clk_out1 => dsp_int_100MHz_clk
    );

  u1: func_gen PORT MAP (
    func_gen_clk_in       => dsp_int_100MHz_clk,
    func_gen_rst_l_in     => dsp_rst_l_in,
    -- Wave Ouputs
    func_gen_sine_out     => dsp_int_fg1_sine,
    func_gen_pulse_out    => dsp_int_fg1_pulse,
    func_gen_triangle_out => dsp_int_fg1_triangle,
    func_gen_sawtooth_out => dsp_int_fg1_sawtooth,
    func_gen_dcoffset_out => dsp_int_fg1_dcoffset
  );

END Structural; 

-------------------------------------------------------------------------------