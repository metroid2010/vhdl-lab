-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- elevator - main entity 

library ieee;
use ieee.std_logic_1164.all;

entity elevator is
port (
    clk,reset,sensor: in std_logic;
    buttons: in std_logic_vector(3 downto 0);
    sense,motor: out std_logic;
    );
end elevator;

architecture a_elevator of elevator is
    signal 
    component reg_button
        port(
    
end a_elevator;
