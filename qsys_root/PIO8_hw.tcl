# TCL File Generated by Component Editor 12.1sp1
# Sun Jul 14 12:17:52 CST 2013
# DO NOT MODIFY


# 
# PIO8 "PIO8" v1.0
# zhizhou li 2013.07.14.12:17:52
# 8bit IO interface
# 

# 
# request TCL package from ACDS 12.1
# 
package require -exact qsys 12.1


# 
# module PIO8
# 
set_module_property DESCRIPTION "8bit IO interface"
set_module_property NAME PIO8
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Lophilo
set_module_property AUTHOR "zhizhou li"
set_module_property DISPLAY_NAME PIO8
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL PIO8
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file PIO8.v VERILOG PATH qsys_root/PIO8.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL PIO8
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file PIO8.v VERILOG PATH PIO8.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point mrst
# 
add_interface mrst reset end
set_interface_property mrst associatedClock mclk
set_interface_property mrst synchronousEdges DEASSERT
set_interface_property mrst ENABLED true

add_interface_port mrst rsi_MRST_reset reset Input 1


# 
# connection point mclk
# 
add_interface mclk clock end
set_interface_property mclk clockRate 0
set_interface_property mclk ENABLED true

add_interface_port mclk csi_MCLK_clk clk Input 1


# 
# connection point gpio
# 
add_interface gpio avalon end
set_interface_property gpio addressUnits WORDS
set_interface_property gpio associatedClock mclk
set_interface_property gpio associatedReset mrst
set_interface_property gpio bitsPerSymbol 8
set_interface_property gpio burstOnBurstBoundariesOnly false
set_interface_property gpio burstcountUnits WORDS
set_interface_property gpio explicitAddressSpan 0
set_interface_property gpio holdTime 0
set_interface_property gpio linewrapBursts false
set_interface_property gpio maximumPendingReadTransactions 0
set_interface_property gpio readLatency 0
set_interface_property gpio readWaitTime 1
set_interface_property gpio setupTime 0
set_interface_property gpio timingUnits Cycles
set_interface_property gpio writeWaitTime 0
set_interface_property gpio ENABLED true

add_interface_port gpio avs_gpio_writedata writedata Input 32
add_interface_port gpio avs_gpio_readdata readdata Output 32
add_interface_port gpio avs_gpio_address address Input 5
add_interface_port gpio avs_gpio_byteenable byteenable Input 4
add_interface_port gpio avs_gpio_write write Input 1
add_interface_port gpio avs_gpio_read read Input 1
add_interface_port gpio avs_gpio_waitrequest waitrequest Output 1
set_interface_assignment gpio embeddedsw.configuration.isFlash 0
set_interface_assignment gpio embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment gpio embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment gpio embeddedsw.configuration.isPrintableDevice 0


# 
# connection point IO_interface
# 
add_interface IO_interface conduit end
set_interface_property IO_interface associatedClock mclk
set_interface_property IO_interface associatedReset ""
set_interface_property IO_interface ENABLED true

add_interface_port IO_interface coe_P1 export Bidir 1
add_interface_port IO_interface coe_P2 export Bidir 1
add_interface_port IO_interface coe_P3 export Bidir 1
add_interface_port IO_interface coe_P4 export Bidir 1
add_interface_port IO_interface coe_P5 export Bidir 1
add_interface_port IO_interface coe_P6 export Bidir 1
add_interface_port IO_interface coe_P7 export Bidir 1
add_interface_port IO_interface coe_P0 export Bidir 1
