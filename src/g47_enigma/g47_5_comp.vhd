library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g47_5_comp is
  port (
    A: in unsigned(4 downto 0);
    B: in unsigned(4 downto 0);
    Eq: out std_logic
  ) ;
end entity ; -- g47_5_comp

architecture arch of g47_5_comp is
begin
  Eq <= '1' when A = B else '0';
  --compare : process( A, B )
  --begin
  --  if (A = B) then
  --    Eq <= '1';
  --  else
  --    Eq <= '0';
  --  end if ;
  --end process ; -- compare
end architecture ; -- arch
