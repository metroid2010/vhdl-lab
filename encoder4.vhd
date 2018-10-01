-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- encoder 4-2

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encoder4 is
port (
    input : in std_logic_vector(3 downto 0); --buttons: floor 3 -> msb, floor 0 -> lsb
    output : out std_logic_vector(1 downto 0); --encoded signal from the buttons
    active : out std_logic --indicates if some button was pressed
    );
end encoder4;

architecture a_encoder4 of encoder4 is
    signal s_output: std_logic_vector(1 downto 0);
    signal s_active: std_logic;
begin
    process(input)
    begin
        case input is
            when "0001" => s_output <= "00"; s_active <= '1';  --floor 0
            when "0010" => s_output <= "01"; s_active <= '1';
            when "0100" => s_output <= "10"; s_active <= '1';
            when "1000" => s_output <= "11"; s_active <= '1'; --floor 3
            when others => s_output <= "ZZ"; s_active <= '0'; --this situation is considered as it is bound to happen
        end case;
    end process;
    
    --assign local variables to actual pins
    output <= s_output;
    active <= s_active;
end a_encoder4;
