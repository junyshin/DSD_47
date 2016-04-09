library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity g47_ui_pushbutton is
  port (
    clock : in std_logic;
    -- pushbuttons
    reset : in std_logic;
    keypress: in std_logic;
    -- switches
    setting_init : in std_logic;
    setting_rotor : in std_logic_vector(1 downto 0);
    setting_mode : in std_logic_vector(1 downto 0);
    input_code : in std_logic_vector(4 downto 0);
    -- led
    led_error : out std_logic_vector(4 downto 0);
    led_count : out std_logic_vector(4 downto 0);
    -- displays
    segments_3 : out std_logic_vector(6 downto 0);
    segments_2 : out std_logic_vector(6 downto 0);
    segments_1 : out std_logic_vector(6 downto 0);
    segments_0 : out std_logic_vector(6 downto 0)
  ) ;
end entity ; -- g47_ui_pushbutton

architecture arch of g47_ui_pushbutton is
  -- Components
  component g47_0_25_counter
    port (
      clock: in std_logic;
      reset: in std_logic;
      enable: in std_logic;
      count: out std_logic_vector(4 downto 0);
      --
      load: in std_logic;
      data: in std_logic_vector(4 downto 0)
    ) ;
  end component;
  component g47_hex_display
    port (
      display_type: in std_logic;
      index: in std_logic_vector(4 downto 0);
      segments: out std_logic_vector(6 downto 0)
    ) ;
  end component;

  -- Counter Variables
  signal load : std_logic := '0';
  constant DATA : std_logic_vector(4 downto 0) := "00000";

  -- Keypress Variables
  type keypress_state_type is (A, B, C);
  signal keypress_state: keypress_state_type := A;
  signal input_enable : std_logic := '0';

  -- Display Variables
  signal display_type_3 : std_logic := '0';
  signal display_input_3 : std_logic_vector(4 downto 0) := "11111";
  signal display_type_2 : std_logic := '0';
  signal display_input_2 : std_logic_vector(4 downto 0) := "11111";
  signal display_type_1 : std_logic := '0';
  signal display_input_1 : std_logic_vector(4 downto 0) := "11111";
  signal display_type_0 : std_logic := '0';
  signal display_input_0 : std_logic_vector(4 downto 0) := "11111";

  -- UI Input Variables
  constant ERROR_CODE : std_logic_vector(4 downto 0) := "11111";
  signal input_clear : std_logic_vector(3 downto 0) := "0000";
  signal input_3 : std_logic_vector(5 downto 0) := "111111";
  signal input_2 : std_logic_vector(5 downto 0) := "111111";
  signal input_1 : std_logic_vector(5 downto 0) := "111111";
  signal input_0 : std_logic_vector(5 downto 0) := "111111";

  -- fake enigma signals
  signal reflector_type : std_logic := '0';
  signal left_data, middle_data, right_data : std_logic_vector(4 downto 0) := "11111";
  signal left_rotor_type, middle_rotor_type, right_rotor_type : std_logic_vector(1 downto 0) := "00";
  signal left_ring_shift, middle_ring_shift, right_ring_shift : std_logic_vector(4 downto 0) := "00000";
  signal enigma_output : std_logic_vector(4 downto 0) := "00000";

  -- UI Outupt Variables

