Library ieee;
use ieee.std_logic_1164.all;

Entity decoder is
	port (INDEX: IN std_logic_vector(4 downto 0);
			D: OUT std_logic_vector(25 downto 0);
			ERROR: OUT std_logic
	);
end decoder;

architecture inside of decoder is

begin
	A <= INDEX(4);
	B <= INDEX(3);
	C <= INDEX(2);
	D <= INDEX(1);
	E <= INDEX(0);
	D(0) <= not(A) and not(B) and not(C) and not(D) and not(E);
	D(1) <= not(A) and not(B) and not(C) and not(D) and E;
	D(2) <=	not(A) and not(B) and not(C) and D and E;
	D(3) <= not(A) and not(B) and C and not(D) and not(E);
	D(4) <= not(A) and not(B) and C and not(D) and E;
	D(5) <= not(A) and not(B) and C and D and E;
	D(6) <= not(A) and B and not(C) and not(D) and not(E);
	D(7) <= not(A) and B and not(C) and not(D) and E;
	D(8) <= not(A) and B and not(C) and D and E;
	D(9) <= not(A) and B and C and not(D) and not(E);
	D(10) <= not(A) and B and C and not(D) and E;
	D(11) <= not(A) and B and C and D and E;
	D(12) <= A and not(B) and not(C) and not(D) and not(E);
	D(13) <= A and not(B) and not(C) and not(D) and E;
	D(14) <= A and not(B) and not(C) and D and not(E);
	D(15) <= A and not(B) and not(C) and D and E;
	D(16) <= A and not(B) and C and not(D) and not(E);
	D(17) <= A and not(B) and C and not(D) and E;
	D(18) <= A and not(B) and C and D and not(E);
	D(19) <= A and not(B) and C and D and E;
	D(20) <= A and B and not(C) and not(D) and not(E);
	D(21) <= A and B and not(C) and not(D) and E;
	D(22) <= A and B and not(C) and D and not(E);
	D(23) <= A and B and not(C) and D and E;
	D(24) <= A and B and C and not(D) and not(E);
	D(25) <= A and B and C and not(D) and E;
	ERROR <= A and B and C and D and not(E);

end inside

