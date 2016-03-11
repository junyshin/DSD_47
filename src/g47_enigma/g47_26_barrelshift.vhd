library ieee;
use ieee.std_logic_1164.all;

entity g47_26_barrelshift is
  port (
    X: in std_logic_vector(25 downto 0);
    shift: in std_logic_vector(4 downto 0);
    Y: out std_logic_vector(25 downto 0)
  ) ;
end entity ; -- g47_26_barrelshift

architecture arch of g47_26_barrelshift is
begin
  with shift select
    Y <= X when "00000",
         X(24 downto 0) & X(25) when "00001",
         X(23 downto 0) & X(25 downto 24) when "00010",
         X(22 downto 0) & X(25 downto 23) when "00011",
         X(21 downto 0) & X(25 downto 22) when "00100",
         X(20 downto 0) & X(25 downto 21) when "00101",
         X(19 downto 0) & X(25 downto 20) when "00110",
         X(18 downto 0) & X(25 downto 19) when "00111",
         X(17 downto 0) & X(25 downto 18) when "01000",
         X(16 downto 0) & X(25 downto 17) when "01001",
         X(15 downto 0) & X(25 downto 16) when "01010",
         X(14 downto 0) & X(25 downto 15) when "01011",
         X(13 downto 0) & X(25 downto 14) when "01100",
         X(12 downto 0) & X(25 downto 13) when "01101",
         X(11 downto 0) & X(25 downto 12) when "01110",
         X(10 downto 0) & X(25 downto 11) when "01111",
         X(9 downto 0) & X(25 downto 10) when "10000",
         X(8 downto 0) & X(25 downto 9) when "10001",
         X(7 downto 0) & X(25 downto 8) when "10010",
         X(6 downto 0) & X(25 downto 7) when "10011",
         X(5 downto 0) & X(25 downto 6) when "10100",
         X(4 downto 0) & X(25 downto 5) when "10101",
         X(3 downto 0) & X(25 downto 4) when "10110",
         X(2 downto 0) & X(25 downto 3) when "10111",
         X(1 downto 0) & X(25 downto 2) when "11000",
         X(0) & X(25 downto 1) when "11001",
         "00000000000000000000000000" WHEN OTHERS; -- should represent an error.
end architecture ; -- arch
