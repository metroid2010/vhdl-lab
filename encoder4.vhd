-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- encoder 4-2

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encoder4 is
port (
    B : in std_logic_vector(3 downto 0); --buttons: floor 3 -> msb, floor 0 -> lsb
    PCOD : out std_logic_vector(1 downto 0); --encoded signal from the buttons
    PRESSED : out std_logic --indicates if some button was pressed
    );
end encoder4;

architecture a_encoder4 of encoder4 is

begin
process(B)
begin
    case B is
        when "0001" => PCOD <= "00"; PRESSED <= '1';  --floor 0
        when "0010" => PCOD <= "01"; PRESSED <= '1';
        when "0100" => PCOD <= "10"; PRESSED <= '1';
        when "1000" => PCOD <= "11"; PRESSED <= '1'; --floor 3
        when others => PCOD <= "XX"; PRESSED <= '0';
    end case;
end process;
end a_encoder4;
