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
	input 	M1_CLK,
	input 	M1_RDN,
	input 	M1_WRN,
	input 	M2_CLK0,
	input 	M2_CLK1,
	input 	LCD_HSYNC,
	input 	LCD_VSYNC,
	input 	LCD_PCLK,
	input 	LCD_DEN,
	input 	ISI_MCLK,
	input 	AC97_TX,
	input 	AC97_FS,
	input 	IO_A_OCN,
	input 	IO_B_OCN,
	input 	SPDIF_IN,
	input 	AUDIO_SCLK,
	input 	AUDIO_SDI,
	input 	AUDIO_MCK,
	input 	PNL_SDO,
	input 	PNL_RDY,
	input 	PNL_INT,
	input 	DET_AIN,
	input 	DET_AOUT,
	input 	DET_DIN,
	input 	DET_DOUT,
	input 	M1_RSTN,
	input 	[23:0] LCD_DATA,
	input 	[23:2] M1_ADDR,
	input 	[3:0] M1_BEN,
	input 	[3:0] M1_CSN,
	output 	M2_CSN,
	output 	M2_WEN,
	output 	M2_RASN,
	output 	M2_CASN,
	output 	M2_CKE,
	output 	M2_CLKP,
	output 	M2_CLKN,
	output 	M2_ODT,
	output 	ISI_HSYNC,
	output 	ISI_VSYNC,
	output 	ISI_PCLK,
	output 	AC97_RX,
	output 	AC97_CLK,
	output 	LED_F0R,
	output 	LED_F0G,
	output 	LED_F0B,
	output 	LED_F1R,
	output 	LED_F1G,
	output 	LED_F1B,
	output 	LED_F2R,
	output 	LED_F2G,
	output 	LED_F2B,
	output 	LED_F3R,
	output 	LED_F3G,
	output 	LED_F3B,
	output 	M1_WAITN,
	output 	IO_A_SCL,
	output 	IO_B_SCL,
	output 	SPDIF_OUT,
	output 	AUDIO_SDO,
	output 	AUDIO_SFS,
	output 	PNL_SDI,
	output 	PNL_SCLK,
	output 	PNL_SLE,
	output 	PLCD_HSYNC,
	output 	PLCD_VSYNC,
	output 	PLCD_VDEN,
	output 	PLCD_PCLK,
	output 	IO_A_PWREN,
	output 	IO_B_PWREN,
	output 	IO_A_HOE,
	output 	IO_A_LOE,
	output 	IO_B_HOE,
	output 	IO_B_LOE,
	inout 	IO_A_SDA,
	inout 	IO_B_SDA,
	inout 	IO_B0,
	inout 	IO_B1,
	inout 	IO_B2,
	inout 	IO_B3,
	inout 	IO_B4,
	inout 	IO_B5,
	inout 	IO_B6,
	inout 	IO_B7,
	inout 	IO_B14,
	inout 	IO_B15,
	inout 	IO_B16,
	inout 	IO_B17,
	inout 	IO_B18,
	inout 	IO_B19,
	inout 	IO_B20,
	inout 	IO_B21,
	inout 	IO_B22,
	inout 	IO_B23,
	inout 	IO_B24,
	inout 	IO_A0,
	inout 	IO_A1,
	inout 	IO_A2,
	inout 	IO_A3,
	inout 	IO_A4,
	inout 	IO_A5,
	inout 	IO_A6,
	inout 	IO_A7,
	inout 	IO_A8,
	inout 	IO_A9,
	inout 	IO_A10,
	inout 	IO_A11,
	inout 	IO_A12,
	inout 	IO_A13,
	inout 	IO_A14,
	inout 	IO_A15,
	inout 	IO_A16,
	inout 	IO_A17,
	inout 	IO_A18,
	inout 	IO_A19,
	inout 	IO_A20,
	inout 	IO_A21,
	inout 	IO_A22,
	inout 	IO_A23,
	inout 	IO_A24,
	inout 	IO_A25,
	inout 	IO_B25,
	inout 	IO_B13,
	inout 	IO_B9,
	inout 	IO_B12,
	inout 	IO_B8,
	inout 	IO_B10,
	inout 	IO_B11,
	output 	[11:0] ISI_DATA,
	inout 	[31:0] M1_DATA,
	output 	[9:0] M1_EINT,
	output 	[12:0] M2_ADDR,
	output 	[2:0] M2_BA,
	inout 	[15:0] M2_DATA,
	output 	[1:0] M2_DM,
	inout 	[1:0] M2_DQS,
