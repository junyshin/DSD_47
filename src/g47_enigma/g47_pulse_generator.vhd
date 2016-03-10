library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g47_pulse_generator is
  generic (
    N: integer := 24999999,
    SIZE: integer := 24
  )
  port (
    clock: in std_logic;
    EPULSE: out std_logic
  ) ;
end entity ; -- g47_pulse_generator

architecture arch of g47_pulse_generator is
  signal q: std_logic_vector(SIZE downto 0)
begin
  COUNTER : lpm_counter
  generic map(lpm_width => SIZE, lpm_direction => "down", lpm_svalue => N)
  port map(clock => clock, q => q);

  PULSE : process(clock)
  begin
    if rising_edge(clock) then
      if unsigned(q) = 0 then
        EPULSE <= '1';
      else
        EPULSE <= '0';
      end if ;
    end if ;
  end process ; -- PULSE
end architecture ; -- arch
