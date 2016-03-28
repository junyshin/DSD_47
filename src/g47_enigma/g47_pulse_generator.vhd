library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g47_pulse_generator is
  port (
    clock: in std_logic;
    epulse: out std_logic
  ) ;
end entity ; -- g47_pulse_generator

architecture arch of g47_pulse_generator is
  signal q: std_logic_vector(9 downto 0);
begin
  COUNTER : lpm_counter
    -- Width: 25 ; Modulus: 25000000
    -- test width: 10 ; test modulus: 1000
    generic map(LPM_WIDTH => 10, LPM_MODULUS => 1000, LPM_DIRECTION => "DOWN")
    port map(clock => clock, q => q);

  epulse <= '1' when unsigned(q) = 0 else
            '0';
end architecture ; -- arch
