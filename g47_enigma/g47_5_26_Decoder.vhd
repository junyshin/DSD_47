Library ieee;
use ieee.std_logic_1164.all;

Entity decoder is
	port {INDEX: IN std_logic_vector[4 downto 0];
			D: OUT std_logic_vector[25 downto 0];
			ERROR: OUT std_logic
	};
end enigma;