//	output 	[7:2] PLCD_B,
//	output 	[7:2] PLCD_G,
//	output 	[7:2] PLCD_R

	output  MSE_RESETN,	
	input   MSE_RSTOUT,	
	output  MSE_SCLK,	
	inout  [6:0] MSE_SDI,	
	inout  [6:0] MSE_SDO,		
	inout  [6:0] MSE_SLE,		
	inout  [6:0] MSE_SRDY	

);




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
	
	.step_motor_driver_0_AX(step_motor_driver_0_AX),
	.step_motor_driver_0_AY(step_motor_driver_0_AY),
	.step_motor_driver_0_BX(step_motor_driver_0_BX),
	.step_motor_driver_0_BY(step_motor_driver_0_BY),
	.step_motor_driver_0_AE(),
	.step_motor_driver_0_BE(),
	
	.step_motor_driver_1_AX(step_motor_driver_1_AX),
	.step_motor_driver_1_AY(step_motor_driver_1_AY),
	.step_motor_driver_1_BX(step_motor_driver_1_BX),
	.step_motor_driver_1_BY(step_motor_driver_1_BY),
	.step_motor_driver_1_AE(),
	.step_motor_driver_1_BE(),
	
	.step_motor_driver_2_AX(step_motor_driver_2_AX),
	.step_motor_driver_2_AY(step_motor_driver_2_AY),
	.step_motor_driver_2_BX(step_motor_driver_2_BX),
	.step_motor_driver_2_BY(step_motor_driver_2_BY),
	.step_motor_driver_2_AE(),
	.step_motor_driver_2_BE(),
	
	.step_motor_driver_3_AX(step_motor_driver_3_AX),            
   .step_motor_driver_3_AY(step_motor_driver_3_AY),           
   .step_motor_driver_3_BX(step_motor_driver_3_BX),            
   .step_motor_driver_3_BY(step_motor_driver_3_BY),   
   .step_motor_driver_3_AE(),       
   .step_motor_driver_3_BE(),             
	
	
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

   .sht1x_sensor_0_sck(MSE_SDI[4]),
   .sht1x_sensor_0_sda(MSE_SLE[4]), 
	.sht1x_sensor_0_dir(MSE_SDO[4]),      
   .sht1x_sensor_1_sck(MSE_SDI[5]),
   .sht1x_sensor_1_sda(MSE_SLE[5]), 
   .sht1x_sensor_1_dir(MSE_SDO[5]),  

	 .qsys_serial_device_0_sle  (sle),  // qsys_serial_device_0.sle
    .qsys_serial_device_0_srdy (srdy), //                     .srdy
    .qsys_serial_device_0_clk  (clk),  //                     .clk
    .qsys_serial_device_0_sdi  (sdi),  //                     .sdi
    .qsys_serial_device_0_sdo  (sdo),   //                     .sdo

	
	.m0_EINT(M1_EINT));
	
	wire sle, srdy, clk, sdi, sdo;
	//for unit test
