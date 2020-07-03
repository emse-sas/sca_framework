library ieee;
use ieee.std_logic_1164.all;

entity fine_delay is
  port (
    delta_i : in std_logic;
    delta_o : out std_logic;
    clock_o : out std_logic;
    delay_i : in std_logic_vector(9 downto 0)
  ) ;
end fine_delay;

architecture fine_delay_arch of fine_delay is

    signal delta_s : std_logic_vector(4 downto 0);
    signal clocks_s : std_logic_vector(3 downto 0);

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
    delta_s(0) <= delta_i;
    delta_o <= delta_s(4);
    blocks : for i in 0 to 3 generate
        block_i : fine_block
        port map (
            delta_i => delta_s(i),
            delta_o => delta_s(i + 1),
            delay_i => delay_i(2 * i + 1 downto 2 * i),
            clock_o => clocks_s(i)
        );
    end generate ; -- blocks

    mux : clock_mux
    port map (
        clocks_i => clocks_s,
        delay_i => delay_i(9 downto 8),
        clock_o => clock_o
    );

end fine_delay_arch ; -- fine_delay_arch