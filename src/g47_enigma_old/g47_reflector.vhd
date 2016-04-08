library ieee;
use ieee.std_logic_1164.all;

entity g47_reflector is
  port (
    reflector_type: in std_logic;
    input_code: in std_logic_vector(4 downto 0);
    output_code: out std_logic_vector(4 downto 0)
  ) ;
end entity ; -- g47_reflector

architecture arch of g47_reflector is
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
  REFLECTOR : process( reflector_type, input_code )
  begin
    case( reflector_type ) is
      when '0' =>
        case( input_code ) is
          when "00000" => output_code <= LETTER_Y;-- A, Y
          when "00001" => output_code <= LETTER_R;-- B, R
          when "00010" => output_code <= LETTER_U;-- C, U
          when "00011" => output_code <= LETTER_H;-- D, H
          when "00100" => output_code <= LETTER_Q;-- E, Q
          when "00101" => output_code <= LETTER_S;-- F, S
          when "00110" => output_code <= LETTER_L;-- G, L
          when "00111" => output_code <= LETTER_D;-- H, D
          when "01000" => output_code <= LETTER_P;-- I, P
          when "01001" => output_code <= LETTER_X;-- J, X
          when "01010" => output_code <= LETTER_N;-- K, N
          when "01011" => output_code <= LETTER_G;-- L, G
          when "01100" => output_code <= LETTER_O;-- M, O
          when "01101" => output_code <= LETTER_K;-- N, K
          when "01110" => output_code <= LETTER_M;-- O, M
          when "01111" => output_code <= LETTER_I;-- P, I
          when "10000" => output_code <= LETTER_E;-- Q, E
          when "10001" => output_code <= LETTER_B;-- R, B
          when "10010" => output_code <= LETTER_F;-- S, F
          when "10011" => output_code <= LETTER_Z;-- T, Z
          when "10100" => output_code <= LETTER_C;-- U, C
          when "10101" => output_code <= LETTER_W;-- V, W
          when "10110" => output_code <= LETTER_V;-- W, V
          when "10111" => output_code <= LETTER_J;-- X, J
          when "11000" => output_code <= LETTER_A;-- Y, A
          when "11001" => output_code <= LETTER_T;-- Z, T
          when others  => output_code <= LETTER_ERROR;
        end case ;
      when '1' =>
        case( input_code ) is
          when "00000" => output_code <= LETTER_F;-- A, F
          when "00001" => output_code <= LETTER_V;-- B, V
          when "00010" => output_code <= LETTER_P;-- C, P
          when "00011" => output_code <= LETTER_J;-- D, J
          when "00100" => output_code <= LETTER_I;-- E, I
          when "00101" => output_code <= LETTER_A;-- F, A
          when "00110" => output_code <= LETTER_O;-- G, O
          when "00111" => output_code <= LETTER_Y;-- H, Y
          when "01000" => output_code <= LETTER_E;-- I, E
          when "01001" => output_code <= LETTER_D;-- J, D
          when "01010" => output_code <= LETTER_R;-- K, R
          when "01011" => output_code <= LETTER_Z;-- L, Z
          when "01100" => output_code <= LETTER_X;-- M, X
          when "01101" => output_code <= LETTER_W;-- N, W
          when "01110" => output_code <= LETTER_G;-- O, G
          when "01111" => output_code <= LETTER_C;-- P, C
          when "10000" => output_code <= LETTER_T;-- Q, T
          when "10001" => output_code <= LETTER_K;-- R, K
          when "10010" => output_code <= LETTER_U;-- S, U
          when "10011" => output_code <= LETTER_Q;-- T, Q
          when "10100" => output_code <= LETTER_S;-- U, S
          when "10101" => output_code <= LETTER_B;-- V, B
          when "10110" => output_code <= LETTER_N;-- W, N
          when "10111" => output_code <= LETTER_M;-- X, M
          when "11000" => output_code <= LETTER_H;-- Y, H
          when "11001" => output_code <= LETTER_L;-- Z, L
          when others  => output_code <= LETTER_ERROR;
        end case ;
      when others =>
        output_code <= LETTER_ERROR;
    end case ;
  end process ; -- REFLECTOR
end architecture ; -- arch
