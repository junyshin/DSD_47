library ieee;
use ieee.std_logic_1164.all;

entity g47_fsm is
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
end entity ; -- g47_fsm

architecture arch of g47_fsm is
  signal state: std_logic_vector(1 downto 0) := "00";
  signal hold: std_logic := '0';
begin
  STATE_MACHINE : process( clock, keypress, knock_m, knock_r, init, state )
  begin
    -- init -> state A -> state B -> keypress -> state C ->
    --   key release -> state D -> check -> state E -> state B
    --if rising_edge(clock) then
      -- check state
      if init = '1' then -- A
        state <= "00";
        en_l <= '0';
        en_m <= '0';
        en_r <= '0';
        load <= '1';
      elsif state = "00" then -- B
        if keypress = '0' then
          state <= "01";
        end if ;
        en_l <= '0';
        en_m <= '0';
        en_r <= '0';
        load <= '0';
      elsif state = "01" then -- C
        if keypress = '1' then
          state <= "10";
        end if ;
        en_l <= '0';
        en_m <= '0';
        en_r <= '0';
        load <= '0';
      elsif state = "10" then --D
        state <= "11";
        load <= '0';
        hold <= '1';
        if knock_m = '1' then
          en_l <= '1';
          en_m <= '1';
          en_r <= '1';
        elsif knock_r = '1' then
          en_l <= '0';
          en_m <= '1';
          en_r <= '1';
        else
          en_l <= '0';
          en_m <= '0';
          en_r <= '1';
        end if ;
      else -- E
        if rising_edge(clock) then
          if hold = '1' then
            hold <= '0';
          end if ;
        end if ;
        if falling_edge(clock) then
          if hold = '0' then
            state <= "00";
            en_l <= '0';
            en_m <= '0';
            en_r <= '0';
            load <= '0';
          end if ;
        end if ;
      end if ;
    --end if ;
  end process ; -- STATE_MACHINE
end architecture ; -- arch
