-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jul  3 13:21:56 2020
-- Host        : DESKTOP-L08MEB9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/sca_framework/vivado_sca/vivado_sca.srcs/sources_1/bd/system/ip/system_tdc_sensor_0_0/system_tdc_sensor_0_0_sim_netlist.vhdl
-- Design      : system_tdc_sensor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_102 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_102 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_102;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_102 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_107 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_107 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_107;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_107 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_112 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_112 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_112;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_112 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_117 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_117 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_117;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_117 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_122 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_122 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_122;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_122 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_127 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_127 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_127;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_127 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_132 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_132 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_132;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_132 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_137 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_137 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_137;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_137 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_142 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_142 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_142;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_142 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_147 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_147 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_147;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_147 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_152 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_152 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_152;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_152 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_157 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_157 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_157;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_157 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_162 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_162 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_162;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_162 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_167 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_167 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_167;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_167 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_172 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_172 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_172;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_172 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_177 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_177 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_177;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_177 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_182 is
  port (
    \slv_reg3_reg[11]\ : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_182 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_182;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_182 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => \slv_reg3_reg[11]\,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_187 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_187 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_187;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_187 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_42 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_42 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_42;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_42 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_47 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_47 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_47;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_47 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_52 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_52 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_52;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_52 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_57 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_57 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_57;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_57 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_62 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_62 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_62;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_62 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_67 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_67 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_67;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_67 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_72 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_72 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_72;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_72 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_77 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_77 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_77;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_77 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_82 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_82 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_82;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_82 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_87 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_87 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_87;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_87 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_92 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_92 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_92;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_92 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_clock_mux_97 is
  port (
    clock_o : out STD_LOGIC;
    clocks_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_clock_mux_97 : entity is "clock_mux";
end system_tdc_sensor_0_0_clock_mux_97;

architecture STRUCTURE of system_tdc_sensor_0_0_clock_mux_97 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \luts[2].lut_i_n_0\ : STD_LOGIC;
  signal \luts[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \luts[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \luts[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[1].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[2].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \luts[3].lut_i\ : label is std.standard.true;
  attribute box_type of \luts[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\luts[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(0),
      O => O
    );
\luts[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(1),
      O => I1
    );
\luts[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(2),
      O => \luts[2].lut_i_n_0\
    );
\luts[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clocks_i(3),
      O => \luts[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \luts[2].lut_i_n_0\,
      I1 => \luts[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_100 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_100 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_100;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_100 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_101 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_101 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_101;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_101 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_103 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_103 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_103;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_103 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_104 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_104 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_104;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_104 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_105 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_105 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_105;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_105 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_106 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_106 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_106;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_106 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_108 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_108 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_108;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_108 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_109 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_109 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_109;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_109 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_110 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_110 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_110;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_110 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_111 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_111 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_111;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_111 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_113 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_113 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_113;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_113 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_114 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_114 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_114;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_114 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_115 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_115 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_115;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_115 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_116 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_116 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_116;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_116 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_118 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_118 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_118;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_118 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_119 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_119 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_119;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_119 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_120 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_120 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_120;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_120 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_121 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_121 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_121;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_121 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_123 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_123 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_123;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_123 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_124 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_124 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_124;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_124 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_125 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_125 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_125;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_125 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_126 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_126 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_126;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_126 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_128 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_128 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_128;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_128 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_129 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_129 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_129;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_129 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_130 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_130 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_130;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_130 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_131 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_131 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_131;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_131 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_133 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_133 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_133;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_133 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_134 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_134 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_134;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_134 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_135 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_135 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_135;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_135 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_136 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_136 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_136;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_136 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_138 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_138 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_138;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_138 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_139 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_139 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_139;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_139 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_140 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_140 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_140;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_140 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_141 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_141 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_141;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_141 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_143 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_143 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_143;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_143 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_144 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_144 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_144;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_144 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_145 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_145 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_145;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_145 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_146 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_146 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_146;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_146 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_148 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_148 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_148;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_148 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_149 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_149 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_149;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_149 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_150 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_150 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_150;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_150 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_151 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_151 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_151;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_151 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_153 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_153 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_153;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_153 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_154 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_154 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_154;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_154 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_155 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_155 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_155;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_155 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_156 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_156 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_156;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_156 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_158 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_158 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_158;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_158 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_159 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_159 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_159;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_159 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_160 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_160 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_160;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_160 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_161 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_161 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_161;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_161 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_163 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_163 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_163;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_163 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_164 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_164 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_164;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_164 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_165 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_165 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_165;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_165 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_166 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_166 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_166;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_166 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_168 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_168 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_168;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_168 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_169 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_169 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_169;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_169 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_170 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_170 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_170;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_170 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_171 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_171 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_171;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_171 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_173 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_173 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_173;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_173 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_174 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_174 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_174;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_174 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_175 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_175 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_175;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_175 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_176 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_176 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_176;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_176 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_178 is
  port (
    delta_i : out STD_LOGIC;
    clock_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_178 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_178;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_178 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clock_o,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => delta_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_179 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_179 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_179;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_179 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_180 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_180 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_180;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_180 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_181 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_181 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_181;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_181 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_183 is
  port (
    delta_i : out STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_183 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_183;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_183 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clock_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => delta_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_184 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_184 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_184;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_184 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_185 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_185 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_185;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_185 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_186 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_186 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_186;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_186 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_39 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_39 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_39;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_39 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_40 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_40 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_40;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_40 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_41 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_41 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_41;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_41 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_43 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_43 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_43;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_43 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_44 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_44 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_44;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_44 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_45 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_45 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_45;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_45 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_46 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_46 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_46;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_46 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_48 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_48 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_48;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_48 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_49 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_49 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_49;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_49 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_50 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_50 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_50;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_50 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_51 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_51 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_51;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_51 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_53 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_53 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_53;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_53 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_54 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_54 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_54;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_54 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_55 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_55 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_55;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_55 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_56 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_56 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_56;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_56 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_58 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_58 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_58;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_58 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_59 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_59 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_59;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_59 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_60 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_60 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_60;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_60 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_61 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_61 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_61;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_61 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_63 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_63 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_63;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_63 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_64 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_64 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_64;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_64 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_65 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_65 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_65;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_65 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_66 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_66 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_66;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_66 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_68 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_68 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_68;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_68 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_69 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_69 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_69;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_69 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_70 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_70 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_70;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_70 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_71 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_71 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_71;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_71 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_73 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_73 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_73;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_73 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_74 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_74 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_74;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_74 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_75 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_75 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_75;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_75 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_76 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_76 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_76;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_76 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_78 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_78 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_78;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_78 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_79 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_79 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_79;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_79 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_80 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_80 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_80;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_80 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_81 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_81 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_81;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_81 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_83 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_83 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_83;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_83 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_84 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_84 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_84;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_84 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_85 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_85 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_85;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_85 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_86 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_86 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_86;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_86 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_88 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_88 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_88;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_88 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_89 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_89 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_89;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_89 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_90 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_90 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_90;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_90 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_91 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_91 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_91;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_91 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_93 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_93 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_93;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_93 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_94 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_94 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_94;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_94 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_95 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_95 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_95;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_95 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_96 is
  port (
    clocks_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_96 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_96;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_96 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => clocks_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_98 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_98 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_98;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_98 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_block_99 is
  port (
    \delay_path[2].lut_i_0\ : out STD_LOGIC;
    delta_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_block_99 : entity is "coarse_block";
end system_tdc_sensor_0_0_coarse_block_99;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_block_99 is
  signal O : STD_LOGIC;
  signal \delay_path[1].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => \delay_path[1].lut_i_n_0\
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[1].lut_i_n_0\,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[2].lut_i_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_block is
  port (
    delta_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_block : entity is "delay_block";
end system_tdc_sensor_0_0_delay_block;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_block is
  signal carry_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^delta_o\ : STD_LOGIC;
  signal NLW_delay_path_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of delay_path : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \regs[0].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[0].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[1].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[1].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[2].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[2].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[3].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[3].delay_reg\ : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
delay_path: unisim.vcomponents.CARRY4
     port map (
      CI => delta_i,
      CO(3) => \^delta_o\,
      CO(2 downto 0) => carry_s(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_path_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\regs[0].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(0),
      Q => data_o(0)
    );
\regs[1].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(1),
      Q => data_o(1)
    );
\regs[2].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(2),
      Q => data_o(2)
    );
\regs[3].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => \^delta_o\,
      Q => data_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_block_29 is
  port (
    delta_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_block_29 : entity is "delay_block";
end system_tdc_sensor_0_0_delay_block_29;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_block_29 is
  signal carry_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^delta_o\ : STD_LOGIC;
  signal NLW_delay_path_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of delay_path : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \regs[0].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[0].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[1].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[1].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[2].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[2].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[3].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[3].delay_reg\ : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
delay_path: unisim.vcomponents.CARRY4
     port map (
      CI => delta_i,
      CO(3) => \^delta_o\,
      CO(2 downto 0) => carry_s(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_path_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\regs[0].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(0),
      Q => data_o(0)
    );
\regs[1].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(1),
      Q => data_o(1)
    );
\regs[2].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(2),
      Q => data_o(2)
    );
\regs[3].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => \^delta_o\,
      Q => data_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_block_30 is
  port (
    delta_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_block_30 : entity is "delay_block";
end system_tdc_sensor_0_0_delay_block_30;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_block_30 is
  signal carry_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^delta_o\ : STD_LOGIC;
  signal NLW_delay_path_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of delay_path : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \regs[0].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[0].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[1].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[1].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[2].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[2].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[3].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[3].delay_reg\ : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
delay_path: unisim.vcomponents.CARRY4
     port map (
      CI => delta_i,
      CO(3) => \^delta_o\,
      CO(2 downto 0) => carry_s(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_path_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\regs[0].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(0),
      Q => data_o(0)
    );
\regs[1].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(1),
      Q => data_o(1)
    );
\regs[2].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(2),
      Q => data_o(2)
    );
\regs[3].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => \^delta_o\,
      Q => data_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_block_31 is
  port (
    delta_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_block_31 : entity is "delay_block";
end system_tdc_sensor_0_0_delay_block_31;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_block_31 is
  signal carry_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^delta_o\ : STD_LOGIC;
  signal NLW_delay_path_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of delay_path : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \regs[0].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[0].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[1].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[1].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[2].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[2].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[3].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[3].delay_reg\ : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
delay_path: unisim.vcomponents.CARRY4
     port map (
      CI => delta_i,
      CO(3) => \^delta_o\,
      CO(2 downto 0) => carry_s(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_path_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\regs[0].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(0),
      Q => data_o(0)
    );
\regs[1].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(1),
      Q => data_o(1)
    );
\regs[2].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(2),
      Q => data_o(2)
    );
\regs[3].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => \^delta_o\,
      Q => data_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_block_32 is
  port (
    delta_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_block_32 : entity is "delay_block";
end system_tdc_sensor_0_0_delay_block_32;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_block_32 is
  signal carry_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^delta_o\ : STD_LOGIC;
  signal NLW_delay_path_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of delay_path : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \regs[0].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[0].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[1].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[1].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[2].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[2].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[3].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[3].delay_reg\ : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
delay_path: unisim.vcomponents.CARRY4
     port map (
      CI => delta_i,
      CO(3) => \^delta_o\,
      CO(2 downto 0) => carry_s(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_path_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\regs[0].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(0),
      Q => data_o(0)
    );
\regs[1].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(1),
      Q => data_o(1)
    );
\regs[2].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(2),
      Q => data_o(2)
    );
\regs[3].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => \^delta_o\,
      Q => data_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_block_33 is
  port (
    delta_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_block_33 : entity is "delay_block";
end system_tdc_sensor_0_0_delay_block_33;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_block_33 is
  signal carry_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^delta_o\ : STD_LOGIC;
  signal NLW_delay_path_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of delay_path : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \regs[0].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[0].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[1].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[1].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[2].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[2].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[3].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[3].delay_reg\ : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
delay_path: unisim.vcomponents.CARRY4
     port map (
      CI => delta_i,
      CO(3) => \^delta_o\,
      CO(2 downto 0) => carry_s(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_path_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\regs[0].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(0),
      Q => data_o(0)
    );
\regs[1].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(1),
      Q => data_o(1)
    );
\regs[2].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(2),
      Q => data_o(2)
    );
\regs[3].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => \^delta_o\,
      Q => data_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_block_34 is
  port (
    delta_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_block_34 : entity is "delay_block";
end system_tdc_sensor_0_0_delay_block_34;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_block_34 is
  signal carry_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^delta_o\ : STD_LOGIC;
  signal NLW_delay_path_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of delay_path : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \regs[0].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[0].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[1].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[1].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[2].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[2].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[3].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[3].delay_reg\ : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
delay_path: unisim.vcomponents.CARRY4
     port map (
      CI => delta_i,
      CO(3) => \^delta_o\,
      CO(2 downto 0) => carry_s(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_path_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\regs[0].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(0),
      Q => data_o(0)
    );
\regs[1].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(1),
      Q => data_o(1)
    );
\regs[2].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(2),
      Q => data_o(2)
    );
\regs[3].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => \^delta_o\,
      Q => data_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_block_35 is
  port (
    clock_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_block_35 : entity is "delay_block";
end system_tdc_sensor_0_0_delay_block_35;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_block_35 is
  signal carry_s : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^clock_o\ : STD_LOGIC;
  signal NLW_delay_path_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of delay_path : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \regs[0].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[0].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[1].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[1].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[2].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[2].delay_reg\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \regs[3].delay_reg\ : label is std.standard.true;
  attribute box_type of \regs[3].delay_reg\ : label is "PRIMITIVE";
begin
  clock_o <= \^clock_o\;
delay_path: unisim.vcomponents.CARRY4
     port map (
      CI => delta_i,
      CO(3) => \^clock_o\,
      CO(2 downto 0) => carry_s(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_delay_path_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\regs[0].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(0),
      Q => data_o(0)
    );
\regs[1].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(1),
      Q => data_o(1)
    );
\regs[2].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => carry_s(2),
      Q => data_o(2)
    );
\regs[3].delay_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clock_i,
      CE => '1',
      CLR => '0',
      D => \^clock_o\,
      Q => data_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_fine_block is
  port (
    delta_o : out STD_LOGIC;
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_fine_block : entity is "fine_block";
end system_tdc_sensor_0_0_fine_block;

architecture STRUCTURE of system_tdc_sensor_0_0_fine_block is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  signal \^delta_o\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \delay_path[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[1].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[2].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[3].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => I1
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I1,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \^delta_o\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \delay_path[2].lut_i_n_0\,
      I1 => \^delta_o\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_fine_block_36 is
  port (
    delta_o : out STD_LOGIC;
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_fine_block_36 : entity is "fine_block";
end system_tdc_sensor_0_0_fine_block_36;

architecture STRUCTURE of system_tdc_sensor_0_0_fine_block_36 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  signal \^delta_o\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \delay_path[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[1].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[2].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[3].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => I1
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I1,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \^delta_o\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \delay_path[2].lut_i_n_0\,
      I1 => \^delta_o\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_fine_block_37 is
  port (
    delta_o : out STD_LOGIC;
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_fine_block_37 : entity is "fine_block";
end system_tdc_sensor_0_0_fine_block_37;

architecture STRUCTURE of system_tdc_sensor_0_0_fine_block_37 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  signal \^delta_o\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \delay_path[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[1].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[2].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[3].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
  delta_o <= \^delta_o\;
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => I1
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I1,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \^delta_o\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \delay_path[2].lut_i_n_0\,
      I1 => \^delta_o\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_fine_block_38 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_fine_block_38 : entity is "fine_block";
end system_tdc_sensor_0_0_fine_block_38;

architecture STRUCTURE of system_tdc_sensor_0_0_fine_block_38 is
  signal I1 : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \delay_path[2].lut_i_n_0\ : STD_LOGIC;
  signal \delay_path[3].lut_i_n_0\ : STD_LOGIC;
  signal mux_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \delay_path[0].lut_i\ : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of \delay_path[0].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[1].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[1].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[2].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[2].lut_i\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \delay_path[3].lut_i\ : label is std.standard.true;
  attribute box_type of \delay_path[3].lut_i\ : label is "PRIMITIVE";
  attribute box_type of middle_mux_0 : label is "PRIMITIVE";
  attribute box_type of middle_mux_1 : label is "PRIMITIVE";
  attribute box_type of out_mux : label is "PRIMITIVE";
begin
\delay_path[0].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delta_i,
      O => O
    );
\delay_path[1].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O,
      O => I1
    );
\delay_path[2].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I1,
      O => \delay_path[2].lut_i_n_0\
    );
\delay_path[3].lut_i\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_path[2].lut_i_n_0\,
      O => \delay_path[3].lut_i_n_0\
    );
middle_mux_0: unisim.vcomponents.MUXF7
     port map (
      I0 => O,
      I1 => I1,
      O => mux_s(0),
      S => Q(0)
    );
middle_mux_1: unisim.vcomponents.MUXF7
     port map (
      I0 => \delay_path[2].lut_i_n_0\,
      I1 => \delay_path[3].lut_i_n_0\,
      O => mux_s(1),
      S => Q(0)
    );
out_mux: unisim.vcomponents.MUXF7
     port map (
      I0 => mux_s(0),
      I1 => mux_s(1),
      O => clock_o,
      S => Q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay is
  port (
    clock_o : out STD_LOGIC;
    clock_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_183
     port map (
      clock_i => clock_i,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_184
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_185
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_186
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_187
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_0 is
  port (
    \slv_reg3_reg[11]\ : out STD_LOGIC;
    clock_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_0 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_0;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_0 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_178
     port map (
      clock_o => clock_o,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_179
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_180
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_181
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_182
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\,
      \slv_reg3_reg[11]\ => \slv_reg3_reg[11]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_1 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_1 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_1;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_1 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_173
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_174
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_175
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_176
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_177
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_10 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_10 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_10;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_10 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_128
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_129
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_130
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_131
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_132
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_11 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_11 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_11;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_11 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_123
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_124
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_125
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_126
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_127
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_12 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_12 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_12;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_12 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_118
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_119
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_120
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_121
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_122
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_13 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_13 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_13;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_13 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_113
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_114
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_115
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_116
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_117
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_14 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_14 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_14;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_14 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_108
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_109
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_110
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_111
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_112
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_15 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_15 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_15;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_15 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_103
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_104
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_105
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_106
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_107
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_16 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_16 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_16;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_16 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_98
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_99
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_100
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_101
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_102
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_17 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_17 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_17;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_17 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_93
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_94
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_95
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_96
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_97
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_18 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_18 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_18;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_18 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_88
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_89
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_90
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_91
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_92
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_19 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_19 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_19;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_19 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_83
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_84
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_85
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_86
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_87
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_2 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_2 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_2;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_2 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_168
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_169
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_170
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_171
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_172
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_20 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_20 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_20;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_20 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_78
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_79
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_80
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_81
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_82
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_21 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_21 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_21;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_21 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_73
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_74
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_75
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_76
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_77
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_22 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_22 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_22;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_22 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_68
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_69
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_70
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_71
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_72
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_23 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_23 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_23;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_23 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_63
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_64
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_65
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_66
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_67
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_24 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_24 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_24;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_24 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_58
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_59
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_60
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_61
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_62
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_25 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_25 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_25;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_25 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_53
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_54
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_55
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_56
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_57
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_26 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_26 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_26;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_26 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_48
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_49
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_50
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_51
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_52
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_27 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_27 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_27;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_27 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_43
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_44
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_45
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_46
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_47
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_28 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_28 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_28;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_28 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_39
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_40
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_41
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_42
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_3 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_3 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_3;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_3 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_163
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_164
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_165
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_166
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_167
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_4 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_4 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_4;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_4 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_158
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_159
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_160
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_161
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_162
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_5 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_5 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_5;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_5 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_153
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_154
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_155
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_156
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_157
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_6 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_6 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_6;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_6 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_148
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_149
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_150
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_151
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_152
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_7 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_7 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_7;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_7 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_143
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_144
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_145
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_146
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_147
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_8 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_8 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_8;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_8 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_138
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_139
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_140
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_141
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_142
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_coarse_delay_9 is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_coarse_delay_9 : entity is "coarse_delay";
end system_tdc_sensor_0_0_coarse_delay_9;

architecture STRUCTURE of system_tdc_sensor_0_0_coarse_delay_9 is
  signal \blocks[0].block_i_n_0\ : STD_LOGIC;
  signal \blocks[1].block_i_n_0\ : STD_LOGIC;
  signal \blocks[2].block_i_n_0\ : STD_LOGIC;
  signal \blocks[3].block_i_n_0\ : STD_LOGIC;
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_133
     port map (
      \delay_path[2].lut_i_0\ => \blocks[0].block_i_n_0\,
      delta_i => delta_i
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_134
     port map (
      \delay_path[2].lut_i_0\ => \blocks[1].block_i_n_0\,
      delta_i => \blocks[0].block_i_n_0\
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_135
     port map (
      \delay_path[2].lut_i_0\ => \blocks[2].block_i_n_0\,
      delta_i => \blocks[1].block_i_n_0\
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_coarse_block_136
     port map (
      clocks_i(0) => \blocks[3].block_i_n_0\,
      delta_i => \blocks[2].block_i_n_0\
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux_137
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clock_o,
      clocks_i(3) => \blocks[3].block_i_n_0\,
      clocks_i(2) => \blocks[2].block_i_n_0\,
      clocks_i(1) => \blocks[1].block_i_n_0\,
      clocks_i(0) => \blocks[0].block_i_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_delay_line is
  port (
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_delay_line : entity is "delay_line";
end system_tdc_sensor_0_0_delay_line;

architecture STRUCTURE of system_tdc_sensor_0_0_delay_line is
  signal delta_s : STD_LOGIC_VECTOR ( 7 downto 1 );
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_delay_block
     port map (
      clock_i => clock_i,
      data_o(3 downto 0) => data_o(3 downto 0),
      delta_i => delta_i,
      delta_o => delta_s(1)
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_delay_block_29
     port map (
      clock_i => clock_i,
      data_o(3 downto 0) => data_o(7 downto 4),
      delta_i => delta_s(1),
      delta_o => delta_s(2)
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_delay_block_30
     port map (
      clock_i => clock_i,
      data_o(3 downto 0) => data_o(11 downto 8),
      delta_i => delta_s(2),
      delta_o => delta_s(3)
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_delay_block_31
     port map (
      clock_i => clock_i,
      data_o(3 downto 0) => data_o(15 downto 12),
      delta_i => delta_s(3),
      delta_o => delta_s(4)
    );
\blocks[4].block_i\: entity work.system_tdc_sensor_0_0_delay_block_32
     port map (
      clock_i => clock_i,
      data_o(3 downto 0) => data_o(19 downto 16),
      delta_i => delta_s(4),
      delta_o => delta_s(5)
    );
\blocks[5].block_i\: entity work.system_tdc_sensor_0_0_delay_block_33
     port map (
      clock_i => clock_i,
      data_o(3 downto 0) => data_o(23 downto 20),
      delta_i => delta_s(5),
      delta_o => delta_s(6)
    );
\blocks[6].block_i\: entity work.system_tdc_sensor_0_0_delay_block_34
     port map (
      clock_i => clock_i,
      data_o(3 downto 0) => data_o(27 downto 24),
      delta_i => delta_s(6),
      delta_o => delta_s(7)
    );
\blocks[7].block_i\: entity work.system_tdc_sensor_0_0_delay_block_35
     port map (
      clock_i => clock_i,
      clock_o => clock_o,
      data_o(3 downto 0) => data_o(31 downto 28),
      delta_i => delta_s(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_fine_delay is
  port (
    clock_o : out STD_LOGIC;
    delta_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_fine_delay : entity is "fine_delay";
end system_tdc_sensor_0_0_fine_delay;

architecture STRUCTURE of system_tdc_sensor_0_0_fine_delay is
  signal clocks_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal delta_s : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\blocks[0].block_i\: entity work.system_tdc_sensor_0_0_fine_block
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      clock_o => clocks_i(0),
      delta_i => delta_i,
      delta_o => delta_s(1)
    );
\blocks[1].block_i\: entity work.system_tdc_sensor_0_0_fine_block_36
     port map (
      Q(1 downto 0) => Q(3 downto 2),
      clock_o => clocks_i(1),
      delta_i => delta_s(1),
      delta_o => delta_s(2)
    );
\blocks[2].block_i\: entity work.system_tdc_sensor_0_0_fine_block_37
     port map (
      Q(1 downto 0) => Q(5 downto 4),
      clock_o => clocks_i(2),
      delta_i => delta_s(2),
      delta_o => delta_s(3)
    );
\blocks[3].block_i\: entity work.system_tdc_sensor_0_0_fine_block_38
     port map (
      Q(1 downto 0) => Q(7 downto 6),
      clock_o => clocks_i(3),
      delta_i => delta_s(3)
    );
mux: entity work.system_tdc_sensor_0_0_clock_mux
     port map (
      Q(1 downto 0) => Q(9 downto 8),
      clock_o => clock_o,
      clocks_i(3 downto 0) => clocks_i(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_tdc is
  port (
    \s_axi_awaddr[3]\ : out STD_LOGIC;
    \s_axi_awaddr[2]\ : out STD_LOGIC;
    \s_axi_araddr[3]\ : out STD_LOGIC;
    \s_axi_araddr[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clock_o : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_awaddr_reg[3]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    S_AXI_AWREADY : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    S_AXI_ARREADY : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clock_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_tdc : entity is "tdc";
end system_tdc_sensor_0_0_tdc;

architecture STRUCTURE of system_tdc_sensor_0_0_tdc is
  signal \coarse_line[10].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[11].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[12].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[13].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[14].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[15].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[16].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[17].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[18].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[19].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[1].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[20].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[21].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[22].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[23].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[24].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[25].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[26].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[27].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[28].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[2].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[3].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[4].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[5].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[6].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[7].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[8].delay_i_n_0\ : STD_LOGIC;
  signal \coarse_line[9].delay_i_n_0\ : STD_LOGIC;
  signal \^data_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal delta_i : STD_LOGIC;
  signal fine_clock_s : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  data_o(31 downto 0) <= \^data_o\(31 downto 0);
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => S_AXI_ARREADY,
      I3 => axi_araddr(0),
      O => \s_axi_araddr[2]\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => S_AXI_ARREADY,
      I3 => axi_araddr(1),
      O => \s_axi_araddr[3]\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \axi_awaddr_reg[3]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => S_AXI_AWREADY,
      I5 => axi_awaddr(0),
      O => \s_axi_awaddr[2]\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \axi_awaddr_reg[3]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => S_AXI_AWREADY,
      I5 => axi_awaddr(1),
      O => \s_axi_awaddr[3]\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(0),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(0),
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(10),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(10),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(11),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(11),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(12),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(12),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(13),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(13),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(14),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(14),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(15),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(15),
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(16),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(16),
      O => D(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(17),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(17),
      O => D(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(18),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(18),
      O => D(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(19),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(19),
      O => D(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(1),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(1),
      O => D(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(20),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(20),
      O => D(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(21),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(21),
      O => D(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(22),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(22),
      O => D(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(23),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(23),
      O => D(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(24),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(24),
      O => D(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(25),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(25),
      O => D(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(26),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(26),
      O => D(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(27),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(27),
      O => D(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(28),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(28),
      O => D(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(29),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(29),
      O => D(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(2),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(2),
      O => D(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(30),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(30),
      O => D(30)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(31),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(31),
      O => D(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(3),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(3),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(4),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(5),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(6),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(7),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(7),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(8),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(8),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \^data_o\(9),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => Q(9),
      O => D(9)
    );
\coarse_line[0].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_i => clock_i,
      clock_o => delta_i
    );
\coarse_line[10].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_0
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[9].delay_i_n_0\,
      \slv_reg3_reg[11]\ => \coarse_line[10].delay_i_n_0\
    );
\coarse_line[11].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_1
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[11].delay_i_n_0\,
      delta_i => \coarse_line[10].delay_i_n_0\
    );
\coarse_line[12].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_2
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[12].delay_i_n_0\,
      delta_i => \coarse_line[11].delay_i_n_0\
    );
\coarse_line[13].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_3
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[13].delay_i_n_0\,
      delta_i => \coarse_line[12].delay_i_n_0\
    );
\coarse_line[14].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_4
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[14].delay_i_n_0\,
      delta_i => \coarse_line[13].delay_i_n_0\
    );
\coarse_line[15].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_5
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[15].delay_i_n_0\,
      delta_i => \coarse_line[14].delay_i_n_0\
    );
\coarse_line[16].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_6
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[16].delay_i_n_0\,
      delta_i => \coarse_line[15].delay_i_n_0\
    );
\coarse_line[17].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_7
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[17].delay_i_n_0\,
      delta_i => \coarse_line[16].delay_i_n_0\
    );
\coarse_line[18].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_8
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[18].delay_i_n_0\,
      delta_i => \coarse_line[17].delay_i_n_0\
    );
\coarse_line[19].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_9
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[19].delay_i_n_0\,
      delta_i => \coarse_line[18].delay_i_n_0\
    );
\coarse_line[1].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_10
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[1].delay_i_n_0\,
      delta_i => delta_i
    );
\coarse_line[20].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_11
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[20].delay_i_n_0\,
      delta_i => \coarse_line[19].delay_i_n_0\
    );
\coarse_line[21].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_12
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[21].delay_i_n_0\,
      delta_i => \coarse_line[20].delay_i_n_0\
    );
\coarse_line[22].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_13
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[22].delay_i_n_0\,
      delta_i => \coarse_line[21].delay_i_n_0\
    );
\coarse_line[23].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_14
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[23].delay_i_n_0\,
      delta_i => \coarse_line[22].delay_i_n_0\
    );
\coarse_line[24].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_15
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[24].delay_i_n_0\,
      delta_i => \coarse_line[23].delay_i_n_0\
    );
\coarse_line[25].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_16
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[25].delay_i_n_0\,
      delta_i => \coarse_line[24].delay_i_n_0\
    );
\coarse_line[26].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_17
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[26].delay_i_n_0\,
      delta_i => \coarse_line[25].delay_i_n_0\
    );
\coarse_line[27].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_18
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[27].delay_i_n_0\,
      delta_i => \coarse_line[26].delay_i_n_0\
    );
\coarse_line[28].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_19
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[28].delay_i_n_0\,
      delta_i => \coarse_line[27].delay_i_n_0\
    );
\coarse_line[29].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_20
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => fine_clock_s(0),
      delta_i => \coarse_line[28].delay_i_n_0\
    );
\coarse_line[2].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_21
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[2].delay_i_n_0\,
      delta_i => \coarse_line[1].delay_i_n_0\
    );
\coarse_line[3].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_22
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[3].delay_i_n_0\,
      delta_i => \coarse_line[2].delay_i_n_0\
    );
\coarse_line[4].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_23
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[4].delay_i_n_0\,
      delta_i => \coarse_line[3].delay_i_n_0\
    );
\coarse_line[5].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_24
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[5].delay_i_n_0\,
      delta_i => \coarse_line[4].delay_i_n_0\
    );
\coarse_line[6].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_25
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[6].delay_i_n_0\,
      delta_i => \coarse_line[5].delay_i_n_0\
    );
\coarse_line[7].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_26
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[7].delay_i_n_0\,
      delta_i => \coarse_line[6].delay_i_n_0\
    );
\coarse_line[8].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_27
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[8].delay_i_n_0\,
      delta_i => \coarse_line[7].delay_i_n_0\
    );
\coarse_line[9].delay_i\: entity work.system_tdc_sensor_0_0_coarse_delay_28
     port map (
      Q(1 downto 0) => Q(11 downto 10),
      clock_o => \coarse_line[9].delay_i_n_0\,
      delta_i => \coarse_line[8].delay_i_n_0\
    );
\fine_line[0].delay_i\: entity work.system_tdc_sensor_0_0_fine_delay
     port map (
      Q(9 downto 0) => Q(9 downto 0),
      clock_o => fine_clock_s(1),
      delta_i => fine_clock_s(0)
    );
sampling: entity work.system_tdc_sensor_0_0_delay_line
     port map (
      clock_i => clock_i,
      clock_o => clock_o,
      data_o(31 downto 0) => \^data_o\(31 downto 0),
      delta_i => fine_clock_s(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_tdc_sensor_v1_0_S_AXI is
  port (
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clock_o : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    clock_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_tdc_sensor_v1_0_S_AXI : entity is "tdc_sensor_v1_0_S_AXI";
end system_tdc_sensor_0_0_tdc_sensor_v1_0_S_AXI;

architecture STRUCTURE of system_tdc_sensor_0_0_tdc_sensor_v1_0_S_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal U0_n_0 : STD_LOGIC;
  signal U0_n_1 : STD_LOGIC;
  signal U0_n_2 : STD_LOGIC;
  signal U0_n_3 : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal coarse_delay_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
U0: entity work.system_tdc_sensor_0_0_tdc
     port map (
      D(31 downto 0) => reg_data_out(31 downto 0),
      Q(31) => \slv_reg3_reg_n_0_[31]\,
      Q(30) => \slv_reg3_reg_n_0_[30]\,
      Q(29) => \slv_reg3_reg_n_0_[29]\,
      Q(28) => \slv_reg3_reg_n_0_[28]\,
      Q(27) => \slv_reg3_reg_n_0_[27]\,
      Q(26) => \slv_reg3_reg_n_0_[26]\,
      Q(25) => \slv_reg3_reg_n_0_[25]\,
      Q(24) => \slv_reg3_reg_n_0_[24]\,
      Q(23) => \slv_reg3_reg_n_0_[23]\,
      Q(22) => \slv_reg3_reg_n_0_[22]\,
      Q(21) => \slv_reg3_reg_n_0_[21]\,
      Q(20) => \slv_reg3_reg_n_0_[20]\,
      Q(19) => \slv_reg3_reg_n_0_[19]\,
      Q(18) => \slv_reg3_reg_n_0_[18]\,
      Q(17) => \slv_reg3_reg_n_0_[17]\,
      Q(16) => \slv_reg3_reg_n_0_[16]\,
      Q(15) => \slv_reg3_reg_n_0_[15]\,
      Q(14) => \slv_reg3_reg_n_0_[14]\,
      Q(13) => \slv_reg3_reg_n_0_[13]\,
      Q(12) => \slv_reg3_reg_n_0_[12]\,
      Q(11 downto 10) => coarse_delay_i(1 downto 0),
      Q(9) => \slv_reg3_reg_n_0_[9]\,
      Q(8) => \slv_reg3_reg_n_0_[8]\,
      Q(7) => \slv_reg3_reg_n_0_[7]\,
      Q(6) => \slv_reg3_reg_n_0_[6]\,
      Q(5) => \slv_reg3_reg_n_0_[5]\,
      Q(4) => \slv_reg3_reg_n_0_[4]\,
      Q(3) => \slv_reg3_reg_n_0_[3]\,
      Q(2) => \slv_reg3_reg_n_0_[2]\,
      Q(1) => \slv_reg3_reg_n_0_[1]\,
      Q(0) => \slv_reg3_reg_n_0_[0]\,
      S_AXI_ARREADY => \^s_axi_arready\,
      S_AXI_AWREADY => \^s_axi_awready\,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      axi_awaddr(1 downto 0) => axi_awaddr(3 downto 2),
      \axi_awaddr_reg[3]\ => aw_en_reg_n_0,
      clock_i => clock_i,
      clock_o => clock_o,
      data_o(31 downto 0) => data_o(31 downto 0),
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      \s_axi_araddr[2]\ => U0_n_3,
      \s_axi_araddr[3]\ => U0_n_2,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      \s_axi_awaddr[2]\ => U0_n_1,
      \s_axi_awaddr[3]\ => U0_n_0,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => U0_n_3,
      Q => axi_araddr(2),
      S => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => U0_n_2,
      Q => axi_araddr(3),
      S => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => U0_n_1,
      Q => axi_awaddr(2),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => U0_n_0,
      Q => axi_awaddr(3),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      R => p_0_in
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(10),
      Q => coarse_delay_i(0),
      R => p_0_in
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(11),
      Q => coarse_delay_i(1),
      R => p_0_in
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => p_0_in
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => p_0_in
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => p_0_in
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => p_0_in
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => p_0_in
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => p_0_in
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => p_0_in
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => p_0_in
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => p_0_in
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => p_0_in
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => p_0_in
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => p_0_in
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => p_0_in
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => p_0_in
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => p_0_in
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => p_0_in
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => p_0_in
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => p_0_in
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => p_0_in
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => p_0_in
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => p_0_in
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(31),
      Q => \slv_reg3_reg_n_0_[31]\,
      R => p_0_in
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => p_0_in
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => p_0_in
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => p_0_in
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => p_0_in
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => p_0_in
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => p_0_in
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0_tdc_sensor_v1_0 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clock_o : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    clock_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_tdc_sensor_0_0_tdc_sensor_v1_0 : entity is "tdc_sensor_v1_0";
end system_tdc_sensor_0_0_tdc_sensor_v1_0;

architecture STRUCTURE of system_tdc_sensor_0_0_tdc_sensor_v1_0 is
begin
tdc_sensor_v1_0_S_AXI_inst: entity work.system_tdc_sensor_0_0_tdc_sensor_v1_0_S_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      clock_i => clock_i,
      clock_o => clock_o,
      data_o(31 downto 0) => data_o(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_tdc_sensor_0_0 is
  port (
    clock_i : in STD_LOGIC;
    clock_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_tdc_sensor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_tdc_sensor_0_0 : entity is "system_tdc_sensor_0_0,tdc_sensor_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_tdc_sensor_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_tdc_sensor_0_0 : entity is "tdc_sensor_v1_0,Vivado 2020.1";
end system_tdc_sensor_0_0;

architecture STRUCTURE of system_tdc_sensor_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clock_i : signal is "xilinx.com:signal:clock:1.0 clock_i CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clock_i : signal is "XIL_INTERFACENAME clock_i, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of clock_o : signal is "xilinx.com:signal:clock:1.0 clock_o CLK";
  attribute x_interface_parameter of clock_o : signal is "XIL_INTERFACENAME clock_o, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_tdc_sensor_0_0_clock_o, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_RST RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.system_tdc_sensor_0_0_tdc_sensor_v1_0
     port map (
      S_AXI_ARREADY => s_axi_arready,
      S_AXI_AWREADY => s_axi_awready,
      S_AXI_WREADY => s_axi_wready,
      clock_i => clock_i,
      clock_o => clock_o,
      data_o(31 downto 0) => data_o(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