begin
  COUNTER : g47_0_25_counter
    port map(clock => clock, reset => reset, enable => input_enable,
             load => load, data => DATA,
             count => led_count);

  -- DISPLAYS
  HEX_3 : g47_hex_display
    port map(display_type => display_type_3,
             index => display_input_3,
             segments => segments_3);

  HEX_2 : g47_hex_display
    port map(display_type => display_type_2,
             index => display_input_2,
             segments => segments_2);

  HEX_1 : g47_hex_display
    port map(display_type => display_type_1,
             index => display_input_1,
             segments => segments_1);

  HEX_0 : g47_hex_display
    port map(display_type => display_type_0,
             index => display_input_0,
             segments => segments_0);

  -- UI PROCESSES

  UI_INPUT : process( clock, input_enable, setting_init, setting_rotor, setting_mode, input_code )
  begin
    if rising_edge(clock) then
      if setting_init = '1' then
        case( setting_rotor ) is
          when "00" => -- Right
            case( setting_mode ) is
              when "00" => -- data
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                     right_data <= input_code;
                  end if ;
                  input_clear(0) <= '0';
                  input_0 <= '0' & input_code;
                else
                  input_clear(0) <= '1'; -- Error
                end if ;
                input_clear(2) <= '0';
                input_2 <= '0' & right_data;
                input_clear(3) <= '1'; -- clear display 3
                input_clear(1) <= '1'; -- clear display 1
              when "01" => -- type
                if unsigned(input_code) < 4 then
                  if input_enable = '1' then
                    right_rotor_type <= input_code(1 downto 0);
                  end if ;
                  input_clear(0) <= '0';
                  input_0 <= '1' & std_logic_vector(unsigned(input_code)+1);
                else
                  input_clear(0) <= '1'; -- Error
                end if ;
                input_clear(2) <= '0';
                input_2 <= '1' & std_logic_vector(unsigned("000" & right_rotor_type)+1);
                input_clear(3) <= '1'; -- clear display 3
                input_clear(1) <= '1'; -- clear display 1
              when "10" => -- shift
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                     right_ring_shift <= input_code;
                  end if ;
                  if unsigned(input_code) < 10 then
                    input_clear(1 downto 0) <= "10";
                    input_0 <= '1' & input_code;
                  elsif unsigned(input_code) < 20 then
                    input_clear(1 downto 0) <= "00";
                    input_1 <= "100001";
                    input_0 <= '1' & (std_logic_vector(unsigned(input_code) - 10));
                  else
                    input_clear(1 downto 0) <= "00";
                    input_1 <= "100010";
                    input_0 <= '1' & (std_logic_vector(unsigned(input_code) - 20));
                  end if ;
                else
                  input_clear(1 downto 0) <= "11"; -- Error
                end if ;
                if unsigned(right_ring_shift) < 10 then
                    input_clear(3 downto 2) <= "10";
                    input_2 <= '1' & right_ring_shift;
                  elsif unsigned(right_ring_shift) < 20 then
                    input_clear(3 downto 2) <= "00";
                    input_3 <= "100001";
                    input_2 <= '1' & (std_logic_vector(unsigned(right_ring_shift) - 10));
                  else
                    input_clear(3 downto 2) <= "00";
                    input_3 <= "100010";
                    input_2 <= '1' & (std_logic_vector(unsigned(right_ring_shift) - 20));
                  end if ;
              when others => -- undefined state
                input_clear <= "1111";
            end case ;
          when "01" => -- Middle
            case( setting_mode ) is
              when "00" => -- data
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                     middle_data <= input_code;
                  end if ;
                  input_clear(0) <= '0';
                  input_0 <= '0' & input_code;
                else
                  input_clear(0) <= '1'; -- Error
                end if ;
                input_clear(2) <= '0';
                input_2 <= '0' & middle_data;
                input_clear(3) <= '1'; -- clear display 3
                input_clear(1) <= '1'; -- clear display 1
              when "01" => -- type
                if unsigned(input_code) < 4 then
                  if input_enable = '1' then
                    middle_rotor_type <= input_code(1 downto 0);
                  end if ;
                  input_clear(0) <= '0';
                  input_0 <= '1' & std_logic_vector(unsigned(input_code)+1);
                else
                  input_clear(0) <= '1'; -- Error
                end if ;
                input_clear(2) <= '0';
                input_2 <= '1' & std_logic_vector(unsigned("000" & middle_rotor_type)+1);
                input_clear(3) <= '1'; -- clear display 3
                input_clear(1) <= '1'; -- clear display 1
              when "10" => -- shift
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                     middle_ring_shift <= input_code;
                  end if ;
                  if unsigned(input_code) < 10 then
                    input_clear(1 downto 0) <= "10";
                    input_0 <= '1' & input_code;
                  elsif unsigned(input_code) < 20 then
                    input_clear(1 downto 0) <= "00";
                    input_1 <= "100001";
                    input_0 <= '1' & (std_logic_vector(unsigned(input_code) - 10));
                  else
                    input_clear(1 downto 0) <= "00";
                    input_1 <= "100010";
                    input_0 <= '1' & (std_logic_vector(unsigned(input_code) - 20));
                  end if ;
                else
                  input_clear(1 downto 0) <= "11"; -- Error
                end if ;
                if unsigned(middle_ring_shift) < 10 then
                    input_clear(3 downto 2) <= "10";
                    input_2 <= '1' & middle_ring_shift;
                  elsif unsigned(middle_ring_shift) < 20 then
                    input_clear(3 downto 2) <= "00";
                    input_3 <= "100001";
                    input_2 <= '1' & (std_logic_vector(unsigned(middle_ring_shift) - 10));
                  else
                    input_clear(3 downto 2) <= "00";
                    input_3 <= "100010";
                    input_2 <= '1' & (std_logic_vector(unsigned(middle_ring_shift) - 20));
                  end if ;
              when others => -- undefined state
                input_clear <= "1111";
            end case ;
          when "10" => -- Left
            case( setting_mode ) is
              when "00" => -- data
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                     left_data <= input_code;
                  end if ;
                  input_clear(0) <= '0';
                  input_0 <= '0' & input_code;
                else
                  input_clear(0) <= '1'; -- Error
                end if ;
                input_clear(2) <= '0';
                input_2 <= '0' & left_data;
                input_clear(3) <= '1'; -- clear display 3
                input_clear(1) <= '1'; -- clear display 1
              when "01" => -- type
                if unsigned(input_code) < 4 then
                  if input_enable = '1' then
                    left_rotor_type <= input_code(1 downto 0);
                  end if ;
                  input_clear(0) <= '0';
                  input_0 <= '1' & std_logic_vector(unsigned(input_code)+1);
                else
                  input_clear(0) <= '1'; -- Error
                end if ;
                input_clear(2) <= '0';
                input_2 <= '1' & std_logic_vector(unsigned("000" & left_rotor_type)+1);
                input_clear(3) <= '1'; -- clear display 3
                input_clear(1) <= '1'; -- clear display 1
              when "10" => -- shift
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                     left_ring_shift <= input_code;
                  end if ;
                  if unsigned(input_code) < 10 then
                    input_clear(1 downto 0) <= "10";
                    input_0 <= '1' & input_code;
                  elsif unsigned(input_code) < 20 then
                    input_clear(1 downto 0) <= "00";
                    input_1 <= "100001";
                    input_0 <= '1' & (std_logic_vector(unsigned(input_code) - 10));
                  else
                    input_clear(1 downto 0) <= "00";
                    input_1 <= "100010";
                    input_0 <= '1' & (std_logic_vector(unsigned(input_code) - 20));
                  end if ;
                else
                  input_clear(1 downto 0) <= "11"; -- Error
                end if ;
                if unsigned(left_ring_shift) < 10 then
                    input_clear(3 downto 2) <= "10";
                    input_2 <= '1' & left_ring_shift;
                  elsif unsigned(left_ring_shift) < 20 then
                    input_clear(3 downto 2) <= "00";
                    input_3 <= "100001";
                    input_2 <= '1' & (std_logic_vector(unsigned(left_ring_shift) - 10));
                  else
                    input_clear(3 downto 2) <= "00";
                    input_3 <= "100010";
                    input_2 <= '1' & (std_logic_vector(unsigned(left_ring_shift) - 20));
                  end if ;
              when others => -- undefined state
                input_clear <= "1111";
            end case ;
          when "11" => -- Reflector
            if input_enable = '1' then
              reflector_type <= input_code(0);
            end if ;
            input_clear(0) <= '0';
            input_0 <= "10000" & input_code(0);
            input_clear(2) <= '0';
            input_2 <= "10000" & reflector_type;
            input_clear(3) <= '1'; -- clear display 3
            input_clear(1) <= '1'; -- clear display 1
          when others => -- undefined state
            input_clear <= "1111";
        end case ;
      else
        input_clear(0) <= '0';
        input_0 <= '0' & input_code;
        input_clear(2) <= '0';
        input_2 <= '0' & enigma_output;
        input_clear(3) <= '1'; -- clear display 3
        input_clear(1) <= '1'; -- clear display 1
      end if ;
    end if ;
  end process ; -- UI_INPUT

  UI_OUTPUT : process( input_clear, input_3, input_2, input_1, input_0 )
  begin
    if input_clear(3) = '1' then
      display_type_3 <= '0';
      display_input_3 <= ERROR_CODE;
    else
      display_type_3 <= input_3(5);
      display_input_3 <= input_3(4 downto 0);
    end if ;
    if input_clear(2) = '1' then
      display_type_2 <= '0';
      display_input_2 <= ERROR_CODE;
    else
      display_type_2 <= input_2(5);
      display_input_2 <= input_2(4 downto 0);
    end if ;
    if input_clear(1) = '1' then
      display_type_1 <= '0';
      display_input_1 <= ERROR_CODE;
    else
      display_type_1 <= input_1(5);
      display_input_1 <= input_1(4 downto 0);
    end if ;
    if input_clear(0) = '1' then
      display_type_0 <= '0';
      display_input_0 <= ERROR_CODE;
    else
      display_type_0 <= input_0(5);
      display_input_0 <= input_0(4 downto 0);
    end if ;
  end process ; -- UI_OUTPUT

  KEYPRESS_STATE_PROCESS : process( clock, keypress )
  begin
    if rising_edge(clock) then
      case( keypress_state ) is
        when A =>
          if keypress = '0' then
            keypress_state <= B;
          else
            keypress_state <= A;
          end if ;
        when B =>
          if keypress = '1' then
            keypress_state <= C;
          else
            keypress_state <= B;
          end if ;
        when C =>
          keypress_state <= A;
      end case ;
    end if ;
  end process ; -- KEYPRESS_STATE_PROCESS

  COUNTER_ENABLE : process( keypress_state )
  begin
    case( keypress_state ) is
      when A =>
        input_enable <= '0';
      when B =>
        input_enable <= '0';
      when C =>
        input_enable <= '1';
    end case ;
  end process ; -- COUNTER_ENABLE
end architecture ; -- arch
