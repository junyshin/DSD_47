library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity g47_ui is
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
    -- displays
    segments_i : out std_logic_vector(6 downto 0); -- Information
    segments_l : out std_logic_vector(6 downto 0);
    segments_m : out std_logic_vector(6 downto 0); -- Current setting or output
    segments_r : out std_logic_vector(6 downto 0);  -- Current letter or input
    -- LED
    led_error : out std_logic_vector(4 downto 0) := "00000"
  ) ;
end entity ; -- g47_ui

architecture arch of g47_ui is
  -- Components
  component g47_enigma
    port (
      clock: in std_logic;
      input_code: in std_logic_vector(4 downto 0);
      output_code: out std_logic_vector(4 downto 0);
      -- fsm
      reset: in std_logic;
      init: in std_logic;
      keypress: in std_logic;
      -- left settings
      left_data: in std_logic_vector(4 downto 0);
      left_rotor_type: in std_logic_vector(1 downto 0);
      left_ring_shift: in std_logic_vector(4 downto 0);
      -- middle settings
      middle_data: in std_logic_vector(4 downto 0);
      middle_rotor_type: in std_logic_vector(1 downto 0);
      middle_ring_shift: in std_logic_vector(4 downto 0);
      -- right settings
      right_data: in std_logic_vector(4 downto 0);
      right_rotor_type: in std_logic_vector(1 downto 0);
      right_ring_shift: in std_logic_vector(4 downto 0);
      -- reflector settings
      reflector_type: in std_logic
    ) ;
  end component;
  component g47_7_segmentdecoder
    port (
      segment_type: in std_logic;
      index: in std_logic_vector(4 downto 0);
      segments: out std_logic_vector(6 downto 0)
    ) ;
  end component;

  -- Constants
  constant ERROR_LETTER : std_logic_vector(4 downto 0) := "11111";

  -- Keypress Variables
  signal input_enable: std_logic;
  signal hold: std_logic := '0';
  signal state: std_logic_vector(1 downto 0) := "00";
  signal keypress_up, keypress_down, keypress_enable: std_logic;

  -- UI Variables
  signal reflector_type, input_error : std_logic;
  signal left_data, middle_data, right_data : std_logic_vector(4 downto 0);
  signal left_rotor_type, middle_rotor_type, right_rotor_type : std_logic_vector(1 downto 0);
  signal left_ring_shift, middle_ring_shift, right_ring_shift : std_logic_vector(4 downto 0);
  signal enigma_output : std_logic_vector(4 downto 0);
  signal display_i_type, display_l_type, display_m_type, display_r_type : std_logic := '0';
  signal display_i_in, display_l_in, display_m_in, display_r_in : std_logic_vector(4 downto 0) := "11111";
