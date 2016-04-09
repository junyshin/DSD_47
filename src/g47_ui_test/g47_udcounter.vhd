library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity g47_udcounter is
  generic(width : integer := 8);
  port (
    clock : in std_logic;
    up : in std_logic;
    down : in std_logic;
    reset : in std_logic;
    count: out std_logic_vector(width-1 downto 0)
  ) ;
end entity ; -- g47_udcounter

architecture arch of g47_udcounter is
  signal cnt : unsigned(width-1 downto 0);
  signal u, d : std_logic;
begin
  COUNTER : process( clock, reset )
  begin
    if reset = '1' then
      cnt <= (others => '0');
    elsif rising_edge(clock) then
      if (up = '1' and u = '0') then
        cnt <= cnt + 1;
      elsif (down = '1' and d = '0') then
        cnt <= cnt - 1;
      end if ;
      u <= up;
      d <= down;
    end if ;
  end process ; -- COUNTER
  count <= std_logic_vector(cnt);
end architecture ; -- arch
