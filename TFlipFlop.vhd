library IEEE;
use IEEE.std_logic_1164.all;

entity TFlipFlop is 
	port(data_in : in std_logic;
		clk : in std_logic;
		data_out : out std_logic);
end entity;

architecture myarch of TFlipFlop is
signal temp : std_logic := '0';
begin
	process(clk)
	begin
		if(clk'event and clk='1')then
			case data_in is
				when '0' =>
					temp <= temp;
				when '1' =>
					temp <= not temp;
				when others =>
					temp <= 'Z';
			end case;
		end if ;
	end process;
	data_out <= temp;
end architecture;
