-- first part lab sessions - digital electronics
-- programming a microcontroller for an elevator
-- elevator - main entity 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevator is
port (
    CLK,RESET,S: in std_logic;
    B: in std_logic_vector(3 downto 0);
    SENSE,MOTOR,DOOR: out std_logic;
    FLOOR,TARGET: out std_logic_vector(1 downto 0)
    );
end elevator;

architecture a_elevator of elevator is

	--declarations of each internal component
	-- COMPARATOR ------------------------
	component comparator is
	port (
		floor,target: in unsigned(1 downto 0);
		sense,motor: out std_logic
		);
	end component;

	-- REGISTER --------------------------
	component register2 is
	port (
		reset,clk,enable : in std_logic;
		input : in std_logic_vector(1 downto 0);
		output : out std_logic_vector(1 downto 0)
		);
	end component;

	-- EDGE DETECTOR ---------------------
	component edge_det is
	port (
		input,clk,reset : in std_logic; 
		output : out std_logic
		);
	end component;

	-- ENCODER ---------------------------
	component encoder4 is
	port (
		input : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(1 downto 0);
		act : out std_logic
		);
	end component;

	-- COUNTER ---------------------------
	component counter3 is
	port (
		sensor,reset,clk,enable,sense: in std_logic;
		count : out std_logic_vector(1 downto 0);
		carry_out : out std_logic
		);
	end component;

	-- internal signal declarations
    signal pcod_s, floor_s, target_s: std_logic_vector(1 downto 0);
    signal count_s: std_logic_vector(1 downto 0);
    signal sense_s, pressed_s, floor_pass_s, enable_s: std_logic;
    
begin
	
	enable_s <= '1';
	-- mapping all components with their signals	
	en: encoder4 port map ( 
		input => B,
		output => pcod_s,
		act => pressed_s );
	ed: edge_det port map (
		input => S,
		output => floor_pass_s,
		clk => CLK,
		reset => RESET );
	r0: register2 port map (
		input => pcod_s,
		output => target_s,
		enable => pressed_s,
		clk => CLK,
		reset => RESET );
	r1: register2 port map (
		input => count_s,
		output => floor_s,
		enable => enable_s,
		clk => CLK,
		reset => RESET );
	ct: counter3 port map (
		sensor => floor_pass_s,
		sense => sense_s,
		count => count_s,
		enable => enable_s,
		clk => CLK,
		reset => RESET );
	cm: comparator port map (
		floor => unsigned(floor_s),
		target => unsigned(target_s),
		sense => sense_s,
		motor => MOTOR );
	
	DOOR <= 'X';
	FLOOR <= std_logic_vector(floor_s);
	TARGET <= std_logic_vector(target_s);
	SENSE <= sense_s;
	
end a_elevator;









