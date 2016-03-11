library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g47_pulse_generator is
  generic (
    SIZE: integer := 25,
    N: integer := 24999999
  )
  port (
    clock: in std_logic;
    epulse: out std_logic
  ) ;
end entity ; -- g47_pulse_generator

architecture arch of g47_pulse_generator is
  signal q: std_logic_vector(SIZE downto 0)
begin
  COUNTER : lpm_counter
    generic map(LPM_WIDTH => SIZE, LPM_SVALUE => N, LPM_DIRECTION => "DOWN")
    port map(clock => clock, q => q);

  PULSE : process(clock, q)
  begin
    if rising_edge(clock) then
      if unsigned(q) = 0 then
        epulse <= '1';
      else
        epulse <= '0';
      end if ;
    end if ;
  end process ; -- PULSE
end architecture ; -- arch
