library ieee;
use ieee.std_logic_1164.all;

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
	if 		input_code = "00000" then output_code <=	"00100"; --when input_code="00000" else --E
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