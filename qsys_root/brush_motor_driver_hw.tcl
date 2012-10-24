# TCL File Generated by Component Editor 11.1sp2
# Sat Oct 20 19:49:39 CST 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | brush_motor_driver "brush_motor_driver" v1.0
# | Zhizhou Li 2012.10.20.19:49:39
# | brush motor driver
# | 
# | H:/My Documents/GitHub/grid/qsys_root/brush_motor_driver.v
# | 
# |    ./brush_motor_driver.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module brush_motor_driver
# | 
set_module_property DESCRIPTION "brush motor driver"
set_module_property NAME brush_motor_driver
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Lophilo
set_module_property AUTHOR "Zhizhou Li"
set_module_property DISPLAY_NAME brush_motor_driver
set_module_property TOP_LEVEL_HDL_FILE brush_motor_driver.v
set_module_property TOP_LEVEL_HDL_MODULE brush_motor_driver
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME brush_motor_driver
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file brush_motor_driver.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point MRST
# | 
add_interface MRST reset end
set_interface_property MRST associatedClock MCLK
set_interface_property MRST synchronousEdges DEASSERT

set_interface_property MRST ENABLED true

add_interface_port MRST rsi_MRST_reset reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point MCLK
# | 
add_interface MCLK clock end
set_interface_property MCLK clockRate 0

set_interface_property MCLK ENABLED true

add_interface_port MCLK csi_MCLK_clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point ctrl
# | 
add_interface ctrl avalon end
set_interface_property ctrl addressUnits WORDS
set_interface_property ctrl associatedClock MCLK
set_interface_property ctrl associatedReset MRST
set_interface_property ctrl bitsPerSymbol 8
set_interface_property ctrl burstOnBurstBoundariesOnly false
set_interface_property ctrl burstcountUnits WORDS
set_interface_property ctrl explicitAddressSpan 0
set_interface_property ctrl holdTime 0
set_interface_property ctrl linewrapBursts false
set_interface_property ctrl maximumPendingReadTransactions 0
set_interface_property ctrl readLatency 0
set_interface_property ctrl readWaitTime 1
set_interface_property ctrl setupTime 0
set_interface_property ctrl timingUnits Cycles
set_interface_property ctrl writeWaitTime 0

set_interface_property ctrl ENABLED true

add_interface_port ctrl avs_ctrl_writedata writedata Input 32
add_interface_port ctrl avs_ctrl_readdata readdata Output 32
add_interface_port ctrl avs_ctrl_byteenable byteenable Input 4
add_interface_port ctrl avs_ctrl_address address Input 3
add_interface_port ctrl avs_ctrl_write write Input 1
add_interface_port ctrl avs_ctrl_read read Input 1
add_interface_port ctrl avs_ctrl_waitrequest waitrequest Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point brush_motor
# | 
add_interface brush_motor conduit end

set_interface_property brush_motor ENABLED true

add_interface_port brush_motor HX export Output 1
add_interface_port brush_motor HY export Output 1
# | 
# +-----------------------------------