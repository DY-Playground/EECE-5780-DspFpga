--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:42:45 02/15/2018
-- Design Name:   
-- Module Name:   C:/Xilinx/func_gen/hw2_tb.vhd
-- Project Name:  func_gen
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hw2
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
--USE ieee.numeric_std.ALL;
 
ENTITY hw2_tb IS
END hw2_tb;
 
ARCHITECTURE behavior OF hw2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hw2
    PORT(
         hw2_clk_in : IN  std_logic;
         hw2_rst_l_in : IN  std_logic;
         hw2_raised_cosine_out : OUT  std_logic_vector(15 downto 0);
         hw2_qpsk_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal hw2_clk_in : std_logic := '0';
   signal hw2_rst_l_in : std_logic := '0';

 	--Outputs
   signal hw2_raised_cosine_out : std_logic_vector(15 downto 0);
   signal hw2_qpsk_out : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant hw2_clk_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hw2 PORT MAP (
          hw2_clk_in => hw2_clk_in,
          hw2_rst_l_in => hw2_rst_l_in,
          hw2_raised_cosine_out => hw2_raised_cosine_out,
          hw2_qpsk_out => hw2_qpsk_out
        );

   -- Clock process definitions
   hw2_clk_in_process :process
   begin
		hw2_clk_in <= '0';
		wait for hw2_clk_in_period/2;
		hw2_clk_in <= '1';
		wait for hw2_clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
  begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      hw2_rst_l_in <= '1';
      wait for hw2_clk_in_period*10;

      -- insert stimulus here 
      wait for hw2_clk_in_period*2000;
      wait;
   end process;

END;
