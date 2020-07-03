library ieee;
use ieee.std_logic_1164.all;
Library unisim;
use unisim.vcomponents.all;

entity coarse_block is
  port (
    delta_i : in std_logic;
    delta_o : out std_logic
  ) ;
end coarse_block;

architecture coarse_block_arch of coarse_block is

    signal lut_s : std_logic_vector(4 downto 0);  
    signal latch_s : std_logic_vector(3 downto 0); 

begin
    lut_s(0) <= delta_i;
    delta_o <= lut_s(4);
    delay_path : for i in 0 to 3 generate
        lut_i : lut1
        generic map(INIT => "10")
        port map (
            I0 => lut_s(i),
            O => latch_s(i)
        );
        latch_i : ldce
        generic map (INIT => '0')
        port map (
            Q => lut_s(i + 1),
            CLR => '0',
            D => latch_s(i),
            G => '1',
            GE => '1'
        );
    end generate ; -- delay_path


end coarse_block_arch ; -- coarse_block_arch