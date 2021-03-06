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

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Web Edition"
// CREATED		"Sat Oct 20 20:15:52 2012"

module grid(
	M1_CLK,
	M1_RDN,
	M1_WRN,
	M2_CLK0,
	M2_CLK1,
	LCD_HSYNC,
	LCD_VSYNC,
	LCD_PCLK,
	LCD_DEN,
	ISI_MCLK,
	AC97_TX,
	AC97_FS,
	IO_A_OCN,
	IO_B_OCN,
	SPDIF_IN,
	AUDIO_SCLK,
	AUDIO_SDI,
	AUDIO_MCK,
	PNL_SDO,
	PNL_RDY,
	PNL_INT,
	DET_AIN,
	DET_AOUT,
	DET_DIN,
	DET_DOUT,
	M1_RSTN,
	LCD_DATA,
	M1_ADDR,
	M1_BEN,
	M1_CSN,
	M2_CSN,
	M2_WEN,
	M2_RASN,
	M2_CASN,
	M2_CKE,
	M2_CLKP,
	M2_CLKN,
	M2_ODT,
	ISI_HSYNC,
	ISI_VSYNC,
	ISI_PCLK,
	AC97_RX,
	AC97_CLK,
	LED_F0R,
	LED_F0G,
	LED_F0B,
	LED_F1R,
	LED_F1G,
	LED_F1B,
	LED_F2R,
	LED_F2G,
	LED_F2B,
	LED_F3R,
	LED_F3G,
	LED_F3B,
	M1_WAITN,
	IO_A_SCL,
	IO_B_SCL,
	SPDIF_OUT,
	AUDIO_SDO,
	AUDIO_SFS,
	PNL_SDI,
	PNL_SCLK,
	PNL_SLE,
	PLCD_HSYNC,
	PLCD_VSYNC,
	PLCD_VDEN,
	PLCD_PCLK,
	IO_A_PWREN,
	IO_B_PWREN,
	IO_A_HOE,
	IO_A_LOE,
	IO_B_HOE,
	IO_B_LOE,
	IO_A_SDA,
	IO_B_SDA,
	IO_B0,
	IO_B1,
	IO_B2,
	IO_B3,
	IO_B4,
	IO_B5,
	IO_B6,
	IO_B7,
	IO_B14,
	IO_B15,
	IO_B16,
	IO_B17,
	IO_B18,
	IO_B19,
	IO_B20,
	IO_B21,
	IO_B22,
	IO_B23,
	IO_B24,
	IO_A0,
	IO_A1,
	IO_A2,
	IO_A3,
	IO_A4,
	IO_A5,
	IO_A6,
	IO_A7,
	IO_A8,
	IO_A9,
	IO_A10,
	IO_A11,
	IO_A12,
	IO_A13,
	IO_A14,
	IO_A15,
	IO_A16,
	IO_A17,
	IO_A18,
	IO_A19,
	IO_A20,
	IO_A21,
	IO_A22,
	IO_A23,
	IO_A24,
	IO_A25,
	IO_B25,
	IO_B13,
	IO_B9,
	IO_B12,
	IO_B8,
	IO_B10,
	IO_B11,
	ISI_DATA,
	M1_DATA,
	M1_EINT,
	M2_ADDR,
	M2_BA,
	M2_DATA,
	M2_DM,
	M2_DQS,
	PLCD_B,
	PLCD_G,
	PLCD_R
);


