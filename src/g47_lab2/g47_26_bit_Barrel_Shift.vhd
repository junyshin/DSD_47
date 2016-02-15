library ieee;
use ieee.std_logic_1164.all;

entity g_47_26_bit_Barrel_Shift is
  port (X: in std_logic_vector(25 downto 0);
  		N: in std_logic_vector(5 downto 0);
  		Y: out std_logic_vector(25 downto 0)
  ) ;
end entity ; -- 26_bit_Barrel_Shift

architecture BShift of g47_26_bit_Barrel_Shift is

begin
With N select
	Y <= X when "000000",
		X(24 downto 0) & X(25) when "000001",
		X(23 downto 0) & X(25 downto 24) when "000010",
		X(22 downto 0) & X(25 downto 23) when "000011",
		X(21 downto 0) & X(25 downto 22) when "000100",
		X(20 downto 0) & X(25 downto 21) when "000101",
		X(19 downto 0) & X(25 downto 20) when "000110",
		X(18 downto 0) & X(25 downto 19) when "000111",
		X(17 downto 0) & X(25 downto 18) when "001000",
		X(16 downto 0) & X(25 downto 17) when "001001",
		X(15 downto 0) & X(25 downto 16) when "001010",
		X(14 downto 0) & X(25 downto 15) when "001011",
		X(13 downto 0) & X(25 downto 14) when "001100",
		X(12 downto 0) & X(25 downto 13) when "001101",
		X(11 downto 0) & X(25 downto 12) when "001110",
		X(10 downto 0) & X(25 downto 11) when "001111",
		X(9 downto 0) & X(25 downto 10) when "010000",
		X(8 downto 0) & X(25 downto 9) when "010001",
		X(7 downto 0) & X(25 downto 8) when "010010",
		X(6 downto 0) & X(25 downto 7) when "010011",
		X(5 downto 0) & X(25 downto 6) when "010100",
		X(4 downto 0) & X(25 downto 5) when "010101",
		X(3 downto 0) & X(25 downto 4) when "010110",
		X(2 downto 0) & X(25 downto 3) when "010111",
		X(1 downto 0) & X(25 downto 2) when "011000",
		X(0) & X(25 downto 1) when "011001",
		"11111111111111111111111111" WHEN OTHERS; -- WHEN Y="ALL 1", ERROR (N>25).

end architecture ; -- BShift
