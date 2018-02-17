-------------------------------------------------------------------------------
-- Company: BAE Systems
-- Engineer: Dugan Yoon
-- 
-- Create Date:    18:00:00 02/15/2018 
-- Design Name:    hw2
-- Module Name:    hw2 - synthesizable 
-- Project Name:   EECE.5780-041 — Modeling and Implementation of Digital 
-- Systems using MATLAB
-- Target Devices: Xilinx Spartan6 XC6SLX16 CSG324 -3
-- Tool versions:  ISE version 14.7
-- Description: 
-- HW2 - Instantiate copies of the function generator to generate two waveforms.
-- 1. A raised cosine pulse train.
-- 2. A Quadrature Phase Shift Keyed waveform of 10110011100011110000.
-- The modulation rate is 500 KHz and the bits should be sent 125 KHz rate.
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
ENTITY hw2 IS
-------------------------------------------------------------------------------
-- GENERICS
    
-------------------------------------------------------------------------------
-- PORTS
  PORT ( 
    hw2_clk_in       : IN  STD_LOGIC;  -- 100 MHz clock input
    hw2_rst_l_in     : IN  STD_LOGIC;  -- Active low reset input
    -- Wave Ouputs
    hw2_raised_cosine_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Sine Wave Output
    hw2_qpsk_out    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)  -- Pulse Wave Output
  );
END hw2;

-------------------------------------------------------------------------------
ARCHITECTURE Rtl OF hw2 IS
-------------------------------------------------------------------------------
-- CONSTANTS

-------------------------------------------------------------------------------
-- SIGNALS
SIGNAL hw2_int_sine1       : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_pulse1      : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_triangle1   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_sawtooth1   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_dcoffset1   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_sine2       : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_pulse2      : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_triangle2   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_sawtooth2   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_dcoffset2   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_sine3       : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_pulse3      : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_triangle3   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_sawtooth3   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_dcoffset3   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_raised_cos  : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_cos_gate    : STD_LOGIC := '0';
SIGNAL hw2_int_data_addr   : STD_LOGIC_VECTOR(4 DOWNTO 0)  := (OTHERS => '0');
SIGNAL hw2_int_data        : STD_LOGIC := '0';
SIGNAL hw2_int_bit_cos     : STD_LOGIC := '0';
SIGNAL hw2_int_bit_cos_tmp : STD_LOGIC := '0';
SIGNAL hw2_int_bit_sin     : STD_LOGIC := '0';
SIGNAL hw2_int_250khz_cnt  : UNSIGNED(8 DOWNTO 0)          := (OTHERS => '0');
SIGNAL hw2_int_qpsk_cnt    : UNSIGNED(4 DOWNTO 0)          := (OTHERS => '0');
SIGNAL hw2_int_qpsk_data   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_qpsk_data_cos : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_qpsk_data_sin : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
-------------------------------------------------------------------------------
-- COMPONENTS
COMPONENT func_gen
  GENERIC (
    -- Function Generator Counter Parameters
    -- Sine Wave Parameters
    FUNC_GEN_SINE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0); -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0); -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE : STD_LOGIC_VECTOR(2 DOWNTO 0); -- x0=0, x1=45, x2=90, x3=135, x4=180, x5=x6=x7=0
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0); -- x3FFF=0dB attenuation
    FUNC_GEN_PULSE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0); -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE : STD_LOGIC_VECTOR(6 DOWNTO 0); -- 0-100
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0); -- x3FFF=0dB attenuation
    FUNC_GEN_TRIANGLE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0); -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0); -- x3FFF=0dB attenuation
    FUNC_GEN_SAWTOOTH_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0); -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0) -- x3FFF=0dB attenuation
  );
  PORT ( 
    func_gen_clk_in       : IN  STD_LOGIC;  -- 100 MHz clock input
    func_gen_rst_l_in     : IN  STD_LOGIC;  -- Active low reset input
    -- Wave Ouputs
    func_gen_sine_out     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- Sine Wave Output
    func_gen_pulse_out    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- Pulse Wave Output
    func_gen_triangle_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- Triangle Wave Output
    func_gen_sawtooth_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- Sawtooth Wave Output
    func_gen_dcoffset_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)  -- DC Offset Output
  );