input wire	M1_CLK;
input wire	M1_RDN;
input wire	M1_WRN;
input wire	M2_CLK0;
input wire	M2_CLK1;
input wire	LCD_HSYNC;
input wire	LCD_VSYNC;
input wire	LCD_PCLK;
input wire	LCD_DEN;
input wire	ISI_MCLK;
input wire	AC97_TX;
input wire	AC97_FS;
input wire	IO_A_OCN;
input wire	IO_B_OCN;
input wire	SPDIF_IN;
input wire	AUDIO_SCLK;
input wire	AUDIO_SDI;
input wire	AUDIO_MCK;
input wire	PNL_SDO;
input wire	PNL_RDY;
input wire	PNL_INT;
input wire	DET_AIN;
input wire	DET_AOUT;
input wire	DET_DIN;
input wire	DET_DOUT;
input wire	M1_RSTN;
input wire	[23:0] LCD_DATA;
input wire	[23:2] M1_ADDR;
input wire	[3:0] M1_BEN;
input wire	[3:0] M1_CSN;
output wire	M2_CSN;
output wire	M2_WEN;
output wire	M2_RASN;
output wire	M2_CASN;
output wire	M2_CKE;
output wire	M2_CLKP;
output wire	M2_CLKN;
output wire	M2_ODT;
output wire	ISI_HSYNC;
output wire	ISI_VSYNC;
output wire	ISI_PCLK;
output wire	AC97_RX;
output wire	AC97_CLK;
output wire	LED_F0R;
output wire	LED_F0G;
output wire	LED_F0B;
output wire	LED_F1R;
output wire	LED_F1G;
output wire	LED_F1B;
output wire	LED_F2R;
output wire	LED_F2G;
output wire	LED_F2B;
output wire	LED_F3R;
output wire	LED_F3G;
output wire	LED_F3B;
output wire	M1_WAITN;
output wire	IO_A_SCL;
output wire	IO_B_SCL;
output wire	SPDIF_OUT;
output wire	AUDIO_SDO;
output wire	AUDIO_SFS;
output wire	PNL_SDI;
output wire	PNL_SCLK;
output wire	PNL_SLE;
output wire	PLCD_HSYNC;
output wire	PLCD_VSYNC;
output wire	PLCD_VDEN;
output wire	PLCD_PCLK;
output wire	IO_A_PWREN;
output wire	IO_B_PWREN;
output wire	IO_A_HOE;
output wire	IO_A_LOE;
output wire	IO_B_HOE;
output wire	IO_B_LOE;
inout wire	IO_A_SDA;
inout wire	IO_B_SDA;
inout wire	IO_B0;
inout wire	IO_B1;
inout wire	IO_B2;
inout wire	IO_B3;
inout wire	IO_B4;
inout wire	IO_B5;
inout wire	IO_B6;
inout wire	IO_B7;
inout wire	IO_B14;
inout wire	IO_B15;
inout wire	IO_B16;
inout wire	IO_B17;
inout wire	IO_B18;
inout wire	IO_B19;
inout wire	IO_B20;
inout wire	IO_B21;
inout wire	IO_B22;
inout wire	IO_B23;
inout wire	IO_B24;
inout wire	IO_A0;
inout wire	IO_A1;
inout wire	IO_A2;
inout wire	IO_A3;
inout wire	IO_A4;
inout wire	IO_A5;
inout wire	IO_A6;
inout wire	IO_A7;
inout wire	IO_A8;
inout wire	IO_A9;
inout wire	IO_A10;
inout wire	IO_A11;
inout wire	IO_A12;
inout wire	IO_A13;
inout wire	IO_A14;
inout wire	IO_A15;
inout wire	IO_A16;
inout wire	IO_A17;
inout wire	IO_A18;
inout wire	IO_A19;
inout wire	IO_A20;
inout wire	IO_A21;
inout wire	IO_A22;
inout wire	IO_A23;
inout wire	IO_A24;
inout wire	IO_A25;
inout wire	IO_B25;
inout wire	IO_B13;
inout wire	IO_B9;
inout wire	IO_B12;
inout wire	IO_B8;
inout wire	IO_B10;
inout wire	IO_B11;
output wire	[11:0] ISI_DATA;
inout wire	[31:0] M1_DATA;
output wire	[9:0] M1_EINT;
output wire	[12:0] M2_ADDR;
output wire	[2:0] M2_BA;
inout wire	[15:0] M2_DATA;
output wire	[1:0] M2_DM;
inout wire	[1:0] M2_DQS;
output wire	[7:2] PLCD_B;
output wire	[7:2] PLCD_G;
output wire	[7:2] PLCD_R;

wire	SYNTHESIZED_WIRE_0;
wire	[0:11] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	[0:11] SYNTHESIZED_WIRE_6;

