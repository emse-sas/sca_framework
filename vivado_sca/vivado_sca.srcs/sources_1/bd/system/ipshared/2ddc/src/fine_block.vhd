library ieee;
use ieee.std_logic_1164.all;
Library unisim;
use unisim.vcomponents.all;

entity fine_block is
  port (
    delta_i : in std_logic;
    delta_o : out std_logic;
    delay_i : in std_logic_vector(1 downto 0);
    clock_o : out std_logic
  ) ;
end fine_block ;

architecture fine_block_arch of fine_block is

    signal lut_s : std_logic_vector(4 downto 0);
    signal mux_s : std_logic_vector(1 downto 0);
    attribute dont_touch : string;
begin
    lut_s(0) <= delta_i;
    delta_o <= lut_s(4);
    delay_path : for i in 0 to 3 generate
    attribute dont_touch of lut_i: label is "true"; 
    begin
        lut_i : lut1
        generic map (INIT => "10")
        port map (
            I0 => lut_s(i),
            O => lut_s(i + 1)
        );
    end generate ; -- luts

    middle_mux_0 : muxf7
    port map (
        I0 => lut_s(1),
        I1 => lut_s(2),
        S => delay_i(0),
        O => mux_s(0)
    );

    middle_mux_1 : muxf7
    port map (
        I0 => lut_s(3),
        I1 => lut_s(4),
        S => delay_i(0),
        O => mux_s(1)
    );

    out_mux : muxf7
    port map (
        I0 => mux_s(0),
        I1 => mux_s(1),
        S => delay_i(1),
        O => clock_o
    );

end fine_block_arch ; -- fine_block_arch