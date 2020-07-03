library ieee;
use ieee.std_logic_1164.all;
Library unisim;
use unisim.vcomponents.all;

entity delay_block is
  port (
    clock_i : in std_logic;
    delta_i : in std_logic;
    delta_o : out std_logic;
    data_o : out std_logic_vector(3 downto 0)
  ) ;
end delay_block;

architecture delay_block_arch of delay_block is

    signal carry_s : std_logic_vector(3 downto 0);
    attribute dont_touch : string;
begin
    delta_o <= carry_s(3);

    delay_path : carry4
    	port map (
			CO => carry_s,               
			CI => delta_i,     
			CYINIT => '0',
			DI => "0000",      
			S => "1111" 
    );

		regs : for i in 0 to 3 generate
			attribute dont_touch of delay_reg: label is "true";
			begin
			delay_reg: fdce
			generic map ( INIT => '0' ) 
				port map (
				Q => data_o(i),              
				C => clock_i,        
				CE => '1',            
				CLR => '0',              
				D => carry_s(i)
			);
		end generate ; -- delay_reg

end delay_block_arch ; -- delay_block_arch