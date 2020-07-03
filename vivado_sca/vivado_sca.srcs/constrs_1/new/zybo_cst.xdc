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