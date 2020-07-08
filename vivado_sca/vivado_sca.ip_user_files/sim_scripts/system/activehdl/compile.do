vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_7
vlib activehdl/processing_system7_vip_v1_0_9
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_21
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_20
vlib activehdl/axi_crossbar_v2_1_22
vlib activehdl/lib_thirdparty
vlib activehdl/lib_round
vlib activehdl/lib_rtl
vlib activehdl/axi_protocol_converter_v2_1_21

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 activehdl/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 activehdl/processing_system7_vip_v1_0_9
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 activehdl/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 activehdl/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 activehdl/axi_crossbar_v2_1_22
vmap lib_thirdparty activehdl/lib_thirdparty
vmap lib_round activehdl/lib_round
vmap lib_rtl activehdl/lib_rtl
vmap axi_protocol_converter_v2_1_21 activehdl/axi_protocol_converter_v2_1_21

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9  -sv2k12 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \

vcom -work lib_thirdparty -93 \
"../../../bd/system/ipshared/8ba1/src/crypt_pack.vhd" \

vcom -work lib_round -93 \
"../../../bd/system/ipshared/8ba1/src/add_roundkey.vhd" \

vcom -work lib_thirdparty -93 \
"../../../bd/system/ipshared/8ba1/src/state_reg.vhd" \
"../../../bd/system/ipshared/8ba1/src/mix_prod.vhd" \
"../../../bd/system/ipshared/8ba1/src/round_counter.vhd" \
"../../../bd/system/ipshared/8ba1/src/test_pack.vhd" \

vcom -work lib_round -93 \
"../../../bd/system/ipshared/8ba1/src/mix_columns.vhd" \
"../../../bd/system/ipshared/8ba1/src/sub_bytes.vhd" \
"../../../bd/system/ipshared/8ba1/src/shift_rows.vhd" \

vcom -work lib_rtl -93 \
"../../../bd/system/ipshared/8ba1/src/key_expander.vhd" \
"../../../bd/system/ipshared/8ba1/src/key_expansion_fsm.vhd" \
"../../../bd/system/ipshared/8ba1/src/key_expansion.vhd" \
"../../../bd/system/ipshared/8ba1/src/aes_fsm.vhd" \
"../../../bd/system/ipshared/8ba1/src/aes_round.vhd" \
"../../../bd/system/ipshared/8ba1/src/aes.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/8ba1/hdl/simple_aes_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/8ba1/hdl/simple_aes_v1_0.vhd" \
"../../../bd/system/ip/system_simple_aes_0_0/sim/system_simple_aes_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_fifo_generator_0_0/sim/system_fifo_generator_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/4c9e/src/fifo_controller.vhd" \
"../../../bd/system/ipshared/4c9e/hdl/fifo_controller_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/4c9e/hdl/fifo_controller_v1_0.vhd" \
"../../../bd/system/ip/system_fifo_controller_0_0/sim/system_fifo_controller_0_0.vhd" \
"../../../bd/system/ipshared/20db/src/clock_mux.vhd" \
"../../../bd/system/ipshared/20db/src/coarse_block.vhd" \
"../../../bd/system/ipshared/20db/src/coarse_line.vhd" \
"../../../bd/system/ipshared/20db/src/fine_block.vhd" \
"../../../bd/system/ipshared/20db/src/fine_line.vhd" \
"../../../bd/system/ipshared/20db/src/sampling_block.vhd" \
"../../../bd/system/ipshared/20db/src/sampling_line.vhd" \
"../../../bd/system/ipshared/20db/src/tdc.vhd" \
"../../../bd/system/ipshared/20db/src/tdc_bank.vhd" \
"../../../bd/system/ipshared/20db/hdl/tdc_bank_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/20db/hdl/tdc_bank_v1_0.vhd" \
"../../../bd/system/ip/system_tdc_bank_0_1/sim/system_tdc_bank_0_1.vhd" \

vlog -work axi_protocol_converter_v2_1_21  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

