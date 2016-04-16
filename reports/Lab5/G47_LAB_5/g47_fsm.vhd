library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity g47_fsm is
  port (
    clock : in std_logic;
    init : in std_logic;
    knock_m : in std_logic;
    knock_r : in std_logic;
    keypress : in std_logic;
    load : out std_logic := '0';
    en_l : out std_logic := '0';
    en_m : out std_logic := '0';
    en_r : out std_logic := '0'
  ) ;
end entity ; -- g47_fsm

architecture arch of g47_fsm is
  type state_type is ( A, B, C, D, E, F );
  signal state : state_type := A;
begin
  STATE_MACHINE : process( clock, init, keypress, knock_m, knock_r )
  begin
    if init = '1' then
      state <= A;
    elsif rising_edge(clock) then
      case( state ) is
        when A =>
          if keypress = '0' then
            state <= B;
          else
            state <= A;
          end if ;
        when B =>
          if keypress = '1' then
            state <= C;
          else
            state <= B;
          end if ;
        when C =>
          if knock_m = '1' then
            state <= D;
          elsif knock_r = '1' then
            state <= E;
          else
            state <= F;
          end if ;
        when D =>
          state <= A;
        when E =>
          state <= A;
        when F =>
          state <= A;
      end case ;
    end if ;
  end process ; -- STATE_MACHINE

  ROTOR_STEPPER : process( init, state )
  begin
    if init = '1' then
      load <= '1';
      en_l <= '0';
      en_m <= '0';
      en_r <= '0';
    else
      load <= '0';
      case( state ) is
        when A =>
          en_l <= '0';
          en_m <= '0';
          en_r <= '0';
        when B =>
          en_l <= '0';
          en_m <= '0';
          en_r <= '0';
        when C =>
          en_l <= '0';
          en_m <= '0';
          en_r <= '0';
        when D =>
          en_l <= '1';
          en_m <= '1';
          en_r <= '1';
        when E =>
          en_l <= '0';
          en_m <= '1';
          en_r <= '1';
        when F =>
          en_l <= '0';
          en_m <= '0';
          en_r <= '1';
      end case ;
    end if ;
  end process ; -- ROTOR_STEPPER
end architecture ; -- arch
