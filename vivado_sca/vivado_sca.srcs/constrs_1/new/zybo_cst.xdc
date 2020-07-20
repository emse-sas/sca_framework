############################
# On-board LED             #
############################


set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports reset_rtl]
set_property PACKAGE_PIN M14 [get_ports led_reset]
set_property IOSTANDARD LVCMOS33 [get_ports led_reset]
set_property PACKAGE_PIN M15 [get_ports led_start]
set_property IOSTANDARD LVCMOS33 [get_ports led_start]
set_property PACKAGE_PIN G14 [get_ports led_inv]
set_property IOSTANDARD LVCMOS33 [get_ports led_inv]
set_property PACKAGE_PIN D18 [get_ports led_done]
set_property IOSTANDARD LVCMOS33 [get_ports led_done]

create_pblock pblock_simple_aes_0
add_cells_to_pblock [get_pblocks pblock_simple_aes_0] [get_cells -quiet [list system_i/simple_aes_0]]
resize_pblock [get_pblocks pblock_simple_aes_0] -add {SLICE_X0Y0:SLICE_X43Y37}
resize_pblock [get_pblocks pblock_simple_aes_0] -add {DSP48_X0Y0:DSP48_X1Y13}
resize_pblock [get_pblocks pblock_simple_aes_0] -add {RAMB18_X0Y0:RAMB18_X2Y13}
resize_pblock [get_pblocks pblock_simple_aes_0] -add {RAMB36_X0Y0:RAMB36_X2Y6}
create_pblock pblock_tdc_bank_0
add_cells_to_pblock [get_pblocks pblock_tdc_bank_0] [get_cells -quiet [list system_i/tdc_bank_0]]
resize_pblock [get_pblocks pblock_tdc_bank_0] -add {SLICE_X10Y50:SLICE_X31Y65}
resize_pblock [get_pblocks pblock_tdc_bank_0] -add {RAMB18_X1Y20:RAMB18_X1Y25}
resize_pblock [get_pblocks pblock_tdc_bank_0] -add {RAMB36_X1Y10:RAMB36_X1Y12}