assign	AC97_RX = AUDIO_SDI;
assign	AC97_CLK = AUDIO_SCLK;
//assign	SPDIF_OUT = 0;
assign	AUDIO_SDO = AC97_TX;
assign	AUDIO_SFS = AC97_FS;
assign	PNL_SDI = 0;
assign	PNL_SCLK = 0;
assign	PNL_SLE = 0;
assign	PLCD_HSYNC = 0;
assign	PLCD_VSYNC = 0;
assign	PLCD_VDEN = 0;
assign	PLCD_PCLK = 0;
assign	IO_A_PWREN = 0;
assign	IO_B_PWREN = 0;
assign	IO_A_HOE = 1;
assign	IO_A_LOE = 1;
assign	IO_B_HOE = 1;
assign	IO_B_LOE = 1;
assign	PLCD_B = 6'b000000;
assign	PLCD_G = 6'b000000;
assign	PLCD_R = 6'b000000;
assign	SYNTHESIZED_WIRE_0 = 1;
assign	SYNTHESIZED_WIRE_8 = 0;
assign	SYNTHESIZED_WIRE_2 = 1;
assign	SYNTHESIZED_WIRE_4 = 1;
assign	SYNTHESIZED_WIRE_6 = 1;

wire     VCC;
wire     GND;
assign   VCC = 1;
assign   GND = 0; 

