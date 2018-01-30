--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:54:28 01/30/2018
-- Design Name:   
-- Module Name:   D:/Xilinx/func_gen/func_gen_tb.vhd
-- Project Name:  func_gen
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: func_gen
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY func_gen_tb IS
END func_gen_tb;
 
ARCHITECTURE behavior OF func_gen_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT func_gen
    PORT(
         func_gen_clk_in : IN  std_logic;
         func_gen_rst_l_in : IN  std_logic;
         func_gen_sine_out : OUT  std_logic_vector(15 downto 0);
         func_gen_pulse_out : OUT  std_logic_vector(15 downto 0);
         func_gen_triangle_out : OUT  std_logic_vector(15 downto 0);
         func_gen_sawtooth_out : OUT  std_logic_vector(15 downto 0);
         func_gen_dcoffset_out : OUT  std_logic_vector(15 downto 0) 
        );
    END COMPONENT;
    

   --Inputs
   signal func_gen_clk_in : std_logic := '0';
   signal func_gen_rst_l_in : std_logic := '0';

 	--Outputs
   signal func_gen_sine_out : std_logic_vector(15 downto 0);
   signal func_gen_pulse_out : std_logic_vector(15 downto 0);
   signal func_gen_triangle_out : std_logic_vector(15 downto 0);
   signal func_gen_sawtooth_out : std_logic_vector(15 downto 0);
   signal func_gen_dcoffset_out : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with  
   -- appropriate port name 
 
   constant func_gen_clk_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: func_gen PORT MAP (
          func_gen_clk_in => func_gen_clk_in,
          func_gen_rst_l_in => func_gen_rst_l_in,
          func_gen_sine_out => func_gen_sine_out,
          func_gen_pulse_out => func_gen_pulse_out,
          func_gen_triangle_out => func_gen_triangle_out,
          func_gen_sawtooth_out => func_gen_sawtooth_out,
          func_gen_dcoffset_out => func_gen_dcoffset_out
        );

   -- Clock process definitions
   func_gen_clk_in_process :process
   begin
		func_gen_clk_in <= '0';
		wait for func_gen_clk_in_period/2;
		func_gen_clk_in <= '1';
		wait for func_gen_clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      func_gen_rst_l_in <= '1';
      wait for func_gen_clk_in_period*10;

      -- insert stimulus here 
      wait for func_gen_clk_in_period*2000;
      wait;
   end process;

END;
