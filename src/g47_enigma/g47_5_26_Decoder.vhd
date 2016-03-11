library ieee;
use ieee.std_logic_1164.all;

entity g47_5_26_decoder is
  port (
    index: in std_logic_vector(4 downto 0);
    letter: out std_logic_vector(25 downto 0);
    error: out std_logic
  ) ;
end entity ; -- g47_5_26_decoder

architecture arch of g47_5_26_decoder is
  signal X4,X3,X2,X1,X0: std_logic;
begin
  X4 <= index(4);
  X3 <= index(3);
  X2 <= index(2);
  X1 <= index(1);
  X0 <= index(0);
    --
  letter(0) <= not(X4) and not(X3) and not(X2) and not(X1) and not(X0);
  letter(1) <= not(X4) and not(X3) and not(X2) and not(X1) and X0;
  letter(2) <= not(X4) and not(X3) and not(X2) and X1 and not(X0);
  letter(3) <= not(X4) and not(X3) and not(X2) and X1 and X0;
    --
  letter(4) <= not(X4) and not(X3) and X2 and not(X1) and not(X0);
  letter(5) <= not(X4) and not(X3) and X2 and not(X1) and X0;
  letter(6) <= not(X4) and not(X3) and X2 and X1 and not(X0);
  letter(7) <= not(X4) and not(X3) and X2 and X1 and X0;
    --
  letter(8) <= not(X4) and X3 and not(X2) and not(X1) and not(X0);
  letter(9) <= not(X4) and X3 and not(X2) and not(X1) and X0;
  letter(10) <= not(X4) and X3 and not(X2) and X1 and not(X0);
  letter(11) <= not(X4) and X3 and not(X2) and X1 and X0;
    --
  letter(12) <= not(X4) and X3 and X2 and not(X1) and not(X0);
  letter(13) <= not(X4) and X3 and X2 and not(X1) and X0;
  letter(14) <= not(X4) and X3 and X2 and X1 and not(X0);
  letter(15) <= not(X4) and X3 and X2 and X1 and X0;
    --
  letter(16) <= X4 and not(X3) and not(X2) and not(X1) and not(X0);
  letter(17) <= X4 and not(X3) and not(X2) and not(X1) and X0;
  letter(18) <= X4 and not(X3) and not(X2) and X1 and not(X0);
  letter(19) <= X4 and not(X3) and not(X2) and X1 and X0;
    --
  letter(20) <= X4 and not(X3) and X2 and not(X1) and not(X0);
  letter(21) <= X4 and not(X3) and X2 and not(X1) and X0;
  letter(22) <= X4 and not(X3) and X2 and X1 and not(X0);
  letter(23) <= X4 and not(X3) and X2 and X1 and X0;
    --
  letter(24) <= X4 and X3 and not(X2) and not(X1) and not(X0);
  letter(25) <= X4 and X3 and not(X2) and not(X1) and X0;
  --
  error <= X4 and X3 and (X2 or X1);
end architecture ; -- arch
