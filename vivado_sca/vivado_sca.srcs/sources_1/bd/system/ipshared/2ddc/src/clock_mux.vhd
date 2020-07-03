library ieee;
use ieee.std_logic_1164.all;
Library unisim;
use unisim.vcomponents.all;

entity clock_mux is
  port (
    clocks_i : in std_logic_vector(3 downto 0);
    delay_i : in std_logic_vector(1 downto 0);
    clock_o : out std_logic
  ) ;
end clock_mux;

architecture clock_mux_arch of clock_mux is

    signal lut_s : std_logic_vector(3 downto 0);
    signal mux_s : std_logic_vector(1 downto 0);
    attribute dont_touch : string;
begin

    luts : for i in 0 to 3 generate
    attribute dont_touch of lut_i: label is "true"; 
    begin
        lut_i : lut1
        generic map (INIT => "10")
        port map (
            I0 => clocks_i(i),
            O => lut_s(i)
        );
    end generate ; -- luts

    middle_mux_0 : muxf7
    port map (
        I0 => lut_s(0),
        I1 => lut_s(1),
        S => delay_i(0),
        O => mux_s(0)
    );

    middle_mux_1 : muxf7
    port map (
        I0 => lut_s(2),
        I1 => lut_s(3),
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

end clock_mux_arch ; -- clock_mux_arch