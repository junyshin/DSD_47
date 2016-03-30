library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g47_0_25_counter is
  port (
    clock: in std_logic;
    reset: in std_logic;
    enable: in std_logic;
    count: out std_logic_vector(4 downto 0);
    --
    load: in std_logic;
    data: in std_logic_vector(4 downto 0)
  ) ;
end entity ; -- g47_0_25_counter

architecture arch of g47_0_25_counter is
  signal count_previous: unsigned(4 downto 0):= "00000";
begin
  counter_process : process(clock, reset, enable)
  begin
    if reset = '0' then
      count_previous <= "00000";
    elsif rising_edge(clock) then
      if load = '1' then
        count_previous <= unsigned(data);
      elsif enable = '1' then
        if count_previous = 25 then
          count_previous <= "00000";
        else
          count_previous <= count_previous + 1;
        end if ;
      end if ;
    end if ;
    count <= std_logic_vector(count_previous);
  end process ; -- counter_process
end architecture ; -- arch
