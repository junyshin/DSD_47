library ieee;
use ieee.std_logic_1164.all;

--entity g47_permutation is
--  port (
--    input_code: in std_logic_vector(4 downto 0);
--    rotor_type: in std_logic_vector(1 downto 0);
--    output_code: out std_logic_vector(4 downto 0);
--    inv_output_code: out std_logic_vector(4 downto 0)
--  ) ;
--end entity ; -- g47_permutation

--architecture arch of g47_permutation is
--begin
--  if    input_code = "00000" then -- A
--    with rotor_type select
--      output_code <= "00100" when "00"
--                     "00000" when "01"
--                     "00001" when "10"
--                     "00100" when "11"
--      inv_output_code <= "10100" when "00"
--                         "00000" when "01"
--                         "10011" when "10"
--                         "00111" when "11"
--  elsif input_code = "00001" then -- B
--    with rotor_type select
--      output_code <= "01010" when "00"
--                     "01001" when "01"
--                     "00011" when "10"
--                     "10010" when "11"
--      inv_output_code <= "10110" when "00"
--                         "01001" when "01"
--                         "00000" when "10"
--                         "11001" when "11"
--  elsif input_code = "00010" then -- C
--    with rotor_type select
--      output_code <= "01100" when "00"
--                     "00011" when "01"
--                     "00101" when "10"
--                     "01110" when "11"
--      inv_output_code <= 11000 when "00"
--                         "01111" when "01"
--                         "00110" when "10"
--                         "10110" when "11"
--  elsif input_code = "00011" then -- D
--    with rotor_type select
--      output_code <= "00101" when "00"
--                     "01010" when "01"
--                     "00111" when "10"
--                     "10101" when "11"
--      inv_output_code <= "00110" when "00"
--                         "00010" when "01"
--                         "00001" when "10"
--                         "10101" when "11"
--  elsif input_code = "00100" then -- E
--    with rotor_type select--00000,11001,01111,00000
--      output_code <= "01011" when "00"
--                     "10010" when "01"
--                     "01001" when "10"
--                     "01111" when "11"
--      inv_output_code <= "00000" when "00"
--                         "11001" when "01"
--                         "01111" when "10"
--                         "00000" when "11"
--  elsif input_code = "00101" then -- F
--    with rotor_type select
--      output_code <= "00110" when "00"
--                     "01000" when "01"
--                     "01011" when "10"
--                     "11001" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "00110" then -- G
--    with rotor_type select
--      output_code <= "00011" when "00"
--                     "10001" when "01"
--                     "00010" when "10"
--                     "01001" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "00111" then -- H
--    with rotor_type select
--      output_code <= "10000" when "00"
--                     "10100" when "01"
--                     "01111" when "10"
--                     "00000" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "01000" then -- I
--    with rotor_type select
--      output_code <= "10101" when "00"
--                     "10111" when "01"
--                     "10001" when "10"
--                     "11000" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "01001" then -- J
--    with rotor_type select
--      output_code <= "11001" when "00"
--                     "00001" when "01"
--                     "10011" when "10"
--                     "10000" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "01010" then -- K
--    with rotor_type select
--      output_code <= "01101" when "00"
--                     "01011" when "01"
--                     "10111" when "10"
--                     "10000" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "01011" then -- L
--    with rotor_type select
--      output_code <= "10011" when "00"
--                     "00111" when "01"
--                     "10101" when "10"
--                     "01000" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "01100" then -- M
--    with rotor_type select
--      output_code <= "01110" when "00"
--                     "10110" when "01"
--                     "11001" when "10"
--                     "10001" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "01101" then -- N
--    with rotor_type select
--      output_code <= "10110" when "00"
--                     "10011" when "01"
--                     "01101" when "10"
--                     "00111" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "01110" then -- O
--    with rotor_type select
--      output_code <= "11000" when "00"
--                     "01100" when "01"
--                     "11000" when "10"
--                     "10111" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "01111" then -- P
--    with rotor_type select
--      output_code <= "00111" when "00"
--                     "00010" when "01"
--                     "00100" when "10"
--                     "01011" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "10000" then -- Q
--    with rotor_type select
--      output_code <= "10111" when "00"
--                     "10000" when "01"
--                     "01000" when "10"
--                     "01101" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "10001" then -- R
--    with rotor_type select
--      output_code <= "10100" when "00"
--                     "00110" when "01"
--                     "10110" when "10"
--                     "00101" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "10010" then -- S
--    with rotor_type select
--      output_code <= "10010" when "00"
--                     "11001" when "01"
--                     "00110" when "10"
--                     "10011" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "10011" then -- T
--    with rotor_type select
--      output_code <= "01111" when "00"
--                     "01101" when "01"
--                     "00000" when "10"
--                     "00110" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "10100" then -- U
--    with rotor_type select
--      output_code <= "00000" when "00"
--                     "01111" when "01"
--                     "01010" when "10"
--                     "01010" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "10101" then -- V
--    with rotor_type select
--      output_code <= "01000" when "00"
--                     "11000" when "01"
--                     "01100" when "10"
--                     "00011" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "10110" then -- W
--    with rotor_type select
--      output_code <= "00001" when "00"
--                     "00101" when "01"
--                     "10100" when "10"
--                     "00010" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "10111" then -- X
--    with rotor_type select
--      output_code <= "10001" when "00"
--                     "10101" when "01"
--                     "10010" when "10"
--                     "01100" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "11000" then -- Y
--    with rotor_type select
--      output_code <= "00010" when "00"
--                     "01110" when "01"
--                     "10000" when "10"
--                     "10110" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  elsif input_code = "11001" then -- Z
--    with rotor_type select
--      output_code <= "01001" when "00"
--                     "00100" when "01"
--                     "01110" when "10"
--                     "00001" when "11"
--      inv_output_code <= "" when "00"
--                         "" when "01"
--                         "" when "10"
--                         "" when "11"
--  end if ;

