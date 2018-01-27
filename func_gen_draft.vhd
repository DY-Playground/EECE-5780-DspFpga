
entity func_gen is
  generic (
    -- Sine Wave Parameters
    func_gen_sine_amplitude     : std_logic_vector(14 downto 0);
    func_gen_sine_frequency     : std_logic_vector(9 downto 0);  -- 100 KHz steps
    func_gen_sine_phase         : std_logic_vector(2 downto 0);  -- 0, 45, 90, 135, 180,
    -- Pulse Wave Parameters
    func_gen_pulse_amplitude    : std_logic_vector(14 downto 0);
    func_gen_pulse_frequency    : std_logic_vector(9 downto 0);  -- 100 KHz steps
    func_gen_pulse_dutycycle    : std_logic_vector(6 downto 0);  -- 0-100
    -- Triangle Wave Parameters
    func_gen_triangle_amplitude : std_logic_vector(14 downto 0);
    func_gen_triangle_frequency : std_logic_vector(9 downto 0);  -- 100 KHz steps
    -- Sawtooth Wave Parameters
    func_gen_sawtooth_amplitude : std_logic_vector(14 downto 0);
    func_gen_sawtooth_frequency : std_logic_vector(9 downto 0);  -- 100 KHz steps
    -- DC Offset Parameters
    func_gen_dcofset_amplitude  : std_logic_vector(14 downto 0)
    );
  -- Port Definitions
  port (
    func_gen_clk_in       : in  std_logic;  -- 100 MHz clock input
    func_gen_rst_l_in     : in  std_logic;  -- Active low reset input
    -- Wave Ouputs
    func_gen_sine_out     : out std_logic_vector(15 downto 0);  -- Sine Wave Output
    func_gen_pulse_out    : out std_logic_vector(15 downto 0);  -- Pulse Wave Output
    func_gen_triangle_out : out std_logic_vector(15 downto 0);  -- Triangle Wave Output
    func_gen_sawtooth_out : out std_logic_vector(15 downto 0);  -- Sawtooth Wave Output
    func_gen_dcoffset_out : out std_logic_vector(15 downto 0);  -- DC Offset Output
    );
end func_gen
  
