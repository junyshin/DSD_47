library ieee ;
use ieee.std_logic_1164.all ;

entity g47_hex_display is
  port (
    display_type: in std_logic;
    index: in std_logic_vector(4 downto 0);
    segments: out std_logic_vector(6 downto 0)
  ) ;
end entity ; -- g47_hex_display

architecture arch of g47_hex_display is
  signal tmp: std_logic_vector(6 downto 0);
begin
  DISPLAY : process( display_type, index, tmp )
  begin
    case( display_type ) is
      when '0' => -- LETTER
        case( index ) is
          when "00000" => tmp <= "1110111"; -- A
          when "00001" => tmp <= "1111100"; -- B
          when "00010" => tmp <= "0111001"; -- C
          when "00011" => tmp <= "1011110"; -- D
          when "00100" => tmp <= "1111001"; -- E
          when "00101" => tmp <= "1110001"; -- F
          when "00110" => tmp <= "0111101"; -- G
          when "00111" => tmp <= "1110100"; -- H
          when "01000" => tmp <= "0110000"; -- I
          when "01001" => tmp <= "0011110"; -- J
          when "01010" => tmp <= "1110000"; -- K
          when "01011" => tmp <= "0111000"; -- L
          when "01100" => tmp <= "0110111"; -- M
          when "01101" => tmp <= "1010100"; -- N
          when "01110" => tmp <= "0111111"; -- O
          when "01111" => tmp <= "1110011"; -- P
          when "10000" => tmp <= "1011100"; -- Q
          when "10001" => tmp <= "0110001"; -- R
          when "10010" => tmp <= "1101101"; -- S
          when "10011" => tmp <= "1111000"; -- T
          when "10100" => tmp <= "0111110"; -- U
          when "10101" => tmp <= "0100110"; -- V
          when "10110" => tmp <= "0011100"; -- W
          when "10111" => tmp <= "1110110"; -- X
          when "11000" => tmp <= "1101110"; -- Y
          when "11001" => tmp <= "1011011"; -- Z
          when others  => tmp <= "0000000"; -- all off
        end case ;
      when '1' => -- NUMBER
        case( index ) is
          when "00000" => tmp <= "0111111"; -- 0
          when "00001" => tmp <= "0000110"; -- 1
          when "00010" => tmp <= "1011011"; -- 2
          when "00011" => tmp <= "1001111"; -- 3
          when "00100" => tmp <= "1100110"; -- 4
          when "00101" => tmp <= "1101101"; -- 5
          when "00110" => tmp <= "1111101"; -- 6
          when "00111" => tmp <= "0000111"; -- 7
          when "01000" => tmp <= "1111111"; -- 8
          when "01001" => tmp <= "1100111"; -- 9
          when others  => tmp <= "0000000"; -- all off
        end case ;
      when others => tmp <= "0000000"; -- all off
    end case ;
    segments <= not tmp;
  end process ; -- DISPLAY
end architecture ; -- arch
