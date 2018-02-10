-------------------------------------------------------------------------------
-- Company: BAE Systems
-- Engineer: Dugan Yoon
-- 
-- Create Date:    08:15:07 01/26/2018 
-- Design Name:    func_gen
-- Module Name:    func_gen - synthesizable 
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
-- to the NEXYS3 and simulated in Isim. Sine and Triangle are bipolar. Pulse,
-- Sawtooth, and Dcoffset are unipolar.  All are 16-bit 2's complement.
--
-- Dependencies:  
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
-------------------------------------------------------------------------------
LIBRARY IEEE;
LIBRARY UNISIM;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
USE UNISIM.Vcomponents.ALL;
-------------------------------------------------------------------------------
ENTITY func_gen IS
-------------------------------------------------------------------------------
-- GENERICS
  GENERIC (
    -- Function Generator Counter Parameters
    FUNC_GEN_MAX_UNS_CNT : UNSIGNED(9 DOWNTO 0)
    	:= "1111100111"; -- 999
    -- Sine Wave Parameters
    FUNC_GEN_SINE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
    	:= "000000000011111";  -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= "0000000001";  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE : STD_LOGIC_VECTOR(2 DOWNTO 0)
    	:= "000";  -- x0=0, x1=45, x2=90, x3=135, x4=180, x5=x6=x7=0
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
    	:= "000111111111111";  -- x3FFF=0dB attenuation
    FUNC_GEN_PULSE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= "0000000001";  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE : STD_LOGIC_VECTOR(6 DOWNTO 0)
    	:= "0110010";  -- 0-100
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
    	:= "000000000000111";  -- x3FFF=0dB attenuation
    FUNC_GEN_TRIANGLE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= "0000000011";  -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
    	:= "000000000011111";  -- x3FFF=0dB attenuation
    FUNC_GEN_SAWTOOTH_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0)
    	:= "0000000010";  -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0)
     	:= "001111111111111"  -- x3FFF=0dB attenuation
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
SIGNAL func_gen_int_uns_scnt : UNSIGNED(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_addr : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL func_gen_int_sine_atten : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_data : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sine_amp : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_uns_pcnt : UNSIGNED(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_uns_dctemp : UNSIGNED(11 DOWNTO 0) := (OTHERS => '1');
SIGNAL func_gen_int_pulse_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL func_gen_int_uns_tcnt : UNSIGNED(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_uns_tcnt1 : UNSIGNED(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_triangle_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL func_gen_int_triangle_negmax : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL func_gen_int_tpos_slope : STD_LOGIC_VECTOR(24 DOWNTO 0);
SIGNAL func_gen_int_tneg_slope : STD_LOGIC_VECTOR(24 DOWNTO 0);
SIGNAL func_gen_int_triangle_temp1 : STD_LOGIC_VECTOR(35 DOWNTO 0);
SIGNAL func_gen_int_triangle_temp2 : STD_LOGIC_VECTOR(35 DOWNTO 0);
SIGNAL func_gen_int_uns_sawcnt : UNSIGNED(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL func_gen_int_sawtooth_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL func_gen_int_sawpos_slope : STD_LOGIC_VECTOR(24 DOWNTO 0);
SIGNAL func_gen_int_sawtooth_temp1 : STD_LOGIC_VECTOR(35 DOWNTO 0);
SIGNAL func_gen_int_dcoffset_data : STD_LOGIC_VECTOR(15 DOWNTO 0);

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
  --
  --sine counter
  --sine counter free runs at clk rate
  --counter resets to zero after MAX_CNT is reached or crossed
  --counter resets to a value based on phase setting
  --scnt output is the address to the sine lookup table
  sine_counter: PROCESS(func_gen_clk_in,func_gen_rst_l_in)
  BEGIN
    IF (func_gen_rst_l_in='0') THEN 
      CASE FUNC_GEN_SINE_PHASE IS 
      	WHEN "000" => func_gen_int_uns_scnt <= (OTHERS => '0'); -- 0 deg
        WHEN "001" => func_gen_int_uns_scnt <= "01111111";  -- 45 deg is 127
        WHEN "010" => func_gen_int_uns_scnt <= "11111001";  -- 90 deg is 249
        WHEN "011" => func_gen_int_uns_scnt <= "101111111";  -- 135 deg is 333
        WHEN "100" => func_gen_int_uns_scnt <= "111110011";  -- 180 deg is 499
      	WHEN OTHERS => func_gen_int_uns_scnt <= (OTHERS => '0'); -- 0 deg
      END CASE; 
    ELSIF (func_gen_clk_in'EVENT AND func_gen_clk_in='1') THEN
      IF (func_gen_int_uns_scnt>=FUNC_GEN_MAX_UNS_CNT) THEN
        func_gen_int_uns_scnt <= (OTHERS => '0');
      ELSE
        func_gen_int_uns_scnt <= func_gen_int_uns_scnt + unsigned(FUNC_GEN_SINE_FREQUENCY);
      END IF;
    END IF;  	
  END PROCESS sine_counter;
  func_gen_int_sine_addr <=  STD_LOGIC_VECTOR(func_gen_int_uns_scnt); --non-synchronous assigment
  --
  --sine attenuator
  --sine_data scaled by sign extended FUNC_GEN_SINE_AMPLITUDE
  func_gen_int_sine_amp <= ('0' & FUNC_GEN_SINE_AMPLITUDE); -- sign extend pos mag
  sine_atten: PROCESS(func_gen_clk_in,func_gen_rst_l_in)
  BEGIN
    IF (func_gen_rst_l_in='0') THEN
      func_gen_int_sine_atten <= (OTHERS => '0');
    ELSIF (func_gen_clk_in'EVENT AND func_gen_clk_in='1') THEN
      func_gen_int_sine_atten <= func_gen_int_sine_data * func_gen_int_sine_amp;
    END IF;  	    
  END PROCESS sine_atten;
  func_gen_sine_out <= func_gen_int_sine_atten(31 DOWNTO 16); --non-synchronous assigment
  --
  --pulse counter
  --pulse_data starts at FUNC_GEN_PULSE_AMPLITUDE, then resets to zero after desired duty cycle
  --PULSE_DUTYCYCLE scaled counts per 1000 by muliplying by 10 so that can be compared to pcnt
  --pcnt counts in steps of PULSE_FREQUENCY up to 999
  pulse_counter: PROCESS(func_gen_clk_in,func_gen_rst_l_in)
  BEGIN
    IF (func_gen_rst_l_in='0') THEN 
     	func_gen_int_uns_pcnt <= (OTHERS => '0'); 
     	func_gen_int_uns_dctemp <= (OTHERS => '1'); 
     	func_gen_int_pulse_data <= (OTHERS => '0'); 
    ELSIF (func_gen_clk_in'EVENT AND func_gen_clk_in='1') THEN
      IF (func_gen_int_uns_pcnt >= FUNC_GEN_MAX_UNS_CNT) THEN
        func_gen_int_uns_pcnt <= (OTHERS => '0');
        func_gen_int_pulse_data <= (OTHERS => '0'); --zero at start
      ELSE 
        func_gen_int_uns_pcnt <= func_gen_int_uns_pcnt + unsigned(FUNC_GEN_PULSE_FREQUENCY);
        func_gen_int_uns_dctemp <= UNSIGNED(FUNC_GEN_PULSE_DUTYCYCLE) * "10100"; --mult by 20
        IF (func_gen_int_uns_pcnt >= func_gen_int_uns_dctemp(10 DOWNTO 1)) THEN --10 pcnt's per dcstep
          func_gen_int_pulse_data <= (OTHERS => '0');
        ELSE
          func_gen_int_pulse_data <= ('0' & FUNC_GEN_PULSE_AMPLITUDE);
        END IF;
      END IF;
    END IF;  	
  END PROCESS pulse_counter;
  func_gen_pulse_out <= func_gen_int_pulse_data; --non-synchronous assigment
  --
  --triangle counter
  --Triangle_data starts at -FUNC_GEN_TRIANGLE_AMPLITUDE, then counts up to +FUNC_GEN_TRIANGLE_AMPLITUDE
  --in half a period, then it counts with an equal but opposite slope for the 2nd half of the period.
  --The slope is 2*FUNC_GEN_TRIANGLE_AMPLITUDE / 500 tcnts = FUNC_GEN_TRIANGLE_AMPLITUDE / 250.
  --Dividing by 250 is approximately equal to multiplying by 131 and then dividing by 32768 (rt shift by 15).
  --tcnt counts in steps of PULSE_FREQUENCY up to 999
  triangle_counter: PROCESS(func_gen_clk_in,func_gen_rst_l_in)
  BEGIN
    IF (func_gen_rst_l_in='0') THEN 
     	func_gen_int_uns_tcnt <= (OTHERS => '0');
     	func_gen_int_uns_tcnt1 <= (OTHERS => '0');
     	func_gen_int_triangle_data <= (OTHERS => '0');
     	func_gen_int_tpos_slope <= (OTHERS => '0');
     	func_gen_int_tneg_slope <= (OTHERS => '0');
     	func_gen_int_triangle_negmax <= (OTHERS => '0');
     	func_gen_int_triangle_temp1 <= (OTHERS => '0');
     	func_gen_int_triangle_temp2 <= (OTHERS => '0');
    ELSIF (func_gen_clk_in'EVENT AND func_gen_clk_in='1') THEN
     	func_gen_int_triangle_negmax <= -('0' & FUNC_GEN_TRIANGLE_AMPLITUDE); --neg max amplitude
      func_gen_int_tpos_slope <= ('0' & FUNC_GEN_TRIANGLE_AMPLITUDE) * "010000011"; --mult by 131
      func_gen_int_tneg_slope <= -func_gen_int_tpos_slope;
      IF (func_gen_int_uns_tcnt >= FUNC_GEN_MAX_UNS_CNT) THEN
        func_gen_int_uns_tcnt <= (OTHERS => '0'); --at end of period, reset tcnt
        func_gen_int_uns_tcnt1 <= (OTHERS => '0'); --reset tcnt2
        func_gen_int_triangle_data <= func_gen_int_triangle_negmax; --reset triangle_data
      	func_gen_int_triangle_temp1 <= (OTHERS => '0');
      	func_gen_int_triangle_temp2 <= (OTHERS => '0');
      ELSIF (func_gen_int_uns_tcnt >= "0111110011") THEN --greater than 499 is negative slope region
      	func_gen_int_uns_tcnt <= func_gen_int_uns_tcnt + UNSIGNED(FUNC_GEN_TRIANGLE_FREQUENCY);
      	func_gen_int_uns_tcnt1 <= func_gen_int_uns_tcnt1 + UNSIGNED(FUNC_GEN_TRIANGLE_FREQUENCY); --tcnt - 500
      	func_gen_int_triangle_temp2 <= STD_LOGIC_VECTOR('0' & func_gen_int_uns_tcnt1) * func_gen_int_tneg_slope;
      	func_gen_int_triangle_data <= ('0' & FUNC_GEN_TRIANGLE_AMPLITUDE) + func_gen_int_triangle_temp2(30 DOWNTO 15);
      	--shift rt by 15 for div by 250
      ELSE
      	func_gen_int_uns_tcnt <= func_gen_int_uns_tcnt + UNSIGNED(FUNC_GEN_TRIANGLE_FREQUENCY);
      	func_gen_int_triangle_temp1 <= STD_LOGIC_VECTOR('0' & func_gen_int_uns_tcnt) * func_gen_int_tpos_slope;
      	func_gen_int_triangle_data <= func_gen_int_triangle_negmax + func_gen_int_triangle_temp1(30 DOWNTO 15);
       --shift rt by 15 for div by 250
      END IF;
    END IF;  	
  END PROCESS triangle_counter;
  func_gen_triangle_out <= func_gen_int_triangle_data; --non-synchronous assigment
  --
  --sawtooth counter
  --Sawtooth_data starts at zero, then counts up to +FUNC_GEN_SAWTOOTH_AMPLITUDE
  --in a full period, then it resets to zero in a single sawcnt.
  --The slope is FUNC_GEN_TRIANGLE_AMPLITUDE / 1000 tcnts.
  --Dividing by 1000 is approximately equal to multiplying by 131 and then dividing by 131072 (rt shift by 17).
  --sawcnt counts in steps of SAWTOOTH_FREQUENCY up to 999
  sawtooth_counter: PROCESS(func_gen_clk_in,func_gen_rst_l_in)
  BEGIN
    IF (func_gen_rst_l_in='0') THEN 
     	func_gen_int_uns_sawcnt <= (OTHERS => '0');
     	func_gen_int_sawtooth_data <= (OTHERS => '0');
     	func_gen_int_sawpos_slope <= (OTHERS => '0');
     	func_gen_int_sawtooth_temp1 <= (OTHERS => '0');
     	func_gen_int_dcoffset_data <= (OTHERS => '0');
    ELSIF (func_gen_clk_in'EVENT AND func_gen_clk_in='1') THEN
      func_gen_int_sawpos_slope <= ('0' & FUNC_GEN_SAWTOOTH_AMPLITUDE) * "010000011"; --mult by 131
      func_gen_int_dcoffset_data <= ('0' & FUNC_GEN_DCOFSET_AMPLITUDE);
      IF (func_gen_int_uns_sawcnt >= FUNC_GEN_MAX_UNS_CNT) THEN
        func_gen_int_uns_sawcnt <= (OTHERS => '0'); --at end of period, reset sawcnt
      	func_gen_int_sawtooth_temp1 <= (OTHERS => '0');
        func_gen_int_sawtooth_data <= (OTHERS => '0'); --reset sawtooth_data
      ELSE
      	func_gen_int_uns_sawcnt <= func_gen_int_uns_sawcnt + UNSIGNED(FUNC_GEN_SAWTOOTH_FREQUENCY);
      	func_gen_int_sawtooth_temp1 <= STD_LOGIC_VECTOR('0' & func_gen_int_uns_sawcnt) * func_gen_int_sawpos_slope;
      	func_gen_int_sawtooth_data <= func_gen_int_sawtooth_temp1(32 DOWNTO 17);
       --shift rt by 17 for div by 1000
      END IF;
    END IF;  	
  END PROCESS sawtooth_counter;
  func_gen_sawtooth_out <= func_gen_int_sawtooth_data; --non-synchronous assigment
  func_gen_dcoffset_out <= func_gen_int_dcoffset_data; --non-synchronous assignment
END Rtl; 

-------------------------------------------------------------------------------