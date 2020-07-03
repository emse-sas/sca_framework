library ieee;
use ieee.std_logic_1164.all;

entity coarse_delay is
  port (
    delta_i : in std_logic;
    delta_o : out std_logic;
    delay_i : in std_logic_vector(1 downto 0);
    clock_o : out std_logic
  ) ;
end coarse_delay;

architecture coarse_delay_arch of coarse_delay is

    signal delta_s : std_logic_vector(4 downto 0);

    component coarse_block
    port(
        delta_i : in std_logic;
        delta_o : out std_logic
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
        block_i : coarse_block
        port map (
            delta_i => delta_s(i),
            delta_o => delta_s(i + 1)
        );
    end generate ; -- blocks

    mux : clock_mux
    port map (
        clocks_i => delta_s(4 downto 1),
        delay_i => delay_i,
        clock_o => clock_o
    );


end coarse_delay_arch ; -- coarse_delay_arch