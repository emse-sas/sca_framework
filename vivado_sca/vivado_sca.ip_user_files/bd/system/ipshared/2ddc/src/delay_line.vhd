library ieee;
use ieee.std_logic_1164.all;

entity delay_line is
  generic (
    count_blocks_g : positive
  ) ;
  port (
    clock_i : in std_logic;
    delta_i : in std_logic;
    delta_o : out std_logic;
    data_o : out std_logic_vector(4 * count_blocks_g - 1 downto 0)
  );
end delay_line;

architecture delay_line_arch of delay_line is

    signal delta_s : std_logic_vector(count_blocks_g downto 0);
    
    component delay_block 
        port (
          clock_i : in std_logic;
          delta_i : in std_logic;
          delta_o : out std_logic;
          data_o : out std_logic_vector(3 downto 0)
        ) ;
    end component;
begin
    delta_s(0) <= delta_i;
    delta_o <= delta_s(count_blocks_g);
    blocks : for i in 0 to count_blocks_g - 1 generate
        block_i : delay_block
        port map (
            clock_i => clock_i,
            delta_i => delta_s(i),
            delta_o => delta_s(i + 1),
            data_o => data_o(4 * i + 3 downto 4 * i)
        );
    end generate ; -- blocks

end delay_line_arch ; -- delay_line_arch