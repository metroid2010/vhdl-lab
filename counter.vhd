-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- counter 0-3

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter3 is
port (
    reset,clk,enable : in std_logic;
    count : out unsigned(1 downto 0);
    carry_out : out std_logic
    );
end counter3;

architecture a_counter of counter3 is
    signal c: unsigned(1 downto 0);
begin
    process (reset, clk, enable)
    begin
        if reset = '1' or enable = '0' then
            c <= "00";
        elsif clk'event and clk='1' then
            if c = "11" then
                c <= "00";
            else
                c <= c + 1;
            end if;
        end if;
    end process;
    process (c)
    begin
        if c = "11" then
            carry_out <= '1';       
        else
            carry_out <= '0';
        end if;
    end process;
    count <= c;
end a_counter;

