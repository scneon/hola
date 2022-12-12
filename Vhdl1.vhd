library ieee;
use ieee.std_logic_1164 .all;

entity Vhdl1 is
end Vhdl1;

architecture behavior of Vhdl1 is

	component Completo
	port (
		inclk0: in STD_Logic;
		areset: in STD_Logic;
		N: in STD_Logic;
		Z2: out STD_Logic;
		Z1: out STD_Logic;
		Z0: out STD_Logic;
		LEDZ2: out STD_Logic;
		LEDZ1: out STD_Logic;
		LEDZ0: out STD_Logic
		);
	end component;
	
	signal inclk0 : std_logic := '0';
	signal areset : std_logic := '0';
	signal N : std_logic := '0';
	
	signal Z2 : std_logic := '0';
	signal Z1 : std_logic := '0';
	signal Z0 : std_logic := '0';
	signal LEDZ2 : std_logic := '0';
	signal LEDZ1 : std_logic := '0';
	signal LEDZ0 : std_logic := '0';
	

	CONSTANT clock_period : time := 20ns;
BEGIN

	uut: completo port map (
	inclk0 => inclk0,
	areset=> areset,
	N => N,
	Z2 => Z2,
	Z1 => Z1,
	Z0 => Z0,
	LEDZ2 => LEDZ2,
	LEDZ1 => LEDZ1,
	LEDZ0 => LEDZ0
	);
	
	clock_process: process
		begin 
			inclk0 <= '0';
			wait for clock_period/2;
			inclk0 <= '1';
			wait for clock_period/2;
	end process;
	
	stim_proc: process
		begin
			N <= '0' ; areset <= '0' ; wait for 30ns;
			N <= '0' ; areset <= '1' ; wait for 30ns;
			N <= '0' ; areset <= '0' ; wait for 30ns;
			N <= '1' ; areset <= '1' ; wait for 30ns;
			N <= '1' ; areset <= '0' ; wait for 30ns;
			N <= '1' ; areset <= '0' ; wait for 30ns;
			N <= '0' ; areset <= '0' ; wait for 30ns;
			wait;
		end process;
end;
		