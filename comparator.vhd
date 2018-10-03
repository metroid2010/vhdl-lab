-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- comparator, last block before output
--      generates the output signal for the motor as 
--      a function of target floor and location

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
port (
    floor,target: in unsigned(1 downto 0);
    sense,motor: out std_logic
    );
end comparator;

architecture a_comparator of comparator is
begin
    process (floor,target)
    begin
        if target < floor then
            sense <= '0';
            motor <= '1';
        elsif target > floor then
            sense <= '1';
            motor <= '1';
        else
            sense <= '0';
            motor <= '0';
        end if;
    end process;
end a_comparator;
