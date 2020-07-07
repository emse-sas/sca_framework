# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_HIGHADDR" -parent ${Page_0}

  ipgui::add_param $IPINST -name "coarse_len_g"
  ipgui::add_param $IPINST -name "fine_len_g"
  ipgui::add_param $IPINST -name "sampling_len_g"
  ipgui::add_param $IPINST -name "count_tdc_g"
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH"
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH"

}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.coarse_len_g { PARAM_VALUE.coarse_len_g } {
	# Procedure called to update coarse_len_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.coarse_len_g { PARAM_VALUE.coarse_len_g } {
	# Procedure called to validate coarse_len_g
	return true
}

proc update_PARAM_VALUE.count_tdc_g { PARAM_VALUE.count_tdc_g } {
	# Procedure called to update count_tdc_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.count_tdc_g { PARAM_VALUE.count_tdc_g } {
	# Procedure called to validate count_tdc_g
	return true
}

proc update_PARAM_VALUE.fine_len_g { PARAM_VALUE.fine_len_g } {
	# Procedure called to update fine_len_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fine_len_g { PARAM_VALUE.fine_len_g } {
	# Procedure called to validate fine_len_g
	return true
}

proc update_PARAM_VALUE.sampling_len_g { PARAM_VALUE.sampling_len_g } {
	# Procedure called to update sampling_len_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sampling_len_g { PARAM_VALUE.sampling_len_g } {
	# Procedure called to validate sampling_len_g
	return true
}

proc update_PARAM_VALUE.C_S_AXI_BASEADDR { PARAM_VALUE.C_S_AXI_BASEADDR } {
	# Procedure called to update C_S_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_BASEADDR { PARAM_VALUE.C_S_AXI_BASEADDR } {
	# Procedure called to validate C_S_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_HIGHADDR { PARAM_VALUE.C_S_AXI_HIGHADDR } {
	# Procedure called to update C_S_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_HIGHADDR { PARAM_VALUE.C_S_AXI_HIGHADDR } {
	# Procedure called to validate C_S_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.coarse_len_g { MODELPARAM_VALUE.coarse_len_g PARAM_VALUE.coarse_len_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.coarse_len_g}] ${MODELPARAM_VALUE.coarse_len_g}
}

proc update_MODELPARAM_VALUE.fine_len_g { MODELPARAM_VALUE.fine_len_g PARAM_VALUE.fine_len_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fine_len_g}] ${MODELPARAM_VALUE.fine_len_g}
}

proc update_MODELPARAM_VALUE.sampling_len_g { MODELPARAM_VALUE.sampling_len_g PARAM_VALUE.sampling_len_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sampling_len_g}] ${MODELPARAM_VALUE.sampling_len_g}
}

proc update_MODELPARAM_VALUE.count_tdc_g { MODELPARAM_VALUE.count_tdc_g PARAM_VALUE.count_tdc_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.count_tdc_g}] ${MODELPARAM_VALUE.count_tdc_g}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}
