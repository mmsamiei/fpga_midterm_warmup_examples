library IEEE;
use IEEE.std_logic_1164.all;

entity myfsm is 
port( input : in std_logic;
	clk : in std_logic;
	output : out std_logic);
end entity;

architecture rtl of myfsm is 
signal cur_state : std_logic_vector(1 downto 0) := "00";
signal next_state : std_logic_vector ( 1 downto 0) := "00";
begin

	process(cur_state,input)
		begin
			case cur_state is 
				when "00" =>
					if(input = '0')then
						cur_state <= "01";
					else
						cur_state <= "10";
					end if;
				when "01" =>
					if(input = '0')then
						cur_state <= "11";
					else
						cur_state <= "00";
					end if;
				when "10" =>
					if(input = '0')then
						cur_state <= "11";
					else
						cur_state <= "00";
					end if;
				when "11" =>
					if(input = '0')then
						cur_state <= "00";
					else
						cur_state <= "10";
					end if;
				when others =>
					if(input = '0')then
						cur_state <= "01";
					else
						cur_state <= "10";
					end if;
			end case;
		end process;

		
		process(clk)
		begin
			if(rising_edge(clk)) then
			cur_state <= next_state;
			end if ;
		end process;
		
		process(cur_state)
		begin
			case cur_state is 
			when "00" =>
				output <= '0';
			when "01" =>
				output <= '0';
			when "10" =>
				output <= '0';
			when "11" =>
				output <= '1';
			when others =>
				output <= 'Z';
			end case;
		end process;
		
		
end architecture;