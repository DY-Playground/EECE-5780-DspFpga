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
USE ieee.numeric_std.ALL;
-------------------------------------------------------------------------------
ENTITY func_gen IS
-------------------------------------------------------------------------------
-- GENERICS
  GENERIC (
    -- Function Generator Counter Parameters
    FUNC_GEN_MAX_CNT : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= conv_std_logic_vector(1000-1,10); -- up to 1024
    -- Sine Wave Parameters
    FUNC_GEN_SINE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
    	:= "111111111111111";  -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= "0000000001";  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE : STD_LOGIC_VECTOR(2 DOWNTO 0)
    	:= "000";  -- x0=0, x1=45, x2=90, x3=135, x4=180, x5=x6=x7=0
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
    	:= "111111111111111";  -- x3FFF=0dB attenuation
    FUNC_GEN_PULSE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= "0000000001";  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE : STD_LOGIC_VECTOR(6 DOWNTO 0)
    	:= "0000001";  -- 0-100
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
    	:= "111111111111111";  -- x3FFF=0dB attenuation
    FUNC_GEN_TRIANGLE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= "0000000001";  -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
    	:= "111111111111111";  -- x3FFF=0dB attenuation
    FUNC_GEN_SAWTOOTH_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= "0000000001";  -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
     	:= "111111111111111"  -- x3FFF=0dB attenuation
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
    func_gen_dcoffset_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)  -- DC Offset Output
  );
END func_gen;

-------------------------------------------------------------------------------
ARCHITECTURE Rtl OF func_gen IS
-------------------------------------------------------------------------------
-- CONSTANTS

-------------------------------------------------------------------------------
-- SIGNALS
SIGNAL func_gen_int_scnt : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_addr : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_atten : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_data : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_amp : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

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
  u1: sine_rom PORT MAP (
    clka  => func_gen_clk_in,
    addra => func_gen_int_sine_addr,
    douta => func_gen_int_sine_data
    );
  
  func_gen_int_sine_amp <= ('0' & FUNC_GEN_SINE_AMPLITUDE); -- sign extend 
  -- counter free runs at clk rate
  -- counter resets to zero after MAX_CNT is reached or crossed
  -- counter resets to a value based on phase setting
  sine_counter: PROCESS(func_gen_clk_in,func_gen_rst_l_in)
  BEGIN
    IF (func_gen_rst_l_in='0') THEN
      CASE FUNC_GEN_SINE_PHASE IS 
      	WHEN "000" => func_gen_int_scnt <= (OTHERS => '0'); -- 0 deg
        WHEN "001" => func_gen_int_scnt <= conv_std_logic_vector(1000/8-1,10);  -- 45 deg
        WHEN "010" => func_gen_int_scnt <= conv_std_logic_vector(1000/4-1,10);  -- 90 deg
        WHEN "011" => func_gen_int_scnt <= conv_std_logic_vector(3*1000/8-1,10);  -- 135 deg
        WHEN "100" => func_gen_int_scnt <= conv_std_logic_vector(1000/2-1,10);  -- 180 deg
      	WHEN OTHERS => func_gen_int_scnt <= (OTHERS => '0'); -- 0 deg
      END CASE;
    ELSIF (func_gen_clk_in'EVENT AND func_gen_clk_in='1') THEN
      IF (func_gen_int_scnt>=FUNC_GEN_MAX_CNT-1) THEN
          func_gen_int_scnt <= (OTHERS => '0');
      ELSE
          func_gen_int_scnt <= func_gen_int_scnt + FUNC_GEN_SINE_FREQUENCY;
      END IF;
    END IF;  	
  END PROCESS sine_counter;
  func_gen_int_sine_addr <= func_gen_int_scnt;
  
  -- atten module 
  -- simple attenuations of arithmetic right bit shifts ~3dB per LSB
  sine_atten: PROCESS(func_gen_clk_in,func_gen_rst_l_in)
  BEGIN
    IF (func_gen_rst_l_in='0') THEN
      func_gen_int_sine_atten <= (OTHERS => '0');
    ELSIF (func_gen_clk_in'EVENT AND func_gen_clk_in='1') THEN
      func_gen_int_sine_atten <= func_gen_int_sine_data * func_gen_int_sine_amp;
    END IF;  	    
  END PROCESS sine_atten;
  func_gen_sine_out <= func_gen_int_sine_atten(31 DOWNTO 16);
END Rtl; 

-------------------------------------------------------------------------------