-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- decoder 4-2

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY decoder IS
PORT (
    B: IN std_logic_vector(3 DOWNTO 0); --buttons 
    PCOD : OUT std_logic_vector(1 DOWNTO 0); --encoded signal from the buttons
    PRESSED : OUT std_logic --indicates if some button was pressed
    );
END decoder;

ARCHITECTURE decoder_a OF decoder IS
	SIGNAL 
PROCESS (B)
BEGIN
	IF

