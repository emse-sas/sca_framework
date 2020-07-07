vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_7
vlib modelsim_lib/msim/processing_system7_vip_v1_0_9
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_21
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_20
vlib modelsim_lib/msim/axi_crossbar_v2_1_22
vlib modelsim_lib/msim/lib_thirdparty
vlib modelsim_lib/msim/lib_round
vlib modelsim_lib/msim/lib_rtl
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_21
vlib modelsim_lib/msim/axi_mmu_v2_1_19

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 modelsim_lib/msim/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 modelsim_lib/msim/processing_system7_vip_v1_0_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 modelsim_lib/msim/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 modelsim_lib/msim/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 modelsim_lib/msim/axi_crossbar_v2_1_22
vmap lib_thirdparty modelsim_lib/msim/lib_thirdparty
vmap lib_round modelsim_lib/msim/lib_round
vmap lib_rtl modelsim_lib/msim/lib_rtl
vmap axi_protocol_converter_v2_1_21 modelsim_lib/msim/axi_protocol_converter_v2_1_21
vmap axi_mmu_v2_1_19 modelsim_lib/msim/axi_mmu_v2_1_19

vlog -work xilinx_vip  -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9  -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \

vcom -work lib_thirdparty  -93 \
"../../../bd/system/ipshared/4ef0/src/crypt_pack.vhd" \

vcom -work lib_round  -93 \
"../../../bd/system/ipshared/4ef0/src/add_roundkey.vhd" \

vcom -work lib_thirdparty  -93 \
"../../../bd/system/ipshared/4ef0/src/state_reg.vhd" \
"../../../bd/system/ipshared/4ef0/src/mix_prod.vhd" \
"../../../bd/system/ipshared/4ef0/src/round_counter.vhd" \
"../../../bd/system/ipshared/4ef0/src/test_pack.vhd" \

vcom -work lib_round  -93 \
"../../../bd/system/ipshared/4ef0/src/mix_columns.vhd" \
"../../../bd/system/ipshared/4ef0/src/sub_bytes.vhd" \
"../../../bd/system/ipshared/4ef0/src/shift_rows.vhd" \

vcom -work lib_rtl  -93 \
"../../../bd/system/ipshared/4ef0/src/key_expander.vhd" \
"../../../bd/system/ipshared/4ef0/src/key_expansion_fsm.vhd" \
"../../../bd/system/ipshared/4ef0/src/key_expansion.vhd" \
"../../../bd/system/ipshared/4ef0/src/aes_fsm.vhd" \
"../../../bd/system/ipshared/4ef0/src/aes_round.vhd" \
"../../../bd/system/ipshared/4ef0/src/aes.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ipshared/4ef0/hdl/simple_aes_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/4ef0/hdl/simple_aes_v1_0.vhd" \
"../../../bd/system/ip/system_simple_aes_0_0/sim/system_simple_aes_0_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_fifo_generator_0_0/sim/system_fifo_generator_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ipshared/436e/src/fifo_controller.vhd" \
"../../../bd/system/ipshared/436e/hdl/fifo_controller_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/436e/hdl/fifo_controller_v1_0.vhd" \
"../../../bd/system/ip/system_fifo_controller_0_0/sim/system_fifo_controller_0_0.vhd" \
"../../../bd/system/ipshared/c8b2/src/clock_mux.vhd" \
"../../../bd/system/ipshared/c8b2/src/coarse_block.vhd" \
"../../../bd/system/ipshared/c8b2/src/coarse_line.vhd" \
"../../../bd/system/ipshared/c8b2/src/fine_block.vhd" \
"../../../bd/system/ipshared/c8b2/src/fine_line.vhd" \
"../../../bd/system/ipshared/c8b2/src/sampling_block.vhd" \
"../../../bd/system/ipshared/c8b2/src/sampling_line.vhd" \
"../../../bd/system/ipshared/c8b2/src/tdc.vhd" \
"../../../bd/system/ipshared/c8b2/src/tdc_bank.vhd" \
"../../../bd/system/ipshared/c8b2/hdl/tdc_bank_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/c8b2/hdl/tdc_bank_v1_0.vhd" \
"../../../bd/system/ip/system_tdc_bank_0_1/sim/system_tdc_bank_0_1.vhd" \

vlog -work axi_protocol_converter_v2_1_21  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work axi_mmu_v2_1_19  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/45eb/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl" "+incdir+../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8b3d" "+incdir+D:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_s00_mmu_0/sim/system_s00_mmu_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

