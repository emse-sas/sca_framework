library ieee;
use ieee.std_logic_1164.all;

entity tdc is
  generic (
    count_coarse_g : positive;
    count_fine_g : positive;
    count_blocks_g : positive
  ) ;
  port (
    clock_i : in std_logic;
    clock_o : out std_logic;
    coarse_delay_i : in std_logic_vector(1 downto 0);
    fine_delay_i : in std_logic_vector(9 downto 0);
    data_o : out std_logic_vector(4 * count_blocks_g - 1 downto 0)
  ) ;

end tdc;

architecture tdc_arch of tdc is

  signal fine_clock_s : std_logic_vector(count_fine_g downto 0);
  signal coarse_clock_s : std_logic_vector(count_coarse_g downto 0);
  component fine_delay 
    port (
      delta_i : in std_logic;
      delta_o : out std_logic;
      clock_o : out std_logic;
      delay_i : in std_logic_vector(9 downto 0)
    ) ;
  end component;
  
  component coarse_delay
    port (
      delta_i : in std_logic;
      delta_o : out std_logic;
      clock_o : out std_logic;
      delay_i : in std_logic_vector(1 downto 0)
    ) ;
  end component;
  
  component delay_line
    generic (
        count_blocks_g : positive
    );
    port (
      clock_i : in std_logic;
      delta_i : in std_logic;
      delta_o : out std_logic;
      data_o : out std_logic_vector(4 * count_blocks_g - 1 downto 0)
    );
  end component;

begin
  coarse_clock_s(0) <= clock_i;
  coarse_line : for i in 0 to count_coarse_g - 1 generate
  delay_i : coarse_delay
  port map(
    delta_i => coarse_clock_s(i),
    clock_o => coarse_clock_s(i + 1),
    delay_i => coarse_delay_i
  );
  end generate ; -- coarse_line

  fine_clock_s(0) <= coarse_clock_s(count_coarse_g);
  fine_line : for i in 0 to count_fine_g - 1 generate
  delay_i : fine_delay
  port map(
    delta_i => fine_clock_s(i),
    clock_o => fine_clock_s(i + 1),
    delay_i => fine_delay_i
  );
  end generate ; -- fine_line

  sampling : delay_line
  generic map (
    count_blocks_g => count_blocks_g
  )
  port map(
    clock_i => clock_i,
    delta_i => fine_clock_s(count_fine_g),
    delta_o => clock_o,
    data_o => data_o 
  );

end tdc_arch ; -- tdc_arch