begin
  ENIGMA : g47_enigma
    port map(clock => clock,
             reset => reset,
             init => setting_init,
             keypress => keypress,
             -- left
             left_data => left_data,
             left_rotor_type => left_rotor_type,
             left_ring_shift => left_ring_shift,
             -- middle
             middle_data => middle_data,
             middle_rotor_type => middle_rotor_type,
             middle_ring_shift => middle_ring_shift,
             -- right
             right_data => right_data,
             right_rotor_type => right_rotor_type,
             right_ring_shift => right_ring_shift,
             -- reflector
             reflector_type => reflector_type,
             -- io
             input_code => input_code,
             output_code => enigma_output
             );

  DISPLAY_I : g47_7_segmentdecoder
    port map(segment_type => display_i_type, index => display_i_in, segments => segments_i);

  DISPLAY_L : g47_7_segmentdecoder
    port map(segment_type => display_l_type, index => display_l_in, segments => segments_l);

  DISPLAY_M : g47_7_segmentdecoder
    port map(segment_type => display_m_type, index => display_m_in, segments => segments_m);

  DISPLAY_R : g47_7_segmentdecoder
    port map(segment_type => display_r_type, index => display_r_in, segments => segments_r);

  UI : process( clock, setting_init, setting_rotor, setting_mode, input_code , enigma_output )
  begin
    if rising_edge(clock) then
      if setting_init = '1' then
        -- perform initialization
        case( setting_rotor ) is
          when "00" => -- Left
            case( setting_mode ) is
              when "00" => -- data
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                    left_data <= input_code;
                  end if ;
                  display_r_type <= '0';
                  display_r_in <= input_code;
                  input_error <= '0';
                else
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '0';
                display_l_in <= left_data;
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
              when "01" => -- type
                if unsigned(input_code) < 4 then
                  if input_enable = '1' then
                    left_rotor_type <= input_code(1 downto 0);
                  end if ;
                  display_r_type <= '1';
                  display_r_in <= std_logic_vector(unsigned(input_code)+1);
                  input_error <= '0';
                else
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '1';
                display_l_in <= std_logic_vector(unsigned("000" & left_rotor_type)+1);
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
              when "10" => -- shift
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                    left_ring_shift <= input_code;
                  end if ;
                  if unsigned(input_code) < 10 then
                    display_m_type <= '0';
                    display_m_in <= ERROR_LETTER;
                    display_r_type <= '1';
                    display_r_in <= input_code;
                  elsif unsigned(input_code) < 20 then
                    display_m_type <= '1';
                    display_m_in <= "00001";
                    display_r_type <= '1';
                    display_r_in <= std_logic_vector(unsigned(input_code) - 10);
                  else
                    display_m_type <= '1';
                    display_m_in <= "00010";
                    display_r_type <= '1';
                    display_r_in <= std_logic_vector(unsigned(input_code) - 20);
                  end if ;
                  input_error <= '0';
                else
                  display_m_type <= '0';
                  display_m_in <= ERROR_LETTER;
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                if unsigned(left_ring_shift) < 10 then
                  display_i_type <= '0';
                  display_i_in <= ERROR_LETTER;
                  display_l_type <= '1';
                  display_l_in <= left_ring_shift;
                elsif unsigned(left_ring_shift) < 20 then
                  display_i_type <= '1';
                  display_i_in <= "00001";
                  display_l_type <= '1';
                  display_l_in <= std_logic_vector(unsigned(left_ring_shift) - 10);
                else
                  display_i_type <= '1';
                  display_i_in <= "00010";
                  display_l_type <= '1';
                  display_l_in <= std_logic_vector(unsigned(left_ring_shift) - 20);
                end if ;
              when others =>
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '0';
                display_l_in <= ERROR_LETTER;
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
                display_r_type <= '0';
                display_r_in <= ERROR_LETTER;
            end case ;
          when "01" => -- Middle
            case( setting_mode ) is
              when "00" => -- data
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                    middle_data <= input_code;
                  end if ;
                  display_r_type <= '0';
                  display_r_in <= input_code;
                  input_error <= '0';
                else
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '0';
                display_l_in <= middle_data;
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
              when "01" => -- type
                if unsigned(input_code) < 4 then
                  if input_enable = '1' then
                    middle_rotor_type <= input_code(1 downto 0);
                  end if ;
                  display_r_type <= '1';
                  display_r_in <= std_logic_vector(unsigned(input_code)+1);
                  input_error <= '0';
                else
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '1';
                display_l_in <= std_logic_vector(unsigned("000" & middle_rotor_type)+1);
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
              when "10" => -- shift
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                    middle_ring_shift <= input_code;
                  end if ;
                  if unsigned(input_code) < 10 then
                    display_m_type <= '0';
                    display_m_in <= ERROR_LETTER;
                    display_r_type <= '1';
                    display_r_in <= input_code;
                  elsif unsigned(input_code) < 20 then
                    display_m_type <= '1';
                    display_m_in <= "00001";
                    display_r_type <= '1';
                    display_r_in <= std_logic_vector(unsigned(input_code) - 10);
                  else
                    display_m_type <= '1';
                    display_m_in <= "00010";
                    display_r_type <= '1';
                    display_r_in <= std_logic_vector(unsigned(input_code) - 20);
                  end if ;
                  input_error <= '0';
                else
                  display_m_type <= '0';
                  display_m_in <= ERROR_LETTER;
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                if unsigned(middle_ring_shift) < 10 then
                  display_i_type <= '0';
                  display_i_in <= ERROR_LETTER;
                  display_l_type <= '1';
                  display_l_in <= left_ring_shift;
                elsif unsigned(middle_ring_shift) < 20 then
                  display_i_type <= '1';
                  display_i_in <= "00001";
                  display_l_type <= '1';
                  display_l_in <= std_logic_vector(unsigned(middle_ring_shift) - 10);
                else
                  display_i_type <= '1';
                  display_i_in <= "00010";
                  display_l_type <= '1';
                  display_l_in <= std_logic_vector(unsigned(middle_ring_shift) - 20);
                end if ;
              when others =>
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '0';
                display_l_in <= ERROR_LETTER;
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
                display_r_type <= '0';
                display_r_in <= ERROR_LETTER;
            end case ;
          when "10" => -- Right
            case( setting_mode ) is
              when "00" => -- data
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                    right_data <= input_code;
                  end if ;
                  display_r_type <= '0';
                  display_r_in <= input_code;
                  input_error <= '0';
                else
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '0';
                display_l_in <= right_data;
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
              when "01" => -- type
                if unsigned(input_code) < 4 then
                  if input_enable = '1' then
                    right_rotor_type <= input_code(1 downto 0);
                  end if ;
                  display_r_type <= '1';
                  display_r_in <= std_logic_vector(unsigned(input_code)+1);
                  input_error <= '0';
                else
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '1';
                display_l_in <= std_logic_vector(unsigned("000" & right_rotor_type)+1);
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
              when "10" => -- shift
                if unsigned(input_code) < 26 then
                  if input_enable = '1' then
                    right_ring_shift <= input_code;
                  end if ;
                  if unsigned(input_code) < 10 then
                    display_m_type <= '0';
                    display_m_in <= ERROR_LETTER;
                    display_r_type <= '1';
                    display_r_in <= input_code;
                  elsif unsigned(input_code) < 20 then
                    display_m_type <= '1';
                    display_m_in <= "00001";
                    display_r_type <= '1';
                    display_r_in <= std_logic_vector(unsigned(input_code) - 10);
                  else
                    display_m_type <= '1';
                    display_m_in <= "00010";
                    display_r_type <= '1';
                    display_r_in <= std_logic_vector(unsigned(input_code) - 20);
                  end if ;
                  input_error <= '0';
                else
                  display_m_type <= '0';
                  display_m_in <= ERROR_LETTER;
                  display_r_type <= '0';
                  display_r_in <= ERROR_LETTER;
                  input_error <= '1';
                end if ;
                if unsigned(right_ring_shift) < 10 then
                  display_i_type <= '0';
                  display_i_in <= ERROR_LETTER;
                  display_l_type <= '1';
                  display_l_in <= left_ring_shift;
                elsif unsigned(right_ring_shift) < 20 then
                  display_i_type <= '1';
                  display_i_in <= "00001";
                  display_l_type <= '1';
                  display_l_in <= std_logic_vector(unsigned(right_ring_shift) - 10);
                else
                  display_i_type <= '1';
                  display_i_in <= "00010";
                  display_l_type <= '1';
                  display_l_in <= std_logic_vector(unsigned(right_ring_shift) - 20);
                end if ;
              when others =>
                display_i_type <= '0';
                display_i_in <= ERROR_LETTER;
                display_l_type <= '0';
                display_l_in <= ERROR_LETTER;
                display_m_type <= '0';
                display_m_in <= ERROR_LETTER;
                display_r_type <= '0';
                display_r_in <= ERROR_LETTER;
            end case ;
          when "11" => -- Reflector (only has one setting)
            if input_enable = '1' then
              reflector_type <= input_code(0);
            end if ;
            display_i_type <= '0';
            display_i_in <= ERROR_LETTER;
            display_l_type <= '1';
            display_l_in <= "0000" & reflector_type;
            display_m_type <= '0';
            display_m_in <= ERROR_LETTER;
            display_r_type <= '1';
            display_r_in <= "0000" & input_code(0);
            input_error <= '0';
          when others =>
            display_i_type <= '0';
            display_i_in <= ERROR_LETTER;
            display_l_type <= '0';
            display_l_in <= ERROR_LETTER;
            display_m_type <= '0';
            display_m_in <= ERROR_LETTER;
            display_r_type <= '0';
            display_r_in <= ERROR_LETTER;
            input_error <= '1';
        end case ;
      else
        -- accept input
        if unsigned(input_code) < 26 then
          display_r_type <= '0';
          display_r_in <= input_code;
          input_error <= '0';
        else
          display_r_type <= '0';
          display_r_in <= ERROR_LETTER;
          input_error <= '1';
        end if ;
        display_i_type <= '0';
        display_i_in <= ERROR_LETTER;
        display_l_type <= '0';
        display_l_in <= enigma_output;
        display_m_type <= '0';
        display_m_in <= ERROR_LETTER;
      end if ;
      led_error(4) <= input_error;
    end if ;
  end process ; -- UI

  RISING_KEYPRESS : process( clock, keypress )
  begin
    if state = "00" then
      if keypress = '0' then
        state <= "01";
      end if ;
      input_enable <= '0';
      keypress_up <= '1';
      keypress_down <= '0';
      keypress_enable <= '0';
    elsif state = "01" then
      if keypress = '1' then
        state <= "10";
      end if ;
      input_enable <= '0';
      keypress_up <= '0';
      keypress_down <= '1';
      keypress_enable <= '0';
    elsif state = "10" then
      input_enable <= '1';
      hold <= '1';
      state <= "11";
      keypress_up <= '1';
      keypress_down <= '0';
      keypress_enable <= '1';
    else
      if rising_edge(clock) then
        if hold = '1' then
          hold <= '0';
        end if ;
      end if ;
      if falling_edge(clock) then
        if hold = '0' then
          state <= "00";
          input_enable <= '0';
          keypress_enable <= '0';
        end if ;
      end if ;
    end if ;
    led_error(2) <= keypress_down;
    led_error(1) <= keypress_up;
    led_error(0) <= keypress_enable;
  end process ; -- KEYPRESS
end architecture ; -- arch
