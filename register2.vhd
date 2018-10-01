
-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- register 2 bit
-- active on rising edge, enable pin

library ieee;
use ieee.std_logic_1164.all;

entity register2: is
port (
    reset,clk,enable : in std_logic;
    input : out std_logic(1 downto 0);
    output : out std_logic(1 downto 0)
    );
end register2;

architecture a_counter of register2 is
    signal s_in,s_out: std_logic_vector(1 downto 0);
begin
    process (reset, clk, enable)
    begin
        if reset = '1' then
            s_out <= "00";
        elsif clk'EVENT and clk = '1' and enable = '1' then
            s_in <= input;
    end process;

    --assign local variables to physical pins
    input <= s_in;
    output <= s_out;
end a_counter;