frontier	b2v_inst(
	.m0_RSTN(M1_RSTN),
	.m0_CLK(M1_CLK),
	.m0_RDN(M1_RDN),
	.m0_WRN(M1_WRN),

	.m0_ADDR(M1_ADDR),
	.m0_BEN(M1_BEN),
	.m0_CSN(M1_CSN),
	.m0_DATA(M1_DATA),
	.m0_WAITN(M1_WAITN),
	.led_f0_R(LED_F0R),
	.led_f0_G(LED_F0G),
	.led_f0_B(LED_F0B),
	.led_f1_R(LED_F1R),
	.led_f1_G(LED_F1G),
	.led_f1_B(LED_F1B),
	.led_f2_R(LED_F2R),
	.led_f2_G(LED_F2G),
	.led_f2_B(LED_F2B),
	.led_f3_R(LED_F3R),
	.led_f3_G(LED_F3G),
	.led_f3_B(LED_F3B),

//	.slot_a_P0(IO_A0),
//	.slot_a_P1(IO_A1),
//	.slot_a_P2(IO_A2),
//	.slot_a_P3(IO_A3),
//	.slot_a_P4(IO_A4),
//	.slot_a_P5(IO_A5),
//	.slot_a_P6(IO_A6),
//	.slot_a_P7(IO_A7),
//	.slot_a_P8(IO_A8),
//	.slot_a_P9(IO_A9),
//	.slot_a_P10(IO_A10),
//	.slot_a_P11(IO_A11),
//	.slot_a_P12(IO_A12),
//	.slot_a_P13(IO_A13),
//	.slot_a_P14(IO_A14),
//	.slot_a_P15(IO_A15),
//	.slot_a_P16(IO_A16),
//	.slot_a_P17(IO_A17),
//	.slot_a_P18(IO_A18),
//	.slot_a_P19(IO_A19),
//	.slot_a_P20(IO_A20),
//	.slot_a_P21(IO_A21),
//	.slot_a_P22(IO_A22),
//	.slot_a_P23(IO_A23),
//	.slot_a_P24(IO_A24),
//	.slot_a_P25(IO_A25),
//	.slot_b_P0(IO_B0),
//	.slot_b_P1(IO_B1),
//	.slot_b_P2(IO_B2),
//	.slot_b_P3(IO_B3),
//	.slot_b_P4(IO_B4),
//	.slot_b_P5(IO_B5),
//	.slot_b_P6(IO_B6),
//	.slot_b_P7(IO_B7),
//	.slot_b_P8(IO_B8),
//	.slot_b_P9(IO_B9),
//	.slot_b_P10(IO_B10),
//	.slot_b_P11(IO_B11),
//	.slot_b_P12(IO_B12),
//	.slot_b_P13(IO_B13),	
//	.slot_b_P14(IO_B14),
//	.slot_b_P15(IO_B15),
//	.slot_b_P16(IO_B16),
//	.slot_b_P17(IO_B17),
//	.slot_b_P18(IO_B18),
//	.slot_b_P19(IO_B19),
//	.slot_b_P20(IO_B20),
//	.slot_b_P21(IO_B21),
//	.slot_b_P22(IO_B22),
//	.slot_b_P23(IO_B23),
//	.slot_b_P24(IO_B24),
//	.slot_b_P25(IO_B25),
	
	
//	.am2301_0_sda    (IO_B15),         
//   .am2301_0_clk_1us(IO_B14),       
	
//	.am2301_1_sda    (IO_A15),         
// .am2301_1_clk_1us(IO_A14),  
	
//	.step_motor_driver_0_AX(IO_B13),
//	.step_motor_driver_0_AY(IO_B9),
//	.step_motor_driver_0_BX(IO_B12),
//	.step_motor_driver_0_BY(IO_B8),
//	.step_motor_driver_0_AE(IO_B10),
//	.step_motor_driver_0_BE(IO_B11),
//	
//	.step_motor_driver_1_AX(IO_A13),
//	.step_motor_driver_1_AY(IO_A9),
//	.step_motor_driver_1_BX(IO_A12),
//	.step_motor_driver_1_BY(IO_A8),
//	.step_motor_driver_1_AE(IO_A10),
//	.step_motor_driver_1_BE(IO_A11),
//	
//	.step_motor_driver_2_AX(IO_A16),
//	.step_motor_driver_2_AY(IO_A20),
//	.step_motor_driver_2_BX(IO_A17),
//	.step_motor_driver_2_BY(IO_A21),
//	.step_motor_driver_2_AE(IO_A19),
//	.step_motor_driver_2_BE(IO_A18),
	
//	.subdivision_step_motor_driver_0_AX (IO_B13),
//   .subdivision_step_motor_driver_0_AY (IO_B9), 
//   .subdivision_step_motor_driver_0_BX (IO_B12),
//   .subdivision_step_motor_driver_0_BY (IO_B8),
//   .subdivision_step_motor_driver_0_AE (IO_B10),
//   .subdivision_step_motor_driver_0_BE (IO_B11),
	
	
//	.brush_motor_driver_3_HX   (IO_A12),
//	.brush_motor_driver_3_HY   (IO_A8), 
//	.brush_motor_driver_2_HX   (IO_A13),
//	.brush_motor_driver_2_HY   (IO_A9),
//	.brush_motor_driver_1_HX   (IO_B12),
//	.brush_motor_driver_1_HY   (IO_B8),
//	.brush_motor_driver_0_HX   (IO_B13),
//	.brush_motor_driver_0_HY   (IO_B9),

//	.position_encoder_0_A  (IO_B24),  
//	.position_encoder_0_B  (IO_B23), 
//	.position_encoder_0_Z  (IO_B22),  
//	.position_encoder_3_A  (IO_B16),
//	.position_encoder_3_B  (IO_B16),
//	.position_encoder_3_Z  (GND),
	
//	.fan_motor_driver_0_export(IO_B1), 
//	.fan_motor_driver_1_export(humidifier), 
	
//	.sdif_IN             (SPDIF_IN),
// .sdif_OUT            (SPDIF_OUT),

//   .sht1x_sensor_1_sck(IO_A14),
//   .sht1x_sensor_1_sda(IO_A15), 
//	
//   .sht1x_sensor_0_sck(IO_B14),
//   .sht1x_sensor_0_sda(IO_B15), 
	
	
	 .qsys_serial_device_0_sle  (sle),  // qsys_serial_device_0.sle
    .qsys_serial_device_0_srdy (srdy), //                     .srdy
    .qsys_serial_device_0_clk  (clk),  //                     .clk
    .qsys_serial_device_0_sdi  (sdi),  //                     .sdi
    .qsys_serial_device_0_sdo  (sdo),   //                     .sdo

	
	.m0_EINT(M1_EINT));
	
	wire sle, srdy, clk, sdi, sdo;
	//for unit test
	 mse u0 (
        .qsys_serial_host_0_sdo   (sdi),   // qsys_serial_host_0.sdo
        .qsys_serial_host_0_sdi   (sdo),   //                   .sdi
        .qsys_serial_host_0_clk   (clk),   //                   .clk
        .qsys_serial_host_0_sle   (sle),   //                   .sle
        .qsys_serial_host_0_srdy  (srdy),  //                   .srdy
        .qsys_serial_host_0_reset (!M1_RSTN)  //                   .reset
    );


	
	
	wire humidifier;
	assign IO_A1 = !humidifier;
	wire position_zero;
	assign position_zero = IO_B17 & IO_B22;
	
