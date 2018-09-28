-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- counter 0-3

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY counter IS
PORT (
    reset,clk,enable : IN std_logic;
    count : OUT unsigned(1 DOWNTO 0);
    carry_out : OUT std_logic
    );
END counter;

ARCHITECTURE a OF counter IS
    SIGNAL c: unsigned(1 DOWNTO 0);
BEGIN
    PROCESS (reset, clk, enable)
    BEGIN
        IF reset = '1' OR enable = '0' THEN
            c <= "00";
        ELSIF clk'EVENT AND clk='1' THEN
            IF c = "11" THEN
                c <= "00";
            ELSE
                c <= c + 1;
            END IF;
        END IF;
    END PROCESS;
    PROCESS (c)
    BEGIN
        IF c = "11" THEN
            carry_out <= '1';       
        ELSE
            carry_out <= '0';
        END IF;
    END PROCESS;
    count <= c;
END a;