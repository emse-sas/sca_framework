-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_7 -sv \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_9 -sv \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_21 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_20 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_22 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
  "../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/lib_thirdparty \
  "../../../bd/system/ipshared/4ef0/src/crypt_pack.vhd" \
-endlib
-makelib xcelium_lib/lib_round \
  "../../../bd/system/ipshared/4ef0/src/add_roundkey.vhd" \
-endlib
-makelib xcelium_lib/lib_thirdparty \
  "../../../bd/system/ipshared/4ef0/src/state_reg.vhd" \
  "../../../bd/system/ipshared/4ef0/src/mix_prod.vhd" \
  "../../../bd/system/ipshared/4ef0/src/round_counter.vhd" \
  "../../../bd/system/ipshared/4ef0/src/test_pack.vhd" \
-endlib
-makelib xcelium_lib/lib_round \
  "../../../bd/system/ipshared/4ef0/src/mix_columns.vhd" \
  "../../../bd/system/ipshared/4ef0/src/sub_bytes.vhd" \
  "../../../bd/system/ipshared/4ef0/src/shift_rows.vhd" \
-endlib
-makelib xcelium_lib/lib_rtl \
  "../../../bd/system/ipshared/4ef0/src/key_expander.vhd" \
  "../../../bd/system/ipshared/4ef0/src/key_expansion_fsm.vhd" \
  "../../../bd/system/ipshared/4ef0/src/key_expansion.vhd" \
  "../../../bd/system/ipshared/4ef0/src/aes_fsm.vhd" \
  "../../../bd/system/ipshared/4ef0/src/aes_round.vhd" \
  "../../../bd/system/ipshared/4ef0/src/aes.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ipshared/4ef0/hdl/simple_aes_v1_0_S_AXI.vhd" \
  "../../../bd/system/ipshared/4ef0/hdl/simple_aes_v1_0.vhd" \
  "../../../bd/system/ip/system_simple_aes_0_0/sim/system_simple_aes_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_fifo_generator_0_0/sim/system_fifo_generator_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ipshared/436e/src/fifo_controller.vhd" \
  "../../../bd/system/ipshared/436e/hdl/fifo_controller_v1_0_S_AXI.vhd" \
  "../../../bd/system/ipshared/436e/hdl/fifo_controller_v1_0.vhd" \
  "../../../bd/system/ip/system_fifo_controller_0_0/sim/system_fifo_controller_0_0.vhd" \
  "../../../bd/system/ipshared/e58a/src/clock_mux.vhd" \
  "../../../bd/system/ipshared/e58a/src/coarse_block.vhd" \
  "../../../bd/system/ipshared/e58a/src/coarse_line.vhd" \
  "../../../bd/system/ipshared/e58a/src/fine_block.vhd" \
  "../../../bd/system/ipshared/e58a/src/fine_line.vhd" \
  "../../../bd/system/ipshared/e58a/src/sampling_block.vhd" \
  "../../../bd/system/ipshared/e58a/src/sampling_line.vhd" \
  "../../../bd/system/ipshared/e58a/src/tdc.vhd" \
  "../../../bd/system/ipshared/e58a/src/tdc_bank.vhd" \
  "../../../bd/system/ipshared/e58a/hdl/tdc_bank_v1_0_S_AXI.vhd" \
  "../../../bd/system/ipshared/e58a/hdl/tdc_bank_v1_0.vhd" \
  "../../../bd/system/ip/system_tdc_bank_0_1/sim/system_tdc_bank_0_1.vhd" \
  "../../../bd/system/sim/system.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_21 \
  "../../../../vivado_sca.srcs/sources_1/bd/system/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

