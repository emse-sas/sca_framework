vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_7
vlib riviera/processing_system7_vip_v1_0_9
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/lib_thirdparty
vlib riviera/lib_round
vlib riviera/lib_rtl
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_21
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_20
vlib riviera/axi_crossbar_v2_1_22
vlib riviera/axi_protocol_converter_v2_1_21

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 riviera/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 riviera/processing_system7_vip_v1_0_9
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap lib_thirdparty riviera/lib_thirdparty
vmap lib_round riviera/lib_round
vmap lib_rtl riviera/lib_rtl
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 riviera/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 riviera/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 riviera/axi_crossbar_v2_1_22
vmap axi_protocol_converter_v2_1_21 riviera/axi_protocol_converter_v2_1_21

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

vcom -work lib_thirdparty -93 \
"../../../bd/system/ipshared/469c/src/crypt_pack.vhd" \

vcom -work lib_round -93 \
"../../../bd/system/ipshared/469c/src/add_roundkey.vhd" \

vcom -work lib_thirdparty -93 \
"../../../bd/system/ipshared/469c/src/state_reg.vhd" \
"../../../bd/system/ipshared/469c/src/mix_prod.vhd" \
"../../../bd/system/ipshared/469c/src/round_counter.vhd" \
"../../../bd/system/ipshared/469c/src/test_pack.vhd" \

vcom -work lib_round -93 \
"../../../bd/system/ipshared/469c/src/mix_columns.vhd" \
"../../../bd/system/ipshared/469c/src/sub_bytes.vhd" \
"../../../bd/system/ipshared/469c/src/shift_rows.vhd" \

vcom -work lib_rtl -93 \
"../../../bd/system/ipshared/469c/src/key_expander.vhd" \
"../../../bd/system/ipshared/469c/src/key_expansion_fsm.vhd" \
"../../../bd/system/ipshared/469c/src/key_expansion.vhd" \
"../../../bd/system/ipshared/469c/src/aes_fsm.vhd" \
"../../../bd/system/ipshared/469c/src/aes_round.vhd" \
"../../../bd/system/ipshared/469c/src/aes.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/469c/hdl/simple_aes_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/469c/hdl/simple_aes_v1_0.vhd" \
"../../../bd/system/ip/system_simple_aes_0_0/sim/system_simple_aes_0_0.vhd" \

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

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/2ddc/src/clock_mux.vhd" \
"../../../bd/system/ipshared/2ddc/src/coarse_block.vhd" \
"../../../bd/system/ipshared/2ddc/src/coarse_delay.vhd" \
"../../../bd/system/ipshared/2ddc/src/delay_block.vhd" \
"../../../bd/system/ipshared/2ddc/src/delay_line.vhd" \
"../../../bd/system/ipshared/2ddc/src/fine_block.vhd" \
"../../../bd/system/ipshared/2ddc/src/fine_delay.vhd" \
"../../../bd/system/ipshared/2ddc/src/tdc.vhd" \
"../../../bd/system/ipshared/2ddc/hdl/tdc_sensor_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/2ddc/hdl/tdc_sensor_v1_0.vhd" \
"../../../bd/system/ip/system_tdc_sensor_0_0/sim/system_tdc_sensor_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \
"../../../bd/system/ip/system_fifo_generator_0_0/sim/system_fifo_generator_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/5101/hdl/fifo_controller_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/5101/hdl/fifo_controller_v1_0.vhd" \
"../../../bd/system/ip/system_fifo_controller_0_0/sim/system_fifo_controller_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_21  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