--end architecture ; -- arch

-- "00000" -- A
-- "00001" -- B
-- "00010" -- C
-- "00011" -- D
-- "00100" -- E
-- "00101" -- F
-- "00110" -- G
-- "00111" -- H
-- "01000" -- I
-- "01001" -- J
-- "01010" -- K
-- "01011" -- L
-- "01100" -- M
-- "01101" -- N
-- "01110" -- O
-- "01111" -- P
-- "10000" -- Q
-- "10001" -- R
-- "10010" -- S
-- "10011" -- T
-- "10100" -- U
-- "10101" -- V
-- "10110" -- W
-- "10111" -- X
-- "11000" -- Y
-- "11001" -- Z




entity g47_permutation is
  port ( 	input_code:  		in std_logic_vector(4 downto 0) ;
  			rotor_type:  		in std_logic_vector(1 downto 0) ;
  			output_code: 		out std_logic_vector(4 downto 0) ;
			inv_output_code:	out std_logic_vector(4 downto 0)
  ) ;
end entity ; -- g47_permutation

architecture permutation of g47_permutation is
--signal tmp: std_logic_vector(4 downto 0);
begin
	permutation : process( input_code, rotor_type )
begin
if rotor_type = "00" then
	if 		  input_code = "00000" then output_code <=	"00100"; --when input_code="00000" else --E
	elsif 	input_code = "00001" then output_code <=	"01010";
	elsif 	input_code = "00010" then output_code <=	"01100";
	elsif 	input_code = "00011" then output_code <=	"00101";
	elsif 	input_code = "00100" then output_code <=	"01011";
	elsif 	input_code = "00101" then output_code <=	"00110";
	elsif 	input_code = "00110" then output_code <=	"00011";
	elsif 	input_code = "00111" then output_code <=	"10000";
	elsif 	input_code = "01000" then output_code <=	"10101";
	elsif 	input_code = "01001" then output_code <=	"11001";
	elsif 	input_code = "01010" then output_code <=	"01101";
	elsif 	input_code = "01011" then output_code <=	"10011";
	elsif 	input_code = "01100" then output_code <=	"01110";
	elsif 	input_code = "01101" then output_code <=	"10110";
	elsif 	input_code = "01110" then output_code <=	"11000";
	elsif 	input_code = "01111" then output_code <=	"00111";
	elsif 	input_code = "10000" then output_code <=	"10111";
	elsif 	input_code = "10001" then output_code <=	"10100";
	elsif 	input_code = "10010" then output_code <=	"10010";
	elsif 	input_code = "10011" then output_code <=	"01111";
	elsif 	input_code = "10100" then output_code <=	"00000";
	elsif 	input_code = "10101" then output_code <=	"01000";
	elsif 	input_code = "10110" then output_code <=	"00001";
	elsif 	input_code = "10111" then output_code <=	"10001";
	elsif 	input_code = "11000" then output_code <=	"00010";
	elsif 	input_code = "11001" then output_code <=	"01001";
	end if;
