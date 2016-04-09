library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g47_0_25_counter is
  port (
    clock: in std_logic;
    reset: in std_logic;
    load: in std_logic;
    data: in std_logic_vector(4 downto 0) := "00000";
    enable: in std_logic;
    count: out std_logic_vector(4 downto 0)
  ) ;
end entity ; -- g47_0_25_counter

architecture arch of g47_0_25_counter is
  signal cnt: unsigned(4 downto 0):= "00000";
begin
  counter_process : process(clock, reset, load, data, enable)
  begin
    if reset = '0' then
      cnt <= "00000";
    elsif rising_edge(clock) then
      if load = '1' then
        cnt <= unsigned(data);
      elsif enable = '1' then
        if cnt = 25 then
          cnt <= "00000";
        else
          cnt <= cnt + 1;
        end if ;
      end if ;
    end if ;
    count <= std_logic_vector(cnt);
  end process ; -- counter_process
end architecture ; -- arch
