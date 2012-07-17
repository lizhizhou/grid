## Generated SDC file "XEM-S91-U6.sdc"

## Copyright (C) 1991-2011 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 10.0 Build 262 08/18/2010 SJ Full Version"

## DATE    "Wed Feb 1 00:00:01 2012"

##
## DEVICE  "EP4CE15F23C8"
##

#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3

#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {QSYS_M0} -period 6.000 -waveform { 0.000 3.000 } [get_pins *cso_M1CLK_clk]
create_clock -name {HPS_Clocks} -period 15.000 -waveform { 0.000 7.500 } [get_ports {M1_CLK M2_CLK0 M2_CLK1 ISI_MCLK}]
create_clock -name {LCD_Clock} -period 15.000 -waveform { 0.000 10.000 } [get_ports {LCD_PCLK}]
create_clock -name {AC97_Clock} -period 40.000 -waveform { 0.000 20.000 } [get_ports {LDB_AC97_MCLK}]

#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks -create_base_clocks

#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************
