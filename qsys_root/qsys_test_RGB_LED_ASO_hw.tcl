# TCL File Generated by Component Editor 11.1sp2
# Tue Jul 17 17:07:28 CST 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | qsys_test_RGB_LED_ASO "Avalon-ST Test RGB LED Source" v1.0
# | Shyu Lee 2012.07.17.17:07:28
# | 
# | 
# | D:/Lophilo/grid/qsys_root/qsys_test_RGB_LED_ASO.v
# | 
# |    ./qsys_test_RGB_LED_ASO.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module qsys_test_RGB_LED_ASO
# | 
set_module_property NAME qsys_test_RGB_LED_ASO
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Lophilo/Test
set_module_property AUTHOR "Shyu Lee"
set_module_property DISPLAY_NAME "Avalon-ST Test RGB LED Source"
set_module_property TOP_LEVEL_HDL_FILE qsys_test_RGB_LED_ASO.v
set_module_property TOP_LEVEL_HDL_MODULE qsys_test_RGB_LED_ASO
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME qsys_test_RGB_LED_ASO
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file qsys_test_RGB_LED_ASO.v {SYNTHESIS SIMULATION}
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
# | connection point LEDS
# | 
add_interface LEDS avalon_streaming start
set_interface_property LEDS associatedClock MCLK
set_interface_property LEDS associatedReset MRST
set_interface_property LEDS dataBitsPerSymbol 8
set_interface_property LEDS errorDescriptor ""
set_interface_property LEDS firstSymbolInHighOrderBits true
set_interface_property LEDS maxChannel 0
set_interface_property LEDS readyLatency 0

set_interface_property LEDS ENABLED true

add_interface_port LEDS aso_LEDS_data data Output 24
add_interface_port LEDS aso_LEDS_valid valid Output 1
add_interface_port LEDS aso_LEDS_ready ready Input 1
# | 
# +-----------------------------------
