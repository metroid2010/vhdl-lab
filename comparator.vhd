-- first part lab sessions - digital electronics
-- programming a microcontroller for an comparator
-- comparator, last block before output 

library ieee;
use ieee.std_logic_1164.all;

entity comparator is
port (
    floor,target: in unsigned(2 downto 0);
    sense,motor: out std_logic;
    );
end comparator;

architecture a_comparator of comparator is
begin
    if floor = target then
        sense <= '0';
        motor <= '0';
    elsif floor < target then
        sense <= '1';
        motor <= '1';
    elsif floor > target then
        sense <= '0';
        motor <= '1';
    else 
        sense <= '0';
        motor <= '0';
    end if;
end a_comparator;
