library ieee;
use ieee.std_logic_1164.all;

entity fine_line is
  generic (
		len_g : positive
  ) ;
  port (
    delta_i : in std_logic;
    delta_o : out std_logic;
    clock_o : out std_logic;
    delay_i : in std_logic_vector(3 downto 0)
  ) ;
  attribute dont_touch : string;
  attribute dont_touch of fine_line: entity is "true";
end fine_line;

architecture fine_line_arch of fine_line is

    type delta_array_t is array (0 to len_g) of std_logic_vector(4 downto 0);
    signal delta_s : delta_array_t;
	attribute dont_touch of delta_s: signal is "true";

    component fine_block
    port(
        delta_i : in std_logic;
        delta_o : out std_logic;
        delay_i : in std_logic_vector(1 downto 0);
        clock_o : out std_logic
    );
    end component;

    component clock_mux
    port (
        clocks_i : in std_logic_vector(3 downto 0);
        delay_i : in std_logic_vector(1 downto 0);
        clock_o : out std_logic
    );
    end component;
		
begin
	delta_s(0)(0) <= delta_i;
	delta_o <= delta_s(len_g - 1)(4);
	clock_o <= delta_s(len_g)(0);
    delay_line : for n in 0 to len_g - 1 generate
			block_0 : fine_block
			port map (
				delta_i => delta_s(n)(0),
				delay_i => delay_i(1 downto 0),
				delta_o => delta_s(n)(1)
			);
			block_1 : fine_block
			port map (
				delta_i => delta_s(n)(1),
				delay_i => delay_i(1 downto 0),
				delta_o => delta_s(n)(2)
			);
			block_2 : fine_block
			port map (
				delta_i => delta_s(n)(2),
				delay_i => delay_i(1 downto 0),
				delta_o => delta_s(n)(3)
			);
			block_3 : fine_block
			port map (
				delta_i => delta_s(n)(3),
				delay_i => delay_i(1 downto 0),
				delta_o => delta_s(n)(4)
			);
			mux : clock_mux
			port map (
					clocks_i => delta_s(n)(4 downto 1),
					delay_i => delay_i(3 downto 2),
					clock_o => delta_s(n + 1)(0)
			);
    end generate ; -- blocks



end fine_line_arch ; -- fine_line_arch