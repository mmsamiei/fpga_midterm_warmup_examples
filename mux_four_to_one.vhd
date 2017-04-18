library IEEE;
use IEEE.std_logic_1164.all;

entity mux_four_to_one is
	port( input : in std_logic_vector(3 downto 0);
			select_line : in std_logic_vector(1 downto 0);
			output : out std_logic);
end entity;

architecture behavioral of mux_four_to_one is 
begin
	output <= input(0) when select_line = "00" else
				input(1) when select_line = "01" else
				input(2) when select_line = "10" else
				input(3) when select_line = "11" else
				'Z' ;
end architecture;