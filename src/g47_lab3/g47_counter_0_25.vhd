library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g47_counter_0_25 is
	port (	counter_enable: in std_logic;
			reset: in std_logic;
			clk: in std_logic;
			count: out std_logic_vector(4 downto 0)
		);
end entity;

architecture counter of g47_counter_0_25 is
	signal start: std_logic_vector(4 downto 0);
begin
	
process (clk, reset, counter_enable)
begin
	if reset = '1' then
		start <= "00000";
	elsif counter_enable = '1' then
		start <= std_logic_vector(unsigned(start)+1);
	end if;
end process;
	count <= start;
	
end architecture ; -- counter