END COMPONENT;
--
COMPONENT data_rom
  PORT (
    clka   : IN STD_LOGIC;
    rsta_l : IN STD_LOGIC;
    addra  : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta  : OUT STD_LOGIC
  );
END COMPONENT;
--
-------------------------------------------------------------------------------
BEGIN
  U11 : func_gen -- raised cosine source
    GENERIC MAP (
    FUNC_GEN_SINE_AMPLITUDE => "111111111111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY => "0000000100",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE => "010",  -- x0=0, x1=45, x2=90, x3=135, x4=180, x5=x6=x7=0
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE => "111111111111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_PULSE_FREQUENCY => "0000000010",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE => "0110010",  -- 0-100%, "0110010" = 50%
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE => "000000000011111",  -- x3FFF=0dB attenuation
    FUNC_GEN_TRIANGLE_FREQUENCY => "0000000011",  -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE => "000000000111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_SAWTOOTH_FREQUENCY => "0000000010",  -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE => "001111111111111"  -- x3FFF=0dB attenuation
    )
    PORT MAP ( 
      func_gen_clk_in       => hw2_clk_in,
      func_gen_rst_l_in     => hw2_rst_l_in,
      -- Wave Ouputs
      func_gen_sine_out     => hw2_int_sine1,
      func_gen_pulse_out    => hw2_int_pulse1,
      func_gen_triangle_out => hw2_int_triangle1,
      func_gen_sawtooth_out => hw2_int_sawtooth1,
      func_gen_dcoffset_out => hw2_int_dcoffset1
    );
  --
  U12 : func_gen -- qpsk sine modulator
    GENERIC MAP (
    FUNC_GEN_SINE_AMPLITUDE => "111111111111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY => "0000000101",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE => "000",  -- x0=0, x1=45, x2=90, x3=135, x4=180, x5=x6=x7=0
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE => "111111111111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_PULSE_FREQUENCY => "0000000101",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE => "0110010",  -- 0-100%, "0110010" = 50%
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE => "000000000011111",  -- x3FFF=0dB attenuation
    FUNC_GEN_TRIANGLE_FREQUENCY => "0000000011",  -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE => "000000000111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_SAWTOOTH_FREQUENCY => "0000000010",  -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE => "001111111111111"  -- x3FFF=0dB attenuation
    )
    PORT MAP ( 
      func_gen_clk_in       => hw2_clk_in,
      func_gen_rst_l_in     => hw2_rst_l_in,
      -- Wave Ouputs
      func_gen_sine_out     => hw2_int_sine2,
      func_gen_pulse_out    => hw2_int_pulse2,
      func_gen_triangle_out => hw2_int_triangle2,
      func_gen_sawtooth_out => hw2_int_sawtooth2,
      func_gen_dcoffset_out => hw2_int_dcoffset2
    );
  --
  U13 : func_gen -- qpsk cos modulator
    GENERIC MAP (
    FUNC_GEN_SINE_AMPLITUDE => "111111111111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY => "0000000101",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE => "010",  -- x0=0, x1=45, x2=90, x3=135, x4=180, x5=x6=x7=0
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE => "111111111111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_PULSE_FREQUENCY => "0000000101",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE => "0110010",  -- 0-100%, "0110010" = 50%
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE => "000000000011111",  -- x3FFF=0dB attenuation
    FUNC_GEN_TRIANGLE_FREQUENCY => "0000000011",  -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE => "000000000111111",  -- x3FFF=0dB attenuation
    FUNC_GEN_SAWTOOTH_FREQUENCY => "0000000010",  -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE => "001111111111111"  -- x3FFF=0dB attenuation
    )
    PORT MAP ( 
      func_gen_clk_in       => hw2_clk_in,
      func_gen_rst_l_in     => hw2_rst_l_in,
      -- Wave Ouputs
      func_gen_sine_out     => hw2_int_sine3,
      func_gen_pulse_out    => hw2_int_pulse3,
      func_gen_triangle_out => hw2_int_triangle3,
      func_gen_sawtooth_out => hw2_int_sawtooth3,
      func_gen_dcoffset_out => hw2_int_dcoffset3
    );
  --
  U14 : data_rom
  PORT MAP (
    clka   => hw2_clk_in,
    rsta_l => hw2_rst_l_in,
    addra  => hw2_int_data_addr,
    douta  => hw2_int_data
  );
  --
  -- raised cosine gate
  -- Sine1_data gated by pulse1_data being above half max amplitude
  -- Frequency of raised cosine output is determined by pulse frequency, 
  -- pulse duty cycle must be set so that the positive pulse brackets the 
  -- first period of the sine output. Sine delayed by 90 deg so that it
  -- starts at positive peak, which is then inverted to get positive 
  -- raised cosine pulses out.
  raised_cos_gate: PROCESS(hw2_clk_in,hw2_rst_l_in)
  BEGIN
    IF (hw2_rst_l_in='0') THEN
      hw2_int_raised_cos <= (OTHERS => '0');
    ELSIF (hw2_clk_in'EVENT AND hw2_clk_in='1') THEN
      CASE hw2_int_cos_gate IS
      	WHEN '1'    => hw2_int_raised_cos <= -hw2_int_sine1;
      	WHEN '0'    => hw2_int_raised_cos <=  "1100000000000000";
      	WHEN OTHERS => hw2_int_raised_cos <= (OTHERS => 'X');
      END CASE; 
    END IF;  	    
  END PROCESS raised_cos_gate;
  hw2_raised_cosine_out <= hw2_int_raised_cos; -- non-synchronous assignement
  hw2_int_cos_gate <= hw2_int_pulse1(14); -- half amplitude bit 14 determines gate on/off
  --
  -- 1011 0011 1000 1111 0000
  -- hw2_int_250khz_cnt runs at twice the output qpsk data rate
  qpsk_generator: PROCESS(hw2_clk_in,hw2_rst_l_in)
  BEGIN
    IF (hw2_rst_l_in='0') THEN 
     	hw2_int_250khz_cnt <= (OTHERS => '0');
     	hw2_int_qpsk_cnt   <= (OTHERS => '0');
     	hw2_int_qpsk_cnt   <= (OTHERS => '0');
    ELSIF (hw2_clk_in'EVENT AND hw2_clk_in='1') THEN
      IF (hw2_int_250khz_cnt >= "111110011") THEN -- 499 divisor for 250 KHz from 100 MHz
        hw2_int_250khz_cnt <= (OTHERS => '0'); 
        hw2_int_qpsk_cnt <= hw2_int_qpsk_cnt + "00001";
      ELSE
        hw2_int_250khz_cnt <= hw2_int_250khz_cnt + "000000001";
      END IF;
      -- Demultiplexor
      CASE hw2_int_qpsk_cnt(0) IS
      	WHEN '0'    => hw2_int_bit_cos_tmp <= hw2_int_data;
      		             hw2_int_bit_sin     <= hw2_int_bit_sin;
      	WHEN '1'    => hw2_int_bit_sin <= hw2_int_data;
      		             hw2_int_bit_cos <= hw2_int_bit_cos_tmp;
      	WHEN OTHERS => hw2_int_bit_sin <= 'X';
      		             hw2_int_bit_cos <= 'X';
      END CASE;
      CASE hw2_int_bit_cos IS
      	WHEN '1'    => hw2_int_qpsk_data_cos <= hw2_int_sine3;
      	WHEN '0'    => hw2_int_qpsk_data_cos <= "0000000000000000";
      	WHEN OTHERS => hw2_int_qpsk_data_cos <= (OTHERS => 'X');
      END CASE; 
      CASE hw2_int_bit_sin IS
      	WHEN '1'    => hw2_int_qpsk_data_sin <= hw2_int_sine2;
      	WHEN '0'    => hw2_int_qpsk_data_sin <= "0000000000000000";
      	WHEN OTHERS => hw2_int_qpsk_data_sin <= (OTHERS => 'X');
      END CASE; 
      hw2_int_qpsk_data <= hw2_int_qpsk_data_cos + hw2_int_qpsk_data_sin;
    END IF;  	
  END PROCESS qpsk_generator;
  hw2_int_data_addr <= STD_LOGIC_VECTOR(hw2_int_qpsk_cnt);
  hw2_qpsk_out <= hw2_int_qpsk_data;
  END Rtl; 

-------------------------------------------------------------------------------