-- Inverted value:
	if input_code = "00100" then inv_output_code <= "00000";
	elsif input_code = "01010" then inv_output_code <= "00001";
	elsif input_code = "01100" then inv_output_code <= "00010";
	elsif input_code = "00101" then inv_output_code <= "00011";
	elsif input_code = "01011" then inv_output_code <= "00100";
	elsif input_code = "00110" then inv_output_code <= "00101";
	elsif input_code = "00011" then inv_output_code <= "00110";
	elsif input_code = "10000" then inv_output_code <= "00111";
	elsif input_code = "10101" then inv_output_code <= "01000";
	elsif input_code = "11001" then inv_output_code <= "01001";
	elsif input_code = "01101" then inv_output_code <= "01010";
	elsif input_code = "10011" then inv_output_code <= "01011";
	elsif input_code = "01110" then inv_output_code <= "01100";
	elsif input_code = "10110" then inv_output_code <= "01101";
	elsif input_code = "11000" then inv_output_code <= "01110";
	elsif input_code = "00111" then inv_output_code <= "01111";
	elsif input_code = "10111" then inv_output_code <= "10000";
	elsif input_code = "10100" then inv_output_code <= "10001";
	elsif input_code = "10010" then inv_output_code <= "10010";
	elsif input_code = "01111" then inv_output_code <= "10011";
	elsif input_code = "00000" then inv_output_code <= "10100";
	elsif input_code = "01000" then inv_output_code <= "10101";
	elsif input_code = "00001" then inv_output_code <= "10110";
	elsif input_code = "10001" then inv_output_code <= "10111";
	elsif input_code = "00010" then inv_output_code <= "11000";
	elsif input_code = "01001" then inv_output_code <= "11001";
	end if;

elsif rotor_type = "01" then
	if 		input_code = "00000" then output_code <=	"00000"; --when input_code="00000" else --E
	elsif 	input_code = "00001" then output_code <=	"01001";
	elsif 	input_code = "00010" then output_code <=	"00011";
	elsif 	input_code = "00011" then output_code <=	"01010";
	elsif 	input_code = "00100" then output_code <=	"10010";
	elsif 	input_code = "00101" then output_code <=	"01000";
	elsif 	input_code = "00110" then output_code <=	"10001";
	elsif 	input_code = "00111" then output_code <=	"10100";
	elsif 	input_code = "01000" then output_code <=	"10111";
	elsif 	input_code = "01001" then output_code <=	"00001";
	elsif 	input_code = "01010" then output_code <=	"01011";
	elsif 	input_code = "01011" then output_code <=	"00111";
	elsif 	input_code = "01100" then output_code <=	"10110";
	elsif 	input_code = "01101" then output_code <=	"10011";
	elsif 	input_code = "01110" then output_code <=	"01100";
	elsif 	input_code = "01111" then output_code <=	"00010";
	elsif 	input_code = "10000" then output_code <=	"10000";
	elsif 	input_code = "10001" then output_code <=	"00110";
	elsif 	input_code = "10010" then output_code <=	"11001";
	elsif 	input_code = "10011" then output_code <=	"01101";
	elsif 	input_code = "10100" then output_code <=	"01111";
	elsif 	input_code = "10101" then output_code <=	"11000";
	elsif 	input_code = "10110" then output_code <=	"00101";
	elsif 	input_code = "10111" then output_code <=	"10101";
	elsif 	input_code = "11000" then output_code <=	"01110";
	elsif 	input_code = "11001" then output_code <=	"00100";
	end if;