//	 mse u0 (
//        .qsys_serial_host_0_sdo   (sdi),   // qsys_serial_host_0.sdo
//        .qsys_serial_host_0_sdi   (sdo),   //                   .sdi
//        .qsys_serial_host_0_clk   (clk),   //                   .clk
//        .qsys_serial_host_0_sle   (sle),   //                   .sle
//        .qsys_serial_host_0_srdy  (srdy),  //                   .srdy
//        .qsys_serial_host_0_reset (!M1_RSTN)  //                   .reset
//    );

	assign MSE_SDI[6] = sdo;
	assign sdi=MSE_SDO[6];
	assign MSE_SDO[6] = 1'bz;
	assign MSE_SCLK = clk;
	assign MSE_SLE[6] = sle;
	assign srdy = MSE_SRDY[6];
	assign MSE_SRDY[6] = 1'bz;
	assign MSE_RESETN = M1_RSTN;
	
//	qsys u0 (
//        .qsys_serial_host_sdo   (MSE_SDO[6]),   // qsys_serial_host.sdo
//        .qsys_serial_host_sdi   (MSE_SDI[6]),   //                 .sdi
//        .qsys_serial_host_clk   (MSE_SCLK),   //                 .clk
//        .qsys_serial_host_sle   (MSE_SLE[6]),   //                 .sle
//        .qsys_serial_host_srdy  (MSE_SRDY[6]),  //                 .srdy
//        .qsys_serial_host_reset (!MSE_RESETN)  //                 .reset
//   );

	
	wire step_motor_driver_0_AX;
	wire step_motor_driver_0_AY;
	wire step_motor_driver_0_BX;
	wire step_motor_driver_0_BY;
	wire step_motor_driver_1_AX;
	wire step_motor_driver_1_AY;
	wire step_motor_driver_1_BX;
	wire step_motor_driver_1_BY;
	wire step_motor_driver_2_AX;
	wire step_motor_driver_2_AY;
	wire step_motor_driver_2_BX;
	wire step_motor_driver_2_BY;
	wire step_motor_driver_3_AX;
	wire step_motor_driver_3_AY;
	wire step_motor_driver_3_BX;
	wire step_motor_driver_3_BY;

	assign MSE_SDI[0] = step_motor_driver_0_AX;
	assign MSE_SDI[1] = step_motor_driver_0_AY;
	assign MSE_SDI[2] = step_motor_driver_0_BX;
	assign MSE_SDI[3] = step_motor_driver_0_BY;
	
	assign MSE_SLE[0] = step_motor_driver_1_AX;
	assign MSE_SLE[1] = step_motor_driver_1_AY;
	assign MSE_SLE[2] = step_motor_driver_1_BX;
	assign MSE_SLE[3] = step_motor_driver_1_BY;
	
	assign MSE_SRDY[0] = step_motor_driver_2_AX;
	assign MSE_SRDY[1] = step_motor_driver_2_AY;
	assign MSE_SRDY[2] = step_motor_driver_2_BX;
	assign MSE_SRDY[3] = step_motor_driver_2_BY;
	
	assign MSE_SDO[0]  = step_motor_driver_3_AX;
	assign MSE_SDO[1]  = step_motor_driver_3_AY;
	assign MSE_SDO[2]  = step_motor_driver_3_BX;
	assign MSE_SDO[3]  = step_motor_driver_3_BY;	
	
	
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
//wire [7:0] aa;
//assign aa = 8'b11010110;
//wire [7:0] data;
//wire port_clk;
//wire port_rst;
//port_io_interface io (
//.clk(M1_CLK),
//.rst(!M1_RSTN),
//.port0_d(8'b00000000),
////.port1_dir(),
////.port2_dir(),
//.port0(aa),//{B8,B9,B10,B11,B12,B13,B14,B15}),
////port1,
////port2,
//.port_clk(port_clk),
//.port_rst(port_rst),
//.data(data)
//);
//
//interface_port_io oi(
//.port_clk(port_clk),
//.port_rst(port_rst),
//.data(data),
//	
//.port0({IO_B0,IO_B1,IO_B2,IO_B3,IO_B4,IO_B5,IO_B6,IO_B7}),
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
