--=======+=========+=========+=========+=========+=========+=========+=========+
-- Company:  BAE Systems
-- Engineer: Dugan Yoon
-- 
-- Create Date:    09:00:00 02/16/2018 
-- Design Name:    hw2
-- Module Name:    data_rom - synthesizable 
-- Project Name:   EECE.5780-041 — Modeling and Implementation of Digital 
-- Systems using MATLAB
-- Target Devices: Xilinx Spartan6 XC6SLX16 CSG324 -3
-- Tool versions:  ISE version 14.7
-- Description: 
-- HW2 - Instantiate copies of the function generator to generate two waveforms.
-- 1. A raised cosine pulse train.
-- 2. A Quadrature Phase Shift Keyed waveform of 10110011100011110000.
-- The modulation rate is 500 KHz and the bits should be sent 125 KHz rate.
-- This module infers a 32x1 block ram.
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
--=======+=========+=========+=========+=========+=========+=========+=========+
LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--=======+=========+=========+=========+=========+=========+=========+=========+

ENTITY data_rom IS
--=======+=========+=========+=========+=========+=========+=========+=========+
-- GENERICS

---=======+=========+=========+=========+=========+=========+=========+=========+
-- PORTS
    PORT (
      clka   : IN STD_LOGIC;
      rsta_l : IN STD_LOGIC;
      addra  : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      douta  : OUT STD_LOGIC
    );
END data_rom;

ARCHITECTURE Rtl OF data_rom IS
--=======+=========+=========+=========+=========+=========+=========+=========+
-- CONSTANTS

--=======+=========+=========+=========+=========+=========+=========+=========+
-- SIGNALS

---=======+=========+=========+=========+=========+=========+=========+=========+
-- COMPONENTS

--=======+=========+=========+=========+=========+=========+=========+=========+
BEGIN
    PROCESS(clka)
    BEGIN
    -- 1011 0011 1000 1111 0000
      IF (rsta_l='0') THEN
          douta <= '0';
      ELSIF (clka'EVENT AND clka='1') THEN
        CASE addra IS
            WHEN "00000" => douta <= '1';
            WHEN "00001" => douta <= '0';
            WHEN "00010" => douta <= '1';
            WHEN "00011" => douta <= '1';
            WHEN "00100" => douta <= '0';
            WHEN "00101" => douta <= '0';
            WHEN "00110" => douta <= '1';
            WHEN "00111" => douta <= '1';
            WHEN "01000" => douta <= '1';
            WHEN "01001" => douta <= '0';
            WHEN "01010" => douta <= '0';
            WHEN "01011" => douta <= '0';
            WHEN "01100" => douta <= '1';
            WHEN "01101" => douta <= '1';
            WHEN "01110" => douta <= '1';
            WHEN "01111" => douta <= '1';
            WHEN "10000" => douta <= '0';
            WHEN "10001" => douta <= '0';
            WHEN "10010" => douta <= '0';
            WHEN "10011" => douta <= '0';
            WHEN OTHERS  => douta <= '0';
        END CASE;
      END IF;
    END PROCESS;
END Rtl;
--=======+=========+=========+=========+=========+=========+=========+=========+
