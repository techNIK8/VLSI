library ieee;
use ieee.std_logic_1164.all;

entity single_port_ram is
	port
	(
		dina	: in std_logic_vector(7 downto 0);
		addra	: in natural range 0 to 31;
		ena		: in std_logic := '1';
		clka	: in std_logic;
		douta	: out std_logic_vector(7 downto 0)
	);
	
end entity;

architecture rtl of single_port_ram is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector(7 downto 0);
	type memory_t is array(31 downto 0) of word_t;
	
	-- Declare the RAM signal.
	signal ram : memory_t;
	
	-- Register to hold the addraess
	signal addra_reg : natural range 0 to 31;

begin

	process(clka)
	begin
		if(rising_edge(clka)) then
			if(ena = '1') then
				ram(addra) <= dina;
			end if;
			
			-- Register the addraess for reading
			addra_reg <= addra;
		end if;
	
	end process;
	
	douta <= ram(addra_reg);
	
end rtl;
