// Copyright (C) 1991-2011 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.


// Generated by Quartus II 32-bit Version 11.1 (Build Build 259 01/25/2012)
// Created on Sun Oct 21 14:03:52 2012

AM2301 AM2301_inst
(
	.rsi_MRST_reset(rsi_MRST_reset_sig) ,	// input  rsi_MRST_reset_sig
	.csi_MCLK_clk(csi_MCLK_clk_sig) ,	// input  csi_MCLK_clk_sig
	.avs_ctrl_writedata(avs_ctrl_writedata_sig) ,	// input [31:0] avs_ctrl_writedata_sig
	.avs_ctrl_readdata(avs_ctrl_readdata_sig) ,	// output [31:0] avs_ctrl_readdata_sig
	.avs_ctrl_byteenable(avs_ctrl_byteenable_sig) ,	// input [3:0] avs_ctrl_byteenable_sig
	.avs_ctrl_address(avs_ctrl_address_sig) ,	// input [2:0] avs_ctrl_address_sig
	.avs_ctrl_write(avs_ctrl_write_sig) ,	// input  avs_ctrl_write_sig
	.avs_ctrl_read(avs_ctrl_read_sig) ,	// input  avs_ctrl_read_sig
	.avs_ctrl_waitrequest(avs_ctrl_waitrequest_sig) ,	// output  avs_ctrl_waitrequest_sig
	.clk_1us(clk_1us_sig) ,	// output  clk_1us_sig
	.sda(sda_sig) 	// inout  sda_sig
);

defparam AM2301_inst.high_width = 80;
defparam AM2301_inst.start_width = 1000;
defparam AM2301_inst.start = 0;
defparam AM2301_inst.start_read = 1;
defparam AM2301_inst.start_end = 2;
defparam AM2301_inst.start_low = 3;
defparam AM2301_inst.start_high = 4;
defparam AM2301_inst.bit_1_low = 5;
defparam AM2301_inst.bit_1_high = 6;
defparam AM2301_inst.bit_2_low = 7;
defparam AM2301_inst.bit_2_high = 8;
defparam AM2301_inst.bit_3_low = 9;
defparam AM2301_inst.bit_3_high = 10;
defparam AM2301_inst.bit_4_low = 11;
defparam AM2301_inst.bit_4_high = 12;
defparam AM2301_inst.bit_5_low = 13;
defparam AM2301_inst.bit_5_high = 14;
defparam AM2301_inst.bit_6_low = 15;
defparam AM2301_inst.bit_6_high = 16;
defparam AM2301_inst.bit_7_low = 17;
defparam AM2301_inst.bit_7_high = 18;
defparam AM2301_inst.bit_8_low = 19;
defparam AM2301_inst.bit_8_high = 20;
defparam AM2301_inst.bit_9_low = 21;
defparam AM2301_inst.bit_9_high = 22;
defparam AM2301_inst.bit_10_low = 23;
defparam AM2301_inst.bit_10_high = 24;
defparam AM2301_inst.bit_11_low = 25;
defparam AM2301_inst.bit_11_high = 26;
defparam AM2301_inst.bit_12_low = 27;
defparam AM2301_inst.bit_12_high = 28;
defparam AM2301_inst.bit_13_low = 29;
defparam AM2301_inst.bit_13_high = 30;
defparam AM2301_inst.bit_14_low = 31;
defparam AM2301_inst.bit_14_high = 32;
defparam AM2301_inst.bit_15_low = 33;
defparam AM2301_inst.bit_15_high = 34;
defparam AM2301_inst.bit_16_low = 35;
defparam AM2301_inst.bit_16_high = 36;
defparam AM2301_inst.bit_17_low = 37;
defparam AM2301_inst.bit_17_high = 38;
defparam AM2301_inst.bit_18_low = 39;
defparam AM2301_inst.bit_18_high = 40;
defparam AM2301_inst.bit_19_low = 41;
defparam AM2301_inst.bit_19_high = 42;
defparam AM2301_inst.bit_20_low = 43;
defparam AM2301_inst.bit_20_high = 44;
defparam AM2301_inst.bit_21_low = 45;
defparam AM2301_inst.bit_21_high = 46;
defparam AM2301_inst.bit_22_low = 47;
defparam AM2301_inst.bit_22_high = 48;
defparam AM2301_inst.bit_23_low = 49;
defparam AM2301_inst.bit_23_high = 50;
defparam AM2301_inst.bit_24_low = 51;
defparam AM2301_inst.bit_24_high = 52;
defparam AM2301_inst.bit_25_low = 53;
defparam AM2301_inst.bit_25_high = 54;
defparam AM2301_inst.bit_26_low = 55;
defparam AM2301_inst.bit_26_high = 56;
defparam AM2301_inst.bit_27_low = 57;
defparam AM2301_inst.bit_27_high = 58;
defparam AM2301_inst.bit_28_low = 59;
defparam AM2301_inst.bit_28_high = 60;
defparam AM2301_inst.bit_29_low = 61;
defparam AM2301_inst.bit_29_high = 62;
defparam AM2301_inst.bit_30_low = 63;
defparam AM2301_inst.bit_30_high = 64;
defparam AM2301_inst.bit_31_low = 65;
defparam AM2301_inst.bit_31_high = 66;
defparam AM2301_inst.bit_32_low = 67;
defparam AM2301_inst.bit_32_high = 68;
defparam AM2301_inst.ready = 90;
defparam AM2301_inst.time_2s = 2000000;