//	test_rom rom (
//		.address(address),
//	   .read(read),
//	   .rd(rd)
//	);
	
//  assign IO_B10=0;
//  assign IO_B11=0;
//  assign IO_A10=0;
//  assign IO_A11=0;

//debug 
    
//AM2301 am2301_0(
//		// Qsys bus interface	
//		.rsi_MRST_reset(~M1_RSTN),
//		.csi_MCLK_clk(M1_CLK),
//		.avs_ctrl_readdata(M1_DATA),
//		// AM2301 interface
//	   .clk_1us(IO_B14),
//		//input sda_in,
//		.sda(IO_B15)
//);

//sht1x_sensor sht1x_test(
//		.rsi_MRST_reset(!M1_RSTN),
//		.csi_MCLK_clk(M1_CLK),
//
//		// sht1x interface
//	   .sck(IO_B14), // 100khz 
//		.sda(IO_B15),
//
//);

assign	ISI_HSYNC = SYNTHESIZED_WIRE_8[0] ? SYNTHESIZED_WIRE_0 : 1'bz;

assign	ISI_VSYNC = SYNTHESIZED_WIRE_8[0] ? SYNTHESIZED_WIRE_2 : 1'bz;

assign	ISI_PCLK = SYNTHESIZED_WIRE_8[0] ? SYNTHESIZED_WIRE_4 : 1'bz;




assign	ISI_DATA[11] = SYNTHESIZED_WIRE_8[0] ? SYNTHESIZED_WIRE_6[0] : 1'bz;
assign	ISI_DATA[10] = SYNTHESIZED_WIRE_8[1] ? SYNTHESIZED_WIRE_6[1] : 1'bz;
assign	ISI_DATA[9] = SYNTHESIZED_WIRE_8[2] ? SYNTHESIZED_WIRE_6[2] : 1'bz;
assign	ISI_DATA[8] = SYNTHESIZED_WIRE_8[3] ? SYNTHESIZED_WIRE_6[3] : 1'bz;
assign	ISI_DATA[7] = SYNTHESIZED_WIRE_8[4] ? SYNTHESIZED_WIRE_6[4] : 1'bz;
assign	ISI_DATA[6] = SYNTHESIZED_WIRE_8[5] ? SYNTHESIZED_WIRE_6[5] : 1'bz;
assign	ISI_DATA[5] = SYNTHESIZED_WIRE_8[6] ? SYNTHESIZED_WIRE_6[6] : 1'bz;
assign	ISI_DATA[4] = SYNTHESIZED_WIRE_8[7] ? SYNTHESIZED_WIRE_6[7] : 1'bz;
assign	ISI_DATA[3] = SYNTHESIZED_WIRE_8[8] ? SYNTHESIZED_WIRE_6[8] : 1'bz;
assign	ISI_DATA[2] = SYNTHESIZED_WIRE_8[9] ? SYNTHESIZED_WIRE_6[9] : 1'bz;
assign	ISI_DATA[1] = SYNTHESIZED_WIRE_8[10] ? SYNTHESIZED_WIRE_6[10] : 1'bz;
assign	ISI_DATA[0] = SYNTHESIZED_WIRE_8[11] ? SYNTHESIZED_WIRE_6[11] : 1'bz;


endmodule
