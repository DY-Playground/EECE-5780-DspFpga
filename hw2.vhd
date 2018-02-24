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
SIGNAL hw2_int_raised_cos_temp1  : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_raised_cos_temp2  : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_data_addr   : STD_LOGIC_VECTOR(4 DOWNTO 0)  := (OTHERS => '0');
SIGNAL hw2_int_data        : STD_LOGIC := '0';
SIGNAL hw2_int_data_dly1   : STD_LOGIC := '0';
SIGNAL hw2_int_bit_cos     : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_bit_sin     : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_125khz_cnt  : UNSIGNED(9 DOWNTO 0)          := (OTHERS => '0');
SIGNAL hw2_int_qpsk_cnt    : UNSIGNED(4 DOWNTO 0)          := (OTHERS => '0');
SIGNAL hw2_int_qpsk_data   : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_qpsk_data_cos : STD_LOGIC_VECTOR(17 DOWNTO 0) := (OTHERS => '0');
SIGNAL hw2_int_qpsk_data_sin : STD_LOGIC_VECTOR(17 DOWNTO 0) := (OTHERS => '0');
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
    FUNC_GEN_PULSE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0); -- specifies max amplitude of the output
    FUNC_GEN_PULSE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0); -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE : STD_LOGIC_VECTOR(6 DOWNTO 0); -- 0-100
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0); -- specifies max amplitude of the output
    FUNC_GEN_TRIANGLE_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0); -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0); -- specifies max amplitude of the output
    FUNC_GEN_SAWTOOTH_FREQUENCY : STD_LOGIC_VECTOR(9 DOWNTO 0); -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE : STD_LOGIC_VECTOR(14 DOWNTO 0) -- specifies max amplitude of the output
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
    --
  	-- To cleanly gate a full cycle of the sinusoidal waveform, the pulse must be
	  -- high from when the waveform starts at its lowest point, and then stay high
	  -- for a full cycle.  Since the pulse waveform always goes high at time=0, the
	  -- sine wave must be phase shifted by 270 degrees.  The cleanest combinations 
	  -- for gating has the sine frequency an integer multiple of the pulse frequency
    -- and the duty cycle as the inverse ratio.  For example 2x sine wave frequency
    -- with 1/2 duty cycle, or 3x sine wave frequency with 1/3 duty cycle.  Since
    -- multiplication is used for the gating function, the amplitude should be set to
    -- "000000000000001".
    --
    -- To bias the raised cosine at 0, the sine amplitude must be no more than half
    -- full scale so that it doesn't overflow when shifted up.  Set the DCOFFSET to
    -- the same value as the sine magnitude to shift the negative peaks of the sine
    -- waveform to zero.
      --
     GENERIC MAP (
    FUNC_GEN_SINE_AMPLITUDE     => "100000000000000",  -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY     => "0000000100",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE         => "110", -- x0=0, 1=45,x2=90,x3=135,x4=180,x5=225,x6=270,=x7=315
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE    => "000000000000001",  -- specifies max amplitude of the output
    FUNC_GEN_PULSE_FREQUENCY    => "0000000001",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE    => "0011010",  -- 0-100%, "0110010" = 50%, "0011001" = 25%
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE => "000000000011111",  -- specifies max amplitude of the output
    FUNC_GEN_TRIANGLE_FREQUENCY => "0000000011",  -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE => "000000000111111",  -- specifies max amplitude of the output
    FUNC_GEN_SAWTOOTH_FREQUENCY => "0000000010",  -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE  => "100000000000000" -- specifies max amplitude of the output
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
  -- The sine and cosine sources need to be set to no more than half full scale to avoid 
  -- overflow when the addition takes place.  Setting the sine frequency generic to "101"
  -- gives the required 500 KHz carrier frequency.  The phase for the sine is set to "00"
  -- while the phase for the cos is set to "010".  The other sources aren't used.
  --
  U12 : func_gen -- qpsk sine modulator
    GENERIC MAP (
    FUNC_GEN_SINE_AMPLITUDE => "100000000000000",  -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY => "0000000101",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE => "000", -- x0=0, 1=45,x2=90,x3=135,x4=180,x5=225,x6=270,=x7=315
    -- Pulse Wave Parameters
    FUNC_GEN_PULSE_AMPLITUDE => "111111111111111",  -- specifies max amplitude of the output
    FUNC_GEN_PULSE_FREQUENCY => "0000000101",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_PULSE_DUTYCYCLE => "0110010",  -- 0-100%, "0110010" = 50%
    -- Triangle Wave Parameters
    FUNC_GEN_TRIANGLE_AMPLITUDE => "000000000011111",  -- specifies max amplitude of the output
    FUNC_GEN_TRIANGLE_FREQUENCY => "0000000011",  -- x001=100 KHz, 100 KHz steps
    -- Sawtooth Wave Parameters
    FUNC_GEN_SAWTOOTH_AMPLITUDE => "000000000111111",  -- specifies max amplitude of the output
    FUNC_GEN_SAWTOOTH_FREQUENCY => "0000000010",  -- x001=100 KHz, 100 KHz steps
    -- DC Offset Parameters
    FUNC_GEN_DCOFSET_AMPLITUDE => "000000000000000"  -- specifies max amplitude of the output
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
    FUNC_GEN_SINE_AMPLITUDE => "100000000000000",  -- x3FFF=0dB attenuation
    FUNC_GEN_SINE_FREQUENCY => "0000000101",  -- x001=100 KHz, 100 KHz steps
    FUNC_GEN_SINE_PHASE => "010", -- x0=0, 1=45,x2=90,x3=135,x4=180,x5=225,x6=270,=x7=315
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
    FUNC_GEN_DCOFSET_AMPLITUDE => "011111111111111"  -- x3FFF=0dB attenuation
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
  -- This rom holds the data bitstream that is clocked out at 125 KHz rate.
  --
  U14 : data_rom
  PORT MAP (
    clka   => hw2_clk_in,
    rsta_l => hw2_rst_l_in,
    addra  => hw2_int_data_addr,
    douta  => hw2_int_data
  );
  --
  -- raised cosine gate process --
  --
  -- First, the sine waveform is shifted up by the DCOFFSET to position
  -- the negative peaks at zero.  Then the result is multiplied by the 
  -- pulse waveform.
  -- 
  -- Frequency of raised cosine output is determined by pulse frequency, 
  -- pulse duty cycle must be set so that the positive pulse brackets the 
  -- first period of the sine output. Sine phase shifter by 270 deg so that
  -- it starts at negative peak.
  --
  raised_cos_gate: PROCESS(hw2_clk_in,hw2_rst_l_in)
  BEGIN
    IF (hw2_rst_l_in='0') THEN
      hw2_int_raised_cos_temp1 <= (OTHERS => '0');
      hw2_int_raised_cos_temp2 <= (OTHERS => '0');
    ELSIF (hw2_clk_in'EVENT AND hw2_clk_in='1') THEN
      hw2_int_raised_cos_temp1 <= hw2_int_sine1 + hw2_int_dcoffset1;
      hw2_int_raised_cos_temp2 <= hw2_int_raised_cos_temp1 * hw2_int_pulse1;
    END IF;  	    
  END PROCESS raised_cos_gate;
  hw2_raised_cosine_out <= hw2_int_raised_cos_temp2(15 DOWNTO 0); -- non-synchronous assignement
  --
  -- qpsk generator process --
  --
  -- The bitstream "1011 0011 1000 1111 0000" is stored in data_rom, which is
  -- 32 bits deep.  Data_rom is addressed by hw2_int_125khz_cnt.  The output 
  -- qpsk data rate is 62.5 KHz since 2-bits are transmitted each modulation 
  -- cycle.  The divisor of 800 gives 125 KHz from 100 MHz, so a max count of
  -- 799 ("1100011111")is used.
  --
  -- A shift register at the 125 KHz rate allows 2-bits to be read out at half
  -- the rate when the data_rom address LSB is a '1'. Since multiplication is
  -- preferred to using a case statement to turn on or off the carrier source it
  -- is necessary to convert the bitstream from STD_LOGIC to STD_LOGIC_VECTOR. 
  -- The assignment for STD_LOGIC_VECTOR uses "00" and "01" to multiply by zero 
  -- and one (can't use a single bit since this would invert or zero).
  --
  qpsk_generator: PROCESS(hw2_clk_in,hw2_rst_l_in)
  BEGIN
    IF (hw2_rst_l_in='0') THEN 
     	hw2_int_125khz_cnt  <= (OTHERS => '0');
     	hw2_int_qpsk_cnt    <= (OTHERS => '0');
     	hw2_int_bit_sin     <= (OTHERS => '0');
     	hw2_int_bit_cos     <= (OTHERS => '0');
     	hw2_int_data_dly1   <= '0'; 
    ELSIF (hw2_clk_in'EVENT AND hw2_clk_in='1') THEN
      IF (hw2_int_125khz_cnt >= "1100011111") THEN
        hw2_int_125khz_cnt <= (OTHERS => '0'); 
        hw2_int_qpsk_cnt <= hw2_int_qpsk_cnt + "00001";
        hw2_int_data_dly1 <= hw2_int_data;
        -- Demultiplexor
        IF hw2_int_qpsk_cnt(0) = '1' THEN
          CASE hw2_int_data_dly1 IS
            WHEN '1' => hw2_int_bit_cos    <= "01";
            WHEN '0' => hw2_int_bit_cos    <= "00";
            WHEN OTHERS => hw2_int_bit_cos <= "XX";
          END CASE;
          CASE hw2_int_data IS
            WHEN '1'    => hw2_int_bit_sin <= "01";
            WHEN '0'    => hw2_int_bit_sin <= "00";
            WHEN OTHERS => hw2_int_bit_sin <= "XX";
          END CASE;
        END IF;
      ELSE
        hw2_int_125khz_cnt <= hw2_int_125khz_cnt + "0000000001";
      END IF;
     hw2_int_qpsk_data_cos <= hw2_int_sine3 * hw2_int_bit_cos;
     hw2_int_qpsk_data_sin <= hw2_int_sine2 * hw2_int_bit_sin;
      hw2_int_qpsk_data <= hw2_int_qpsk_data_cos(15 DOWNTO 0) + hw2_int_qpsk_data_sin(15 DOWNTO 0);
    END IF;  	
  END PROCESS qpsk_generator;
  hw2_int_data_addr <= STD_LOGIC_VECTOR(hw2_int_qpsk_cnt);
  hw2_qpsk_out <= hw2_int_qpsk_data;
  END Rtl; 

-------------------------------------------------------------------------------