-- Inverted value:
	if input_code = "00000" then inv_output_code <= "00000";
	elsif input_code = "01001" then inv_output_code <= "00001";
	elsif input_code = "00011" then inv_output_code <= "00010";
	elsif input_code = "01010" then inv_output_code <= "00011";
	elsif input_code = "10010" then inv_output_code <= "00100";
	elsif input_code = "01000" then inv_output_code <= "00101";
	elsif input_code = "10001" then inv_output_code <= "00110";
	elsif input_code = "10100" then inv_output_code <= "00111";
	elsif input_code = "10111" then inv_output_code <= "01000";
	elsif input_code = "00001" then inv_output_code <= "01001";
	elsif input_code = "01011" then inv_output_code <= "01010";
	elsif input_code = "00111" then inv_output_code <= "01011";
	elsif input_code = "10110" then inv_output_code <= "01100";
	elsif input_code = "10011" then inv_output_code <= "01101";
	elsif input_code = "01100" then inv_output_code <= "01110";
	elsif input_code = "00010" then inv_output_code <= "01111";
	elsif input_code = "10000" then inv_output_code <= "10000";
	elsif input_code = "00110" then inv_output_code <= "10001";
	elsif input_code = "11001" then inv_output_code <= "10010";
	elsif input_code = "01101" then inv_output_code <= "10011";
	elsif input_code = "01111" then inv_output_code <= "10100";
	elsif input_code = "11000" then inv_output_code <= "10101";
	elsif input_code = "00101" then inv_output_code <= "10110";
	elsif input_code = "10101" then inv_output_code <= "10111";
	elsif input_code = "01110" then inv_output_code <= "11000";
	elsif input_code = "00100" then inv_output_code <= "11001";
	end if;


elsif rotor_type = "10" then
	if 		input_code = "00000" then output_code <=	"00001"; --when input_code="00000" else --E
	elsif 	input_code = "00001" then output_code <=	"00011";
	elsif 	input_code = "00010" then output_code <=	"00101";
	elsif 	input_code = "00011" then output_code <=	"00111";
	elsif 	input_code = "00100" then output_code <=	"01001";
	elsif 	input_code = "00101" then output_code <=	"01011";
	elsif 	input_code = "00110" then output_code <=	"00010";
	elsif 	input_code = "00111" then output_code <=	"01111";
	elsif 	input_code = "01000" then output_code <=	"10001";
	elsif 	input_code = "01001" then output_code <=	"10011";
	elsif 	input_code = "01010" then output_code <=	"10111";
	elsif 	input_code = "01011" then output_code <=	"10101";
	elsif 	input_code = "01100" then output_code <=	"11001";
	elsif 	input_code = "01101" then output_code <=	"01101";
	elsif 	input_code = "01110" then output_code <=	"11000";
	elsif 	input_code = "01111" then output_code <=	"00100";
	elsif 	input_code = "10000" then output_code <=	"01000";
	elsif 	input_code = "10001" then output_code <=	"10110";
	elsif 	input_code = "10010" then output_code <=	"00110";
	elsif 	input_code = "10011" then output_code <=	"00000";
	elsif 	input_code = "10100" then output_code <=	"01010";
	elsif 	input_code = "10101" then output_code <=	"01100";
	elsif 	input_code = "10110" then output_code <=	"10100";
	elsif 	input_code = "10111" then output_code <=	"10010";
	elsif 	input_code = "11000" then output_code <=	"10000";
	elsif 	input_code = "11001" then output_code <=	"01110";
	end if;
-- Inverted value:
	if input_code = "00001" then inv_output_code <= "00000";
	elsif input_code = "00011" then inv_output_code <= "00001";
	elsif input_code = "00101" then inv_output_code <= "00010";
	elsif input_code = "00111" then inv_output_code <= "00011";
	elsif input_code = "01001" then inv_output_code <= "00100";
	elsif input_code = "01011" then inv_output_code <= "00101";
	elsif input_code = "00010" then inv_output_code <= "00110";
	elsif input_code = "01111" then inv_output_code <= "00111";
	elsif input_code = "10001" then inv_output_code <= "01000";
	elsif input_code = "10011" then inv_output_code <= "01001";
	elsif input_code = "10111" then inv_output_code <= "01010";
	elsif input_code = "10101" then inv_output_code <= "01011";
	elsif input_code = "11001" then inv_output_code <= "01100";
	elsif input_code = "01101" then inv_output_code <= "01101";
	elsif input_code = "11000" then inv_output_code <= "01110";
	elsif input_code = "00100" then inv_output_code <= "01111";
	elsif input_code = "01000" then inv_output_code <= "10000";
	elsif input_code = "10110" then inv_output_code <= "10001";
	elsif input_code = "00110" then inv_output_code <= "10010";
	elsif input_code = "00000" then inv_output_code <= "10011";
	elsif input_code = "01010" then inv_output_code <= "10100";
	elsif input_code = "01100" then inv_output_code <= "10101";
	elsif input_code = "10100" then inv_output_code <= "10110";
	elsif input_code = "10010" then inv_output_code <= "10111";
	elsif input_code = "10000" then inv_output_code <= "11000";
	elsif input_code = "01110" then inv_output_code <= "11001";
	end if;

