// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Jul  3 13:57:41 2020
// Host        : DESKTOP-L08MEB9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/sca_framework/vivado_sca/vivado_sca.srcs/sources_1/bd/system/ip/system_tdc_sensor_0_0/system_tdc_sensor_0_0_sim_netlist.v
// Design      : system_tdc_sensor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_tdc_sensor_0_0,tdc_sensor_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "tdc_sensor_v1_0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_tdc_sensor_0_0
   (clock_i,
    clock_o,
    data_o,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock_i CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock_i, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clock_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock_o CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock_o, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_tdc_sensor_0_0_clock_o, INSERT_VIP 0" *) output clock_o;
  output [31:0]data_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;

  wire \<const0> ;
  wire clock_i;
  wire clock_o;
  wire [31:0]data_o;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_tdc_sensor_0_0_tdc_sensor_v1_0 U0
       (.S_AXI_ARREADY(s_axi_arready),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WREADY(s_axi_wready),
        .clock_i(clock_i),
        .clock_o(clock_o),
        .data_o(data_o),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_102
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_107
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_112
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_117
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_122
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_127
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_132
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_137
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_142
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_147
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_152
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_157
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_162
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_167
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_172
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_177
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_182
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_187
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_192
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_197
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_202
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_207
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_212
   (\slv_reg3_reg[11] ,
    clocks_i,
    Q);
  output \slv_reg3_reg[11] ;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;
  wire \slv_reg3_reg[11] ;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(\slv_reg3_reg[11] ),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_217
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_47
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_52
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_57
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_62
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_67
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_72
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_77
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_82
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_87
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_92
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "clock_mux" *) 
module system_tdc_sensor_0_0_clock_mux_97
   (clock_o,
    clocks_i,
    Q);
  output clock_o;
  input [3:0]clocks_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire \luts[2].lut_i_n_0 ;
  wire \luts[3].lut_i_n_0 ;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[0].lut_i 
       (.I0(clocks_i[0]),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[1].lut_i 
       (.I0(clocks_i[1]),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[2].lut_i 
       (.I0(clocks_i[2]),
        .O(\luts[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \luts[3].lut_i 
       (.I0(clocks_i[3]),
        .O(\luts[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\luts[2].lut_i_n_0 ),
        .I1(\luts[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_100
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_101
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_103
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_104
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_105
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_106
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_108
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_109
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_110
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_111
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_113
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_114
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_115
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_116
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_118
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_119
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_120
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_121
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_123
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_124
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_125
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_126
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_128
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_129
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_130
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_131
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_133
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_134
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_135
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_136
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_138
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_139
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_140
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_141
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_143
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_144
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_145
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_146
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_148
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_149
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_150
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_151
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_153
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_154
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_155
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_156
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_158
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_159
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_160
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_161
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_163
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_164
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_165
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_166
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_168
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_169
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_170
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_171
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_173
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_174
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_175
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_176
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_178
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_179
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_180
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_181
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_183
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_184
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_185
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_186
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_188
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_189
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_190
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_191
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_193
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_194
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_195
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_196
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_198
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_199
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_200
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_201
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_203
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_204
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_205
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_206
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_208
   (delta_i,
    clock_o);
  output delta_i;
  input clock_o;

  wire O;
  wire clock_o;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(clock_o),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(delta_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_209
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_210
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_211
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_213
   (delta_i,
    clock_i);
  output delta_i;
  input clock_i;

  wire O;
  wire clock_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(clock_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(delta_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_214
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_215
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_216
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_44
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_45
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_46
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_48
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_49
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_50
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_51
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_53
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_54
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_55
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_56
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_58
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_59
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_60
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_61
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_63
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_64
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_65
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_66
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_68
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_69
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_70
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_71
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_73
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_74
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_75
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_76
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_78
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_79
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_80
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_81
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_83
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_84
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_85
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_86
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_88
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_89
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_90
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_91
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_93
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_94
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_95
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_96
   (clocks_i,
    delta_i);
  output [0:0]clocks_i;
  input delta_i;

  wire O;
  wire [0:0]clocks_i;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(clocks_i));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_98
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_block" *) 
module system_tdc_sensor_0_0_coarse_block_99
   (\delay_path[2].lut_i_0 ,
    delta_i);
  output \delay_path[2].lut_i_0 ;
  input delta_i;

  wire O;
  wire \delay_path[1].lut_i_n_0 ;
  wire \delay_path[2].lut_i_0 ;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;

  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(\delay_path[1].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(\delay_path[1].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[2].lut_i_0 ));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay
   (clock_o,
    clock_i,
    Q);
  output clock_o;
  input clock_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_i;
  wire clock_o;

  system_tdc_sensor_0_0_coarse_block_213 \blocks[0].block_i 
       (.clock_i(clock_i),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_214 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_215 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_216 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_217 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_0
   (\slv_reg3_reg[11] ,
    clock_o,
    Q);
  output \slv_reg3_reg[11] ;
  input clock_o;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire \slv_reg3_reg[11] ;

  system_tdc_sensor_0_0_coarse_block_208 \blocks[0].block_i 
       (.clock_o(clock_o),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_209 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_210 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_211 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_212 mux
       (.Q(Q),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }),
        .\slv_reg3_reg[11] (\slv_reg3_reg[11] ));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_1
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_203 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_204 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_205 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_206 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_207 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_10
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_158 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_159 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_160 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_161 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_162 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_11
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_153 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_154 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_155 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_156 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_157 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_12
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_148 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_149 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_150 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_151 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_152 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_13
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_143 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_144 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_145 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_146 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_147 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_14
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_138 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_139 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_140 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_141 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_142 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_15
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_133 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_134 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_135 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_136 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_137 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_16
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_128 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_129 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_130 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_131 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_132 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_17
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_123 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_124 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_125 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_126 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_127 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_18
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_118 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_119 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_120 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_121 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_122 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_19
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_113 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_114 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_115 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_116 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_117 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_2
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_198 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_199 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_200 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_201 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_202 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_20
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_108 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_109 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_110 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_111 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_112 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_21
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_103 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_104 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_105 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_106 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_107 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_22
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_98 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_99 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_100 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_101 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_102 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_23
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_93 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_94 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_95 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_96 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_97 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_24
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_88 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_89 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_90 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_91 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_92 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_25
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_83 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_84 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_85 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_86 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_87 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_26
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_78 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_79 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_80 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_81 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_82 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_27
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_73 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_74 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_75 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_76 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_77 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_28
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_68 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_69 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_70 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_71 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_72 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_29
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_63 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_64 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_65 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_66 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_67 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_3
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_193 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_194 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_195 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_196 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_197 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_30
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_58 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_59 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_60 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_61 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_62 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_31
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_53 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_54 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_55 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_56 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_57 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_32
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_48 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_49 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_50 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_51 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_52 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_33
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_44 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_45 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_46 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_47 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_4
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_188 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_189 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_190 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_191 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_192 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_5
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_183 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_184 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_185 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_186 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_187 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_6
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_178 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_179 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_180 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_181 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_182 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_7
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_173 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_174 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_175 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_176 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_177 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_8
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_168 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_169 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_170 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_171 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_172 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "coarse_delay" *) 
module system_tdc_sensor_0_0_coarse_delay_9
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire [1:0]Q;
  wire \blocks[0].block_i_n_0 ;
  wire \blocks[1].block_i_n_0 ;
  wire \blocks[2].block_i_n_0 ;
  wire \blocks[3].block_i_n_0 ;
  wire clock_o;
  wire delta_i;

  system_tdc_sensor_0_0_coarse_block_163 \blocks[0].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[0].block_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_block_164 \blocks[1].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[1].block_i_n_0 ),
        .delta_i(\blocks[0].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_165 \blocks[2].block_i 
       (.\delay_path[2].lut_i_0 (\blocks[2].block_i_n_0 ),
        .delta_i(\blocks[1].block_i_n_0 ));
  system_tdc_sensor_0_0_coarse_block_166 \blocks[3].block_i 
       (.clocks_i(\blocks[3].block_i_n_0 ),
        .delta_i(\blocks[2].block_i_n_0 ));
  system_tdc_sensor_0_0_clock_mux_167 mux
       (.Q(Q),
        .clock_o(clock_o),
        .clocks_i({\blocks[3].block_i_n_0 ,\blocks[2].block_i_n_0 ,\blocks[1].block_i_n_0 ,\blocks[0].block_i_n_0 }));
endmodule

(* ORIG_REF_NAME = "delay_block" *) 
module system_tdc_sensor_0_0_delay_block
   (delta_o,
    data_o,
    delta_i,
    clock_i);
  output delta_o;
  output [3:0]data_o;
  input delta_i;
  input clock_i;

  wire [2:0]carry_s;
  wire clock_i;
  wire [3:0]data_o;
  wire delta_i;
  wire delta_o;
  wire [3:0]NLW_delay_path_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 delay_path
       (.CI(delta_i),
        .CO({delta_o,carry_s}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_path_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[0].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[0]),
        .Q(data_o[0]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[1].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[1]),
        .Q(data_o[1]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[2].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[2]),
        .Q(data_o[2]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[3].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(delta_o),
        .Q(data_o[3]));
endmodule

(* ORIG_REF_NAME = "delay_block" *) 
module system_tdc_sensor_0_0_delay_block_34
   (delta_o,
    data_o,
    delta_i,
    clock_i);
  output delta_o;
  output [3:0]data_o;
  input delta_i;
  input clock_i;

  wire [2:0]carry_s;
  wire clock_i;
  wire [3:0]data_o;
  wire delta_i;
  wire delta_o;
  wire [3:0]NLW_delay_path_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 delay_path
       (.CI(delta_i),
        .CO({delta_o,carry_s}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_path_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[0].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[0]),
        .Q(data_o[0]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[1].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[1]),
        .Q(data_o[1]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[2].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[2]),
        .Q(data_o[2]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[3].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(delta_o),
        .Q(data_o[3]));
endmodule

(* ORIG_REF_NAME = "delay_block" *) 
module system_tdc_sensor_0_0_delay_block_35
   (delta_o,
    data_o,
    delta_i,
    clock_i);
  output delta_o;
  output [3:0]data_o;
  input delta_i;
  input clock_i;

  wire [2:0]carry_s;
  wire clock_i;
  wire [3:0]data_o;
  wire delta_i;
  wire delta_o;
  wire [3:0]NLW_delay_path_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 delay_path
       (.CI(delta_i),
        .CO({delta_o,carry_s}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_path_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[0].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[0]),
        .Q(data_o[0]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[1].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[1]),
        .Q(data_o[1]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[2].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[2]),
        .Q(data_o[2]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[3].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(delta_o),
        .Q(data_o[3]));
endmodule

(* ORIG_REF_NAME = "delay_block" *) 
module system_tdc_sensor_0_0_delay_block_36
   (delta_o,
    data_o,
    delta_i,
    clock_i);
  output delta_o;
  output [3:0]data_o;
  input delta_i;
  input clock_i;

  wire [2:0]carry_s;
  wire clock_i;
  wire [3:0]data_o;
  wire delta_i;
  wire delta_o;
  wire [3:0]NLW_delay_path_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 delay_path
       (.CI(delta_i),
        .CO({delta_o,carry_s}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_path_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[0].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[0]),
        .Q(data_o[0]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[1].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[1]),
        .Q(data_o[1]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[2].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[2]),
        .Q(data_o[2]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[3].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(delta_o),
        .Q(data_o[3]));
endmodule

(* ORIG_REF_NAME = "delay_block" *) 
module system_tdc_sensor_0_0_delay_block_37
   (delta_o,
    data_o,
    delta_i,
    clock_i);
  output delta_o;
  output [3:0]data_o;
  input delta_i;
  input clock_i;

  wire [2:0]carry_s;
  wire clock_i;
  wire [3:0]data_o;
  wire delta_i;
  wire delta_o;
  wire [3:0]NLW_delay_path_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 delay_path
       (.CI(delta_i),
        .CO({delta_o,carry_s}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_path_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[0].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[0]),
        .Q(data_o[0]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[1].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[1]),
        .Q(data_o[1]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[2].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[2]),
        .Q(data_o[2]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[3].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(delta_o),
        .Q(data_o[3]));
endmodule

(* ORIG_REF_NAME = "delay_block" *) 
module system_tdc_sensor_0_0_delay_block_38
   (delta_o,
    data_o,
    delta_i,
    clock_i);
  output delta_o;
  output [3:0]data_o;
  input delta_i;
  input clock_i;

  wire [2:0]carry_s;
  wire clock_i;
  wire [3:0]data_o;
  wire delta_i;
  wire delta_o;
  wire [3:0]NLW_delay_path_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 delay_path
       (.CI(delta_i),
        .CO({delta_o,carry_s}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_path_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[0].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[0]),
        .Q(data_o[0]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[1].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[1]),
        .Q(data_o[1]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[2].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[2]),
        .Q(data_o[2]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[3].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(delta_o),
        .Q(data_o[3]));
endmodule

(* ORIG_REF_NAME = "delay_block" *) 
module system_tdc_sensor_0_0_delay_block_39
   (delta_o,
    data_o,
    delta_i,
    clock_i);
  output delta_o;
  output [3:0]data_o;
  input delta_i;
  input clock_i;

  wire [2:0]carry_s;
  wire clock_i;
  wire [3:0]data_o;
  wire delta_i;
  wire delta_o;
  wire [3:0]NLW_delay_path_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 delay_path
       (.CI(delta_i),
        .CO({delta_o,carry_s}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_path_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[0].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[0]),
        .Q(data_o[0]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[1].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[1]),
        .Q(data_o[1]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[2].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[2]),
        .Q(data_o[2]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[3].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(delta_o),
        .Q(data_o[3]));
endmodule

(* ORIG_REF_NAME = "delay_block" *) 
module system_tdc_sensor_0_0_delay_block_40
   (clock_o,
    data_o,
    delta_i,
    clock_i);
  output clock_o;
  output [3:0]data_o;
  input delta_i;
  input clock_i;

  wire [2:0]carry_s;
  wire clock_i;
  wire clock_o;
  wire [3:0]data_o;
  wire delta_i;
  wire [3:0]NLW_delay_path_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 delay_path
       (.CI(delta_i),
        .CO({clock_o,carry_s}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_delay_path_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[0].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[0]),
        .Q(data_o[0]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[1].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[1]),
        .Q(data_o[1]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[2].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(carry_s[2]),
        .Q(data_o[2]));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \regs[3].delay_reg 
       (.C(clock_i),
        .CE(1'b1),
        .CLR(1'b0),
        .D(clock_o),
        .Q(data_o[3]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module system_tdc_sensor_0_0_delay_line
   (data_o,
    clock_o,
    delta_i,
    clock_i);
  output [31:0]data_o;
  output clock_o;
  input delta_i;
  input clock_i;

  wire clock_i;
  wire clock_o;
  wire [31:0]data_o;
  wire delta_i;
  wire [7:1]delta_s;

  system_tdc_sensor_0_0_delay_block \blocks[0].block_i 
       (.clock_i(clock_i),
        .data_o(data_o[3:0]),
        .delta_i(delta_i),
        .delta_o(delta_s[1]));
  system_tdc_sensor_0_0_delay_block_34 \blocks[1].block_i 
       (.clock_i(clock_i),
        .data_o(data_o[7:4]),
        .delta_i(delta_s[1]),
        .delta_o(delta_s[2]));
  system_tdc_sensor_0_0_delay_block_35 \blocks[2].block_i 
       (.clock_i(clock_i),
        .data_o(data_o[11:8]),
        .delta_i(delta_s[2]),
        .delta_o(delta_s[3]));
  system_tdc_sensor_0_0_delay_block_36 \blocks[3].block_i 
       (.clock_i(clock_i),
        .data_o(data_o[15:12]),
        .delta_i(delta_s[3]),
        .delta_o(delta_s[4]));
  system_tdc_sensor_0_0_delay_block_37 \blocks[4].block_i 
       (.clock_i(clock_i),
        .data_o(data_o[19:16]),
        .delta_i(delta_s[4]),
        .delta_o(delta_s[5]));
  system_tdc_sensor_0_0_delay_block_38 \blocks[5].block_i 
       (.clock_i(clock_i),
        .data_o(data_o[23:20]),
        .delta_i(delta_s[5]),
        .delta_o(delta_s[6]));
  system_tdc_sensor_0_0_delay_block_39 \blocks[6].block_i 
       (.clock_i(clock_i),
        .data_o(data_o[27:24]),
        .delta_i(delta_s[6]),
        .delta_o(delta_s[7]));
  system_tdc_sensor_0_0_delay_block_40 \blocks[7].block_i 
       (.clock_i(clock_i),
        .clock_o(clock_o),
        .data_o(data_o[31:28]),
        .delta_i(delta_s[7]));
endmodule

(* ORIG_REF_NAME = "fine_block" *) 
module system_tdc_sensor_0_0_fine_block
   (delta_o,
    clock_o,
    delta_i,
    Q);
  output delta_o;
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;
  wire delta_o;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(I1),
        .O(\delay_path[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(delta_o));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\delay_path[2].lut_i_n_0 ),
        .I1(delta_o),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "fine_block" *) 
module system_tdc_sensor_0_0_fine_block_41
   (delta_o,
    clock_o,
    delta_i,
    Q);
  output delta_o;
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;
  wire delta_o;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(I1),
        .O(\delay_path[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(delta_o));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\delay_path[2].lut_i_n_0 ),
        .I1(delta_o),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "fine_block" *) 
module system_tdc_sensor_0_0_fine_block_42
   (delta_o,
    clock_o,
    delta_i,
    Q);
  output delta_o;
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire \delay_path[2].lut_i_n_0 ;
  wire delta_i;
  wire delta_o;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(I1),
        .O(\delay_path[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(delta_o));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\delay_path[2].lut_i_n_0 ),
        .I1(delta_o),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "fine_block" *) 
module system_tdc_sensor_0_0_fine_block_43
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [1:0]Q;

  wire I1;
  wire O;
  wire [1:0]Q;
  wire clock_o;
  wire \delay_path[2].lut_i_n_0 ;
  wire \delay_path[3].lut_i_n_0 ;
  wire delta_i;
  wire [1:0]mux_s;

  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[0].lut_i 
       (.I0(delta_i),
        .O(O));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[1].lut_i 
       (.I0(O),
        .O(I1));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[2].lut_i 
       (.I0(I1),
        .O(\delay_path[2].lut_i_n_0 ));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \delay_path[3].lut_i 
       (.I0(\delay_path[2].lut_i_n_0 ),
        .O(\delay_path[3].lut_i_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_0
       (.I0(O),
        .I1(I1),
        .O(mux_s[0]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 middle_mux_1
       (.I0(\delay_path[2].lut_i_n_0 ),
        .I1(\delay_path[3].lut_i_n_0 ),
        .O(mux_s[1]),
        .S(Q[0]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 out_mux
       (.I0(mux_s[0]),
        .I1(mux_s[1]),
        .O(clock_o),
        .S(Q[1]));
endmodule

(* ORIG_REF_NAME = "fine_delay" *) 
module system_tdc_sensor_0_0_fine_delay
   (clock_o,
    delta_i,
    Q);
  output clock_o;
  input delta_i;
  input [9:0]Q;

  wire [9:0]Q;
  wire clock_o;
  wire [3:0]clocks_i;
  wire delta_i;
  wire [3:1]delta_s;

  system_tdc_sensor_0_0_fine_block \blocks[0].block_i 
       (.Q(Q[1:0]),
        .clock_o(clocks_i[0]),
        .delta_i(delta_i),
        .delta_o(delta_s[1]));
  system_tdc_sensor_0_0_fine_block_41 \blocks[1].block_i 
       (.Q(Q[3:2]),
        .clock_o(clocks_i[1]),
        .delta_i(delta_s[1]),
        .delta_o(delta_s[2]));
  system_tdc_sensor_0_0_fine_block_42 \blocks[2].block_i 
       (.Q(Q[5:4]),
        .clock_o(clocks_i[2]),
        .delta_i(delta_s[2]),
        .delta_o(delta_s[3]));
  system_tdc_sensor_0_0_fine_block_43 \blocks[3].block_i 
       (.Q(Q[7:6]),
        .clock_o(clocks_i[3]),
        .delta_i(delta_s[3]));
  system_tdc_sensor_0_0_clock_mux mux
       (.Q(Q[9:8]),
        .clock_o(clock_o),
        .clocks_i(clocks_i));
endmodule

(* ORIG_REF_NAME = "tdc" *) 
module system_tdc_sensor_0_0_tdc
   (\s_axi_awaddr[3] ,
    \s_axi_awaddr[2] ,
    \s_axi_araddr[3] ,
    \s_axi_araddr[2] ,
    D,
    data_o,
    clock_o,
    s_axi_awaddr,
    \axi_awaddr_reg[3] ,
    s_axi_wvalid,
    s_axi_awvalid,
    S_AXI_AWREADY,
    axi_awaddr,
    s_axi_araddr,
    s_axi_arvalid,
    S_AXI_ARREADY,
    axi_araddr,
    Q,
    clock_i);
  output \s_axi_awaddr[3] ;
  output \s_axi_awaddr[2] ;
  output \s_axi_araddr[3] ;
  output \s_axi_araddr[2] ;
  output [31:0]D;
  output [31:0]data_o;
  output clock_o;
  input [1:0]s_axi_awaddr;
  input \axi_awaddr_reg[3] ;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input S_AXI_AWREADY;
  input [1:0]axi_awaddr;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input S_AXI_ARREADY;
  input [1:0]axi_araddr;
  input [31:0]Q;
  input clock_i;

  wire [31:0]D;
  wire [31:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire [1:0]axi_araddr;
  wire [1:0]axi_awaddr;
  wire \axi_awaddr_reg[3] ;
  wire clock_i;
  wire clock_o;
  wire \coarse_line[10].delay_i_n_0 ;
  wire \coarse_line[11].delay_i_n_0 ;
  wire \coarse_line[12].delay_i_n_0 ;
  wire \coarse_line[13].delay_i_n_0 ;
  wire \coarse_line[14].delay_i_n_0 ;
  wire \coarse_line[15].delay_i_n_0 ;
  wire \coarse_line[16].delay_i_n_0 ;
  wire \coarse_line[17].delay_i_n_0 ;
  wire \coarse_line[18].delay_i_n_0 ;
  wire \coarse_line[19].delay_i_n_0 ;
  wire \coarse_line[1].delay_i_n_0 ;
  wire \coarse_line[20].delay_i_n_0 ;
  wire \coarse_line[21].delay_i_n_0 ;
  wire \coarse_line[22].delay_i_n_0 ;
  wire \coarse_line[23].delay_i_n_0 ;
  wire \coarse_line[24].delay_i_n_0 ;
  wire \coarse_line[25].delay_i_n_0 ;
  wire \coarse_line[26].delay_i_n_0 ;
  wire \coarse_line[27].delay_i_n_0 ;
  wire \coarse_line[28].delay_i_n_0 ;
  wire \coarse_line[29].delay_i_n_0 ;
  wire \coarse_line[2].delay_i_n_0 ;
  wire \coarse_line[30].delay_i_n_0 ;
  wire \coarse_line[31].delay_i_n_0 ;
  wire \coarse_line[32].delay_i_n_0 ;
  wire \coarse_line[33].delay_i_n_0 ;
  wire \coarse_line[3].delay_i_n_0 ;
  wire \coarse_line[4].delay_i_n_0 ;
  wire \coarse_line[5].delay_i_n_0 ;
  wire \coarse_line[6].delay_i_n_0 ;
  wire \coarse_line[7].delay_i_n_0 ;
  wire \coarse_line[8].delay_i_n_0 ;
  wire \coarse_line[9].delay_i_n_0 ;
  wire [31:0]data_o;
  wire delta_i;
  wire [1:0]fine_clock_s;
  wire [1:0]s_axi_araddr;
  wire \s_axi_araddr[2] ;
  wire \s_axi_araddr[3] ;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire \s_axi_awaddr[2] ;
  wire \s_axi_awaddr[3] ;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[0]),
        .O(\s_axi_araddr[2] ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[1]),
        .O(\s_axi_araddr[3] ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\axi_awaddr_reg[3] ),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[0]),
        .O(\s_axi_awaddr[2] ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(\axi_awaddr_reg[3] ),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[1]),
        .O(\s_axi_awaddr[3] ));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[0]_i_1 
       (.I0(data_o[0]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[10]_i_1 
       (.I0(data_o[10]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[11]_i_1 
       (.I0(data_o[11]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[12]_i_1 
       (.I0(data_o[12]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[13]_i_1 
       (.I0(data_o[13]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[14]_i_1 
       (.I0(data_o[14]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[15]_i_1 
       (.I0(data_o[15]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[16]_i_1 
       (.I0(data_o[16]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[17]_i_1 
       (.I0(data_o[17]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[18]_i_1 
       (.I0(data_o[18]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[19]_i_1 
       (.I0(data_o[19]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[1]_i_1 
       (.I0(data_o[1]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[20]_i_1 
       (.I0(data_o[20]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[21]_i_1 
       (.I0(data_o[21]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[22]_i_1 
       (.I0(data_o[22]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[22]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[23]_i_1 
       (.I0(data_o[23]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[24]_i_1 
       (.I0(data_o[24]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[24]),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[25]_i_1 
       (.I0(data_o[25]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[25]),
        .O(D[25]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[26]_i_1 
       (.I0(data_o[26]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[26]),
        .O(D[26]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[27]_i_1 
       (.I0(data_o[27]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[27]),
        .O(D[27]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[28]_i_1 
       (.I0(data_o[28]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[28]),
        .O(D[28]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[29]_i_1 
       (.I0(data_o[29]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[29]),
        .O(D[29]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[2]_i_1 
       (.I0(data_o[2]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[30]_i_1 
       (.I0(data_o[30]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[30]),
        .O(D[30]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[31]_i_2 
       (.I0(data_o[31]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[31]),
        .O(D[31]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[3]_i_1 
       (.I0(data_o[3]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[4]_i_1 
       (.I0(data_o[4]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[5]_i_1 
       (.I0(data_o[5]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[6]_i_1 
       (.I0(data_o[6]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[7]_i_1 
       (.I0(data_o[7]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[8]_i_1 
       (.I0(data_o[8]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[9]_i_1 
       (.I0(data_o[9]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(Q[9]),
        .O(D[9]));
  system_tdc_sensor_0_0_coarse_delay \coarse_line[0].delay_i 
       (.Q(Q[11:10]),
        .clock_i(clock_i),
        .clock_o(delta_i));
  system_tdc_sensor_0_0_coarse_delay_0 \coarse_line[10].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[9].delay_i_n_0 ),
        .\slv_reg3_reg[11] (\coarse_line[10].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_1 \coarse_line[11].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[11].delay_i_n_0 ),
        .delta_i(\coarse_line[10].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_2 \coarse_line[12].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[12].delay_i_n_0 ),
        .delta_i(\coarse_line[11].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_3 \coarse_line[13].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[13].delay_i_n_0 ),
        .delta_i(\coarse_line[12].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_4 \coarse_line[14].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[14].delay_i_n_0 ),
        .delta_i(\coarse_line[13].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_5 \coarse_line[15].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[15].delay_i_n_0 ),
        .delta_i(\coarse_line[14].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_6 \coarse_line[16].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[16].delay_i_n_0 ),
        .delta_i(\coarse_line[15].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_7 \coarse_line[17].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[17].delay_i_n_0 ),
        .delta_i(\coarse_line[16].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_8 \coarse_line[18].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[18].delay_i_n_0 ),
        .delta_i(\coarse_line[17].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_9 \coarse_line[19].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[19].delay_i_n_0 ),
        .delta_i(\coarse_line[18].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_10 \coarse_line[1].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[1].delay_i_n_0 ),
        .delta_i(delta_i));
  system_tdc_sensor_0_0_coarse_delay_11 \coarse_line[20].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[20].delay_i_n_0 ),
        .delta_i(\coarse_line[19].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_12 \coarse_line[21].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[21].delay_i_n_0 ),
        .delta_i(\coarse_line[20].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_13 \coarse_line[22].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[22].delay_i_n_0 ),
        .delta_i(\coarse_line[21].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_14 \coarse_line[23].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[23].delay_i_n_0 ),
        .delta_i(\coarse_line[22].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_15 \coarse_line[24].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[24].delay_i_n_0 ),
        .delta_i(\coarse_line[23].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_16 \coarse_line[25].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[25].delay_i_n_0 ),
        .delta_i(\coarse_line[24].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_17 \coarse_line[26].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[26].delay_i_n_0 ),
        .delta_i(\coarse_line[25].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_18 \coarse_line[27].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[27].delay_i_n_0 ),
        .delta_i(\coarse_line[26].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_19 \coarse_line[28].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[28].delay_i_n_0 ),
        .delta_i(\coarse_line[27].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_20 \coarse_line[29].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[29].delay_i_n_0 ),
        .delta_i(\coarse_line[28].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_21 \coarse_line[2].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[2].delay_i_n_0 ),
        .delta_i(\coarse_line[1].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_22 \coarse_line[30].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[30].delay_i_n_0 ),
        .delta_i(\coarse_line[29].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_23 \coarse_line[31].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[31].delay_i_n_0 ),
        .delta_i(\coarse_line[30].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_24 \coarse_line[32].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[32].delay_i_n_0 ),
        .delta_i(\coarse_line[31].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_25 \coarse_line[33].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[33].delay_i_n_0 ),
        .delta_i(\coarse_line[32].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_26 \coarse_line[34].delay_i 
       (.Q(Q[11:10]),
        .clock_o(fine_clock_s[0]),
        .delta_i(\coarse_line[33].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_27 \coarse_line[3].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[3].delay_i_n_0 ),
        .delta_i(\coarse_line[2].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_28 \coarse_line[4].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[4].delay_i_n_0 ),
        .delta_i(\coarse_line[3].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_29 \coarse_line[5].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[5].delay_i_n_0 ),
        .delta_i(\coarse_line[4].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_30 \coarse_line[6].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[6].delay_i_n_0 ),
        .delta_i(\coarse_line[5].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_31 \coarse_line[7].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[7].delay_i_n_0 ),
        .delta_i(\coarse_line[6].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_32 \coarse_line[8].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[8].delay_i_n_0 ),
        .delta_i(\coarse_line[7].delay_i_n_0 ));
  system_tdc_sensor_0_0_coarse_delay_33 \coarse_line[9].delay_i 
       (.Q(Q[11:10]),
        .clock_o(\coarse_line[9].delay_i_n_0 ),
        .delta_i(\coarse_line[8].delay_i_n_0 ));
  system_tdc_sensor_0_0_fine_delay \fine_line[0].delay_i 
       (.Q(Q[9:0]),
        .clock_o(fine_clock_s[1]),
        .delta_i(fine_clock_s[0]));
  system_tdc_sensor_0_0_delay_line sampling
       (.clock_i(clock_i),
        .clock_o(clock_o),
        .data_o(data_o),
        .delta_i(fine_clock_s[1]));
endmodule

(* ORIG_REF_NAME = "tdc_sensor_v1_0" *) 
module system_tdc_sensor_0_0_tdc_sensor_v1_0
   (data_o,
    clock_o,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    clock_i,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output [31:0]data_o;
  output clock_o;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input clock_i;
  input s_axi_aclk;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire clock_i;
  wire clock_o;
  wire [31:0]data_o;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  system_tdc_sensor_0_0_tdc_sensor_v1_0_S_AXI tdc_sensor_v1_0_S_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .clock_i(clock_i),
        .clock_o(clock_o),
        .data_o(data_o),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "tdc_sensor_v1_0_S_AXI" *) 
module system_tdc_sensor_0_0_tdc_sensor_v1_0_S_AXI
   (data_o,
    clock_o,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    clock_i,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output [31:0]data_o;
  output clock_o;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input clock_i;
  input s_axi_aclk;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire U0_n_0;
  wire U0_n_1;
  wire U0_n_2;
  wire U0_n_3;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clock_i;
  wire clock_o;
  wire [1:0]coarse_delay_i;
  wire [31:0]data_o;
  wire p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  system_tdc_sensor_0_0_tdc U0
       (.D(reg_data_out),
        .Q({\slv_reg3_reg_n_0_[31] ,\slv_reg3_reg_n_0_[30] ,\slv_reg3_reg_n_0_[29] ,\slv_reg3_reg_n_0_[28] ,\slv_reg3_reg_n_0_[27] ,\slv_reg3_reg_n_0_[26] ,\slv_reg3_reg_n_0_[25] ,\slv_reg3_reg_n_0_[24] ,\slv_reg3_reg_n_0_[23] ,\slv_reg3_reg_n_0_[22] ,\slv_reg3_reg_n_0_[21] ,\slv_reg3_reg_n_0_[20] ,\slv_reg3_reg_n_0_[19] ,\slv_reg3_reg_n_0_[18] ,\slv_reg3_reg_n_0_[17] ,\slv_reg3_reg_n_0_[16] ,\slv_reg3_reg_n_0_[15] ,\slv_reg3_reg_n_0_[14] ,\slv_reg3_reg_n_0_[13] ,\slv_reg3_reg_n_0_[12] ,coarse_delay_i,\slv_reg3_reg_n_0_[9] ,\slv_reg3_reg_n_0_[8] ,\slv_reg3_reg_n_0_[7] ,\slv_reg3_reg_n_0_[6] ,\slv_reg3_reg_n_0_[5] ,\slv_reg3_reg_n_0_[4] ,\slv_reg3_reg_n_0_[3] ,\slv_reg3_reg_n_0_[2] ,\slv_reg3_reg_n_0_[1] ,\slv_reg3_reg_n_0_[0] }),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .axi_araddr(axi_araddr),
        .axi_awaddr(axi_awaddr),
        .\axi_awaddr_reg[3] (aw_en_reg_n_0),
        .clock_i(clock_i),
        .clock_o(clock_o),
        .data_o(data_o),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_araddr[2] (U0_n_3),
        .\s_axi_araddr[3] (U0_n_2),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[2] (U0_n_1),
        .\s_axi_awaddr[3] (U0_n_0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(U0_n_3),
        .Q(axi_araddr[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(U0_n_2),
        .Q(axi_araddr[3]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(U0_n_1),
        .Q(axi_awaddr[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(U0_n_0),
        .Q(axi_awaddr[3]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .O(slv_reg_rden));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(coarse_delay_i[0]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(coarse_delay_i[1]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
