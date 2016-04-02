library ieee;
use ieee.std_logic_1164.all;

entity g47_fsm_testbed is
  port (
    clock: in std_logic;
    reset: in std_logic;
    init: in std_logic;
    segments_l: out std_logic_vector(6 downto 0);
    segments_m: out std_logic_vector(6 downto 0);
    segments_r: out std_logic_vector(6 downto 0)
  ) ;
end entity ; -- g47_fsm_testbed

architecture arch of g47_fsm_testbed is
  -- Components
  component g47_pulse_generator
    port (
      clock: in std_logic;
      epulse: out std_logic
    ) ;
  end component;
  component g47_0_25_counter
    port (
      clock: in std_logic;
      reset: in std_logic;
      count_enable: in std_logic;
      count: out std_logic_vector(4 downto 0);
      load: in std_logic;
      load_value: in std_logic_vector(4 downto 0)
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
  component g47_7_segmentdecoder
    port (
      index: in std_logic_vector(4 downto 0);
      segments: out std_logic_vector(6 downto 0)
    ) ;
  end component;

  -- Constants
  type ROTOR_TYPE is array (0 to 3) of std_logic_vector(4 downto 0);
  constant ROTOR_TYPE_NOTCH : ROTOR_TYPE :=
    ("10000",-- q
     "00100",-- e
     "10101",-- v
     "01001");-- j
  constant KNOCK_LETTER_M : std_logic_vector(4 downto 0) := ROTOR_TYPE_NOTCH(0);
  constant KNOCK_LETTER_R : std_logic_vector(4 downto 0) := ROTOR_TYPE_NOTCH(0);
  constant LOAD_VALUE_L : std_logic_vector(4 downto 0) := "01100";
  constant LOAD_VALUE_M : std_logic_vector(4 downto 0) := "01101";
  constant LOAD_VALUE_R : std_logic_vector(4 downto 0) := "01110";

  -- Variables
  signal keypress, knock_m, knock_r, en_l, en_m, en_r, load: std_logic;
  signal letter_l, letter_m, letter_r: std_logic_vector(4 downto 0);
begin
  PULSE : g47_pulse_generator
    port map(clock => clock, epulse => keypress);

  ROTOR_l : g47_0_25_counter
    port map(clock => clock, reset => reset, count_enable => en_l,
             load => load, load_value => LOAD_VALUE_L,
             count => letter_l);

  ROTOR_m : g47_0_25_counter
    port map(clock => clock, reset => reset, count_enable => en_m,
             load => load, load_value => LOAD_VALUE_M,
             count => letter_m);

  ROTOR_r : g47_0_25_counter
    port map(clock => clock, reset => reset, count_enable => en_r,
             load => load, load_value => LOAD_VALUE_R,
             count => letter_r);

  COMP_m : g47_5_comp
    port map(A => letter_m, B => KNOCK_LETTER_M, Eq => knock_m);

  COMP_r : g47_5_comp
    port map(A => letter_r, B => KNOCK_LETTER_R, Eq => knock_r);

  FSM : g47_fsm
    port map(clock => clock, keypress => keypress,
             knock_m => knock_m, knock_r => knock_r, init => init,
             en_l => en_l, en_m => en_m, en_r => en_r, load => load);

  DISPLAY_l : g47_7_segmentdecoder
    port map(index => letter_l, segments => segments_l);

  DISPLAY_m : g47_7_segmentdecoder
    port map(index => letter_m, segments => segments_m);

  DISPLAY_r : g47_7_segmentdecoder
    port map(index => letter_r, segments => segments_r);
end architecture ; -- arch
