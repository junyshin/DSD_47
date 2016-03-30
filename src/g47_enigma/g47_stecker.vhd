library ieee;
use ieee.std_logic_1164.all;

entity g47_stecker is
  port (
    input_code: in std_logic_vector(4 downto 0);
    output_code: out std_logic_vector(4 downto 0)
  ) ;
end entity ; -- g47_stecker

architecture arch of g47_stecker is
  constant LETTER_A : std_logic_vector(4 downto 0) := "00000"; -- A
  constant LETTER_B : std_logic_vector(4 downto 0) := "00001"; -- B
  constant LETTER_C : std_logic_vector(4 downto 0) := "00010"; -- C
  constant LETTER_D : std_logic_vector(4 downto 0) := "00011"; -- D
  constant LETTER_E : std_logic_vector(4 downto 0) := "00100"; -- E
  constant LETTER_F : std_logic_vector(4 downto 0) := "00101"; -- F
  constant LETTER_G : std_logic_vector(4 downto 0) := "00110"; -- G
  constant LETTER_H : std_logic_vector(4 downto 0) := "00111"; -- H
  constant LETTER_I : std_logic_vector(4 downto 0) := "01000"; -- I
  constant LETTER_J : std_logic_vector(4 downto 0) := "01001"; -- J
  constant LETTER_K : std_logic_vector(4 downto 0) := "01010"; -- K
  constant LETTER_L : std_logic_vector(4 downto 0) := "01011"; -- L
  constant LETTER_M : std_logic_vector(4 downto 0) := "01100"; -- M
  constant LETTER_N : std_logic_vector(4 downto 0) := "01101"; -- N
  constant LETTER_O : std_logic_vector(4 downto 0) := "01110"; -- O
  constant LETTER_P : std_logic_vector(4 downto 0) := "01111"; -- P
  constant LETTER_Q : std_logic_vector(4 downto 0) := "10000"; -- Q
  constant LETTER_R : std_logic_vector(4 downto 0) := "10001"; -- R
  constant LETTER_S : std_logic_vector(4 downto 0) := "10010"; -- S
  constant LETTER_T : std_logic_vector(4 downto 0) := "10011"; -- T
  constant LETTER_U : std_logic_vector(4 downto 0) := "10100"; -- U
  constant LETTER_V : std_logic_vector(4 downto 0) := "10101"; -- V
  constant LETTER_W : std_logic_vector(4 downto 0) := "10110"; -- W
  constant LETTER_X : std_logic_vector(4 downto 0) := "10111"; -- X
  constant LETTER_Y : std_logic_vector(4 downto 0) := "11000"; -- Y
  constant LETTER_Z : std_logic_vector(4 downto 0) := "11001"; -- Z
  constant LETTER_ERROR : std_logic_vector(4 downto 0) := "11111"; -- ERROR
begin
  STECKER : process( input_code )
  begin -- TODO: make this programmable?
    case( input_code ) is
      when "00000" => output_code <= LETTER_Z; -- A, Z
      when "00001" => output_code <= LETTER_Y; -- B, Y
      when "00010" => output_code <= LETTER_X; -- C, X
      when "00011" => output_code <= LETTER_W; -- D, W
      when "00100" => output_code <= LETTER_V; -- E, V
      when "00101" => output_code <= LETTER_U; -- F, U
      when "00110" => output_code <= LETTER_T; -- G, T
      when "00111" => output_code <= LETTER_S; -- H, S
      when "01000" => output_code <= LETTER_R; -- I, R
      when "01001" => output_code <= LETTER_Q; -- J, Q
      when "01010" => output_code <= LETTER_P; -- K, P
      when "01011" => output_code <= LETTER_O; -- L, O
      when "01100" => output_code <= LETTER_N; -- M, N
      when "01101" => output_code <= LETTER_M; -- N, M
      when "01110" => output_code <= LETTER_L; -- O, L
      when "01111" => output_code <= LETTER_K; -- P, K
      when "10000" => output_code <= LETTER_J; -- Q, J
      when "10001" => output_code <= LETTER_I; -- R, I
      when "10010" => output_code <= LETTER_H; -- S, H
      when "10011" => output_code <= LETTER_G; -- T, G
      when "10100" => output_code <= LETTER_F; -- U, F
      when "10101" => output_code <= LETTER_E; -- V, E
      when "10110" => output_code <= LETTER_D; -- W, D
      when "10111" => output_code <= LETTER_C; -- X, C
      when "11000" => output_code <= LETTER_B; -- Y, B
      when "11001" => output_code <= LETTER_A; -- Z, A
      when others  => output_code <= LETTER_ERROR;
    end case ;
  end process ; -- STECKER
end architecture ; -- arch
