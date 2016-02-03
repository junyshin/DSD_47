Library ieee;
use ieee.std_logic_1164.all;

Entity decoder is
	port (INDEX: IN std_logic_vector(4 downto 0);
			D: OUT std_logic_vector(25 downto 0);
			ERROR: OUT std_logic
	);
end decoder;

architecture inside of decoder is
    signal X4,X3,X2,X1,X0: std_logic;
begin
	X4 <= INDEX(4);
	X3 <= INDEX(3);
	X2 <= INDEX(2);
	X1 <= INDEX(1);
	X0 <= INDEX(0);
    --
	D(0) <= not(X4) and not(X3) and not(X2) and not(X1) and not(X0);
	D(1) <= not(X4) and not(X3) and not(X2) and not(X1) and X0;
	D(2) <=	not(X4) and not(X3) and not(X2) and X1 and not(X0);
	D(3) <= not(X4) and not(X3) and not(X2) and X1 and X0;
    --
	D(4) <= not(X4) and not(X3) and X2 and not(X1) and not(X0);
	D(5) <= not(X4) and not(X3) and X2 and not(X1) and X0;
	D(6) <= not(X4) and not(X3) and X2 and X1 and not(X0);
	D(7) <= not(X4) and not(X3) and X2 and X1 and X0;
    --
	D(8) <= not(X4) and X3 and not(X2) and not(X1) and not(X0);
	D(9) <= not(X4) and X3 and not(X2) and not(X1) and X0;
	D(10) <= not(X4) and X3 and not(X2) and X1 and not(X0);
	D(11) <= not(X4) and X3 and not(X2) and X1 and X0;
    --
	D(12) <= not(X4) and X3 and X2 and not(X1) and not(X0);
	D(13) <= not(X4) and X3 and X2 and not(X1) and X0;
	D(14) <= not(X4) and X3 and X2 and X1 and not(X0);
	D(15) <= not(X4) and X3 and X2 and X1 and X0;
    --
	D(16) <= X4 and not(X3) and not(X2) and not(X1) and not(X0);
	D(17) <= X4 and not(X3) and not(X2) and not(X1) and X0;
	D(18) <= X4 and not(X3) and not(X2) and X1 and not(X0);
	D(19) <= X4 and not(X3) and not(X2) and X1 and X0;
    --
	D(20) <= X4 and not(X3) and X2 and not(X1) and not(X0);
	D(21) <= X4 and not(X3) and X2 and not(X1) and X0;
	D(22) <= X4 and not(X3) and X2 and X1 and not(X0);
	D(23) <= X4 and not(X3) and X2 and X1 and X0;
    --
	D(24) <= X4 and X3 and not(X2) and not(X1) and not(X0);
	D(25) <= X4 and X3 and not(X2) and not(X1) and X0;
	--
	ERROR <= X4 and X3 and (X2 or X1);

end inside;

