library ieee;
use ieee.std_logic_1164.all;

entity g47_rotor is
  port (
    clock: in std_logic;
    -- rotor settings
    reset: in std_logic;
    enable: in std_logic;
    load: in std_logic;
    data: in std_logic_vector(4 downto 0);
    ring_shift: in std_logic_vector(4 downto 0);
    rotor_type: in std_logic_vector(1 downto 0);
    rotor_shift: out std_logic_vector(4 downto 0);
    -- rtl signals
    rtl_input_code: in std_logic_vector(4 downto 0);
    rtl_output_code: out std_logic_vector(4 downto 0);
    -- ltr signals
    ltr_input_code: in std_logic_vector(4 downto 0);
    ltr_output_code: out std_logic_vector(4 downto 0)
  ) ;
end entity ; -- g47_rotor

architecture arch of g47_rotor is
  -- Components
  component g47_0_25_counter
    port (
      clock: in std_logic;
      reset: in std_logic;
      enable: in std_logic;
      count: out std_logic_vector(4 downto 0);
      --
      load: in std_logic;
      data: in std_logic_vector(4 downto 0)
    ) ;
  end component;
  component g47_5_26_decoder
    port (
      index: in std_logic_vector(4 downto 0);
      letter: out std_logic_vector(25 downto 0);
      error: out std_logic
    ) ;
  end component;
  component g47_26_5_encoder
    port (
      letter: in std_logic_vector(25 downto 0);
      index: out std_logic_vector(4 downto 0);
      error: out std_logic
    ) ;
  end component;
  component g47_26_barrelshift
    port (
      direction: in std_logic;
      X: in std_logic_vector(25 downto 0);
      shift: in std_logic_vector(4 downto 0);
      Y: out std_logic_vector(25 downto 0)
    ) ;
  end component;
  component g47_permutation
    port (
      rotor_type: in std_logic_vector(1 downto 0);
      input_code: in std_logic_vector(4 downto 0);
      output_code: out std_logic_vector(4 downto 0);
      inv_output_code: out std_logic_vector(4 downto 0)
    ) ;
  end component;

  -- Constants
  constant DIR_RIGHT : std_logic := '0';
  constant DIR_LEFT : std_logic := '1';

  -- Variables
  signal counter_rotor_shift,
         rtl_in_enc_code,      ltr_in_enc_code,
         rtl_permutation_code, ltr_permutation_code
    : std_logic_vector(4 downto 0);
  signal rtl_input_letter,     ltr_input_letter,
         rtl_in_rotor_letter,  ltr_in_rotor_letter,
         rtl_in_ring_letter,   ltr_in_ring_letter,
         rtl_out_dec_letter,   ltr_out_dec_letter,
         rtl_out_ring_letter,  ltr_out_ring_letter,
         rtl_output_letter,    ltr_output_letter
    : std_logic_vector(25 downto 0);
begin
  ROTOR_SHIFT_COUNTER : g47_0_25_counter
    port map(clock => clock, reset => reset, enable => enable,
             load => load, data => data,
             count => counter_rotor_shift);

  rotor_shift <= counter_rotor_shift;

  -- RIGHT PATH

  RTL_IN_LETTER : g47_5_26_decoder
    port map(index => rtl_input_code, letter => rtl_input_letter); -- error signal ignored

  RTL_IN_ROTOR : g47_26_barrelshift
    port map(direction => DIR_RIGHT, shift => counter_rotor_shift,
             X => rtl_input_letter,
             Y => rtl_in_rotor_letter);

  RTL_IN_RING : g47_26_barrelshift
    port map(direction => DIR_LEFT, shift => ring_shift,
             X => rtl_in_rotor_letter,
             Y => rtl_in_ring_letter);

  RTL_IN_ENCODER : g47_26_5_encoder
    port map(letter => rtl_in_ring_letter, index => rtl_in_enc_code);

  RTL_PERMUTATION : g47_permutation
    port map(rotor_type => rotor_type,
             input_code => rtl_in_enc_code,
             output_code => rtl_permutation_code);

  RTL_OUT_DECODER : g47_5_26_decoder
    port map(index => rtl_permutation_code, letter => rtl_out_dec_letter);

  RTL_OUT_RING : g47_26_barrelshift
    port map(direction => DIR_RIGHT, shift => ring_shift,
             X => rtl_out_dec_letter,
             Y => rtl_out_ring_letter);

  RTL_OUT_ROTOR : g47_26_barrelshift
    port map(direction => DIR_LEFT, shift => counter_rotor_shift,
             X => rtl_out_ring_letter,
             Y => rtl_output_letter);

  RTL_OUT_VALUE : g47_26_5_encoder
    port map(letter => rtl_output_letter, index => rtl_output_code);

  -- LEFT PATH

  LTR_IN_LETTER : g47_5_26_decoder
    port map(index => ltr_input_code, letter => ltr_input_letter);

  LTR_IN_ROTOR : g47_26_barrelshift
    port map(direction => DIR_RIGHT, shift => counter_rotor_shift,
             X => ltr_input_letter,
             Y => ltr_in_rotor_letter);

  LTR_IN_RING : g47_26_barrelshift
    port map(direction => DIR_LEFT, shift => ring_shift,
             X => ltr_in_rotor_letter,
             Y => ltr_in_ring_letter);

  LTR_IN_ENCODER : g47_26_5_encoder
    port map(letter => ltr_in_ring_letter, index => ltr_in_enc_code);

  LTR_PERMUTATION : g47_permutation
    port map(rotor_type => rotor_type,
             input_code => ltr_in_enc_code,
             inv_output_code => ltr_permutation_code);

  LTR_OUT_DECODER : g47_5_26_decoder
    port map(index => ltr_permutation_code, letter => ltr_out_dec_letter);

  LTR_OUT_RING : g47_26_barrelshift
    port map(direction => DIR_RIGHT, shift => ring_shift,
             X => ltr_out_dec_letter,
             Y => ltr_out_ring_letter);

  LTR_OUT_ROTOR : g47_26_barrelshift
    port map(direction => DIR_LEFT, shift => counter_rotor_shift,
             X => ltr_out_ring_letter,
             Y => ltr_output_letter);

  LTR_OUT_VALUE : g47_26_5_encoder
    port map(letter => ltr_output_letter, index => ltr_output_code);
end architecture ; -- arch
