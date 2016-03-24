library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g47_5_comp is
  port (
    A: in std_logic_vector(4 downto 0);
    B: in std_logic_vector(4 downto 0);
    Eq: out std_logic
  ) ;
end entity ; -- g47_5_comp

architecture arch of g47_5_comp is
begin
  Eq <= '1' when unsigned(A) = unsigned(B) else
        '0';
end architecture ; -- arch
