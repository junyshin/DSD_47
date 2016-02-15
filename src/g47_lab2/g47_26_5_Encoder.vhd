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
  signal tmp: std_logic_vector(4 downto 0);
begin
  tmp <= "11001" when letter(25) = '1' else
         "11000" when letter(24) = '1' else
         "10111" when letter(23) = '1' else
         "10110" when letter(22) = '1' else
         "10101" when letter(21) = '1' else
         "10100" when letter(20) = '1' else
         "10011" when letter(19) = '1' else
         "10010" when letter(18) = '1' else
         "10001" when letter(17) = '1' else
         "10000" when letter(16) = '1' else
         "01111" when letter(15) = '1' else
         "01110" when letter(14) = '1' else
         "01101" when letter(13) = '1' else
         "01100" when letter(12) = '1' else
         "01011" when letter(11) = '1' else
         "01010" when letter(10) = '1' else
         "01001" when letter(9) = '1' else
         "01000" when letter(8) = '1' else
         "00111" when letter(7) = '1' else
         "00110" when letter(6) = '1' else
         "00101" when letter(5) = '1' else
         "00100" when letter(4) = '1' else
         "00011" when letter(3) = '1' else
         "00010" when letter(2) = '1' else
         "00001" when letter(1) = '1' else
         "00000" when letter(0) = '1' else
         "11111";
  INDEX <= tmp;
  ERROR <= '1' when tmp = "11111" else '0';
end architecture ; -- arch
