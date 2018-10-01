-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- counter 0-3
-- 2 bit output, invertible count (sense signal)


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter3 is
port (
    reset,clk,enable,sense: in std_logic; --sense: 1 when up, 0 when down
    count : out unsigned(1 downto 0);
    carry_out : out std_logic
    );
end counter3;

architecture a_counter of counter3 is
    signal s_count: unsigned(1 downto 0);
begin
    process (reset, clk, enable)
    begin
        if reset = '1' or enable = '0' then
            s_count <= "00";
        elsif clk'event and clk='1' then
            if c = "11" then
                s_count <= "00";
            elsif sense = '1' then
                s_count <= s_count + 1;
            elsif sense = '0' then
                s_count <= s_count - 1;
            end if;
        end if;
    end process;
    process (s_count)
    begin
        if s_count = "11" then
            carry_out <= '1';       
        else
            carry_out <= '0';
        end if;
    end process;
    count <= s_count;
end a_counter;

