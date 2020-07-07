onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+system -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_21 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_20 -L axi_crossbar_v2_1_22 -L lib_thirdparty -L lib_round -L lib_rtl -L axi_protocol_converter_v2_1_21 -L axi_mmu_v2_1_19 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {system.udo}

run -all

endsim

quit -force
