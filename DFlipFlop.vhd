library IEEE;
use IEEE.std_logic_1164.all;

entity DFlipFlop is 
	port(clk : in std_logic;
		data_in : in std_logic;
		reset : in std_logic;
		data_out : out std_logic);
end entity;

architecture behavioral of DFlipFlop is 
begin

	process(clk,reset)
	begin
		if(rising_edge(clk))then
			data_out <= data_in;
		end if;
		if(reset = '1' )then
			data_out <= '0';
		end if;
	end process;

end architecture;
