-- This circuit takes as input a 26-bit vector and produces a 5-bit output named
-- INDEX which indicates the highest bit position over all input bits that have
-- a high value. If no inputs bits are high, then assert an ERROR signal.
--
-- entity name: g47_26_5_Encoder

Library ieee;
use ieee.std_logic_1164.all;

entity g47_26_5_Encoder is
  port (
    letter: in std_logic_vector(25 downto 0);
    INDEX: out std_logic_vector(4 downto 0);
    ERROR: out std_logic
  );
end entity ; -- g47_26_5_Encoder

architecture arch of g47_26_5_Encoder is
begin
  INDEX <= "11001" when letter = "10000000000000000000000000" else
           "11000" when letter = "01000000000000000000000000" else
           "10111" when letter = "00100000000000000000000000" else
           "10110" when letter = "00010000000000000000000000" else
           "10101" when letter = "00001000000000000000000000" else
           "10100" when letter = "00000100000000000000000000" else
           "10011" when letter = "00000010000000000000000000" else
           "10010" when letter = "00000001000000000000000000" else
           "10001" when letter = "00000000100000000000000000" else
           "10000" when letter = "00000000010000000000000000" else
           "01111" when letter = "00000000001000000000000000" else
           "01110" when letter = "00000000000100000000000000" else
           "01101" when letter = "00000000000010000000000000" else
           "01100" when letter = "00000000000001000000000000" else
           "01011" when letter = "00000000000000100000000000" else
           "01010" when letter = "00000000000000010000000000" else
           "01001" when letter = "00000000000000001000000000" else
           "01000" when letter = "00000000000000000100000000" else
           "00111" when letter = "00000000000000000010000000" else
           "00110" when letter = "00000000000000000001000000" else
           "00101" when letter = "00000000000000000000100000" else
           "00100" when letter = "00000000000000000000010000" else
           "00011" when letter = "00000000000000000000001000" else
           "00010" when letter = "00000000000000000000000100" else
           "00001" when letter = "00000000000000000000000010" else
           "00000" when letter = "00000000000000000000000001" else
           "11111";
  ERROR <= '1' when letter = "00000000000000000000000000" else '0';
end architecture ; -- arch
