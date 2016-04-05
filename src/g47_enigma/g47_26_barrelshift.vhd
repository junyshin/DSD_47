library ieee;
use ieee.std_logic_1164.all;

entity g47_26_barrelshift is
  port (
    direction: in std_logic;
    shift: in std_logic_vector(4 downto 0);
    X: in std_logic_vector(25 downto 0);
    Y: out std_logic_vector(25 downto 0)
  ) ;
end entity ; -- g47_26_barrelshift

architecture arch of g47_26_barrelshift is
begin
  BARREL : process( direction, shift, X )
  begin
    case( direction ) is
      when '0' => -- right
        case( shift ) is
          when "00000" => Y <= X;
          when "00001" => Y <= X(24 downto 0) & X(25);
          when "00010" => Y <= X(23 downto 0) & X(25 downto 24);
          when "00011" => Y <= X(22 downto 0) & X(25 downto 23);
          when "00100" => Y <= X(21 downto 0) & X(25 downto 22);
          when "00101" => Y <= X(20 downto 0) & X(25 downto 21);
          when "00110" => Y <= X(19 downto 0) & X(25 downto 20);
          when "00111" => Y <= X(18 downto 0) & X(25 downto 19);
          when "01000" => Y <= X(17 downto 0) & X(25 downto 18);
          when "01001" => Y <= X(16 downto 0) & X(25 downto 17);
          when "01010" => Y <= X(15 downto 0) & X(25 downto 16);
          when "01011" => Y <= X(14 downto 0) & X(25 downto 15);
          when "01100" => Y <= X(13 downto 0) & X(25 downto 14);
          when "01101" => Y <= X(12 downto 0) & X(25 downto 13);
          when "01110" => Y <= X(11 downto 0) & X(25 downto 12);
          when "01111" => Y <= X(10 downto 0) & X(25 downto 11);
          when "10000" => Y <= X(9 downto 0) & X(25 downto 10);
          when "10001" => Y <= X(8 downto 0) & X(25 downto 9);
          when "10010" => Y <= X(7 downto 0) & X(25 downto 8);
          when "10011" => Y <= X(6 downto 0) & X(25 downto 7);
          when "10100" => Y <= X(5 downto 0) & X(25 downto 6);
          when "10101" => Y <= X(4 downto 0) & X(25 downto 5);
          when "10110" => Y <= X(3 downto 0) & X(25 downto 4);
          when "10111" => Y <= X(2 downto 0) & X(25 downto 3);
          when "11000" => Y <= X(1 downto 0) & X(25 downto 2);
          when "11001" => Y <= X(0) & X(25 downto 1);
          when others =>  Y <= "00000000000000000000000000";
        end case ;
      when '1' => -- left
        case( shift ) is
          when "00000" => Y <= X;
          when "00001" => Y <= X(0) & X(25 downto 1);
          when "00010" => Y <= X(1 downto 0) & X(25 downto 2);
          when "00011" => Y <= X(2 downto 0) & X(25 downto 3);
          when "00100" => Y <= X(3 downto 0) & X(25 downto 4);
          when "00101" => Y <= X(4 downto 0) & X(25 downto 5);
          when "00110" => Y <= X(5 downto 0) & X(25 downto 6);
          when "00111" => Y <= X(6 downto 0) & X(25 downto 7);
          when "01000" => Y <= X(7 downto 0) & X(25 downto 8);
          when "01001" => Y <= X(8 downto 0) & X(25 downto 9);
          when "01010" => Y <= X(9 downto 0) & X(25 downto 10);
          when "01011" => Y <= X(10 downto 0) & X(25 downto 11);
          when "01100" => Y <= X(11 downto 0) & X(25 downto 12);
          when "01101" => Y <= X(12 downto 0) & X(25 downto 13);
          when "01110" => Y <= X(13 downto 0) & X(25 downto 14);
          when "01111" => Y <= X(14 downto 0) & X(25 downto 15);
          when "10000" => Y <= X(15 downto 0) & X(25 downto 16);
          when "10001" => Y <= X(16 downto 0) & X(25 downto 17);
          when "10010" => Y <= X(17 downto 0) & X(25 downto 18);
          when "10011" => Y <= X(18 downto 0) & X(25 downto 19);
          when "10100" => Y <= X(19 downto 0) & X(25 downto 20);
          when "10101" => Y <= X(20 downto 0) & X(25 downto 21);
          when "10110" => Y <= X(21 downto 0) & X(25 downto 22);
          when "10111" => Y <= X(22 downto 0) & X(25 downto 23);
          when "11000" => Y <= X(23 downto 0) & X(25 downto 24);
          when "11001" => Y <= X(24 downto 0) & X(25);
          when others =>  Y <= "00000000000000000000000000";
        end case ;
      when others =>
        Y <= "00000000000000000000000000";
    end case ;
  end process ; -- BARREL
end architecture ; -- arch
