entity g47_testbed is
  port (
    clock: in std_logic,
    letter_input: in std_logic_vector(4 downto 0),
    counter_reset: in std_logic(4 downto 0) := '1',
    segments: out std_logic_vector(6 downto 0),
    error_decode: out std_logic,
    error_encode: out std_logic
  ) ;
end entity ; -- g47_testbed

architecture arch of g47_testbed is
  signal epulse: std_logic;
  signal letter_original, letter_shifted: std_logic_vector(25 downto 0);
  signal shift, letter_output: std_logic_vector(4 downto 0);
begin
  PULSE : g47_pulse_generator
    port map(clock => clock, epulse => epulse);

  COUNTER : g47_0_25_counter
    port map(clock => clock, reset => counter_reset, count_enable => epulse, count => shift);

  DECODER : g47_5_26_decoder
    port map(index => letter_input, letter => letter_original, error => error_decode);

  SHIFTER : g47_26_barrelshift
    port map(X => letter_original, shift => shift, Y => letter_shifted);

  ENCODER : g47_26_5_encoder
    port map(letter => letter_shifted, index => letter_output, error => error_encode);

  DISPLAY : g47_7_segmentdecoder
    port map(code => letter_output, segments => segments);
end architecture ; -- arch
