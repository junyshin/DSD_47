library ieee;
use ieee.std_logic_1164.all;

entity g47_7_segment_Decoder is
  port (code: in std_logic_vector(4 downto 0);
    segments: out std_logic_vector(6 downto 0)
  ) ;
end entity ; -- g47_LED_Decoder

architecture decoder of g47_7_segment_Decoder is
  signal tmp: std_logic_vector(6 downto 0);
begin
with code select
  tmp <= "1110111" when "00000", --A
         "1111100" when "00001", --B
         "0111001" when "00010", --C
         "1011110" when "00011", --D
         "1111001" when "00100", --E
         "1110001" when "00101", --F
         "0111101" when "00110", --G
         "1110100" when "00111", --H
         "0110000" when "01000", --I
         "0011110" when "01001", --J
         "1110000" when "01010", --K
         "0111000" when "01011", --L
         "0110111" when "01100", --M
         "1010100" when "01101", --N
         "0111111" when "01110", --O
         "1110011" when "01111", --P
         "1011100" when "10000", --Q
         "0110001" when "10001", --R
         "1101101" when "10010", --S
         "1111000" when "10011", --T
         "0111110" when "10100", --U
         "0100110" when "10101", --V
         "0011100" when "10110", --W
         "1110110" when "10111", --X
         "1101110" when "11000", --Y
         "1011011" when "11001", --Z
         "1111111" when others; --Error
  segments <= not tmp
end architecture; -- decoder
