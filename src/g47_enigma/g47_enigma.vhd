library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all ;

entity g47_enigma is
  port (
    clock: in std_logic;
    input_code: in std_logic_vector(4 downto 0);
    output_code: out std_logic_vector(4 downto 0);
    -- fsm
    reset: in std_logic;
    init: in std_logic;
    keypress: in std_logic;
    -- left settings
    left_data: in std_logic_vector(4 downto 0) := "00000";
    left_rotor_type: in std_logic_vector(1 downto 0) := "00";
    left_ring_shift: in std_logic_vector(4 downto 0) := "00000";
    -- middle settings
    middle_data: in std_logic_vector(4 downto 0) := "00000";
    middle_rotor_type: in std_logic_vector(1 downto 0) := "00";
    middle_ring_shift: in std_logic_vector(4 downto 0) := "00000";
    -- right settings
    right_data: in std_logic_vector(4 downto 0) := "00000";
    right_rotor_type: in std_logic_vector(1 downto 0) := "00";
    right_ring_shift: in std_logic_vector(4 downto 0) := "00000";
    -- reflector settings
    reflector_type: in std_logic := '0'
  ) ;
end entity ; -- g47_enigma

architecture arch of g47_enigma is
  -- Components
  component g47_stecker
    port (
      input_code: in std_logic_vector(4 downto 0);
      output_code: out std_logic_vector(4 downto 0)
    ) ;
  end component;
  component g47_rotor
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
  end component;
  component g47_reflector
    port (
      reflector_type: in std_logic;
      input_code: in std_logic_vector(4 downto 0);
      output_code: out std_logic_vector(4 downto 0)
    ) ;
  end component;
  component g47_5_comp
    port (
      A: in std_logic_vector(4 downto 0);
      B: in std_logic_vector(4 downto 0);
      Eq: out std_logic
    ) ;
  end component;
  component g47_fsm
    port (
      clock: in std_logic;
      keypress: in std_logic;
      knock_m: in std_logic;
      knock_r: in std_logic;
      init: in std_logic;
      en_l: out std_logic;
      en_m: out std_logic;
      en_r: out std_logic;
      load: out std_logic
    ) ;
  end component;

  -- Constants
  type ROTOR_TYPE_ARRAY is array (0 to 3) of std_logic_vector(4 downto 0);
  constant ROTOR_TYPE_NOTCH : ROTOR_TYPE_ARRAY :=
    ("10000",  -- q
     "00100",  -- e
     "10101",  -- v
     "01001"); -- j

  -- Variables
  signal knock_m, knock_r, en_l, en_m, en_r, load: std_logic;
  signal state: std_logic_vector(1 downto 0) := "00";
  signal stecker_code, stecker_output_code, prev_output_code, reflector_code,
         left_rtl_code,   left_ltr_code,
         middle_rtl_code, middle_ltr_code,
         right_rtl_code,  right_ltr_code,
         left_rotor_shift, middle_rotor_shift, right_rotor_shift,
         middle_notch, right_notch
    : std_logic_vector(4 downto 0);
begin

  middle_notch <= ROTOR_TYPE_NOTCH(to_integer(unsigned(middle_rotor_type)));
  right_notch  <= ROTOR_TYPE_NOTCH(to_integer(unsigned(right_rotor_type)));

  COMP_MIDDLE : g47_5_comp
    port map(A => middle_rotor_shift,
             B => middle_notch,
             Eq => knock_m);

  COMP_RIGHT : g47_5_comp
    port map(A => right_rotor_shift,
             B => right_notch,
             Eq => knock_r);

  FSM : g47_fsm
    port map(clock => clock, init => init, keypress => keypress,
             knock_m => knock_m, knock_r => knock_r,
             en_l => en_l, en_m => en_m, en_r => en_r, load => load);

  REFLECTOR : g47_reflector
    port map(reflector_type => reflector_type,
             input_code => left_rtl_code, output_code => reflector_code);

  ROTOR_LEFT : g47_rotor
    port map(clock => clock,
             reset => reset, enable => en_l,
             load => load, data => left_data,
             rotor_type => left_rotor_type,
             ring_shift => left_ring_shift, rotor_shift => left_rotor_shift,
             rtl_input_code => middle_rtl_code, rtl_output_code => left_rtl_code,
             ltr_input_code => reflector_code, ltr_output_code => left_ltr_code
            );

  ROTOR_MIDDLE : g47_rotor
    port map(clock => clock,
             reset => reset, enable => en_m,
             load => load, data => middle_data,
             rotor_type => middle_rotor_type,
             ring_shift => middle_ring_shift, rotor_shift => middle_rotor_shift,
             rtl_input_code => right_rtl_code, rtl_output_code => middle_rtl_code,
             ltr_input_code => left_ltr_code, ltr_output_code => middle_ltr_code
            );

  ROTOR_RIGHT : g47_rotor
    port map(clock => clock,
             reset => reset, enable => en_r,
             load => load, data => right_data,
             rotor_type => right_rotor_type,
             ring_shift => right_ring_shift, rotor_shift => right_rotor_shift,
             rtl_input_code => stecker_code, rtl_output_code => right_rtl_code,
             ltr_input_code => middle_ltr_code, ltr_output_code => right_ltr_code
            );

  STECKER_IN : g47_stecker
    port map(input_code => input_code, output_code => stecker_code);

  STECKER_OUT : g47_stecker
    port map(input_code => right_ltr_code, output_code => output_code);

  KEYPRESS_ENABLE : process( clock, init, keypress, stecker_output_code, prev_output_code)
  begin
    if init = '1' then
      prev_output_code <= "11111"
    elsif state = "00" then
      if keypress = '0' then
        state <= "01";
      end if ;
    elsif state = "01" then
      if keypress = '1' then
        state <= "10";
      end if ;
    elsif state = "10" then
      state <= "11";
    else
      state <= "00";
      prev_output_code <= stecker_output_code;
    end if ;
    --output_code <= prev_output_code;
  end process ; -- KEYPRESS_ENABLE
end architecture ; -- arch