elsif rotor_type = "11" then
	if 		input_code = "00000" then output_code <=	"00100"; --when input_code="00000" else --E
	elsif 	input_code = "00001" then output_code <=	"10010";
	elsif 	input_code = "00010" then output_code <=	"01110";
	elsif 	input_code = "00011" then output_code <=	"10101";
	elsif 	input_code = "00100" then output_code <=	"01111";
	elsif 	input_code = "00101" then output_code <=	"11001";
	elsif 	input_code = "00110" then output_code <=	"01001";
	elsif 	input_code = "00111" then output_code <=	"00000";
	elsif 	input_code = "01000" then output_code <=	"11000";
	elsif 	input_code = "01001" then output_code <=	"10000";
	elsif 	input_code = "01010" then output_code <=	"10100";
	elsif 	input_code = "01011" then output_code <=	"01000";
	elsif 	input_code = "01100" then output_code <=	"10001";
	elsif 	input_code = "01101" then output_code <=	"00111";
	elsif 	input_code = "01110" then output_code <=	"11001";
	elsif 	input_code = "01111" then output_code <=	"01011";
	elsif 	input_code = "10000" then output_code <=	"01101";
	elsif 	input_code = "10001" then output_code <=	"00101";
	elsif 	input_code = "10010" then output_code <=	"10011";
	elsif 	input_code = "10011" then output_code <=	"00110";
	elsif 	input_code = "10100" then output_code <=	"01010";
	elsif 	input_code = "10101" then output_code <=	"00011";
	elsif 	input_code = "10110" then output_code <=	"00010";
	elsif 	input_code = "10111" then output_code <=	"01100";
	elsif 	input_code = "11000" then output_code <=	"10110";
	elsif 	input_code = "11001" then output_code <=	"00001";
	end if;
-- Inverted value:
	if input_code = "00100" then inv_output_code <= "00000";
	elsif input_code = "10010" then inv_output_code <= "00001";
	elsif input_code = "01110" then inv_output_code <= "00010";
	elsif input_code = "10101" then inv_output_code <= "00011";
	elsif input_code = "01111" then inv_output_code <= "00100";
	elsif input_code = "11001" then inv_output_code <= "00101";
	elsif input_code = "01001" then inv_output_code <= "00110";
	elsif input_code = "00000" then inv_output_code <= "00111";
	elsif input_code = "11000" then inv_output_code <= "01000";
	elsif input_code = "10000" then inv_output_code <= "01001";
	elsif input_code = "10100" then inv_output_code <= "01010";
	elsif input_code = "01000" then inv_output_code <= "01011";
	elsif input_code = "10001" then inv_output_code <= "01100";
	elsif input_code = "00111" then inv_output_code <= "01101";
	elsif input_code = "11001" then inv_output_code <= "01110";
	elsif input_code = "01011" then inv_output_code <= "01111";
	elsif input_code = "01101" then inv_output_code <= "10000";
	elsif input_code = "00101" then inv_output_code <= "10001";
	elsif input_code = "10011" then inv_output_code <= "10010";
	elsif input_code = "00110" then inv_output_code <= "10011";
	elsif input_code = "01010" then inv_output_code <= "10100";
	elsif input_code = "00011" then inv_output_code <= "10101";
	elsif input_code = "00010" then inv_output_code <= "10110";
	elsif input_code = "01100" then inv_output_code <= "10111";
	elsif input_code = "10110" then inv_output_code <= "11000";
	elsif input_code = "00001" then inv_output_code <= "11001";
	end if;

else
 	inv_output_code <= "11111";--ERROR
 	output_code <= "11111";
end if;

end process ; -- permutation

end architecture ; -- permutatio
