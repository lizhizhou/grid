// frontier.v


`timescale 1 ps / 1 ps
module frontier (
		output wire        am2301_1_clk_1us,          //             am2301_1.clk_1us
		inout  wire        am2301_1_sda,              //                     .sda
		output wire        led_f0_G,                  //               led_f0.G
		output wire        led_f0_R,                  //                     .R
		output wire        led_f0_B,                  //                     .B
		output wire        led_f1_B,                  //               led_f1.B
		output wire        led_f1_G,                  //                     .G
		output wire        led_f1_R,                  //                     .R
		input  wire        shield_ctrl_B_OCN,         //          shield_ctrl.B_OCN
		output wire        shield_ctrl_A_HOE,         //                     .A_HOE
		output wire        shield_ctrl_B_LOE,         //                     .B_LOE
		output wire        shield_ctrl_A_LOE,         //                     .A_LOE
		output wire        shield_ctrl_B_PWREN,       //                     .B_PWREN
		output wire        shield_ctrl_A_PWREN,       //                     .A_PWREN
		output wire        shield_ctrl_B_HOE,         //                     .B_HOE
		input  wire        shield_ctrl_A_OCN,         //                     .A_OCN
		output wire        step_motor_driver_4_AX,    //  step_motor_driver_4.AX
		output wire        step_motor_driver_4_BE,    //                     .BE
		output wire        step_motor_driver_4_BX,    //                     .BX
		output wire        step_motor_driver_4_AY,    //                     .AY
		output wire        step_motor_driver_4_AE,    //                     .AE
		output wire        step_motor_driver_4_BY,    //                     .BY
		output wire        step_motor_driver_2_BE,    //  step_motor_driver_2.BE
		output wire        step_motor_driver_2_AY,    //                     .AY
		output wire        step_motor_driver_2_AX,    //                     .AX
		output wire        step_motor_driver_2_BX,    //                     .BX
		output wire        step_motor_driver_2_AE,    //                     .AE
		output wire        step_motor_driver_2_BY,    //                     .BY
		output wire        fan_motor_driver_0_export, //   fan_motor_driver_0.export
		output wire        step_motor_driver_3_AE,    //  step_motor_driver_3.AE
		output wire        step_motor_driver_3_BX,    //                     .BX
		output wire        step_motor_driver_3_AY,    //                     .AY
		output wire        step_motor_driver_3_BE,    //                     .BE
		output wire        step_motor_driver_3_AX,    //                     .AX
		output wire        step_motor_driver_3_BY,    //                     .BY
		output wire        pwm_c0_export,             //               pwm_c0.export
		output wire        step_motor_driver_0_AE,    //  step_motor_driver_0.AE
		output wire        step_motor_driver_0_BY,    //                     .BY
		output wire        step_motor_driver_0_BE,    //                     .BE
		output wire        step_motor_driver_0_AX,    //                     .AX
		output wire        step_motor_driver_0_BX,    //                     .BX
		output wire        step_motor_driver_0_AY,    //                     .AY
		output wire        step_motor_driver_1_BX,    //  step_motor_driver_1.BX
		output wire        step_motor_driver_1_AY,    //                     .AY
		output wire        step_motor_driver_1_AE,    //                     .AE
		output wire        step_motor_driver_1_BY,    //                     .BY
		output wire        step_motor_driver_1_BE,    //                     .BE
		output wire        step_motor_driver_1_AX,    //                     .AX
		output wire [9:0]  m0_EINT,                   //                   m0.EINT
		input  wire        m0_RSTN,                   //                     .RSTN
		input  wire [3:0]  m0_CSN,                    //                     .CSN
		input  wire [21:0] m0_ADDR,                   //                     .ADDR
		input  wire        m0_CLK,                    //                     .CLK
		input  wire        m0_WRN,                    //                     .WRN
		inout  wire [31:0] m0_DATA,                   //                     .DATA
		input  wire        m0_RDN,                    //                     .RDN
		input  wire [3:0]  m0_BEN,                    //                     .BEN
		output wire        m0_WAITN,                  //                     .WAITN
		output wire        brush_motor_driver_3_HY,   // brush_motor_driver_3.HY
		output wire        brush_motor_driver_3_HX,   //                     .HX
		output wire        brush_motor_driver_2_HY,   // brush_motor_driver_2.HY
		output wire        brush_motor_driver_2_HX,   //                     .HX
		input  wire        position_encoder_0_A,      //   position_encoder_0.A
		input  wire        position_encoder_0_Z,      //                     .Z
		input  wire        position_encoder_0_B,      //                     .B
		output wire        led_f3_G,                  //               led_f3.G
		output wire        led_f3_B,                  //                     .B
		output wire        led_f3_R,                  //                     .R
		output wire        brush_motor_driver_1_HX,   // brush_motor_driver_1.HX
		output wire        brush_motor_driver_1_HY,   //                     .HY
		output wire        led_f2_B,                  //               led_f2.B
		output wire        led_f2_G,                  //                     .G
		output wire        led_f2_R,                  //                     .R
		output wire        brush_motor_driver_0_HY,   // brush_motor_driver_0.HY
		output wire        brush_motor_driver_0_HX,   //                     .HX
		inout  wire        slot_a_P9,                 //               slot_a.P9
		inout  wire        slot_a_P1,                 //                     .P1
		inout  wire        slot_a_P17,                //                     .P17
		inout  wire        slot_a_P11,                //                     .P11
		inout  wire        slot_a_P14,                //                     .P14
		inout  wire        slot_a_P23,                //                     .P23
		inout  wire        slot_a_P24,                //                     .P24
		inout  wire        slot_a_P12,                //                     .P12
		inout  wire        slot_a_P0,                 //                     .P0
		inout  wire        slot_a_P19,                //                     .P19
		inout  wire        slot_a_P13,                //                     .P13
		inout  wire        slot_a_P15,                //                     .P15
		inout  wire        slot_a_P22,                //                     .P22
		inout  wire        slot_a_P4,                 //                     .P4
		inout  wire        slot_a_P2,                 //                     .P2
		inout  wire        slot_a_P8,                 //                     .P8
		inout  wire        slot_a_P7,                 //                     .P7
		inout  wire        slot_a_P20,                //                     .P20
		inout  wire        slot_a_P25,                //                     .P25
		inout  wire        slot_a_P18,                //                     .P18
		inout  wire        slot_a_P5,                 //                     .P5
		inout  wire        slot_a_P6,                 //                     .P6
		inout  wire        slot_a_P21,                //                     .P21
		inout  wire        slot_a_P16,                //                     .P16
		inout  wire        slot_a_P10,                //                     .P10
		inout  wire        slot_a_P3,                 //                     .P3
		inout  wire        slot_b_P20,                //               slot_b.P20
		inout  wire        slot_b_P10,                //                     .P10
		inout  wire        slot_b_P22,                //                     .P22
		inout  wire        slot_b_P19,                //                     .P19
		inout  wire        slot_b_P16,                //                     .P16
		inout  wire        slot_b_P12,                //                     .P12
		inout  wire        slot_b_P17,                //                     .P17
		inout  wire        slot_b_P25,                //                     .P25
		inout  wire        slot_b_P7,                 //                     .P7
		inout  wire        slot_b_P24,                //                     .P24
		inout  wire        slot_b_P6,                 //                     .P6
		inout  wire        slot_b_P4,                 //                     .P4
		inout  wire        slot_b_P1,                 //                     .P1
		inout  wire        slot_b_P21,                //                     .P21
		inout  wire        slot_b_P3,                 //                     .P3
		inout  wire        slot_b_P9,                 //                     .P9
		inout  wire        slot_b_P0,                 //                     .P0
		inout  wire        slot_b_P11,                //                     .P11
		inout  wire        slot_b_P13,                //                     .P13
		inout  wire        slot_b_P15,                //                     .P15
		inout  wire        slot_b_P23,                //                     .P23
		inout  wire        slot_b_P8,                 //                     .P8
		inout  wire        slot_b_P14,                //                     .P14
		inout  wire        slot_b_P5,                 //                     .P5
		inout  wire        slot_b_P2,                 //                     .P2
		inout  wire        slot_b_P18,                //                     .P18
		inout  wire        am2301_0_sda,              //             am2301_0.sda
		output wire        am2301_0_clk_1us,          //                     .clk_1us
		input  wire        position_encoder_2_A,      //   position_encoder_2.A
		input  wire        position_encoder_2_Z,      //                     .Z
		input  wire        position_encoder_2_B,      //                     .B
		input  wire        position_encoder_1_A,      //   position_encoder_1.A
		input  wire        position_encoder_1_B,      //                     .B
		input  wire        position_encoder_1_Z,      //                     .Z
		input  wire        position_encoder_3_A,      //   position_encoder_3.A
		input  wire        position_encoder_3_Z,      //                     .Z
		input  wire        position_encoder_3_B       //                     .B
	);

	wire         hps_tabby_mrst_reset;                                                                           // HPS_tabby:rso_MRST_reset -> [AM2301_0:rsi_MRST_reset, AM2301_0_ctrl_translator:reset, AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:reset, AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, AM2301_1:rsi_MRST_reset, AM2301_1_ctrl_translator:reset, AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:reset, AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, HPS_tabby_M1_translator:reset, HPS_tabby_M1_translator_avalon_universal_master_0_agent:reset, addr_router:reset, basic_FuncLED_0:rsi_MRST_reset, basic_FuncLED_0_ctrl_translator:reset, basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:reset, basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, basic_FuncLED_1:rsi_MRST_reset, basic_FuncLED_1_ctrl_translator:reset, basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:reset, basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, basic_FuncLED_2:rsi_MRST_reset, basic_FuncLED_2_ctrl_translator:reset, basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:reset, basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, basic_FuncLED_3:rsi_MRST_reset, basic_FuncLED_3_ctrl_translator:reset, basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:reset, basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, basic_ShieldCtrl:rsi_MRST_reset, basic_ShieldCtrl_ctrl_translator:reset, basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:reset, basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, basic_SysID:rsi_MRST_reset, basic_SysID_SysID_translator:reset, basic_SysID_SysID_translator_avalon_universal_slave_0_agent:reset, basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, brush_motor_driver_0:rsi_MRST_reset, brush_motor_driver_0:rsi_PWMRST_reset, brush_motor_driver_0_ctrl_translator:reset, brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:reset, brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, brush_motor_driver_1:rsi_MRST_reset, brush_motor_driver_1:rsi_PWMRST_reset, brush_motor_driver_1_ctrl_translator:reset, brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:reset, brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, brush_motor_driver_2:rsi_MRST_reset, brush_motor_driver_2:rsi_PWMRST_reset, brush_motor_driver_2_ctrl_translator:reset, brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:reset, brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, brush_motor_driver_3:rsi_MRST_reset, brush_motor_driver_3:rsi_PWMRST_reset, brush_motor_driver_3_ctrl_translator:reset, brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:reset, brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, cmd_xbar_demux:reset, fan_motor_driver_0:rsi_MRST_reset, fan_motor_driver_0:rsi_PWMRST_reset, fan_motor_driver_0_ctrl_translator:reset, fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:reset, fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, grid_PIO26_A:rsi_MRST_reset, grid_PIO26_A_gpio_translator:reset, grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:reset, grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, grid_PIO26_B:rsi_MRST_reset, grid_PIO26_B_gpio_translator:reset, grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:reset, grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, grid_PWM_0:rsi_MRST_reset, grid_PWM_0_pwm_translator:reset, grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:reset, grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, id_router:reset, id_router_001:reset, id_router_002:reset, id_router_003:reset, id_router_004:reset, id_router_005:reset, id_router_006:reset, id_router_007:reset, id_router_008:reset, id_router_009:reset, id_router_010:reset, id_router_011:reset, id_router_012:reset, id_router_013:reset, id_router_014:reset, id_router_015:reset, id_router_016:reset, id_router_017:reset, id_router_018:reset, id_router_019:reset, id_router_020:reset, id_router_021:reset, id_router_022:reset, id_router_023:reset, id_router_024:reset, irq_mapper:reset, irq_synchronizer:receiver_reset, irq_synchronizer:sender_reset, limiter:reset, position_encoder_0:rsi_MRST_reset, position_encoder_0_ctrl_translator:reset, position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:reset, position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, position_encoder_1:rsi_MRST_reset, position_encoder_1_ctrl_translator:reset, position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:reset, position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, position_encoder_2:rsi_MRST_reset, position_encoder_2_ctrl_translator:reset, position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:reset, position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, position_encoder_3:rsi_MRST_reset, position_encoder_3_ctrl_translator:reset, position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:reset, position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, rsp_xbar_demux:reset, rsp_xbar_demux_001:reset, rsp_xbar_demux_002:reset, rsp_xbar_demux_003:reset, rsp_xbar_demux_004:reset, rsp_xbar_demux_005:reset, rsp_xbar_demux_006:reset, rsp_xbar_demux_007:reset, rsp_xbar_demux_008:reset, rsp_xbar_demux_009:reset, rsp_xbar_demux_010:reset, rsp_xbar_demux_011:reset, rsp_xbar_demux_012:reset, rsp_xbar_demux_013:reset, rsp_xbar_demux_014:reset, rsp_xbar_demux_015:reset, rsp_xbar_demux_016:reset, rsp_xbar_demux_017:reset, rsp_xbar_demux_018:reset, rsp_xbar_demux_019:reset, rsp_xbar_demux_020:reset, rsp_xbar_demux_021:reset, rsp_xbar_demux_022:reset, rsp_xbar_demux_023:reset, rsp_xbar_demux_024:reset, rsp_xbar_mux:reset, rst_controller:reset_in0, step_motor_driver_0:rsi_MRST_reset, step_motor_driver_0:rsi_PWMRST_reset, step_motor_driver_0_ctrl_translator:reset, step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:reset, step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, step_motor_driver_1:rsi_MRST_reset, step_motor_driver_1:rsi_PWMRST_reset, step_motor_driver_1_ctrl_translator:reset, step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:reset, step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, step_motor_driver_2:rsi_MRST_reset, step_motor_driver_2:rsi_PWMRST_reset, step_motor_driver_2_ctrl_translator:reset, step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:reset, step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, step_motor_driver_3:rsi_MRST_reset, step_motor_driver_3:rsi_PWMRST_reset, step_motor_driver_3_ctrl_translator:reset, step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:reset, step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, step_motor_driver_4:rsi_MRST_reset, step_motor_driver_4:rsi_PWMRST_reset, step_motor_driver_4_ctrl_translator:reset, step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:reset, step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:reset, test_LEDState:rsi_MRST_reset]
	wire         hps_tabby_mclk_clk;                                                                             // HPS_tabby:cso_MCLK_clk -> [AM2301_0:csi_MCLK_clk, AM2301_0_ctrl_translator:clk, AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:clk, AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, AM2301_1:csi_MCLK_clk, AM2301_1_ctrl_translator:clk, AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:clk, AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, HPS_tabby_M1_translator:clk, HPS_tabby_M1_translator_avalon_universal_master_0_agent:clk, addr_router:clk, basic_FuncLED_0:csi_MCLK_clk, basic_FuncLED_0_ctrl_translator:clk, basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:clk, basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, basic_FuncLED_1:csi_MCLK_clk, basic_FuncLED_1_ctrl_translator:clk, basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:clk, basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, basic_FuncLED_2:csi_MCLK_clk, basic_FuncLED_2_ctrl_translator:clk, basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:clk, basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, basic_FuncLED_3:csi_MCLK_clk, basic_FuncLED_3_ctrl_translator:clk, basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:clk, basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, basic_ShieldCtrl:csi_MCLK_clk, basic_ShieldCtrl_ctrl_translator:clk, basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:clk, basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, basic_SysID:csi_MCLK_clk, basic_SysID_SysID_translator:clk, basic_SysID_SysID_translator_avalon_universal_slave_0_agent:clk, basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, brush_motor_driver_0:csi_MCLK_clk, brush_motor_driver_0_ctrl_translator:clk, brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:clk, brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, brush_motor_driver_1:csi_MCLK_clk, brush_motor_driver_1_ctrl_translator:clk, brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:clk, brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, brush_motor_driver_2:csi_MCLK_clk, brush_motor_driver_2_ctrl_translator:clk, brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:clk, brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, brush_motor_driver_3:csi_MCLK_clk, brush_motor_driver_3_ctrl_translator:clk, brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:clk, brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, cmd_xbar_demux:clk, fan_motor_driver_0:csi_MCLK_clk, fan_motor_driver_0_ctrl_translator:clk, fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:clk, fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, grid_PIO26_A:csi_MCLK_clk, grid_PIO26_A_gpio_translator:clk, grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:clk, grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, grid_PIO26_B:csi_MCLK_clk, grid_PIO26_B_gpio_translator:clk, grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:clk, grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, grid_PWM_0:csi_MCLK_clk, grid_PWM_0_pwm_translator:clk, grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:clk, grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, id_router:clk, id_router_001:clk, id_router_002:clk, id_router_003:clk, id_router_004:clk, id_router_005:clk, id_router_006:clk, id_router_007:clk, id_router_008:clk, id_router_009:clk, id_router_010:clk, id_router_011:clk, id_router_012:clk, id_router_013:clk, id_router_014:clk, id_router_015:clk, id_router_016:clk, id_router_017:clk, id_router_018:clk, id_router_019:clk, id_router_020:clk, id_router_021:clk, id_router_022:clk, id_router_023:clk, id_router_024:clk, irq_mapper:clk, irq_synchronizer:receiver_clk, irq_synchronizer:sender_clk, limiter:clk, position_encoder_0:csi_MCLK_clk, position_encoder_0_ctrl_translator:clk, position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:clk, position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, position_encoder_1:csi_MCLK_clk, position_encoder_1_ctrl_translator:clk, position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:clk, position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, position_encoder_2:csi_MCLK_clk, position_encoder_2_ctrl_translator:clk, position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:clk, position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, position_encoder_3:csi_MCLK_clk, position_encoder_3_ctrl_translator:clk, position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:clk, position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, rsp_xbar_demux:clk, rsp_xbar_demux_001:clk, rsp_xbar_demux_002:clk, rsp_xbar_demux_003:clk, rsp_xbar_demux_004:clk, rsp_xbar_demux_005:clk, rsp_xbar_demux_006:clk, rsp_xbar_demux_007:clk, rsp_xbar_demux_008:clk, rsp_xbar_demux_009:clk, rsp_xbar_demux_010:clk, rsp_xbar_demux_011:clk, rsp_xbar_demux_012:clk, rsp_xbar_demux_013:clk, rsp_xbar_demux_014:clk, rsp_xbar_demux_015:clk, rsp_xbar_demux_016:clk, rsp_xbar_demux_017:clk, rsp_xbar_demux_018:clk, rsp_xbar_demux_019:clk, rsp_xbar_demux_020:clk, rsp_xbar_demux_021:clk, rsp_xbar_demux_022:clk, rsp_xbar_demux_023:clk, rsp_xbar_demux_024:clk, rsp_xbar_mux:clk, step_motor_driver_0:csi_MCLK_clk, step_motor_driver_0_ctrl_translator:clk, step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:clk, step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, step_motor_driver_1:csi_MCLK_clk, step_motor_driver_1_ctrl_translator:clk, step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:clk, step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, step_motor_driver_2:csi_MCLK_clk, step_motor_driver_2_ctrl_translator:clk, step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:clk, step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, step_motor_driver_3:csi_MCLK_clk, step_motor_driver_3_ctrl_translator:clk, step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:clk, step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, step_motor_driver_4:csi_MCLK_clk, step_motor_driver_4_ctrl_translator:clk, step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:clk, step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:clk, test_LEDState:csi_MCLK_clk]
	wire         test_ledstate_fled0_valid;                                                                      // test_LEDState:aso_fled0_valid -> basic_FuncLED_0:asi_ledf_valid
	wire  [23:0] test_ledstate_fled0_data;                                                                       // test_LEDState:aso_fled0_data -> basic_FuncLED_0:asi_ledf_data
	wire         test_ledstate_fled1_valid;                                                                      // test_LEDState:aso_fled1_valid -> basic_FuncLED_1:asi_ledf_valid
	wire  [23:0] test_ledstate_fled1_data;                                                                       // test_LEDState:aso_fled1_data -> basic_FuncLED_1:asi_ledf_data
	wire         test_ledstate_fled2_valid;                                                                      // test_LEDState:aso_fled2_valid -> basic_FuncLED_2:asi_ledf_valid
	wire  [23:0] test_ledstate_fled2_data;                                                                       // test_LEDState:aso_fled2_data -> basic_FuncLED_2:asi_ledf_data
	wire         test_ledstate_fled3_valid;                                                                      // test_LEDState:aso_fled3_valid -> basic_FuncLED_3:asi_ledf_valid
	wire  [23:0] test_ledstate_fled3_data;                                                                       // test_LEDState:aso_fled3_data -> basic_FuncLED_3:asi_ledf_data
	wire         hps_tabby_h2clk_clk;                                                                            // HPS_tabby:cso_H2CLK_clk -> [brush_motor_driver_0:csi_PWMCLK_clk, brush_motor_driver_1:csi_PWMCLK_clk, brush_motor_driver_2:csi_PWMCLK_clk, brush_motor_driver_3:csi_PWMCLK_clk, fan_motor_driver_0:csi_PWMCLK_clk, grid_PWM_0:csi_PWMCLK_clk, rst_controller:clk, step_motor_driver_0:csi_PWMCLK_clk, step_motor_driver_1:csi_PWMCLK_clk, step_motor_driver_2:csi_PWMCLK_clk, step_motor_driver_3:csi_PWMCLK_clk, step_motor_driver_4:csi_PWMCLK_clk]
	wire         hps_tabby_m1_waitrequest;                                                                       // HPS_tabby_M1_translator:av_waitrequest -> HPS_tabby:avm_M1_waitrequest
	wire  [29:0] hps_tabby_m1_address;                                                                           // HPS_tabby:avm_M1_address -> HPS_tabby_M1_translator:av_address
	wire  [31:0] hps_tabby_m1_writedata;                                                                         // HPS_tabby:avm_M1_writedata -> HPS_tabby_M1_translator:av_writedata
	wire         hps_tabby_m1_write;                                                                             // HPS_tabby:avm_M1_write -> HPS_tabby_M1_translator:av_write
	wire         hps_tabby_m1_read;                                                                              // HPS_tabby:avm_M1_read -> HPS_tabby_M1_translator:av_read
	wire  [31:0] hps_tabby_m1_readdata;                                                                          // HPS_tabby_M1_translator:av_readdata -> HPS_tabby:avm_M1_readdata
	wire         hps_tabby_m1_begintransfer;                                                                     // HPS_tabby:avm_M1_begintransfer -> HPS_tabby_M1_translator:av_begintransfer
	wire         hps_tabby_m1_readdatavalid;                                                                     // HPS_tabby_M1_translator:av_readdatavalid -> HPS_tabby:avm_M1_readdatavalid
	wire   [3:0] hps_tabby_m1_byteenable;                                                                        // HPS_tabby:avm_M1_byteenable -> HPS_tabby_M1_translator:av_byteenable
	wire         basic_sysid_sysid_translator_avalon_anti_slave_0_waitrequest;                                   // basic_SysID:avs_SysID_waitrequest -> basic_SysID_SysID_translator:av_waitrequest
	wire   [1:0] basic_sysid_sysid_translator_avalon_anti_slave_0_address;                                       // basic_SysID_SysID_translator:av_address -> basic_SysID:avs_SysID_address
	wire         basic_sysid_sysid_translator_avalon_anti_slave_0_read;                                          // basic_SysID_SysID_translator:av_read -> basic_SysID:avs_SysID_read
	wire  [31:0] basic_sysid_sysid_translator_avalon_anti_slave_0_readdata;                                      // basic_SysID:avs_SysID_readdata -> basic_SysID_SysID_translator:av_readdata
	wire         basic_funcled_0_ctrl_translator_avalon_anti_slave_0_waitrequest;                                // basic_FuncLED_0:avs_ctrl_waitrequest -> basic_FuncLED_0_ctrl_translator:av_waitrequest
	wire  [31:0] basic_funcled_0_ctrl_translator_avalon_anti_slave_0_writedata;                                  // basic_FuncLED_0_ctrl_translator:av_writedata -> basic_FuncLED_0:avs_ctrl_writedata
	wire         basic_funcled_0_ctrl_translator_avalon_anti_slave_0_write;                                      // basic_FuncLED_0_ctrl_translator:av_write -> basic_FuncLED_0:avs_ctrl_write
	wire         basic_funcled_0_ctrl_translator_avalon_anti_slave_0_read;                                       // basic_FuncLED_0_ctrl_translator:av_read -> basic_FuncLED_0:avs_ctrl_read
	wire  [31:0] basic_funcled_0_ctrl_translator_avalon_anti_slave_0_readdata;                                   // basic_FuncLED_0:avs_ctrl_readdata -> basic_FuncLED_0_ctrl_translator:av_readdata
	wire   [3:0] basic_funcled_0_ctrl_translator_avalon_anti_slave_0_byteenable;                                 // basic_FuncLED_0_ctrl_translator:av_byteenable -> basic_FuncLED_0:avs_ctrl_byteenable
	wire         basic_funcled_1_ctrl_translator_avalon_anti_slave_0_waitrequest;                                // basic_FuncLED_1:avs_ctrl_waitrequest -> basic_FuncLED_1_ctrl_translator:av_waitrequest
	wire  [31:0] basic_funcled_1_ctrl_translator_avalon_anti_slave_0_writedata;                                  // basic_FuncLED_1_ctrl_translator:av_writedata -> basic_FuncLED_1:avs_ctrl_writedata
	wire         basic_funcled_1_ctrl_translator_avalon_anti_slave_0_write;                                      // basic_FuncLED_1_ctrl_translator:av_write -> basic_FuncLED_1:avs_ctrl_write
	wire         basic_funcled_1_ctrl_translator_avalon_anti_slave_0_read;                                       // basic_FuncLED_1_ctrl_translator:av_read -> basic_FuncLED_1:avs_ctrl_read
	wire  [31:0] basic_funcled_1_ctrl_translator_avalon_anti_slave_0_readdata;                                   // basic_FuncLED_1:avs_ctrl_readdata -> basic_FuncLED_1_ctrl_translator:av_readdata
	wire   [3:0] basic_funcled_1_ctrl_translator_avalon_anti_slave_0_byteenable;                                 // basic_FuncLED_1_ctrl_translator:av_byteenable -> basic_FuncLED_1:avs_ctrl_byteenable
	wire         basic_funcled_2_ctrl_translator_avalon_anti_slave_0_waitrequest;                                // basic_FuncLED_2:avs_ctrl_waitrequest -> basic_FuncLED_2_ctrl_translator:av_waitrequest
	wire  [31:0] basic_funcled_2_ctrl_translator_avalon_anti_slave_0_writedata;                                  // basic_FuncLED_2_ctrl_translator:av_writedata -> basic_FuncLED_2:avs_ctrl_writedata
	wire         basic_funcled_2_ctrl_translator_avalon_anti_slave_0_write;                                      // basic_FuncLED_2_ctrl_translator:av_write -> basic_FuncLED_2:avs_ctrl_write
	wire         basic_funcled_2_ctrl_translator_avalon_anti_slave_0_read;                                       // basic_FuncLED_2_ctrl_translator:av_read -> basic_FuncLED_2:avs_ctrl_read
	wire  [31:0] basic_funcled_2_ctrl_translator_avalon_anti_slave_0_readdata;                                   // basic_FuncLED_2:avs_ctrl_readdata -> basic_FuncLED_2_ctrl_translator:av_readdata
	wire   [3:0] basic_funcled_2_ctrl_translator_avalon_anti_slave_0_byteenable;                                 // basic_FuncLED_2_ctrl_translator:av_byteenable -> basic_FuncLED_2:avs_ctrl_byteenable
	wire         basic_funcled_3_ctrl_translator_avalon_anti_slave_0_waitrequest;                                // basic_FuncLED_3:avs_ctrl_waitrequest -> basic_FuncLED_3_ctrl_translator:av_waitrequest
	wire  [31:0] basic_funcled_3_ctrl_translator_avalon_anti_slave_0_writedata;                                  // basic_FuncLED_3_ctrl_translator:av_writedata -> basic_FuncLED_3:avs_ctrl_writedata
	wire         basic_funcled_3_ctrl_translator_avalon_anti_slave_0_write;                                      // basic_FuncLED_3_ctrl_translator:av_write -> basic_FuncLED_3:avs_ctrl_write
	wire         basic_funcled_3_ctrl_translator_avalon_anti_slave_0_read;                                       // basic_FuncLED_3_ctrl_translator:av_read -> basic_FuncLED_3:avs_ctrl_read
	wire  [31:0] basic_funcled_3_ctrl_translator_avalon_anti_slave_0_readdata;                                   // basic_FuncLED_3:avs_ctrl_readdata -> basic_FuncLED_3_ctrl_translator:av_readdata
	wire   [3:0] basic_funcled_3_ctrl_translator_avalon_anti_slave_0_byteenable;                                 // basic_FuncLED_3_ctrl_translator:av_byteenable -> basic_FuncLED_3:avs_ctrl_byteenable
	wire         basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_waitrequest;                               // basic_ShieldCtrl:avs_ctrl_waitrequest -> basic_ShieldCtrl_ctrl_translator:av_waitrequest
	wire  [31:0] basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_writedata;                                 // basic_ShieldCtrl_ctrl_translator:av_writedata -> basic_ShieldCtrl:avs_ctrl_writedata
	wire         basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_write;                                     // basic_ShieldCtrl_ctrl_translator:av_write -> basic_ShieldCtrl:avs_ctrl_write
	wire         basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_read;                                      // basic_ShieldCtrl_ctrl_translator:av_read -> basic_ShieldCtrl:avs_ctrl_read
	wire  [31:0] basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_readdata;                                  // basic_ShieldCtrl:avs_ctrl_readdata -> basic_ShieldCtrl_ctrl_translator:av_readdata
	wire   [3:0] basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_byteenable;                                // basic_ShieldCtrl_ctrl_translator:av_byteenable -> basic_ShieldCtrl:avs_ctrl_byteenable
	wire         grid_pio26_a_gpio_translator_avalon_anti_slave_0_waitrequest;                                   // grid_PIO26_A:avs_gpio_waitrequest -> grid_PIO26_A_gpio_translator:av_waitrequest
	wire  [31:0] grid_pio26_a_gpio_translator_avalon_anti_slave_0_writedata;                                     // grid_PIO26_A_gpio_translator:av_writedata -> grid_PIO26_A:avs_gpio_writedata
	wire   [4:0] grid_pio26_a_gpio_translator_avalon_anti_slave_0_address;                                       // grid_PIO26_A_gpio_translator:av_address -> grid_PIO26_A:avs_gpio_address
	wire         grid_pio26_a_gpio_translator_avalon_anti_slave_0_write;                                         // grid_PIO26_A_gpio_translator:av_write -> grid_PIO26_A:avs_gpio_write
	wire         grid_pio26_a_gpio_translator_avalon_anti_slave_0_read;                                          // grid_PIO26_A_gpio_translator:av_read -> grid_PIO26_A:avs_gpio_read
	wire  [31:0] grid_pio26_a_gpio_translator_avalon_anti_slave_0_readdata;                                      // grid_PIO26_A:avs_gpio_readdata -> grid_PIO26_A_gpio_translator:av_readdata
	wire   [3:0] grid_pio26_a_gpio_translator_avalon_anti_slave_0_byteenable;                                    // grid_PIO26_A_gpio_translator:av_byteenable -> grid_PIO26_A:avs_gpio_byteenable
	wire         grid_pio26_b_gpio_translator_avalon_anti_slave_0_waitrequest;                                   // grid_PIO26_B:avs_gpio_waitrequest -> grid_PIO26_B_gpio_translator:av_waitrequest
	wire  [31:0] grid_pio26_b_gpio_translator_avalon_anti_slave_0_writedata;                                     // grid_PIO26_B_gpio_translator:av_writedata -> grid_PIO26_B:avs_gpio_writedata
	wire   [4:0] grid_pio26_b_gpio_translator_avalon_anti_slave_0_address;                                       // grid_PIO26_B_gpio_translator:av_address -> grid_PIO26_B:avs_gpio_address
	wire         grid_pio26_b_gpio_translator_avalon_anti_slave_0_write;                                         // grid_PIO26_B_gpio_translator:av_write -> grid_PIO26_B:avs_gpio_write
	wire         grid_pio26_b_gpio_translator_avalon_anti_slave_0_read;                                          // grid_PIO26_B_gpio_translator:av_read -> grid_PIO26_B:avs_gpio_read
	wire  [31:0] grid_pio26_b_gpio_translator_avalon_anti_slave_0_readdata;                                      // grid_PIO26_B:avs_gpio_readdata -> grid_PIO26_B_gpio_translator:av_readdata
	wire   [3:0] grid_pio26_b_gpio_translator_avalon_anti_slave_0_byteenable;                                    // grid_PIO26_B_gpio_translator:av_byteenable -> grid_PIO26_B:avs_gpio_byteenable
	wire         grid_pwm_0_pwm_translator_avalon_anti_slave_0_waitrequest;                                      // grid_PWM_0:avs_pwm_waitrequest -> grid_PWM_0_pwm_translator:av_waitrequest
	wire  [31:0] grid_pwm_0_pwm_translator_avalon_anti_slave_0_writedata;                                        // grid_PWM_0_pwm_translator:av_writedata -> grid_PWM_0:avs_pwm_writedata
	wire   [2:0] grid_pwm_0_pwm_translator_avalon_anti_slave_0_address;                                          // grid_PWM_0_pwm_translator:av_address -> grid_PWM_0:avs_pwm_address
	wire         grid_pwm_0_pwm_translator_avalon_anti_slave_0_write;                                            // grid_PWM_0_pwm_translator:av_write -> grid_PWM_0:avs_pwm_write
	wire         grid_pwm_0_pwm_translator_avalon_anti_slave_0_read;                                             // grid_PWM_0_pwm_translator:av_read -> grid_PWM_0:avs_pwm_read
	wire  [31:0] grid_pwm_0_pwm_translator_avalon_anti_slave_0_readdata;                                         // grid_PWM_0:avs_pwm_readdata -> grid_PWM_0_pwm_translator:av_readdata
	wire   [3:0] grid_pwm_0_pwm_translator_avalon_anti_slave_0_byteenable;                                       // grid_PWM_0_pwm_translator:av_byteenable -> grid_PWM_0:avs_pwm_byteenable
	wire         am2301_0_ctrl_translator_avalon_anti_slave_0_waitrequest;                                       // AM2301_0:avs_ctrl_waitrequest -> AM2301_0_ctrl_translator:av_waitrequest
	wire  [31:0] am2301_0_ctrl_translator_avalon_anti_slave_0_writedata;                                         // AM2301_0_ctrl_translator:av_writedata -> AM2301_0:avs_ctrl_writedata
	wire   [2:0] am2301_0_ctrl_translator_avalon_anti_slave_0_address;                                           // AM2301_0_ctrl_translator:av_address -> AM2301_0:avs_ctrl_address
	wire         am2301_0_ctrl_translator_avalon_anti_slave_0_write;                                             // AM2301_0_ctrl_translator:av_write -> AM2301_0:avs_ctrl_write
	wire         am2301_0_ctrl_translator_avalon_anti_slave_0_read;                                              // AM2301_0_ctrl_translator:av_read -> AM2301_0:avs_ctrl_read
	wire  [31:0] am2301_0_ctrl_translator_avalon_anti_slave_0_readdata;                                          // AM2301_0:avs_ctrl_readdata -> AM2301_0_ctrl_translator:av_readdata
	wire   [3:0] am2301_0_ctrl_translator_avalon_anti_slave_0_byteenable;                                        // AM2301_0_ctrl_translator:av_byteenable -> AM2301_0:avs_ctrl_byteenable
	wire         step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest;                            // step_motor_driver_0:avs_ctrl_waitrequest -> step_motor_driver_0_ctrl_translator:av_waitrequest
	wire  [31:0] step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata;                              // step_motor_driver_0_ctrl_translator:av_writedata -> step_motor_driver_0:avs_ctrl_writedata
	wire   [2:0] step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address;                                // step_motor_driver_0_ctrl_translator:av_address -> step_motor_driver_0:avs_ctrl_address
	wire         step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write;                                  // step_motor_driver_0_ctrl_translator:av_write -> step_motor_driver_0:avs_ctrl_write
	wire         step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read;                                   // step_motor_driver_0_ctrl_translator:av_read -> step_motor_driver_0:avs_ctrl_read
	wire  [31:0] step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata;                               // step_motor_driver_0:avs_ctrl_readdata -> step_motor_driver_0_ctrl_translator:av_readdata
	wire   [3:0] step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable;                             // step_motor_driver_0_ctrl_translator:av_byteenable -> step_motor_driver_0:avs_ctrl_byteenable
	wire         position_encoder_0_ctrl_translator_avalon_anti_slave_0_waitrequest;                             // position_encoder_0:avs_ctrl_waitrequest -> position_encoder_0_ctrl_translator:av_waitrequest
	wire  [31:0] position_encoder_0_ctrl_translator_avalon_anti_slave_0_writedata;                               // position_encoder_0_ctrl_translator:av_writedata -> position_encoder_0:avs_ctrl_writedata
	wire   [2:0] position_encoder_0_ctrl_translator_avalon_anti_slave_0_address;                                 // position_encoder_0_ctrl_translator:av_address -> position_encoder_0:avs_ctrl_address
	wire         position_encoder_0_ctrl_translator_avalon_anti_slave_0_write;                                   // position_encoder_0_ctrl_translator:av_write -> position_encoder_0:avs_ctrl_write
	wire         position_encoder_0_ctrl_translator_avalon_anti_slave_0_read;                                    // position_encoder_0_ctrl_translator:av_read -> position_encoder_0:avs_ctrl_read
	wire  [31:0] position_encoder_0_ctrl_translator_avalon_anti_slave_0_readdata;                                // position_encoder_0:avs_ctrl_readdata -> position_encoder_0_ctrl_translator:av_readdata
	wire   [3:0] position_encoder_0_ctrl_translator_avalon_anti_slave_0_byteenable;                              // position_encoder_0_ctrl_translator:av_byteenable -> position_encoder_0:avs_ctrl_byteenable
	wire         brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest;                           // brush_motor_driver_0:avs_ctrl_waitrequest -> brush_motor_driver_0_ctrl_translator:av_waitrequest
	wire  [31:0] brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata;                             // brush_motor_driver_0_ctrl_translator:av_writedata -> brush_motor_driver_0:avs_ctrl_writedata
	wire   [2:0] brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address;                               // brush_motor_driver_0_ctrl_translator:av_address -> brush_motor_driver_0:avs_ctrl_address
	wire         brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write;                                 // brush_motor_driver_0_ctrl_translator:av_write -> brush_motor_driver_0:avs_ctrl_write
	wire         brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read;                                  // brush_motor_driver_0_ctrl_translator:av_read -> brush_motor_driver_0:avs_ctrl_read
	wire  [31:0] brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata;                              // brush_motor_driver_0:avs_ctrl_readdata -> brush_motor_driver_0_ctrl_translator:av_readdata
	wire   [3:0] brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable;                            // brush_motor_driver_0_ctrl_translator:av_byteenable -> brush_motor_driver_0:avs_ctrl_byteenable
	wire         fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest;                             // fan_motor_driver_0:avs_ctrl_waitrequest -> fan_motor_driver_0_ctrl_translator:av_waitrequest
	wire  [31:0] fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata;                               // fan_motor_driver_0_ctrl_translator:av_writedata -> fan_motor_driver_0:avs_ctrl_writedata
	wire   [2:0] fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address;                                 // fan_motor_driver_0_ctrl_translator:av_address -> fan_motor_driver_0:avs_ctrl_address
	wire         fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write;                                   // fan_motor_driver_0_ctrl_translator:av_write -> fan_motor_driver_0:avs_ctrl_write
	wire         fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read;                                    // fan_motor_driver_0_ctrl_translator:av_read -> fan_motor_driver_0:avs_ctrl_read
	wire  [31:0] fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata;                                // fan_motor_driver_0:avs_ctrl_readdata -> fan_motor_driver_0_ctrl_translator:av_readdata
	wire   [3:0] fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable;                              // fan_motor_driver_0_ctrl_translator:av_byteenable -> fan_motor_driver_0:avs_ctrl_byteenable
	wire         step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_waitrequest;                            // step_motor_driver_1:avs_ctrl_waitrequest -> step_motor_driver_1_ctrl_translator:av_waitrequest
	wire  [31:0] step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_writedata;                              // step_motor_driver_1_ctrl_translator:av_writedata -> step_motor_driver_1:avs_ctrl_writedata
	wire   [2:0] step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_address;                                // step_motor_driver_1_ctrl_translator:av_address -> step_motor_driver_1:avs_ctrl_address
	wire         step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_write;                                  // step_motor_driver_1_ctrl_translator:av_write -> step_motor_driver_1:avs_ctrl_write
	wire         step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_read;                                   // step_motor_driver_1_ctrl_translator:av_read -> step_motor_driver_1:avs_ctrl_read
	wire  [31:0] step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_readdata;                               // step_motor_driver_1:avs_ctrl_readdata -> step_motor_driver_1_ctrl_translator:av_readdata
	wire   [3:0] step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_byteenable;                             // step_motor_driver_1_ctrl_translator:av_byteenable -> step_motor_driver_1:avs_ctrl_byteenable
	wire         am2301_1_ctrl_translator_avalon_anti_slave_0_waitrequest;                                       // AM2301_1:avs_ctrl_waitrequest -> AM2301_1_ctrl_translator:av_waitrequest
	wire  [31:0] am2301_1_ctrl_translator_avalon_anti_slave_0_writedata;                                         // AM2301_1_ctrl_translator:av_writedata -> AM2301_1:avs_ctrl_writedata
	wire   [2:0] am2301_1_ctrl_translator_avalon_anti_slave_0_address;                                           // AM2301_1_ctrl_translator:av_address -> AM2301_1:avs_ctrl_address
	wire         am2301_1_ctrl_translator_avalon_anti_slave_0_write;                                             // AM2301_1_ctrl_translator:av_write -> AM2301_1:avs_ctrl_write
	wire         am2301_1_ctrl_translator_avalon_anti_slave_0_read;                                              // AM2301_1_ctrl_translator:av_read -> AM2301_1:avs_ctrl_read
	wire  [31:0] am2301_1_ctrl_translator_avalon_anti_slave_0_readdata;                                          // AM2301_1:avs_ctrl_readdata -> AM2301_1_ctrl_translator:av_readdata
	wire   [3:0] am2301_1_ctrl_translator_avalon_anti_slave_0_byteenable;                                        // AM2301_1_ctrl_translator:av_byteenable -> AM2301_1:avs_ctrl_byteenable
	wire         brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_waitrequest;                           // brush_motor_driver_1:avs_ctrl_waitrequest -> brush_motor_driver_1_ctrl_translator:av_waitrequest
	wire  [31:0] brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_writedata;                             // brush_motor_driver_1_ctrl_translator:av_writedata -> brush_motor_driver_1:avs_ctrl_writedata
	wire   [2:0] brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_address;                               // brush_motor_driver_1_ctrl_translator:av_address -> brush_motor_driver_1:avs_ctrl_address
	wire         brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_write;                                 // brush_motor_driver_1_ctrl_translator:av_write -> brush_motor_driver_1:avs_ctrl_write
	wire         brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_read;                                  // brush_motor_driver_1_ctrl_translator:av_read -> brush_motor_driver_1:avs_ctrl_read
	wire  [31:0] brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_readdata;                              // brush_motor_driver_1:avs_ctrl_readdata -> brush_motor_driver_1_ctrl_translator:av_readdata
	wire   [3:0] brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_byteenable;                            // brush_motor_driver_1_ctrl_translator:av_byteenable -> brush_motor_driver_1:avs_ctrl_byteenable
	wire         brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_waitrequest;                           // brush_motor_driver_3:avs_ctrl_waitrequest -> brush_motor_driver_3_ctrl_translator:av_waitrequest
	wire  [31:0] brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_writedata;                             // brush_motor_driver_3_ctrl_translator:av_writedata -> brush_motor_driver_3:avs_ctrl_writedata
	wire   [2:0] brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_address;                               // brush_motor_driver_3_ctrl_translator:av_address -> brush_motor_driver_3:avs_ctrl_address
	wire         brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_write;                                 // brush_motor_driver_3_ctrl_translator:av_write -> brush_motor_driver_3:avs_ctrl_write
	wire         brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_read;                                  // brush_motor_driver_3_ctrl_translator:av_read -> brush_motor_driver_3:avs_ctrl_read
	wire  [31:0] brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_readdata;                              // brush_motor_driver_3:avs_ctrl_readdata -> brush_motor_driver_3_ctrl_translator:av_readdata
	wire   [3:0] brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_byteenable;                            // brush_motor_driver_3_ctrl_translator:av_byteenable -> brush_motor_driver_3:avs_ctrl_byteenable
	wire         brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_waitrequest;                           // brush_motor_driver_2:avs_ctrl_waitrequest -> brush_motor_driver_2_ctrl_translator:av_waitrequest
	wire  [31:0] brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_writedata;                             // brush_motor_driver_2_ctrl_translator:av_writedata -> brush_motor_driver_2:avs_ctrl_writedata
	wire   [2:0] brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_address;                               // brush_motor_driver_2_ctrl_translator:av_address -> brush_motor_driver_2:avs_ctrl_address
	wire         brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_write;                                 // brush_motor_driver_2_ctrl_translator:av_write -> brush_motor_driver_2:avs_ctrl_write
	wire         brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_read;                                  // brush_motor_driver_2_ctrl_translator:av_read -> brush_motor_driver_2:avs_ctrl_read
	wire  [31:0] brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_readdata;                              // brush_motor_driver_2:avs_ctrl_readdata -> brush_motor_driver_2_ctrl_translator:av_readdata
	wire   [3:0] brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_byteenable;                            // brush_motor_driver_2_ctrl_translator:av_byteenable -> brush_motor_driver_2:avs_ctrl_byteenable
	wire         step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_waitrequest;                            // step_motor_driver_2:avs_ctrl_waitrequest -> step_motor_driver_2_ctrl_translator:av_waitrequest
	wire  [31:0] step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_writedata;                              // step_motor_driver_2_ctrl_translator:av_writedata -> step_motor_driver_2:avs_ctrl_writedata
	wire   [2:0] step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_address;                                // step_motor_driver_2_ctrl_translator:av_address -> step_motor_driver_2:avs_ctrl_address
	wire         step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_write;                                  // step_motor_driver_2_ctrl_translator:av_write -> step_motor_driver_2:avs_ctrl_write
	wire         step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_read;                                   // step_motor_driver_2_ctrl_translator:av_read -> step_motor_driver_2:avs_ctrl_read
	wire  [31:0] step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_readdata;                               // step_motor_driver_2:avs_ctrl_readdata -> step_motor_driver_2_ctrl_translator:av_readdata
	wire   [3:0] step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_byteenable;                             // step_motor_driver_2_ctrl_translator:av_byteenable -> step_motor_driver_2:avs_ctrl_byteenable
	wire         step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_waitrequest;                            // step_motor_driver_3:avs_ctrl_waitrequest -> step_motor_driver_3_ctrl_translator:av_waitrequest
	wire  [31:0] step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_writedata;                              // step_motor_driver_3_ctrl_translator:av_writedata -> step_motor_driver_3:avs_ctrl_writedata
	wire   [2:0] step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_address;                                // step_motor_driver_3_ctrl_translator:av_address -> step_motor_driver_3:avs_ctrl_address
	wire         step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_write;                                  // step_motor_driver_3_ctrl_translator:av_write -> step_motor_driver_3:avs_ctrl_write
	wire         step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_read;                                   // step_motor_driver_3_ctrl_translator:av_read -> step_motor_driver_3:avs_ctrl_read
	wire  [31:0] step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_readdata;                               // step_motor_driver_3:avs_ctrl_readdata -> step_motor_driver_3_ctrl_translator:av_readdata
	wire   [3:0] step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_byteenable;                             // step_motor_driver_3_ctrl_translator:av_byteenable -> step_motor_driver_3:avs_ctrl_byteenable
	wire         step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_waitrequest;                            // step_motor_driver_4:avs_ctrl_waitrequest -> step_motor_driver_4_ctrl_translator:av_waitrequest
	wire  [31:0] step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_writedata;                              // step_motor_driver_4_ctrl_translator:av_writedata -> step_motor_driver_4:avs_ctrl_writedata
	wire   [2:0] step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_address;                                // step_motor_driver_4_ctrl_translator:av_address -> step_motor_driver_4:avs_ctrl_address
	wire         step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_write;                                  // step_motor_driver_4_ctrl_translator:av_write -> step_motor_driver_4:avs_ctrl_write
	wire         step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_read;                                   // step_motor_driver_4_ctrl_translator:av_read -> step_motor_driver_4:avs_ctrl_read
	wire  [31:0] step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_readdata;                               // step_motor_driver_4:avs_ctrl_readdata -> step_motor_driver_4_ctrl_translator:av_readdata
	wire   [3:0] step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_byteenable;                             // step_motor_driver_4_ctrl_translator:av_byteenable -> step_motor_driver_4:avs_ctrl_byteenable
	wire         position_encoder_1_ctrl_translator_avalon_anti_slave_0_waitrequest;                             // position_encoder_1:avs_ctrl_waitrequest -> position_encoder_1_ctrl_translator:av_waitrequest
	wire  [31:0] position_encoder_1_ctrl_translator_avalon_anti_slave_0_writedata;                               // position_encoder_1_ctrl_translator:av_writedata -> position_encoder_1:avs_ctrl_writedata
	wire   [2:0] position_encoder_1_ctrl_translator_avalon_anti_slave_0_address;                                 // position_encoder_1_ctrl_translator:av_address -> position_encoder_1:avs_ctrl_address
	wire         position_encoder_1_ctrl_translator_avalon_anti_slave_0_write;                                   // position_encoder_1_ctrl_translator:av_write -> position_encoder_1:avs_ctrl_write
	wire         position_encoder_1_ctrl_translator_avalon_anti_slave_0_read;                                    // position_encoder_1_ctrl_translator:av_read -> position_encoder_1:avs_ctrl_read
	wire  [31:0] position_encoder_1_ctrl_translator_avalon_anti_slave_0_readdata;                                // position_encoder_1:avs_ctrl_readdata -> position_encoder_1_ctrl_translator:av_readdata
	wire   [3:0] position_encoder_1_ctrl_translator_avalon_anti_slave_0_byteenable;                              // position_encoder_1_ctrl_translator:av_byteenable -> position_encoder_1:avs_ctrl_byteenable
	wire         position_encoder_2_ctrl_translator_avalon_anti_slave_0_waitrequest;                             // position_encoder_2:avs_ctrl_waitrequest -> position_encoder_2_ctrl_translator:av_waitrequest
	wire  [31:0] position_encoder_2_ctrl_translator_avalon_anti_slave_0_writedata;                               // position_encoder_2_ctrl_translator:av_writedata -> position_encoder_2:avs_ctrl_writedata
	wire   [2:0] position_encoder_2_ctrl_translator_avalon_anti_slave_0_address;                                 // position_encoder_2_ctrl_translator:av_address -> position_encoder_2:avs_ctrl_address
	wire         position_encoder_2_ctrl_translator_avalon_anti_slave_0_write;                                   // position_encoder_2_ctrl_translator:av_write -> position_encoder_2:avs_ctrl_write
	wire         position_encoder_2_ctrl_translator_avalon_anti_slave_0_read;                                    // position_encoder_2_ctrl_translator:av_read -> position_encoder_2:avs_ctrl_read
	wire  [31:0] position_encoder_2_ctrl_translator_avalon_anti_slave_0_readdata;                                // position_encoder_2:avs_ctrl_readdata -> position_encoder_2_ctrl_translator:av_readdata
	wire   [3:0] position_encoder_2_ctrl_translator_avalon_anti_slave_0_byteenable;                              // position_encoder_2_ctrl_translator:av_byteenable -> position_encoder_2:avs_ctrl_byteenable
	wire         position_encoder_3_ctrl_translator_avalon_anti_slave_0_waitrequest;                             // position_encoder_3:avs_ctrl_waitrequest -> position_encoder_3_ctrl_translator:av_waitrequest
	wire  [31:0] position_encoder_3_ctrl_translator_avalon_anti_slave_0_writedata;                               // position_encoder_3_ctrl_translator:av_writedata -> position_encoder_3:avs_ctrl_writedata
	wire   [2:0] position_encoder_3_ctrl_translator_avalon_anti_slave_0_address;                                 // position_encoder_3_ctrl_translator:av_address -> position_encoder_3:avs_ctrl_address
	wire         position_encoder_3_ctrl_translator_avalon_anti_slave_0_write;                                   // position_encoder_3_ctrl_translator:av_write -> position_encoder_3:avs_ctrl_write
	wire         position_encoder_3_ctrl_translator_avalon_anti_slave_0_read;                                    // position_encoder_3_ctrl_translator:av_read -> position_encoder_3:avs_ctrl_read
	wire  [31:0] position_encoder_3_ctrl_translator_avalon_anti_slave_0_readdata;                                // position_encoder_3:avs_ctrl_readdata -> position_encoder_3_ctrl_translator:av_readdata
	wire   [3:0] position_encoder_3_ctrl_translator_avalon_anti_slave_0_byteenable;                              // position_encoder_3_ctrl_translator:av_byteenable -> position_encoder_3:avs_ctrl_byteenable
	wire         hps_tabby_m1_translator_avalon_universal_master_0_waitrequest;                                  // HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_waitrequest -> HPS_tabby_M1_translator:uav_waitrequest
	wire   [2:0] hps_tabby_m1_translator_avalon_universal_master_0_burstcount;                                   // HPS_tabby_M1_translator:uav_burstcount -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_burstcount
	wire  [31:0] hps_tabby_m1_translator_avalon_universal_master_0_writedata;                                    // HPS_tabby_M1_translator:uav_writedata -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_writedata
	wire  [31:0] hps_tabby_m1_translator_avalon_universal_master_0_address;                                      // HPS_tabby_M1_translator:uav_address -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_address
	wire         hps_tabby_m1_translator_avalon_universal_master_0_lock;                                         // HPS_tabby_M1_translator:uav_lock -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_lock
	wire         hps_tabby_m1_translator_avalon_universal_master_0_write;                                        // HPS_tabby_M1_translator:uav_write -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_write
	wire         hps_tabby_m1_translator_avalon_universal_master_0_read;                                         // HPS_tabby_M1_translator:uav_read -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_read
	wire  [31:0] hps_tabby_m1_translator_avalon_universal_master_0_readdata;                                     // HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_readdata -> HPS_tabby_M1_translator:uav_readdata
	wire         hps_tabby_m1_translator_avalon_universal_master_0_debugaccess;                                  // HPS_tabby_M1_translator:uav_debugaccess -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_debugaccess
	wire   [3:0] hps_tabby_m1_translator_avalon_universal_master_0_byteenable;                                   // HPS_tabby_M1_translator:uav_byteenable -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_byteenable
	wire         hps_tabby_m1_translator_avalon_universal_master_0_readdatavalid;                                // HPS_tabby_M1_translator_avalon_universal_master_0_agent:av_readdatavalid -> HPS_tabby_M1_translator:uav_readdatavalid
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_waitrequest;                     // basic_SysID_SysID_translator:uav_waitrequest -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_burstcount;                      // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_burstcount -> basic_SysID_SysID_translator:uav_burstcount
	wire  [31:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_writedata;                       // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_writedata -> basic_SysID_SysID_translator:uav_writedata
	wire  [31:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_address;                         // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_address -> basic_SysID_SysID_translator:uav_address
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_write;                           // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_write -> basic_SysID_SysID_translator:uav_write
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_lock;                            // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_lock -> basic_SysID_SysID_translator:uav_lock
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_read;                            // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_read -> basic_SysID_SysID_translator:uav_read
	wire  [31:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_readdata;                        // basic_SysID_SysID_translator:uav_readdata -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                   // basic_SysID_SysID_translator:uav_readdatavalid -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_debugaccess;                     // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_debugaccess -> basic_SysID_SysID_translator:uav_debugaccess
	wire   [3:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_byteenable;                      // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:m0_byteenable -> basic_SysID_SysID_translator:uav_byteenable
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;              // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_valid;                    // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_source_valid -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;            // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_data;                     // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_source_data -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_ready;                    // basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;           // basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;                 // basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;         // basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;                  // basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;                 // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rf_sink_ready -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;               // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;                // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;               // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;                  // basic_FuncLED_0_ctrl_translator:uav_waitrequest -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                   // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> basic_FuncLED_0_ctrl_translator:uav_burstcount
	wire  [31:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                    // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> basic_FuncLED_0_ctrl_translator:uav_writedata
	wire  [31:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                      // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> basic_FuncLED_0_ctrl_translator:uav_address
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                        // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> basic_FuncLED_0_ctrl_translator:uav_write
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                         // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> basic_FuncLED_0_ctrl_translator:uav_lock
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                         // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> basic_FuncLED_0_ctrl_translator:uav_read
	wire  [31:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                     // basic_FuncLED_0_ctrl_translator:uav_readdata -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                // basic_FuncLED_0_ctrl_translator:uav_readdatavalid -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;                  // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> basic_FuncLED_0_ctrl_translator:uav_debugaccess
	wire   [3:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                   // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> basic_FuncLED_0_ctrl_translator:uav_byteenable
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;           // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;                 // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;         // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;                  // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;                 // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;        // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;              // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;      // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;               // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;              // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;            // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;             // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;            // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;                  // basic_FuncLED_1_ctrl_translator:uav_waitrequest -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                   // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> basic_FuncLED_1_ctrl_translator:uav_burstcount
	wire  [31:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                    // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> basic_FuncLED_1_ctrl_translator:uav_writedata
	wire  [31:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                      // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> basic_FuncLED_1_ctrl_translator:uav_address
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                        // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> basic_FuncLED_1_ctrl_translator:uav_write
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                         // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> basic_FuncLED_1_ctrl_translator:uav_lock
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                         // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> basic_FuncLED_1_ctrl_translator:uav_read
	wire  [31:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                     // basic_FuncLED_1_ctrl_translator:uav_readdata -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                // basic_FuncLED_1_ctrl_translator:uav_readdatavalid -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;                  // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> basic_FuncLED_1_ctrl_translator:uav_debugaccess
	wire   [3:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                   // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> basic_FuncLED_1_ctrl_translator:uav_byteenable
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;           // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;                 // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;         // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;                  // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;                 // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;        // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;              // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;      // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;               // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;              // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;            // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;             // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;            // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;                  // basic_FuncLED_2_ctrl_translator:uav_waitrequest -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                   // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> basic_FuncLED_2_ctrl_translator:uav_burstcount
	wire  [31:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                    // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> basic_FuncLED_2_ctrl_translator:uav_writedata
	wire  [31:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                      // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> basic_FuncLED_2_ctrl_translator:uav_address
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                        // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> basic_FuncLED_2_ctrl_translator:uav_write
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                         // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> basic_FuncLED_2_ctrl_translator:uav_lock
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                         // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> basic_FuncLED_2_ctrl_translator:uav_read
	wire  [31:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                     // basic_FuncLED_2_ctrl_translator:uav_readdata -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                // basic_FuncLED_2_ctrl_translator:uav_readdatavalid -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;                  // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> basic_FuncLED_2_ctrl_translator:uav_debugaccess
	wire   [3:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                   // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> basic_FuncLED_2_ctrl_translator:uav_byteenable
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;           // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;                 // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;         // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;                  // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;                 // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;        // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;              // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;      // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;               // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;              // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;            // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;             // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;            // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;                  // basic_FuncLED_3_ctrl_translator:uav_waitrequest -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                   // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> basic_FuncLED_3_ctrl_translator:uav_burstcount
	wire  [31:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                    // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> basic_FuncLED_3_ctrl_translator:uav_writedata
	wire  [31:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                      // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> basic_FuncLED_3_ctrl_translator:uav_address
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                        // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> basic_FuncLED_3_ctrl_translator:uav_write
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                         // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> basic_FuncLED_3_ctrl_translator:uav_lock
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                         // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> basic_FuncLED_3_ctrl_translator:uav_read
	wire  [31:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                     // basic_FuncLED_3_ctrl_translator:uav_readdata -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                // basic_FuncLED_3_ctrl_translator:uav_readdatavalid -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;                  // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> basic_FuncLED_3_ctrl_translator:uav_debugaccess
	wire   [3:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                   // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> basic_FuncLED_3_ctrl_translator:uav_byteenable
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;           // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;                 // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;         // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;                  // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;                 // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;        // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;              // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;      // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;               // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;              // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;            // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;             // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;            // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;                 // basic_ShieldCtrl_ctrl_translator:uav_waitrequest -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                  // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> basic_ShieldCtrl_ctrl_translator:uav_burstcount
	wire  [31:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                   // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> basic_ShieldCtrl_ctrl_translator:uav_writedata
	wire  [31:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                     // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> basic_ShieldCtrl_ctrl_translator:uav_address
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                       // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> basic_ShieldCtrl_ctrl_translator:uav_write
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                        // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> basic_ShieldCtrl_ctrl_translator:uav_lock
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                        // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> basic_ShieldCtrl_ctrl_translator:uav_read
	wire  [31:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                    // basic_ShieldCtrl_ctrl_translator:uav_readdata -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;               // basic_ShieldCtrl_ctrl_translator:uav_readdatavalid -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;                 // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> basic_ShieldCtrl_ctrl_translator:uav_debugaccess
	wire   [3:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                  // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> basic_ShieldCtrl_ctrl_translator:uav_byteenable
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;          // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;                // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;        // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;                 // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;                // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;       // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;             // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;     // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;              // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;             // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;           // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;            // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;           // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_waitrequest;                     // grid_PIO26_A_gpio_translator:uav_waitrequest -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_burstcount;                      // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_burstcount -> grid_PIO26_A_gpio_translator:uav_burstcount
	wire  [31:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_writedata;                       // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_writedata -> grid_PIO26_A_gpio_translator:uav_writedata
	wire  [31:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_address;                         // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_address -> grid_PIO26_A_gpio_translator:uav_address
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_write;                           // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_write -> grid_PIO26_A_gpio_translator:uav_write
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_lock;                            // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_lock -> grid_PIO26_A_gpio_translator:uav_lock
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_read;                            // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_read -> grid_PIO26_A_gpio_translator:uav_read
	wire  [31:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_readdata;                        // grid_PIO26_A_gpio_translator:uav_readdata -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                   // grid_PIO26_A_gpio_translator:uav_readdatavalid -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_debugaccess;                     // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_debugaccess -> grid_PIO26_A_gpio_translator:uav_debugaccess
	wire   [3:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_byteenable;                      // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:m0_byteenable -> grid_PIO26_A_gpio_translator:uav_byteenable
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;              // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_valid;                    // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_source_valid -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;            // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_data;                     // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_source_data -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_ready;                    // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;           // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;                 // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;         // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;                  // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;                 // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rf_sink_ready -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;               // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;                // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;               // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_waitrequest;                     // grid_PIO26_B_gpio_translator:uav_waitrequest -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_burstcount;                      // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_burstcount -> grid_PIO26_B_gpio_translator:uav_burstcount
	wire  [31:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_writedata;                       // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_writedata -> grid_PIO26_B_gpio_translator:uav_writedata
	wire  [31:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_address;                         // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_address -> grid_PIO26_B_gpio_translator:uav_address
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_write;                           // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_write -> grid_PIO26_B_gpio_translator:uav_write
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_lock;                            // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_lock -> grid_PIO26_B_gpio_translator:uav_lock
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_read;                            // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_read -> grid_PIO26_B_gpio_translator:uav_read
	wire  [31:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_readdata;                        // grid_PIO26_B_gpio_translator:uav_readdata -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                   // grid_PIO26_B_gpio_translator:uav_readdatavalid -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_debugaccess;                     // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_debugaccess -> grid_PIO26_B_gpio_translator:uav_debugaccess
	wire   [3:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_byteenable;                      // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:m0_byteenable -> grid_PIO26_B_gpio_translator:uav_byteenable
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;              // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_valid;                    // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_source_valid -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;            // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_data;                     // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_source_data -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_ready;                    // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;           // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;                 // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;         // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;                  // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;                 // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rf_sink_ready -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;               // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;                // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;               // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_waitrequest;                        // grid_PWM_0_pwm_translator:uav_waitrequest -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_burstcount;                         // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_burstcount -> grid_PWM_0_pwm_translator:uav_burstcount
	wire  [31:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_writedata;                          // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_writedata -> grid_PWM_0_pwm_translator:uav_writedata
	wire  [31:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_address;                            // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_address -> grid_PWM_0_pwm_translator:uav_address
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_write;                              // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_write -> grid_PWM_0_pwm_translator:uav_write
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_lock;                               // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_lock -> grid_PWM_0_pwm_translator:uav_lock
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_read;                               // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_read -> grid_PWM_0_pwm_translator:uav_read
	wire  [31:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_readdata;                           // grid_PWM_0_pwm_translator:uav_readdata -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                      // grid_PWM_0_pwm_translator:uav_readdatavalid -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_debugaccess;                        // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_debugaccess -> grid_PWM_0_pwm_translator:uav_debugaccess
	wire   [3:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_byteenable;                         // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:m0_byteenable -> grid_PWM_0_pwm_translator:uav_byteenable
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;                 // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_valid;                       // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_source_valid -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;               // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_data;                        // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_source_data -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_ready;                       // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;              // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;                    // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;            // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;                     // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;                    // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rf_sink_ready -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;                  // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;                   // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;                  // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;                         // AM2301_0_ctrl_translator:uav_waitrequest -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                          // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> AM2301_0_ctrl_translator:uav_burstcount
	wire  [31:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                           // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> AM2301_0_ctrl_translator:uav_writedata
	wire  [31:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                             // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> AM2301_0_ctrl_translator:uav_address
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                               // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> AM2301_0_ctrl_translator:uav_write
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                                // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> AM2301_0_ctrl_translator:uav_lock
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                                // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> AM2301_0_ctrl_translator:uav_read
	wire  [31:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                            // AM2301_0_ctrl_translator:uav_readdata -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                       // AM2301_0_ctrl_translator:uav_readdatavalid -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;                         // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> AM2301_0_ctrl_translator:uav_debugaccess
	wire   [3:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                          // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> AM2301_0_ctrl_translator:uav_byteenable
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;                  // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;                        // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;                // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;                         // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;                        // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;               // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;                     // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;             // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;                      // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;                     // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;                   // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;                    // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;                   // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;              // step_motor_driver_0_ctrl_translator:uav_waitrequest -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;               // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> step_motor_driver_0_ctrl_translator:uav_burstcount
	wire  [31:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> step_motor_driver_0_ctrl_translator:uav_writedata
	wire  [31:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                  // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> step_motor_driver_0_ctrl_translator:uav_address
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                    // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> step_motor_driver_0_ctrl_translator:uav_write
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                     // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> step_motor_driver_0_ctrl_translator:uav_lock
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                     // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> step_motor_driver_0_ctrl_translator:uav_read
	wire  [31:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                 // step_motor_driver_0_ctrl_translator:uav_readdata -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;            // step_motor_driver_0_ctrl_translator:uav_readdatavalid -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;              // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> step_motor_driver_0_ctrl_translator:uav_debugaccess
	wire   [3:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;               // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> step_motor_driver_0_ctrl_translator:uav_byteenable
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;       // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;             // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;     // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;              // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;             // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;    // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;          // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;  // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;           // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;          // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;        // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;         // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;        // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;               // position_encoder_0_ctrl_translator:uav_waitrequest -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> position_encoder_0_ctrl_translator:uav_burstcount
	wire  [31:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                 // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> position_encoder_0_ctrl_translator:uav_writedata
	wire  [31:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                   // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> position_encoder_0_ctrl_translator:uav_address
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                     // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> position_encoder_0_ctrl_translator:uav_write
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                      // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> position_encoder_0_ctrl_translator:uav_lock
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                      // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> position_encoder_0_ctrl_translator:uav_read
	wire  [31:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                  // position_encoder_0_ctrl_translator:uav_readdata -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;             // position_encoder_0_ctrl_translator:uav_readdatavalid -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;               // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> position_encoder_0_ctrl_translator:uav_debugaccess
	wire   [3:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> position_encoder_0_ctrl_translator:uav_byteenable
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;        // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;              // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;      // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;               // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;              // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;     // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;           // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;   // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;            // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;           // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;         // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;          // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;         // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;             // brush_motor_driver_0_ctrl_translator:uav_waitrequest -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;              // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> brush_motor_driver_0_ctrl_translator:uav_burstcount
	wire  [31:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;               // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> brush_motor_driver_0_ctrl_translator:uav_writedata
	wire  [31:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                 // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> brush_motor_driver_0_ctrl_translator:uav_address
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                   // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> brush_motor_driver_0_ctrl_translator:uav_write
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                    // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> brush_motor_driver_0_ctrl_translator:uav_lock
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                    // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> brush_motor_driver_0_ctrl_translator:uav_read
	wire  [31:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                // brush_motor_driver_0_ctrl_translator:uav_readdata -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;           // brush_motor_driver_0_ctrl_translator:uav_readdatavalid -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;             // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> brush_motor_driver_0_ctrl_translator:uav_debugaccess
	wire   [3:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;              // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> brush_motor_driver_0_ctrl_translator:uav_byteenable
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;      // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;            // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;    // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;             // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;            // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;   // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;         // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket; // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;          // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;         // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;       // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;        // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;       // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;               // fan_motor_driver_0_ctrl_translator:uav_waitrequest -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> fan_motor_driver_0_ctrl_translator:uav_burstcount
	wire  [31:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                 // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> fan_motor_driver_0_ctrl_translator:uav_writedata
	wire  [31:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                   // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> fan_motor_driver_0_ctrl_translator:uav_address
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                     // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> fan_motor_driver_0_ctrl_translator:uav_write
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                      // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> fan_motor_driver_0_ctrl_translator:uav_lock
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                      // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> fan_motor_driver_0_ctrl_translator:uav_read
	wire  [31:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                  // fan_motor_driver_0_ctrl_translator:uav_readdata -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;             // fan_motor_driver_0_ctrl_translator:uav_readdatavalid -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;               // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> fan_motor_driver_0_ctrl_translator:uav_debugaccess
	wire   [3:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> fan_motor_driver_0_ctrl_translator:uav_byteenable
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;        // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;              // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;      // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;               // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;              // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;     // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;           // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;   // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;            // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;           // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;         // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;          // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;         // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;              // step_motor_driver_1_ctrl_translator:uav_waitrequest -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;               // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> step_motor_driver_1_ctrl_translator:uav_burstcount
	wire  [31:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> step_motor_driver_1_ctrl_translator:uav_writedata
	wire  [31:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                  // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> step_motor_driver_1_ctrl_translator:uav_address
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                    // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> step_motor_driver_1_ctrl_translator:uav_write
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                     // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> step_motor_driver_1_ctrl_translator:uav_lock
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                     // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> step_motor_driver_1_ctrl_translator:uav_read
	wire  [31:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                 // step_motor_driver_1_ctrl_translator:uav_readdata -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;            // step_motor_driver_1_ctrl_translator:uav_readdatavalid -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;              // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> step_motor_driver_1_ctrl_translator:uav_debugaccess
	wire   [3:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;               // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> step_motor_driver_1_ctrl_translator:uav_byteenable
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;       // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;             // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;     // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;              // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;             // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;    // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;          // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;  // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;           // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;          // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;        // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;         // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;        // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;                         // AM2301_1_ctrl_translator:uav_waitrequest -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                          // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> AM2301_1_ctrl_translator:uav_burstcount
	wire  [31:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                           // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> AM2301_1_ctrl_translator:uav_writedata
	wire  [31:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                             // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> AM2301_1_ctrl_translator:uav_address
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                               // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> AM2301_1_ctrl_translator:uav_write
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                                // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> AM2301_1_ctrl_translator:uav_lock
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                                // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> AM2301_1_ctrl_translator:uav_read
	wire  [31:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                            // AM2301_1_ctrl_translator:uav_readdata -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;                       // AM2301_1_ctrl_translator:uav_readdatavalid -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;                         // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> AM2301_1_ctrl_translator:uav_debugaccess
	wire   [3:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                          // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> AM2301_1_ctrl_translator:uav_byteenable
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;                  // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;                        // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;                // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;                         // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;                        // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;               // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;                     // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;             // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;                      // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;                     // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;                   // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;                    // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;                   // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;             // brush_motor_driver_1_ctrl_translator:uav_waitrequest -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;              // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> brush_motor_driver_1_ctrl_translator:uav_burstcount
	wire  [31:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;               // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> brush_motor_driver_1_ctrl_translator:uav_writedata
	wire  [31:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                 // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> brush_motor_driver_1_ctrl_translator:uav_address
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                   // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> brush_motor_driver_1_ctrl_translator:uav_write
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                    // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> brush_motor_driver_1_ctrl_translator:uav_lock
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                    // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> brush_motor_driver_1_ctrl_translator:uav_read
	wire  [31:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                // brush_motor_driver_1_ctrl_translator:uav_readdata -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;           // brush_motor_driver_1_ctrl_translator:uav_readdatavalid -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;             // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> brush_motor_driver_1_ctrl_translator:uav_debugaccess
	wire   [3:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;              // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> brush_motor_driver_1_ctrl_translator:uav_byteenable
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;      // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;            // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;    // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;             // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;            // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;   // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;         // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket; // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;          // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;         // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;       // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;        // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;       // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;             // brush_motor_driver_3_ctrl_translator:uav_waitrequest -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;              // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> brush_motor_driver_3_ctrl_translator:uav_burstcount
	wire  [31:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;               // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> brush_motor_driver_3_ctrl_translator:uav_writedata
	wire  [31:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                 // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> brush_motor_driver_3_ctrl_translator:uav_address
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                   // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> brush_motor_driver_3_ctrl_translator:uav_write
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                    // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> brush_motor_driver_3_ctrl_translator:uav_lock
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                    // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> brush_motor_driver_3_ctrl_translator:uav_read
	wire  [31:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                // brush_motor_driver_3_ctrl_translator:uav_readdata -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;           // brush_motor_driver_3_ctrl_translator:uav_readdatavalid -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;             // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> brush_motor_driver_3_ctrl_translator:uav_debugaccess
	wire   [3:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;              // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> brush_motor_driver_3_ctrl_translator:uav_byteenable
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;      // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;            // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;    // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;             // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;            // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;   // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;         // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket; // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;          // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;         // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;       // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;        // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;       // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;             // brush_motor_driver_2_ctrl_translator:uav_waitrequest -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;              // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> brush_motor_driver_2_ctrl_translator:uav_burstcount
	wire  [31:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;               // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> brush_motor_driver_2_ctrl_translator:uav_writedata
	wire  [31:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                 // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> brush_motor_driver_2_ctrl_translator:uav_address
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                   // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> brush_motor_driver_2_ctrl_translator:uav_write
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                    // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> brush_motor_driver_2_ctrl_translator:uav_lock
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                    // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> brush_motor_driver_2_ctrl_translator:uav_read
	wire  [31:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                // brush_motor_driver_2_ctrl_translator:uav_readdata -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;           // brush_motor_driver_2_ctrl_translator:uav_readdatavalid -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;             // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> brush_motor_driver_2_ctrl_translator:uav_debugaccess
	wire   [3:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;              // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> brush_motor_driver_2_ctrl_translator:uav_byteenable
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;      // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;            // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;    // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;             // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;            // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;   // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;         // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket; // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;          // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;         // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;       // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;        // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;       // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;              // step_motor_driver_2_ctrl_translator:uav_waitrequest -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;               // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> step_motor_driver_2_ctrl_translator:uav_burstcount
	wire  [31:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> step_motor_driver_2_ctrl_translator:uav_writedata
	wire  [31:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                  // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> step_motor_driver_2_ctrl_translator:uav_address
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                    // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> step_motor_driver_2_ctrl_translator:uav_write
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                     // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> step_motor_driver_2_ctrl_translator:uav_lock
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                     // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> step_motor_driver_2_ctrl_translator:uav_read
	wire  [31:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                 // step_motor_driver_2_ctrl_translator:uav_readdata -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;            // step_motor_driver_2_ctrl_translator:uav_readdatavalid -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;              // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> step_motor_driver_2_ctrl_translator:uav_debugaccess
	wire   [3:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;               // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> step_motor_driver_2_ctrl_translator:uav_byteenable
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;       // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;             // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;     // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;              // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;             // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;    // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;          // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;  // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;           // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;          // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;        // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;         // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;        // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;              // step_motor_driver_3_ctrl_translator:uav_waitrequest -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;               // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> step_motor_driver_3_ctrl_translator:uav_burstcount
	wire  [31:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> step_motor_driver_3_ctrl_translator:uav_writedata
	wire  [31:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                  // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> step_motor_driver_3_ctrl_translator:uav_address
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                    // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> step_motor_driver_3_ctrl_translator:uav_write
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                     // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> step_motor_driver_3_ctrl_translator:uav_lock
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                     // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> step_motor_driver_3_ctrl_translator:uav_read
	wire  [31:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                 // step_motor_driver_3_ctrl_translator:uav_readdata -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;            // step_motor_driver_3_ctrl_translator:uav_readdatavalid -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;              // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> step_motor_driver_3_ctrl_translator:uav_debugaccess
	wire   [3:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;               // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> step_motor_driver_3_ctrl_translator:uav_byteenable
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;       // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;             // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;     // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;              // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;             // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;    // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;          // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;  // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;           // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;          // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;        // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;         // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;        // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;              // step_motor_driver_4_ctrl_translator:uav_waitrequest -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;               // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> step_motor_driver_4_ctrl_translator:uav_burstcount
	wire  [31:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> step_motor_driver_4_ctrl_translator:uav_writedata
	wire  [31:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                  // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> step_motor_driver_4_ctrl_translator:uav_address
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                    // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> step_motor_driver_4_ctrl_translator:uav_write
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                     // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> step_motor_driver_4_ctrl_translator:uav_lock
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                     // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> step_motor_driver_4_ctrl_translator:uav_read
	wire  [31:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                 // step_motor_driver_4_ctrl_translator:uav_readdata -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;            // step_motor_driver_4_ctrl_translator:uav_readdatavalid -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;              // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> step_motor_driver_4_ctrl_translator:uav_debugaccess
	wire   [3:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;               // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> step_motor_driver_4_ctrl_translator:uav_byteenable
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;       // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;             // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;     // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;              // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;             // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;    // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;          // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;  // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;           // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;          // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;        // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;         // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;        // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;               // position_encoder_1_ctrl_translator:uav_waitrequest -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> position_encoder_1_ctrl_translator:uav_burstcount
	wire  [31:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                 // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> position_encoder_1_ctrl_translator:uav_writedata
	wire  [31:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                   // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> position_encoder_1_ctrl_translator:uav_address
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                     // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> position_encoder_1_ctrl_translator:uav_write
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                      // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> position_encoder_1_ctrl_translator:uav_lock
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                      // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> position_encoder_1_ctrl_translator:uav_read
	wire  [31:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                  // position_encoder_1_ctrl_translator:uav_readdata -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;             // position_encoder_1_ctrl_translator:uav_readdatavalid -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;               // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> position_encoder_1_ctrl_translator:uav_debugaccess
	wire   [3:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> position_encoder_1_ctrl_translator:uav_byteenable
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;        // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;              // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;      // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;               // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;              // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;     // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;           // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;   // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;            // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;           // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;         // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;          // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;         // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;               // position_encoder_2_ctrl_translator:uav_waitrequest -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> position_encoder_2_ctrl_translator:uav_burstcount
	wire  [31:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                 // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> position_encoder_2_ctrl_translator:uav_writedata
	wire  [31:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                   // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> position_encoder_2_ctrl_translator:uav_address
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                     // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> position_encoder_2_ctrl_translator:uav_write
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                      // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> position_encoder_2_ctrl_translator:uav_lock
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                      // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> position_encoder_2_ctrl_translator:uav_read
	wire  [31:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                  // position_encoder_2_ctrl_translator:uav_readdata -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;             // position_encoder_2_ctrl_translator:uav_readdatavalid -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;               // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> position_encoder_2_ctrl_translator:uav_debugaccess
	wire   [3:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> position_encoder_2_ctrl_translator:uav_byteenable
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;        // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;              // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;      // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;               // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;              // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;     // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;           // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;   // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;            // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;           // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;         // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;          // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;         // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest;               // position_encoder_3_ctrl_translator:uav_waitrequest -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_waitrequest
	wire   [2:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount;                // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_burstcount -> position_encoder_3_ctrl_translator:uav_burstcount
	wire  [31:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata;                 // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_writedata -> position_encoder_3_ctrl_translator:uav_writedata
	wire  [31:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address;                   // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_address -> position_encoder_3_ctrl_translator:uav_address
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write;                     // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_write -> position_encoder_3_ctrl_translator:uav_write
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock;                      // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_lock -> position_encoder_3_ctrl_translator:uav_lock
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read;                      // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_read -> position_encoder_3_ctrl_translator:uav_read
	wire  [31:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata;                  // position_encoder_3_ctrl_translator:uav_readdata -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_readdata
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid;             // position_encoder_3_ctrl_translator:uav_readdatavalid -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_readdatavalid
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess;               // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_debugaccess -> position_encoder_3_ctrl_translator:uav_debugaccess
	wire   [3:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable;                // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:m0_byteenable -> position_encoder_3_ctrl_translator:uav_byteenable
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket;        // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_endofpacket -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_endofpacket
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid;              // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_valid -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_valid
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket;      // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_startofpacket -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_startofpacket
	wire  [91:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data;               // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_data -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_data
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready;              // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:in_ready -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_source_ready
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket;     // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_endofpacket -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_endofpacket
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid;           // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_valid -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_valid
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket;   // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_startofpacket -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_startofpacket
	wire  [91:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data;            // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_data -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_data
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready;           // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rf_sink_ready -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo:out_ready
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid;         // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_valid -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_valid
	wire  [31:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data;          // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_data -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_data
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready;         // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_sink_ready -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rdata_fifo_src_ready
	wire         hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_endofpacket;                         // HPS_tabby_M1_translator_avalon_universal_master_0_agent:cp_endofpacket -> addr_router:sink_endofpacket
	wire         hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_valid;                               // HPS_tabby_M1_translator_avalon_universal_master_0_agent:cp_valid -> addr_router:sink_valid
	wire         hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_startofpacket;                       // HPS_tabby_M1_translator_avalon_universal_master_0_agent:cp_startofpacket -> addr_router:sink_startofpacket
	wire  [90:0] hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_data;                                // HPS_tabby_M1_translator_avalon_universal_master_0_agent:cp_data -> addr_router:sink_data
	wire         hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_ready;                               // addr_router:sink_ready -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:cp_ready
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_endofpacket;                     // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router:sink_endofpacket
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_valid;                           // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rp_valid -> id_router:sink_valid
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_startofpacket;                   // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router:sink_startofpacket
	wire  [90:0] basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_data;                            // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rp_data -> id_router:sink_data
	wire         basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_ready;                           // id_router:sink_ready -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:rp_ready
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;                  // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_001:sink_endofpacket
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                        // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_001:sink_valid
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;                // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_001:sink_startofpacket
	wire  [90:0] basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                         // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_001:sink_data
	wire         basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                        // id_router_001:sink_ready -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;                  // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_002:sink_endofpacket
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                        // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_002:sink_valid
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;                // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_002:sink_startofpacket
	wire  [90:0] basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                         // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_002:sink_data
	wire         basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                        // id_router_002:sink_ready -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;                  // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_003:sink_endofpacket
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                        // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_003:sink_valid
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;                // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_003:sink_startofpacket
	wire  [90:0] basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                         // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_003:sink_data
	wire         basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                        // id_router_003:sink_ready -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;                  // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_004:sink_endofpacket
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                        // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_004:sink_valid
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;                // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_004:sink_startofpacket
	wire  [90:0] basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                         // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_004:sink_data
	wire         basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                        // id_router_004:sink_ready -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;                 // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_005:sink_endofpacket
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                       // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_005:sink_valid
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;               // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_005:sink_startofpacket
	wire  [90:0] basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                        // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_005:sink_data
	wire         basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                       // id_router_005:sink_ready -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_endofpacket;                     // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_006:sink_endofpacket
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_valid;                           // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_006:sink_valid
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_startofpacket;                   // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_006:sink_startofpacket
	wire  [90:0] grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_data;                            // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rp_data -> id_router_006:sink_data
	wire         grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_ready;                           // id_router_006:sink_ready -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:rp_ready
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_endofpacket;                     // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_007:sink_endofpacket
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_valid;                           // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_007:sink_valid
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_startofpacket;                   // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_007:sink_startofpacket
	wire  [90:0] grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_data;                            // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rp_data -> id_router_007:sink_data
	wire         grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_ready;                           // id_router_007:sink_ready -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:rp_ready
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_endofpacket;                        // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_008:sink_endofpacket
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_valid;                              // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_008:sink_valid
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_startofpacket;                      // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_008:sink_startofpacket
	wire  [90:0] grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_data;                               // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rp_data -> id_router_008:sink_data
	wire         grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_ready;                              // id_router_008:sink_ready -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:rp_ready
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;                         // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_009:sink_endofpacket
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                               // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_009:sink_valid
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;                       // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_009:sink_startofpacket
	wire  [90:0] am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                                // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_009:sink_data
	wire         am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                               // id_router_009:sink_ready -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;              // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_010:sink_endofpacket
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                    // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_010:sink_valid
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;            // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_010:sink_startofpacket
	wire  [90:0] step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                     // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_010:sink_data
	wire         step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                    // id_router_010:sink_ready -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;               // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_011:sink_endofpacket
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                     // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_011:sink_valid
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;             // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_011:sink_startofpacket
	wire  [90:0] position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                      // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_011:sink_data
	wire         position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                     // id_router_011:sink_ready -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;             // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_012:sink_endofpacket
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                   // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_012:sink_valid
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;           // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_012:sink_startofpacket
	wire  [90:0] brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                    // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_012:sink_data
	wire         brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                   // id_router_012:sink_ready -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;               // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_013:sink_endofpacket
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                     // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_013:sink_valid
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;             // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_013:sink_startofpacket
	wire  [90:0] fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                      // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_013:sink_data
	wire         fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                     // id_router_013:sink_ready -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;              // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_014:sink_endofpacket
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                    // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_014:sink_valid
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;            // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_014:sink_startofpacket
	wire  [90:0] step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                     // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_014:sink_data
	wire         step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                    // id_router_014:sink_ready -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;                         // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_015:sink_endofpacket
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                               // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_015:sink_valid
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;                       // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_015:sink_startofpacket
	wire  [90:0] am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                                // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_015:sink_data
	wire         am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                               // id_router_015:sink_ready -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;             // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_016:sink_endofpacket
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                   // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_016:sink_valid
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;           // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_016:sink_startofpacket
	wire  [90:0] brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                    // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_016:sink_data
	wire         brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                   // id_router_016:sink_ready -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;             // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_017:sink_endofpacket
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                   // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_017:sink_valid
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;           // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_017:sink_startofpacket
	wire  [90:0] brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                    // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_017:sink_data
	wire         brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                   // id_router_017:sink_ready -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;             // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_018:sink_endofpacket
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                   // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_018:sink_valid
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;           // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_018:sink_startofpacket
	wire  [90:0] brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                    // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_018:sink_data
	wire         brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                   // id_router_018:sink_ready -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;              // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_019:sink_endofpacket
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                    // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_019:sink_valid
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;            // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_019:sink_startofpacket
	wire  [90:0] step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                     // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_019:sink_data
	wire         step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                    // id_router_019:sink_ready -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;              // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_020:sink_endofpacket
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                    // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_020:sink_valid
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;            // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_020:sink_startofpacket
	wire  [90:0] step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                     // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_020:sink_data
	wire         step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                    // id_router_020:sink_ready -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;              // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_021:sink_endofpacket
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                    // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_021:sink_valid
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;            // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_021:sink_startofpacket
	wire  [90:0] step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                     // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_021:sink_data
	wire         step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                    // id_router_021:sink_ready -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;               // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_022:sink_endofpacket
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                     // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_022:sink_valid
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;             // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_022:sink_startofpacket
	wire  [90:0] position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                      // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_022:sink_data
	wire         position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                     // id_router_022:sink_ready -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;               // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_023:sink_endofpacket
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                     // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_023:sink_valid
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;             // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_023:sink_startofpacket
	wire  [90:0] position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                      // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_023:sink_data
	wire         position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                     // id_router_023:sink_ready -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket;               // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rp_endofpacket -> id_router_024:sink_endofpacket
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid;                     // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rp_valid -> id_router_024:sink_valid
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket;             // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rp_startofpacket -> id_router_024:sink_startofpacket
	wire  [90:0] position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data;                      // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rp_data -> id_router_024:sink_data
	wire         position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready;                     // id_router_024:sink_ready -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:rp_ready
	wire         addr_router_src_endofpacket;                                                                    // addr_router:src_endofpacket -> limiter:cmd_sink_endofpacket
	wire         addr_router_src_valid;                                                                          // addr_router:src_valid -> limiter:cmd_sink_valid
	wire         addr_router_src_startofpacket;                                                                  // addr_router:src_startofpacket -> limiter:cmd_sink_startofpacket
	wire  [90:0] addr_router_src_data;                                                                           // addr_router:src_data -> limiter:cmd_sink_data
	wire  [24:0] addr_router_src_channel;                                                                        // addr_router:src_channel -> limiter:cmd_sink_channel
	wire         addr_router_src_ready;                                                                          // limiter:cmd_sink_ready -> addr_router:src_ready
	wire         limiter_rsp_src_endofpacket;                                                                    // limiter:rsp_src_endofpacket -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:rp_endofpacket
	wire         limiter_rsp_src_valid;                                                                          // limiter:rsp_src_valid -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:rp_valid
	wire         limiter_rsp_src_startofpacket;                                                                  // limiter:rsp_src_startofpacket -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:rp_startofpacket
	wire  [90:0] limiter_rsp_src_data;                                                                           // limiter:rsp_src_data -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:rp_data
	wire  [24:0] limiter_rsp_src_channel;                                                                        // limiter:rsp_src_channel -> HPS_tabby_M1_translator_avalon_universal_master_0_agent:rp_channel
	wire         limiter_rsp_src_ready;                                                                          // HPS_tabby_M1_translator_avalon_universal_master_0_agent:rp_ready -> limiter:rsp_src_ready
	wire         rst_controller_reset_out_reset;                                                                 // rst_controller:reset_out -> grid_PWM_0:rsi_PWMRST_reset
	wire         cmd_xbar_demux_src0_endofpacket;                                                                // cmd_xbar_demux:src0_endofpacket -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src0_valid;                                                                      // cmd_xbar_demux:src0_valid -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src0_startofpacket;                                                              // cmd_xbar_demux:src0_startofpacket -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src0_data;                                                                       // cmd_xbar_demux:src0_data -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src0_channel;                                                                    // cmd_xbar_demux:src0_channel -> basic_SysID_SysID_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src1_endofpacket;                                                                // cmd_xbar_demux:src1_endofpacket -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src1_valid;                                                                      // cmd_xbar_demux:src1_valid -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src1_startofpacket;                                                              // cmd_xbar_demux:src1_startofpacket -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src1_data;                                                                       // cmd_xbar_demux:src1_data -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src1_channel;                                                                    // cmd_xbar_demux:src1_channel -> basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src2_endofpacket;                                                                // cmd_xbar_demux:src2_endofpacket -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src2_valid;                                                                      // cmd_xbar_demux:src2_valid -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src2_startofpacket;                                                              // cmd_xbar_demux:src2_startofpacket -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src2_data;                                                                       // cmd_xbar_demux:src2_data -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src2_channel;                                                                    // cmd_xbar_demux:src2_channel -> basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src3_endofpacket;                                                                // cmd_xbar_demux:src3_endofpacket -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src3_valid;                                                                      // cmd_xbar_demux:src3_valid -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src3_startofpacket;                                                              // cmd_xbar_demux:src3_startofpacket -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src3_data;                                                                       // cmd_xbar_demux:src3_data -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src3_channel;                                                                    // cmd_xbar_demux:src3_channel -> basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src4_endofpacket;                                                                // cmd_xbar_demux:src4_endofpacket -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src4_valid;                                                                      // cmd_xbar_demux:src4_valid -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src4_startofpacket;                                                              // cmd_xbar_demux:src4_startofpacket -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src4_data;                                                                       // cmd_xbar_demux:src4_data -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src4_channel;                                                                    // cmd_xbar_demux:src4_channel -> basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src5_endofpacket;                                                                // cmd_xbar_demux:src5_endofpacket -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src5_valid;                                                                      // cmd_xbar_demux:src5_valid -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src5_startofpacket;                                                              // cmd_xbar_demux:src5_startofpacket -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src5_data;                                                                       // cmd_xbar_demux:src5_data -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src5_channel;                                                                    // cmd_xbar_demux:src5_channel -> basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src6_endofpacket;                                                                // cmd_xbar_demux:src6_endofpacket -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src6_valid;                                                                      // cmd_xbar_demux:src6_valid -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src6_startofpacket;                                                              // cmd_xbar_demux:src6_startofpacket -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src6_data;                                                                       // cmd_xbar_demux:src6_data -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src6_channel;                                                                    // cmd_xbar_demux:src6_channel -> grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src7_endofpacket;                                                                // cmd_xbar_demux:src7_endofpacket -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src7_valid;                                                                      // cmd_xbar_demux:src7_valid -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src7_startofpacket;                                                              // cmd_xbar_demux:src7_startofpacket -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src7_data;                                                                       // cmd_xbar_demux:src7_data -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src7_channel;                                                                    // cmd_xbar_demux:src7_channel -> grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src8_endofpacket;                                                                // cmd_xbar_demux:src8_endofpacket -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src8_valid;                                                                      // cmd_xbar_demux:src8_valid -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src8_startofpacket;                                                              // cmd_xbar_demux:src8_startofpacket -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src8_data;                                                                       // cmd_xbar_demux:src8_data -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src8_channel;                                                                    // cmd_xbar_demux:src8_channel -> grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src9_endofpacket;                                                                // cmd_xbar_demux:src9_endofpacket -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src9_valid;                                                                      // cmd_xbar_demux:src9_valid -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src9_startofpacket;                                                              // cmd_xbar_demux:src9_startofpacket -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src9_data;                                                                       // cmd_xbar_demux:src9_data -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src9_channel;                                                                    // cmd_xbar_demux:src9_channel -> AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src10_endofpacket;                                                               // cmd_xbar_demux:src10_endofpacket -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src10_valid;                                                                     // cmd_xbar_demux:src10_valid -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src10_startofpacket;                                                             // cmd_xbar_demux:src10_startofpacket -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src10_data;                                                                      // cmd_xbar_demux:src10_data -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src10_channel;                                                                   // cmd_xbar_demux:src10_channel -> step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src11_endofpacket;                                                               // cmd_xbar_demux:src11_endofpacket -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src11_valid;                                                                     // cmd_xbar_demux:src11_valid -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src11_startofpacket;                                                             // cmd_xbar_demux:src11_startofpacket -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src11_data;                                                                      // cmd_xbar_demux:src11_data -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src11_channel;                                                                   // cmd_xbar_demux:src11_channel -> position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src12_endofpacket;                                                               // cmd_xbar_demux:src12_endofpacket -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src12_valid;                                                                     // cmd_xbar_demux:src12_valid -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src12_startofpacket;                                                             // cmd_xbar_demux:src12_startofpacket -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src12_data;                                                                      // cmd_xbar_demux:src12_data -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src12_channel;                                                                   // cmd_xbar_demux:src12_channel -> brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src13_endofpacket;                                                               // cmd_xbar_demux:src13_endofpacket -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src13_valid;                                                                     // cmd_xbar_demux:src13_valid -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src13_startofpacket;                                                             // cmd_xbar_demux:src13_startofpacket -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src13_data;                                                                      // cmd_xbar_demux:src13_data -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src13_channel;                                                                   // cmd_xbar_demux:src13_channel -> fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src14_endofpacket;                                                               // cmd_xbar_demux:src14_endofpacket -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src14_valid;                                                                     // cmd_xbar_demux:src14_valid -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src14_startofpacket;                                                             // cmd_xbar_demux:src14_startofpacket -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src14_data;                                                                      // cmd_xbar_demux:src14_data -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src14_channel;                                                                   // cmd_xbar_demux:src14_channel -> step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src15_endofpacket;                                                               // cmd_xbar_demux:src15_endofpacket -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src15_valid;                                                                     // cmd_xbar_demux:src15_valid -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src15_startofpacket;                                                             // cmd_xbar_demux:src15_startofpacket -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src15_data;                                                                      // cmd_xbar_demux:src15_data -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src15_channel;                                                                   // cmd_xbar_demux:src15_channel -> AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src16_endofpacket;                                                               // cmd_xbar_demux:src16_endofpacket -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src16_valid;                                                                     // cmd_xbar_demux:src16_valid -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src16_startofpacket;                                                             // cmd_xbar_demux:src16_startofpacket -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src16_data;                                                                      // cmd_xbar_demux:src16_data -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src16_channel;                                                                   // cmd_xbar_demux:src16_channel -> brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src17_endofpacket;                                                               // cmd_xbar_demux:src17_endofpacket -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src17_valid;                                                                     // cmd_xbar_demux:src17_valid -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src17_startofpacket;                                                             // cmd_xbar_demux:src17_startofpacket -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src17_data;                                                                      // cmd_xbar_demux:src17_data -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src17_channel;                                                                   // cmd_xbar_demux:src17_channel -> brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src18_endofpacket;                                                               // cmd_xbar_demux:src18_endofpacket -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src18_valid;                                                                     // cmd_xbar_demux:src18_valid -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src18_startofpacket;                                                             // cmd_xbar_demux:src18_startofpacket -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src18_data;                                                                      // cmd_xbar_demux:src18_data -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src18_channel;                                                                   // cmd_xbar_demux:src18_channel -> brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src19_endofpacket;                                                               // cmd_xbar_demux:src19_endofpacket -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src19_valid;                                                                     // cmd_xbar_demux:src19_valid -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src19_startofpacket;                                                             // cmd_xbar_demux:src19_startofpacket -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src19_data;                                                                      // cmd_xbar_demux:src19_data -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src19_channel;                                                                   // cmd_xbar_demux:src19_channel -> step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src20_endofpacket;                                                               // cmd_xbar_demux:src20_endofpacket -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src20_valid;                                                                     // cmd_xbar_demux:src20_valid -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src20_startofpacket;                                                             // cmd_xbar_demux:src20_startofpacket -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src20_data;                                                                      // cmd_xbar_demux:src20_data -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src20_channel;                                                                   // cmd_xbar_demux:src20_channel -> step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src21_endofpacket;                                                               // cmd_xbar_demux:src21_endofpacket -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src21_valid;                                                                     // cmd_xbar_demux:src21_valid -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src21_startofpacket;                                                             // cmd_xbar_demux:src21_startofpacket -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src21_data;                                                                      // cmd_xbar_demux:src21_data -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src21_channel;                                                                   // cmd_xbar_demux:src21_channel -> step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src22_endofpacket;                                                               // cmd_xbar_demux:src22_endofpacket -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src22_valid;                                                                     // cmd_xbar_demux:src22_valid -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src22_startofpacket;                                                             // cmd_xbar_demux:src22_startofpacket -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src22_data;                                                                      // cmd_xbar_demux:src22_data -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src22_channel;                                                                   // cmd_xbar_demux:src22_channel -> position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src23_endofpacket;                                                               // cmd_xbar_demux:src23_endofpacket -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src23_valid;                                                                     // cmd_xbar_demux:src23_valid -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src23_startofpacket;                                                             // cmd_xbar_demux:src23_startofpacket -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src23_data;                                                                      // cmd_xbar_demux:src23_data -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src23_channel;                                                                   // cmd_xbar_demux:src23_channel -> position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         cmd_xbar_demux_src24_endofpacket;                                                               // cmd_xbar_demux:src24_endofpacket -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:cp_endofpacket
	wire         cmd_xbar_demux_src24_valid;                                                                     // cmd_xbar_demux:src24_valid -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:cp_valid
	wire         cmd_xbar_demux_src24_startofpacket;                                                             // cmd_xbar_demux:src24_startofpacket -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:cp_startofpacket
	wire  [90:0] cmd_xbar_demux_src24_data;                                                                      // cmd_xbar_demux:src24_data -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:cp_data
	wire  [24:0] cmd_xbar_demux_src24_channel;                                                                   // cmd_xbar_demux:src24_channel -> position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:cp_channel
	wire         rsp_xbar_demux_src0_endofpacket;                                                                // rsp_xbar_demux:src0_endofpacket -> rsp_xbar_mux:sink0_endofpacket
	wire         rsp_xbar_demux_src0_valid;                                                                      // rsp_xbar_demux:src0_valid -> rsp_xbar_mux:sink0_valid
	wire         rsp_xbar_demux_src0_startofpacket;                                                              // rsp_xbar_demux:src0_startofpacket -> rsp_xbar_mux:sink0_startofpacket
	wire  [90:0] rsp_xbar_demux_src0_data;                                                                       // rsp_xbar_demux:src0_data -> rsp_xbar_mux:sink0_data
	wire  [24:0] rsp_xbar_demux_src0_channel;                                                                    // rsp_xbar_demux:src0_channel -> rsp_xbar_mux:sink0_channel
	wire         rsp_xbar_demux_src0_ready;                                                                      // rsp_xbar_mux:sink0_ready -> rsp_xbar_demux:src0_ready
	wire         rsp_xbar_demux_001_src0_endofpacket;                                                            // rsp_xbar_demux_001:src0_endofpacket -> rsp_xbar_mux:sink1_endofpacket
	wire         rsp_xbar_demux_001_src0_valid;                                                                  // rsp_xbar_demux_001:src0_valid -> rsp_xbar_mux:sink1_valid
	wire         rsp_xbar_demux_001_src0_startofpacket;                                                          // rsp_xbar_demux_001:src0_startofpacket -> rsp_xbar_mux:sink1_startofpacket
	wire  [90:0] rsp_xbar_demux_001_src0_data;                                                                   // rsp_xbar_demux_001:src0_data -> rsp_xbar_mux:sink1_data
	wire  [24:0] rsp_xbar_demux_001_src0_channel;                                                                // rsp_xbar_demux_001:src0_channel -> rsp_xbar_mux:sink1_channel
	wire         rsp_xbar_demux_001_src0_ready;                                                                  // rsp_xbar_mux:sink1_ready -> rsp_xbar_demux_001:src0_ready
	wire         rsp_xbar_demux_002_src0_endofpacket;                                                            // rsp_xbar_demux_002:src0_endofpacket -> rsp_xbar_mux:sink2_endofpacket
	wire         rsp_xbar_demux_002_src0_valid;                                                                  // rsp_xbar_demux_002:src0_valid -> rsp_xbar_mux:sink2_valid
	wire         rsp_xbar_demux_002_src0_startofpacket;                                                          // rsp_xbar_demux_002:src0_startofpacket -> rsp_xbar_mux:sink2_startofpacket
	wire  [90:0] rsp_xbar_demux_002_src0_data;                                                                   // rsp_xbar_demux_002:src0_data -> rsp_xbar_mux:sink2_data
	wire  [24:0] rsp_xbar_demux_002_src0_channel;                                                                // rsp_xbar_demux_002:src0_channel -> rsp_xbar_mux:sink2_channel
	wire         rsp_xbar_demux_002_src0_ready;                                                                  // rsp_xbar_mux:sink2_ready -> rsp_xbar_demux_002:src0_ready
	wire         rsp_xbar_demux_003_src0_endofpacket;                                                            // rsp_xbar_demux_003:src0_endofpacket -> rsp_xbar_mux:sink3_endofpacket
	wire         rsp_xbar_demux_003_src0_valid;                                                                  // rsp_xbar_demux_003:src0_valid -> rsp_xbar_mux:sink3_valid
	wire         rsp_xbar_demux_003_src0_startofpacket;                                                          // rsp_xbar_demux_003:src0_startofpacket -> rsp_xbar_mux:sink3_startofpacket
	wire  [90:0] rsp_xbar_demux_003_src0_data;                                                                   // rsp_xbar_demux_003:src0_data -> rsp_xbar_mux:sink3_data
	wire  [24:0] rsp_xbar_demux_003_src0_channel;                                                                // rsp_xbar_demux_003:src0_channel -> rsp_xbar_mux:sink3_channel
	wire         rsp_xbar_demux_003_src0_ready;                                                                  // rsp_xbar_mux:sink3_ready -> rsp_xbar_demux_003:src0_ready
	wire         rsp_xbar_demux_004_src0_endofpacket;                                                            // rsp_xbar_demux_004:src0_endofpacket -> rsp_xbar_mux:sink4_endofpacket
	wire         rsp_xbar_demux_004_src0_valid;                                                                  // rsp_xbar_demux_004:src0_valid -> rsp_xbar_mux:sink4_valid
	wire         rsp_xbar_demux_004_src0_startofpacket;                                                          // rsp_xbar_demux_004:src0_startofpacket -> rsp_xbar_mux:sink4_startofpacket
	wire  [90:0] rsp_xbar_demux_004_src0_data;                                                                   // rsp_xbar_demux_004:src0_data -> rsp_xbar_mux:sink4_data
	wire  [24:0] rsp_xbar_demux_004_src0_channel;                                                                // rsp_xbar_demux_004:src0_channel -> rsp_xbar_mux:sink4_channel
	wire         rsp_xbar_demux_004_src0_ready;                                                                  // rsp_xbar_mux:sink4_ready -> rsp_xbar_demux_004:src0_ready
	wire         rsp_xbar_demux_005_src0_endofpacket;                                                            // rsp_xbar_demux_005:src0_endofpacket -> rsp_xbar_mux:sink5_endofpacket
	wire         rsp_xbar_demux_005_src0_valid;                                                                  // rsp_xbar_demux_005:src0_valid -> rsp_xbar_mux:sink5_valid
	wire         rsp_xbar_demux_005_src0_startofpacket;                                                          // rsp_xbar_demux_005:src0_startofpacket -> rsp_xbar_mux:sink5_startofpacket
	wire  [90:0] rsp_xbar_demux_005_src0_data;                                                                   // rsp_xbar_demux_005:src0_data -> rsp_xbar_mux:sink5_data
	wire  [24:0] rsp_xbar_demux_005_src0_channel;                                                                // rsp_xbar_demux_005:src0_channel -> rsp_xbar_mux:sink5_channel
	wire         rsp_xbar_demux_005_src0_ready;                                                                  // rsp_xbar_mux:sink5_ready -> rsp_xbar_demux_005:src0_ready
	wire         rsp_xbar_demux_006_src0_endofpacket;                                                            // rsp_xbar_demux_006:src0_endofpacket -> rsp_xbar_mux:sink6_endofpacket
	wire         rsp_xbar_demux_006_src0_valid;                                                                  // rsp_xbar_demux_006:src0_valid -> rsp_xbar_mux:sink6_valid
	wire         rsp_xbar_demux_006_src0_startofpacket;                                                          // rsp_xbar_demux_006:src0_startofpacket -> rsp_xbar_mux:sink6_startofpacket
	wire  [90:0] rsp_xbar_demux_006_src0_data;                                                                   // rsp_xbar_demux_006:src0_data -> rsp_xbar_mux:sink6_data
	wire  [24:0] rsp_xbar_demux_006_src0_channel;                                                                // rsp_xbar_demux_006:src0_channel -> rsp_xbar_mux:sink6_channel
	wire         rsp_xbar_demux_006_src0_ready;                                                                  // rsp_xbar_mux:sink6_ready -> rsp_xbar_demux_006:src0_ready
	wire         rsp_xbar_demux_007_src0_endofpacket;                                                            // rsp_xbar_demux_007:src0_endofpacket -> rsp_xbar_mux:sink7_endofpacket
	wire         rsp_xbar_demux_007_src0_valid;                                                                  // rsp_xbar_demux_007:src0_valid -> rsp_xbar_mux:sink7_valid
	wire         rsp_xbar_demux_007_src0_startofpacket;                                                          // rsp_xbar_demux_007:src0_startofpacket -> rsp_xbar_mux:sink7_startofpacket
	wire  [90:0] rsp_xbar_demux_007_src0_data;                                                                   // rsp_xbar_demux_007:src0_data -> rsp_xbar_mux:sink7_data
	wire  [24:0] rsp_xbar_demux_007_src0_channel;                                                                // rsp_xbar_demux_007:src0_channel -> rsp_xbar_mux:sink7_channel
	wire         rsp_xbar_demux_007_src0_ready;                                                                  // rsp_xbar_mux:sink7_ready -> rsp_xbar_demux_007:src0_ready
	wire         rsp_xbar_demux_008_src0_endofpacket;                                                            // rsp_xbar_demux_008:src0_endofpacket -> rsp_xbar_mux:sink8_endofpacket
	wire         rsp_xbar_demux_008_src0_valid;                                                                  // rsp_xbar_demux_008:src0_valid -> rsp_xbar_mux:sink8_valid
	wire         rsp_xbar_demux_008_src0_startofpacket;                                                          // rsp_xbar_demux_008:src0_startofpacket -> rsp_xbar_mux:sink8_startofpacket
	wire  [90:0] rsp_xbar_demux_008_src0_data;                                                                   // rsp_xbar_demux_008:src0_data -> rsp_xbar_mux:sink8_data
	wire  [24:0] rsp_xbar_demux_008_src0_channel;                                                                // rsp_xbar_demux_008:src0_channel -> rsp_xbar_mux:sink8_channel
	wire         rsp_xbar_demux_008_src0_ready;                                                                  // rsp_xbar_mux:sink8_ready -> rsp_xbar_demux_008:src0_ready
	wire         rsp_xbar_demux_009_src0_endofpacket;                                                            // rsp_xbar_demux_009:src0_endofpacket -> rsp_xbar_mux:sink9_endofpacket
	wire         rsp_xbar_demux_009_src0_valid;                                                                  // rsp_xbar_demux_009:src0_valid -> rsp_xbar_mux:sink9_valid
	wire         rsp_xbar_demux_009_src0_startofpacket;                                                          // rsp_xbar_demux_009:src0_startofpacket -> rsp_xbar_mux:sink9_startofpacket
	wire  [90:0] rsp_xbar_demux_009_src0_data;                                                                   // rsp_xbar_demux_009:src0_data -> rsp_xbar_mux:sink9_data
	wire  [24:0] rsp_xbar_demux_009_src0_channel;                                                                // rsp_xbar_demux_009:src0_channel -> rsp_xbar_mux:sink9_channel
	wire         rsp_xbar_demux_009_src0_ready;                                                                  // rsp_xbar_mux:sink9_ready -> rsp_xbar_demux_009:src0_ready
	wire         rsp_xbar_demux_010_src0_endofpacket;                                                            // rsp_xbar_demux_010:src0_endofpacket -> rsp_xbar_mux:sink10_endofpacket
	wire         rsp_xbar_demux_010_src0_valid;                                                                  // rsp_xbar_demux_010:src0_valid -> rsp_xbar_mux:sink10_valid
	wire         rsp_xbar_demux_010_src0_startofpacket;                                                          // rsp_xbar_demux_010:src0_startofpacket -> rsp_xbar_mux:sink10_startofpacket
	wire  [90:0] rsp_xbar_demux_010_src0_data;                                                                   // rsp_xbar_demux_010:src0_data -> rsp_xbar_mux:sink10_data
	wire  [24:0] rsp_xbar_demux_010_src0_channel;                                                                // rsp_xbar_demux_010:src0_channel -> rsp_xbar_mux:sink10_channel
	wire         rsp_xbar_demux_010_src0_ready;                                                                  // rsp_xbar_mux:sink10_ready -> rsp_xbar_demux_010:src0_ready
	wire         rsp_xbar_demux_011_src0_endofpacket;                                                            // rsp_xbar_demux_011:src0_endofpacket -> rsp_xbar_mux:sink11_endofpacket
	wire         rsp_xbar_demux_011_src0_valid;                                                                  // rsp_xbar_demux_011:src0_valid -> rsp_xbar_mux:sink11_valid
	wire         rsp_xbar_demux_011_src0_startofpacket;                                                          // rsp_xbar_demux_011:src0_startofpacket -> rsp_xbar_mux:sink11_startofpacket
	wire  [90:0] rsp_xbar_demux_011_src0_data;                                                                   // rsp_xbar_demux_011:src0_data -> rsp_xbar_mux:sink11_data
	wire  [24:0] rsp_xbar_demux_011_src0_channel;                                                                // rsp_xbar_demux_011:src0_channel -> rsp_xbar_mux:sink11_channel
	wire         rsp_xbar_demux_011_src0_ready;                                                                  // rsp_xbar_mux:sink11_ready -> rsp_xbar_demux_011:src0_ready
	wire         rsp_xbar_demux_012_src0_endofpacket;                                                            // rsp_xbar_demux_012:src0_endofpacket -> rsp_xbar_mux:sink12_endofpacket
	wire         rsp_xbar_demux_012_src0_valid;                                                                  // rsp_xbar_demux_012:src0_valid -> rsp_xbar_mux:sink12_valid
	wire         rsp_xbar_demux_012_src0_startofpacket;                                                          // rsp_xbar_demux_012:src0_startofpacket -> rsp_xbar_mux:sink12_startofpacket
	wire  [90:0] rsp_xbar_demux_012_src0_data;                                                                   // rsp_xbar_demux_012:src0_data -> rsp_xbar_mux:sink12_data
	wire  [24:0] rsp_xbar_demux_012_src0_channel;                                                                // rsp_xbar_demux_012:src0_channel -> rsp_xbar_mux:sink12_channel
	wire         rsp_xbar_demux_012_src0_ready;                                                                  // rsp_xbar_mux:sink12_ready -> rsp_xbar_demux_012:src0_ready
	wire         rsp_xbar_demux_013_src0_endofpacket;                                                            // rsp_xbar_demux_013:src0_endofpacket -> rsp_xbar_mux:sink13_endofpacket
	wire         rsp_xbar_demux_013_src0_valid;                                                                  // rsp_xbar_demux_013:src0_valid -> rsp_xbar_mux:sink13_valid
	wire         rsp_xbar_demux_013_src0_startofpacket;                                                          // rsp_xbar_demux_013:src0_startofpacket -> rsp_xbar_mux:sink13_startofpacket
	wire  [90:0] rsp_xbar_demux_013_src0_data;                                                                   // rsp_xbar_demux_013:src0_data -> rsp_xbar_mux:sink13_data
	wire  [24:0] rsp_xbar_demux_013_src0_channel;                                                                // rsp_xbar_demux_013:src0_channel -> rsp_xbar_mux:sink13_channel
	wire         rsp_xbar_demux_013_src0_ready;                                                                  // rsp_xbar_mux:sink13_ready -> rsp_xbar_demux_013:src0_ready
	wire         rsp_xbar_demux_014_src0_endofpacket;                                                            // rsp_xbar_demux_014:src0_endofpacket -> rsp_xbar_mux:sink14_endofpacket
	wire         rsp_xbar_demux_014_src0_valid;                                                                  // rsp_xbar_demux_014:src0_valid -> rsp_xbar_mux:sink14_valid
	wire         rsp_xbar_demux_014_src0_startofpacket;                                                          // rsp_xbar_demux_014:src0_startofpacket -> rsp_xbar_mux:sink14_startofpacket
	wire  [90:0] rsp_xbar_demux_014_src0_data;                                                                   // rsp_xbar_demux_014:src0_data -> rsp_xbar_mux:sink14_data
	wire  [24:0] rsp_xbar_demux_014_src0_channel;                                                                // rsp_xbar_demux_014:src0_channel -> rsp_xbar_mux:sink14_channel
	wire         rsp_xbar_demux_014_src0_ready;                                                                  // rsp_xbar_mux:sink14_ready -> rsp_xbar_demux_014:src0_ready
	wire         rsp_xbar_demux_015_src0_endofpacket;                                                            // rsp_xbar_demux_015:src0_endofpacket -> rsp_xbar_mux:sink15_endofpacket
	wire         rsp_xbar_demux_015_src0_valid;                                                                  // rsp_xbar_demux_015:src0_valid -> rsp_xbar_mux:sink15_valid
	wire         rsp_xbar_demux_015_src0_startofpacket;                                                          // rsp_xbar_demux_015:src0_startofpacket -> rsp_xbar_mux:sink15_startofpacket
	wire  [90:0] rsp_xbar_demux_015_src0_data;                                                                   // rsp_xbar_demux_015:src0_data -> rsp_xbar_mux:sink15_data
	wire  [24:0] rsp_xbar_demux_015_src0_channel;                                                                // rsp_xbar_demux_015:src0_channel -> rsp_xbar_mux:sink15_channel
	wire         rsp_xbar_demux_015_src0_ready;                                                                  // rsp_xbar_mux:sink15_ready -> rsp_xbar_demux_015:src0_ready
	wire         rsp_xbar_demux_016_src0_endofpacket;                                                            // rsp_xbar_demux_016:src0_endofpacket -> rsp_xbar_mux:sink16_endofpacket
	wire         rsp_xbar_demux_016_src0_valid;                                                                  // rsp_xbar_demux_016:src0_valid -> rsp_xbar_mux:sink16_valid
	wire         rsp_xbar_demux_016_src0_startofpacket;                                                          // rsp_xbar_demux_016:src0_startofpacket -> rsp_xbar_mux:sink16_startofpacket
	wire  [90:0] rsp_xbar_demux_016_src0_data;                                                                   // rsp_xbar_demux_016:src0_data -> rsp_xbar_mux:sink16_data
	wire  [24:0] rsp_xbar_demux_016_src0_channel;                                                                // rsp_xbar_demux_016:src0_channel -> rsp_xbar_mux:sink16_channel
	wire         rsp_xbar_demux_016_src0_ready;                                                                  // rsp_xbar_mux:sink16_ready -> rsp_xbar_demux_016:src0_ready
	wire         rsp_xbar_demux_017_src0_endofpacket;                                                            // rsp_xbar_demux_017:src0_endofpacket -> rsp_xbar_mux:sink17_endofpacket
	wire         rsp_xbar_demux_017_src0_valid;                                                                  // rsp_xbar_demux_017:src0_valid -> rsp_xbar_mux:sink17_valid
	wire         rsp_xbar_demux_017_src0_startofpacket;                                                          // rsp_xbar_demux_017:src0_startofpacket -> rsp_xbar_mux:sink17_startofpacket
	wire  [90:0] rsp_xbar_demux_017_src0_data;                                                                   // rsp_xbar_demux_017:src0_data -> rsp_xbar_mux:sink17_data
	wire  [24:0] rsp_xbar_demux_017_src0_channel;                                                                // rsp_xbar_demux_017:src0_channel -> rsp_xbar_mux:sink17_channel
	wire         rsp_xbar_demux_017_src0_ready;                                                                  // rsp_xbar_mux:sink17_ready -> rsp_xbar_demux_017:src0_ready
	wire         rsp_xbar_demux_018_src0_endofpacket;                                                            // rsp_xbar_demux_018:src0_endofpacket -> rsp_xbar_mux:sink18_endofpacket
	wire         rsp_xbar_demux_018_src0_valid;                                                                  // rsp_xbar_demux_018:src0_valid -> rsp_xbar_mux:sink18_valid
	wire         rsp_xbar_demux_018_src0_startofpacket;                                                          // rsp_xbar_demux_018:src0_startofpacket -> rsp_xbar_mux:sink18_startofpacket
	wire  [90:0] rsp_xbar_demux_018_src0_data;                                                                   // rsp_xbar_demux_018:src0_data -> rsp_xbar_mux:sink18_data
	wire  [24:0] rsp_xbar_demux_018_src0_channel;                                                                // rsp_xbar_demux_018:src0_channel -> rsp_xbar_mux:sink18_channel
	wire         rsp_xbar_demux_018_src0_ready;                                                                  // rsp_xbar_mux:sink18_ready -> rsp_xbar_demux_018:src0_ready
	wire         rsp_xbar_demux_019_src0_endofpacket;                                                            // rsp_xbar_demux_019:src0_endofpacket -> rsp_xbar_mux:sink19_endofpacket
	wire         rsp_xbar_demux_019_src0_valid;                                                                  // rsp_xbar_demux_019:src0_valid -> rsp_xbar_mux:sink19_valid
	wire         rsp_xbar_demux_019_src0_startofpacket;                                                          // rsp_xbar_demux_019:src0_startofpacket -> rsp_xbar_mux:sink19_startofpacket
	wire  [90:0] rsp_xbar_demux_019_src0_data;                                                                   // rsp_xbar_demux_019:src0_data -> rsp_xbar_mux:sink19_data
	wire  [24:0] rsp_xbar_demux_019_src0_channel;                                                                // rsp_xbar_demux_019:src0_channel -> rsp_xbar_mux:sink19_channel
	wire         rsp_xbar_demux_019_src0_ready;                                                                  // rsp_xbar_mux:sink19_ready -> rsp_xbar_demux_019:src0_ready
	wire         rsp_xbar_demux_020_src0_endofpacket;                                                            // rsp_xbar_demux_020:src0_endofpacket -> rsp_xbar_mux:sink20_endofpacket
	wire         rsp_xbar_demux_020_src0_valid;                                                                  // rsp_xbar_demux_020:src0_valid -> rsp_xbar_mux:sink20_valid
	wire         rsp_xbar_demux_020_src0_startofpacket;                                                          // rsp_xbar_demux_020:src0_startofpacket -> rsp_xbar_mux:sink20_startofpacket
	wire  [90:0] rsp_xbar_demux_020_src0_data;                                                                   // rsp_xbar_demux_020:src0_data -> rsp_xbar_mux:sink20_data
	wire  [24:0] rsp_xbar_demux_020_src0_channel;                                                                // rsp_xbar_demux_020:src0_channel -> rsp_xbar_mux:sink20_channel
	wire         rsp_xbar_demux_020_src0_ready;                                                                  // rsp_xbar_mux:sink20_ready -> rsp_xbar_demux_020:src0_ready
	wire         rsp_xbar_demux_021_src0_endofpacket;                                                            // rsp_xbar_demux_021:src0_endofpacket -> rsp_xbar_mux:sink21_endofpacket
	wire         rsp_xbar_demux_021_src0_valid;                                                                  // rsp_xbar_demux_021:src0_valid -> rsp_xbar_mux:sink21_valid
	wire         rsp_xbar_demux_021_src0_startofpacket;                                                          // rsp_xbar_demux_021:src0_startofpacket -> rsp_xbar_mux:sink21_startofpacket
	wire  [90:0] rsp_xbar_demux_021_src0_data;                                                                   // rsp_xbar_demux_021:src0_data -> rsp_xbar_mux:sink21_data
	wire  [24:0] rsp_xbar_demux_021_src0_channel;                                                                // rsp_xbar_demux_021:src0_channel -> rsp_xbar_mux:sink21_channel
	wire         rsp_xbar_demux_021_src0_ready;                                                                  // rsp_xbar_mux:sink21_ready -> rsp_xbar_demux_021:src0_ready
	wire         rsp_xbar_demux_022_src0_endofpacket;                                                            // rsp_xbar_demux_022:src0_endofpacket -> rsp_xbar_mux:sink22_endofpacket
	wire         rsp_xbar_demux_022_src0_valid;                                                                  // rsp_xbar_demux_022:src0_valid -> rsp_xbar_mux:sink22_valid
	wire         rsp_xbar_demux_022_src0_startofpacket;                                                          // rsp_xbar_demux_022:src0_startofpacket -> rsp_xbar_mux:sink22_startofpacket
	wire  [90:0] rsp_xbar_demux_022_src0_data;                                                                   // rsp_xbar_demux_022:src0_data -> rsp_xbar_mux:sink22_data
	wire  [24:0] rsp_xbar_demux_022_src0_channel;                                                                // rsp_xbar_demux_022:src0_channel -> rsp_xbar_mux:sink22_channel
	wire         rsp_xbar_demux_022_src0_ready;                                                                  // rsp_xbar_mux:sink22_ready -> rsp_xbar_demux_022:src0_ready
	wire         rsp_xbar_demux_023_src0_endofpacket;                                                            // rsp_xbar_demux_023:src0_endofpacket -> rsp_xbar_mux:sink23_endofpacket
	wire         rsp_xbar_demux_023_src0_valid;                                                                  // rsp_xbar_demux_023:src0_valid -> rsp_xbar_mux:sink23_valid
	wire         rsp_xbar_demux_023_src0_startofpacket;                                                          // rsp_xbar_demux_023:src0_startofpacket -> rsp_xbar_mux:sink23_startofpacket
	wire  [90:0] rsp_xbar_demux_023_src0_data;                                                                   // rsp_xbar_demux_023:src0_data -> rsp_xbar_mux:sink23_data
	wire  [24:0] rsp_xbar_demux_023_src0_channel;                                                                // rsp_xbar_demux_023:src0_channel -> rsp_xbar_mux:sink23_channel
	wire         rsp_xbar_demux_023_src0_ready;                                                                  // rsp_xbar_mux:sink23_ready -> rsp_xbar_demux_023:src0_ready
	wire         rsp_xbar_demux_024_src0_endofpacket;                                                            // rsp_xbar_demux_024:src0_endofpacket -> rsp_xbar_mux:sink24_endofpacket
	wire         rsp_xbar_demux_024_src0_valid;                                                                  // rsp_xbar_demux_024:src0_valid -> rsp_xbar_mux:sink24_valid
	wire         rsp_xbar_demux_024_src0_startofpacket;                                                          // rsp_xbar_demux_024:src0_startofpacket -> rsp_xbar_mux:sink24_startofpacket
	wire  [90:0] rsp_xbar_demux_024_src0_data;                                                                   // rsp_xbar_demux_024:src0_data -> rsp_xbar_mux:sink24_data
	wire  [24:0] rsp_xbar_demux_024_src0_channel;                                                                // rsp_xbar_demux_024:src0_channel -> rsp_xbar_mux:sink24_channel
	wire         rsp_xbar_demux_024_src0_ready;                                                                  // rsp_xbar_mux:sink24_ready -> rsp_xbar_demux_024:src0_ready
	wire         limiter_cmd_src_endofpacket;                                                                    // limiter:cmd_src_endofpacket -> cmd_xbar_demux:sink_endofpacket
	wire         limiter_cmd_src_startofpacket;                                                                  // limiter:cmd_src_startofpacket -> cmd_xbar_demux:sink_startofpacket
	wire  [90:0] limiter_cmd_src_data;                                                                           // limiter:cmd_src_data -> cmd_xbar_demux:sink_data
	wire  [24:0] limiter_cmd_src_channel;                                                                        // limiter:cmd_src_channel -> cmd_xbar_demux:sink_channel
	wire         limiter_cmd_src_ready;                                                                          // cmd_xbar_demux:sink_ready -> limiter:cmd_src_ready
	wire         rsp_xbar_mux_src_endofpacket;                                                                   // rsp_xbar_mux:src_endofpacket -> limiter:rsp_sink_endofpacket
	wire         rsp_xbar_mux_src_valid;                                                                         // rsp_xbar_mux:src_valid -> limiter:rsp_sink_valid
	wire         rsp_xbar_mux_src_startofpacket;                                                                 // rsp_xbar_mux:src_startofpacket -> limiter:rsp_sink_startofpacket
	wire  [90:0] rsp_xbar_mux_src_data;                                                                          // rsp_xbar_mux:src_data -> limiter:rsp_sink_data
	wire  [24:0] rsp_xbar_mux_src_channel;                                                                       // rsp_xbar_mux:src_channel -> limiter:rsp_sink_channel
	wire         rsp_xbar_mux_src_ready;                                                                         // limiter:rsp_sink_ready -> rsp_xbar_mux:src_ready
	wire         cmd_xbar_demux_src0_ready;                                                                      // basic_SysID_SysID_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src0_ready
	wire         id_router_src_endofpacket;                                                                      // id_router:src_endofpacket -> rsp_xbar_demux:sink_endofpacket
	wire         id_router_src_valid;                                                                            // id_router:src_valid -> rsp_xbar_demux:sink_valid
	wire         id_router_src_startofpacket;                                                                    // id_router:src_startofpacket -> rsp_xbar_demux:sink_startofpacket
	wire  [90:0] id_router_src_data;                                                                             // id_router:src_data -> rsp_xbar_demux:sink_data
	wire  [24:0] id_router_src_channel;                                                                          // id_router:src_channel -> rsp_xbar_demux:sink_channel
	wire         id_router_src_ready;                                                                            // rsp_xbar_demux:sink_ready -> id_router:src_ready
	wire         cmd_xbar_demux_src1_ready;                                                                      // basic_FuncLED_0_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src1_ready
	wire         id_router_001_src_endofpacket;                                                                  // id_router_001:src_endofpacket -> rsp_xbar_demux_001:sink_endofpacket
	wire         id_router_001_src_valid;                                                                        // id_router_001:src_valid -> rsp_xbar_demux_001:sink_valid
	wire         id_router_001_src_startofpacket;                                                                // id_router_001:src_startofpacket -> rsp_xbar_demux_001:sink_startofpacket
	wire  [90:0] id_router_001_src_data;                                                                         // id_router_001:src_data -> rsp_xbar_demux_001:sink_data
	wire  [24:0] id_router_001_src_channel;                                                                      // id_router_001:src_channel -> rsp_xbar_demux_001:sink_channel
	wire         id_router_001_src_ready;                                                                        // rsp_xbar_demux_001:sink_ready -> id_router_001:src_ready
	wire         cmd_xbar_demux_src2_ready;                                                                      // basic_FuncLED_1_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src2_ready
	wire         id_router_002_src_endofpacket;                                                                  // id_router_002:src_endofpacket -> rsp_xbar_demux_002:sink_endofpacket
	wire         id_router_002_src_valid;                                                                        // id_router_002:src_valid -> rsp_xbar_demux_002:sink_valid
	wire         id_router_002_src_startofpacket;                                                                // id_router_002:src_startofpacket -> rsp_xbar_demux_002:sink_startofpacket
	wire  [90:0] id_router_002_src_data;                                                                         // id_router_002:src_data -> rsp_xbar_demux_002:sink_data
	wire  [24:0] id_router_002_src_channel;                                                                      // id_router_002:src_channel -> rsp_xbar_demux_002:sink_channel
	wire         id_router_002_src_ready;                                                                        // rsp_xbar_demux_002:sink_ready -> id_router_002:src_ready
	wire         cmd_xbar_demux_src3_ready;                                                                      // basic_FuncLED_2_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src3_ready
	wire         id_router_003_src_endofpacket;                                                                  // id_router_003:src_endofpacket -> rsp_xbar_demux_003:sink_endofpacket
	wire         id_router_003_src_valid;                                                                        // id_router_003:src_valid -> rsp_xbar_demux_003:sink_valid
	wire         id_router_003_src_startofpacket;                                                                // id_router_003:src_startofpacket -> rsp_xbar_demux_003:sink_startofpacket
	wire  [90:0] id_router_003_src_data;                                                                         // id_router_003:src_data -> rsp_xbar_demux_003:sink_data
	wire  [24:0] id_router_003_src_channel;                                                                      // id_router_003:src_channel -> rsp_xbar_demux_003:sink_channel
	wire         id_router_003_src_ready;                                                                        // rsp_xbar_demux_003:sink_ready -> id_router_003:src_ready
	wire         cmd_xbar_demux_src4_ready;                                                                      // basic_FuncLED_3_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src4_ready
	wire         id_router_004_src_endofpacket;                                                                  // id_router_004:src_endofpacket -> rsp_xbar_demux_004:sink_endofpacket
	wire         id_router_004_src_valid;                                                                        // id_router_004:src_valid -> rsp_xbar_demux_004:sink_valid
	wire         id_router_004_src_startofpacket;                                                                // id_router_004:src_startofpacket -> rsp_xbar_demux_004:sink_startofpacket
	wire  [90:0] id_router_004_src_data;                                                                         // id_router_004:src_data -> rsp_xbar_demux_004:sink_data
	wire  [24:0] id_router_004_src_channel;                                                                      // id_router_004:src_channel -> rsp_xbar_demux_004:sink_channel
	wire         id_router_004_src_ready;                                                                        // rsp_xbar_demux_004:sink_ready -> id_router_004:src_ready
	wire         cmd_xbar_demux_src5_ready;                                                                      // basic_ShieldCtrl_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src5_ready
	wire         id_router_005_src_endofpacket;                                                                  // id_router_005:src_endofpacket -> rsp_xbar_demux_005:sink_endofpacket
	wire         id_router_005_src_valid;                                                                        // id_router_005:src_valid -> rsp_xbar_demux_005:sink_valid
	wire         id_router_005_src_startofpacket;                                                                // id_router_005:src_startofpacket -> rsp_xbar_demux_005:sink_startofpacket
	wire  [90:0] id_router_005_src_data;                                                                         // id_router_005:src_data -> rsp_xbar_demux_005:sink_data
	wire  [24:0] id_router_005_src_channel;                                                                      // id_router_005:src_channel -> rsp_xbar_demux_005:sink_channel
	wire         id_router_005_src_ready;                                                                        // rsp_xbar_demux_005:sink_ready -> id_router_005:src_ready
	wire         cmd_xbar_demux_src6_ready;                                                                      // grid_PIO26_A_gpio_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src6_ready
	wire         id_router_006_src_endofpacket;                                                                  // id_router_006:src_endofpacket -> rsp_xbar_demux_006:sink_endofpacket
	wire         id_router_006_src_valid;                                                                        // id_router_006:src_valid -> rsp_xbar_demux_006:sink_valid
	wire         id_router_006_src_startofpacket;                                                                // id_router_006:src_startofpacket -> rsp_xbar_demux_006:sink_startofpacket
	wire  [90:0] id_router_006_src_data;                                                                         // id_router_006:src_data -> rsp_xbar_demux_006:sink_data
	wire  [24:0] id_router_006_src_channel;                                                                      // id_router_006:src_channel -> rsp_xbar_demux_006:sink_channel
	wire         id_router_006_src_ready;                                                                        // rsp_xbar_demux_006:sink_ready -> id_router_006:src_ready
	wire         cmd_xbar_demux_src7_ready;                                                                      // grid_PIO26_B_gpio_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src7_ready
	wire         id_router_007_src_endofpacket;                                                                  // id_router_007:src_endofpacket -> rsp_xbar_demux_007:sink_endofpacket
	wire         id_router_007_src_valid;                                                                        // id_router_007:src_valid -> rsp_xbar_demux_007:sink_valid
	wire         id_router_007_src_startofpacket;                                                                // id_router_007:src_startofpacket -> rsp_xbar_demux_007:sink_startofpacket
	wire  [90:0] id_router_007_src_data;                                                                         // id_router_007:src_data -> rsp_xbar_demux_007:sink_data
	wire  [24:0] id_router_007_src_channel;                                                                      // id_router_007:src_channel -> rsp_xbar_demux_007:sink_channel
	wire         id_router_007_src_ready;                                                                        // rsp_xbar_demux_007:sink_ready -> id_router_007:src_ready
	wire         cmd_xbar_demux_src8_ready;                                                                      // grid_PWM_0_pwm_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src8_ready
	wire         id_router_008_src_endofpacket;                                                                  // id_router_008:src_endofpacket -> rsp_xbar_demux_008:sink_endofpacket
	wire         id_router_008_src_valid;                                                                        // id_router_008:src_valid -> rsp_xbar_demux_008:sink_valid
	wire         id_router_008_src_startofpacket;                                                                // id_router_008:src_startofpacket -> rsp_xbar_demux_008:sink_startofpacket
	wire  [90:0] id_router_008_src_data;                                                                         // id_router_008:src_data -> rsp_xbar_demux_008:sink_data
	wire  [24:0] id_router_008_src_channel;                                                                      // id_router_008:src_channel -> rsp_xbar_demux_008:sink_channel
	wire         id_router_008_src_ready;                                                                        // rsp_xbar_demux_008:sink_ready -> id_router_008:src_ready
	wire         cmd_xbar_demux_src9_ready;                                                                      // AM2301_0_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src9_ready
	wire         id_router_009_src_endofpacket;                                                                  // id_router_009:src_endofpacket -> rsp_xbar_demux_009:sink_endofpacket
	wire         id_router_009_src_valid;                                                                        // id_router_009:src_valid -> rsp_xbar_demux_009:sink_valid
	wire         id_router_009_src_startofpacket;                                                                // id_router_009:src_startofpacket -> rsp_xbar_demux_009:sink_startofpacket
	wire  [90:0] id_router_009_src_data;                                                                         // id_router_009:src_data -> rsp_xbar_demux_009:sink_data
	wire  [24:0] id_router_009_src_channel;                                                                      // id_router_009:src_channel -> rsp_xbar_demux_009:sink_channel
	wire         id_router_009_src_ready;                                                                        // rsp_xbar_demux_009:sink_ready -> id_router_009:src_ready
	wire         cmd_xbar_demux_src10_ready;                                                                     // step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src10_ready
	wire         id_router_010_src_endofpacket;                                                                  // id_router_010:src_endofpacket -> rsp_xbar_demux_010:sink_endofpacket
	wire         id_router_010_src_valid;                                                                        // id_router_010:src_valid -> rsp_xbar_demux_010:sink_valid
	wire         id_router_010_src_startofpacket;                                                                // id_router_010:src_startofpacket -> rsp_xbar_demux_010:sink_startofpacket
	wire  [90:0] id_router_010_src_data;                                                                         // id_router_010:src_data -> rsp_xbar_demux_010:sink_data
	wire  [24:0] id_router_010_src_channel;                                                                      // id_router_010:src_channel -> rsp_xbar_demux_010:sink_channel
	wire         id_router_010_src_ready;                                                                        // rsp_xbar_demux_010:sink_ready -> id_router_010:src_ready
	wire         cmd_xbar_demux_src11_ready;                                                                     // position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src11_ready
	wire         id_router_011_src_endofpacket;                                                                  // id_router_011:src_endofpacket -> rsp_xbar_demux_011:sink_endofpacket
	wire         id_router_011_src_valid;                                                                        // id_router_011:src_valid -> rsp_xbar_demux_011:sink_valid
	wire         id_router_011_src_startofpacket;                                                                // id_router_011:src_startofpacket -> rsp_xbar_demux_011:sink_startofpacket
	wire  [90:0] id_router_011_src_data;                                                                         // id_router_011:src_data -> rsp_xbar_demux_011:sink_data
	wire  [24:0] id_router_011_src_channel;                                                                      // id_router_011:src_channel -> rsp_xbar_demux_011:sink_channel
	wire         id_router_011_src_ready;                                                                        // rsp_xbar_demux_011:sink_ready -> id_router_011:src_ready
	wire         cmd_xbar_demux_src12_ready;                                                                     // brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src12_ready
	wire         id_router_012_src_endofpacket;                                                                  // id_router_012:src_endofpacket -> rsp_xbar_demux_012:sink_endofpacket
	wire         id_router_012_src_valid;                                                                        // id_router_012:src_valid -> rsp_xbar_demux_012:sink_valid
	wire         id_router_012_src_startofpacket;                                                                // id_router_012:src_startofpacket -> rsp_xbar_demux_012:sink_startofpacket
	wire  [90:0] id_router_012_src_data;                                                                         // id_router_012:src_data -> rsp_xbar_demux_012:sink_data
	wire  [24:0] id_router_012_src_channel;                                                                      // id_router_012:src_channel -> rsp_xbar_demux_012:sink_channel
	wire         id_router_012_src_ready;                                                                        // rsp_xbar_demux_012:sink_ready -> id_router_012:src_ready
	wire         cmd_xbar_demux_src13_ready;                                                                     // fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src13_ready
	wire         id_router_013_src_endofpacket;                                                                  // id_router_013:src_endofpacket -> rsp_xbar_demux_013:sink_endofpacket
	wire         id_router_013_src_valid;                                                                        // id_router_013:src_valid -> rsp_xbar_demux_013:sink_valid
	wire         id_router_013_src_startofpacket;                                                                // id_router_013:src_startofpacket -> rsp_xbar_demux_013:sink_startofpacket
	wire  [90:0] id_router_013_src_data;                                                                         // id_router_013:src_data -> rsp_xbar_demux_013:sink_data
	wire  [24:0] id_router_013_src_channel;                                                                      // id_router_013:src_channel -> rsp_xbar_demux_013:sink_channel
	wire         id_router_013_src_ready;                                                                        // rsp_xbar_demux_013:sink_ready -> id_router_013:src_ready
	wire         cmd_xbar_demux_src14_ready;                                                                     // step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src14_ready
	wire         id_router_014_src_endofpacket;                                                                  // id_router_014:src_endofpacket -> rsp_xbar_demux_014:sink_endofpacket
	wire         id_router_014_src_valid;                                                                        // id_router_014:src_valid -> rsp_xbar_demux_014:sink_valid
	wire         id_router_014_src_startofpacket;                                                                // id_router_014:src_startofpacket -> rsp_xbar_demux_014:sink_startofpacket
	wire  [90:0] id_router_014_src_data;                                                                         // id_router_014:src_data -> rsp_xbar_demux_014:sink_data
	wire  [24:0] id_router_014_src_channel;                                                                      // id_router_014:src_channel -> rsp_xbar_demux_014:sink_channel
	wire         id_router_014_src_ready;                                                                        // rsp_xbar_demux_014:sink_ready -> id_router_014:src_ready
	wire         cmd_xbar_demux_src15_ready;                                                                     // AM2301_1_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src15_ready
	wire         id_router_015_src_endofpacket;                                                                  // id_router_015:src_endofpacket -> rsp_xbar_demux_015:sink_endofpacket
	wire         id_router_015_src_valid;                                                                        // id_router_015:src_valid -> rsp_xbar_demux_015:sink_valid
	wire         id_router_015_src_startofpacket;                                                                // id_router_015:src_startofpacket -> rsp_xbar_demux_015:sink_startofpacket
	wire  [90:0] id_router_015_src_data;                                                                         // id_router_015:src_data -> rsp_xbar_demux_015:sink_data
	wire  [24:0] id_router_015_src_channel;                                                                      // id_router_015:src_channel -> rsp_xbar_demux_015:sink_channel
	wire         id_router_015_src_ready;                                                                        // rsp_xbar_demux_015:sink_ready -> id_router_015:src_ready
	wire         cmd_xbar_demux_src16_ready;                                                                     // brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src16_ready
	wire         id_router_016_src_endofpacket;                                                                  // id_router_016:src_endofpacket -> rsp_xbar_demux_016:sink_endofpacket
	wire         id_router_016_src_valid;                                                                        // id_router_016:src_valid -> rsp_xbar_demux_016:sink_valid
	wire         id_router_016_src_startofpacket;                                                                // id_router_016:src_startofpacket -> rsp_xbar_demux_016:sink_startofpacket
	wire  [90:0] id_router_016_src_data;                                                                         // id_router_016:src_data -> rsp_xbar_demux_016:sink_data
	wire  [24:0] id_router_016_src_channel;                                                                      // id_router_016:src_channel -> rsp_xbar_demux_016:sink_channel
	wire         id_router_016_src_ready;                                                                        // rsp_xbar_demux_016:sink_ready -> id_router_016:src_ready
	wire         cmd_xbar_demux_src17_ready;                                                                     // brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src17_ready
	wire         id_router_017_src_endofpacket;                                                                  // id_router_017:src_endofpacket -> rsp_xbar_demux_017:sink_endofpacket
	wire         id_router_017_src_valid;                                                                        // id_router_017:src_valid -> rsp_xbar_demux_017:sink_valid
	wire         id_router_017_src_startofpacket;                                                                // id_router_017:src_startofpacket -> rsp_xbar_demux_017:sink_startofpacket
	wire  [90:0] id_router_017_src_data;                                                                         // id_router_017:src_data -> rsp_xbar_demux_017:sink_data
	wire  [24:0] id_router_017_src_channel;                                                                      // id_router_017:src_channel -> rsp_xbar_demux_017:sink_channel
	wire         id_router_017_src_ready;                                                                        // rsp_xbar_demux_017:sink_ready -> id_router_017:src_ready
	wire         cmd_xbar_demux_src18_ready;                                                                     // brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src18_ready
	wire         id_router_018_src_endofpacket;                                                                  // id_router_018:src_endofpacket -> rsp_xbar_demux_018:sink_endofpacket
	wire         id_router_018_src_valid;                                                                        // id_router_018:src_valid -> rsp_xbar_demux_018:sink_valid
	wire         id_router_018_src_startofpacket;                                                                // id_router_018:src_startofpacket -> rsp_xbar_demux_018:sink_startofpacket
	wire  [90:0] id_router_018_src_data;                                                                         // id_router_018:src_data -> rsp_xbar_demux_018:sink_data
	wire  [24:0] id_router_018_src_channel;                                                                      // id_router_018:src_channel -> rsp_xbar_demux_018:sink_channel
	wire         id_router_018_src_ready;                                                                        // rsp_xbar_demux_018:sink_ready -> id_router_018:src_ready
	wire         cmd_xbar_demux_src19_ready;                                                                     // step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src19_ready
	wire         id_router_019_src_endofpacket;                                                                  // id_router_019:src_endofpacket -> rsp_xbar_demux_019:sink_endofpacket
	wire         id_router_019_src_valid;                                                                        // id_router_019:src_valid -> rsp_xbar_demux_019:sink_valid
	wire         id_router_019_src_startofpacket;                                                                // id_router_019:src_startofpacket -> rsp_xbar_demux_019:sink_startofpacket
	wire  [90:0] id_router_019_src_data;                                                                         // id_router_019:src_data -> rsp_xbar_demux_019:sink_data
	wire  [24:0] id_router_019_src_channel;                                                                      // id_router_019:src_channel -> rsp_xbar_demux_019:sink_channel
	wire         id_router_019_src_ready;                                                                        // rsp_xbar_demux_019:sink_ready -> id_router_019:src_ready
	wire         cmd_xbar_demux_src20_ready;                                                                     // step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src20_ready
	wire         id_router_020_src_endofpacket;                                                                  // id_router_020:src_endofpacket -> rsp_xbar_demux_020:sink_endofpacket
	wire         id_router_020_src_valid;                                                                        // id_router_020:src_valid -> rsp_xbar_demux_020:sink_valid
	wire         id_router_020_src_startofpacket;                                                                // id_router_020:src_startofpacket -> rsp_xbar_demux_020:sink_startofpacket
	wire  [90:0] id_router_020_src_data;                                                                         // id_router_020:src_data -> rsp_xbar_demux_020:sink_data
	wire  [24:0] id_router_020_src_channel;                                                                      // id_router_020:src_channel -> rsp_xbar_demux_020:sink_channel
	wire         id_router_020_src_ready;                                                                        // rsp_xbar_demux_020:sink_ready -> id_router_020:src_ready
	wire         cmd_xbar_demux_src21_ready;                                                                     // step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src21_ready
	wire         id_router_021_src_endofpacket;                                                                  // id_router_021:src_endofpacket -> rsp_xbar_demux_021:sink_endofpacket
	wire         id_router_021_src_valid;                                                                        // id_router_021:src_valid -> rsp_xbar_demux_021:sink_valid
	wire         id_router_021_src_startofpacket;                                                                // id_router_021:src_startofpacket -> rsp_xbar_demux_021:sink_startofpacket
	wire  [90:0] id_router_021_src_data;                                                                         // id_router_021:src_data -> rsp_xbar_demux_021:sink_data
	wire  [24:0] id_router_021_src_channel;                                                                      // id_router_021:src_channel -> rsp_xbar_demux_021:sink_channel
	wire         id_router_021_src_ready;                                                                        // rsp_xbar_demux_021:sink_ready -> id_router_021:src_ready
	wire         cmd_xbar_demux_src22_ready;                                                                     // position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src22_ready
	wire         id_router_022_src_endofpacket;                                                                  // id_router_022:src_endofpacket -> rsp_xbar_demux_022:sink_endofpacket
	wire         id_router_022_src_valid;                                                                        // id_router_022:src_valid -> rsp_xbar_demux_022:sink_valid
	wire         id_router_022_src_startofpacket;                                                                // id_router_022:src_startofpacket -> rsp_xbar_demux_022:sink_startofpacket
	wire  [90:0] id_router_022_src_data;                                                                         // id_router_022:src_data -> rsp_xbar_demux_022:sink_data
	wire  [24:0] id_router_022_src_channel;                                                                      // id_router_022:src_channel -> rsp_xbar_demux_022:sink_channel
	wire         id_router_022_src_ready;                                                                        // rsp_xbar_demux_022:sink_ready -> id_router_022:src_ready
	wire         cmd_xbar_demux_src23_ready;                                                                     // position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src23_ready
	wire         id_router_023_src_endofpacket;                                                                  // id_router_023:src_endofpacket -> rsp_xbar_demux_023:sink_endofpacket
	wire         id_router_023_src_valid;                                                                        // id_router_023:src_valid -> rsp_xbar_demux_023:sink_valid
	wire         id_router_023_src_startofpacket;                                                                // id_router_023:src_startofpacket -> rsp_xbar_demux_023:sink_startofpacket
	wire  [90:0] id_router_023_src_data;                                                                         // id_router_023:src_data -> rsp_xbar_demux_023:sink_data
	wire  [24:0] id_router_023_src_channel;                                                                      // id_router_023:src_channel -> rsp_xbar_demux_023:sink_channel
	wire         id_router_023_src_ready;                                                                        // rsp_xbar_demux_023:sink_ready -> id_router_023:src_ready
	wire         cmd_xbar_demux_src24_ready;                                                                     // position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent:cp_ready -> cmd_xbar_demux:src24_ready
	wire         id_router_024_src_endofpacket;                                                                  // id_router_024:src_endofpacket -> rsp_xbar_demux_024:sink_endofpacket
	wire         id_router_024_src_valid;                                                                        // id_router_024:src_valid -> rsp_xbar_demux_024:sink_valid
	wire         id_router_024_src_startofpacket;                                                                // id_router_024:src_startofpacket -> rsp_xbar_demux_024:sink_startofpacket
	wire  [90:0] id_router_024_src_data;                                                                         // id_router_024:src_data -> rsp_xbar_demux_024:sink_data
	wire  [24:0] id_router_024_src_channel;                                                                      // id_router_024:src_channel -> rsp_xbar_demux_024:sink_channel
	wire         id_router_024_src_ready;                                                                        // rsp_xbar_demux_024:sink_ready -> id_router_024:src_ready
	wire  [24:0] limiter_cmd_valid_data;                                                                         // limiter:cmd_src_valid -> cmd_xbar_demux:sink_valid
	wire         irq_mapper_receiver0_irq;                                                                       // basic_ShieldCtrl:ins_OC_irq -> irq_mapper:receiver0_irq
	wire         irq_mapper_receiver1_irq;                                                                       // grid_PIO26_A:ins_gpint_irq -> irq_mapper:receiver1_irq
	wire         irq_mapper_receiver2_irq;                                                                       // grid_PIO26_B:ins_gpint_irq -> irq_mapper:receiver2_irq
	wire   [9:0] hps_tabby_events_irq;                                                                           // irq_synchronizer:sender_irq -> HPS_tabby:inr_EVENTS_irq
	wire   [9:0] irq_synchronizer_receiver_irq;                                                                  // irq_mapper:sender_irq -> irq_synchronizer:receiver_irq

	hps_tabby hps_tabby (
		.rso_MRST_reset       (hps_tabby_mrst_reset),       //   MRST.reset
		.cso_MCLK_clk         (hps_tabby_mclk_clk),         //   MCLK.clk
		.cso_H1CLK_clk        (),                           //  H1CLK.clk
		.cso_H2CLK_clk        (hps_tabby_h2clk_clk),        //  H2CLK.clk
		.avm_M1_writedata     (hps_tabby_m1_writedata),     //     M1.writedata
		.avm_M1_readdata      (hps_tabby_m1_readdata),      //       .readdata
		.avm_M1_address       (hps_tabby_m1_address),       //       .address
		.avm_M1_byteenable    (hps_tabby_m1_byteenable),    //       .byteenable
		.avm_M1_write         (hps_tabby_m1_write),         //       .write
		.avm_M1_read          (hps_tabby_m1_read),          //       .read
		.avm_M1_begintransfer (hps_tabby_m1_begintransfer), //       .begintransfer
		.avm_M1_readdatavalid (hps_tabby_m1_readdatavalid), //       .readdatavalid
		.avm_M1_waitrequest   (hps_tabby_m1_waitrequest),   //       .waitrequest
		.inr_EVENTS_irq       (hps_tabby_events_irq),       // EVENTS.irq
		.coe_M1_RSTN          (m0_RSTN),                    // EXPORT.export
		.coe_M1_CLK           (m0_CLK),                     //       .export
		.coe_M1_ADDR          (m0_ADDR),                    //       .export
		.coe_M1_DATA          (m0_DATA),                    //       .export
		.coe_M1_CSN           (m0_CSN),                     //       .export
		.coe_M1_BEN           (m0_BEN),                     //       .export
		.coe_M1_RDN           (m0_RDN),                     //       .export
		.coe_M1_WRN           (m0_WRN),                     //       .export
		.coe_M1_WAITN         (m0_WAITN),                   //       .export
		.coe_M1_EINT          (m0_EINT)                     //       .export
	);

	basic_SysID basic_sysid (
		.rsi_MRST_reset        (hps_tabby_mrst_reset),                                         //  MRST.reset
		.csi_MCLK_clk          (hps_tabby_mclk_clk),                                           //  MCLK.clk
		.avs_SysID_readdata    (basic_sysid_sysid_translator_avalon_anti_slave_0_readdata),    // SysID.readdata
		.avs_SysID_address     (basic_sysid_sysid_translator_avalon_anti_slave_0_address),     //      .address
		.avs_SysID_read        (basic_sysid_sysid_translator_avalon_anti_slave_0_read),        //      .read
		.avs_SysID_waitrequest (basic_sysid_sysid_translator_avalon_anti_slave_0_waitrequest)  //      .waitrequest
	);

	basic_FuncLED basic_funcled_0 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                            //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                              //   MCLK.clk
		.avs_ctrl_writedata   (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_writedata),   //   ctrl.writedata
		.avs_ctrl_readdata    (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_ctrl_byteenable  (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_ctrl_write       (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_write),       //       .write
		.avs_ctrl_read        (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_read),        //       .read
		.avs_ctrl_waitrequest (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.asi_ledf_data        (test_ledstate_fled0_data),                                        //   ledf.data
		.asi_ledf_valid       (test_ledstate_fled0_valid),                                       //       .valid
		.coe_LED_R            (led_f0_R),                                                        // EXPORT.export
		.coe_LED_G            (led_f0_G),                                                        //       .export
		.coe_LED_B            (led_f0_B)                                                         //       .export
	);

	basic_FuncLED basic_funcled_1 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                            //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                              //   MCLK.clk
		.avs_ctrl_writedata   (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_writedata),   //   ctrl.writedata
		.avs_ctrl_readdata    (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_ctrl_byteenable  (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_ctrl_write       (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_write),       //       .write
		.avs_ctrl_read        (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_read),        //       .read
		.avs_ctrl_waitrequest (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.asi_ledf_data        (test_ledstate_fled1_data),                                        //   ledf.data
		.asi_ledf_valid       (test_ledstate_fled1_valid),                                       //       .valid
		.coe_LED_R            (led_f1_R),                                                        // EXPORT.export
		.coe_LED_G            (led_f1_G),                                                        //       .export
		.coe_LED_B            (led_f1_B)                                                         //       .export
	);

	basic_FuncLED basic_funcled_2 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                            //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                              //   MCLK.clk
		.avs_ctrl_writedata   (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_writedata),   //   ctrl.writedata
		.avs_ctrl_readdata    (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_ctrl_byteenable  (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_ctrl_write       (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_write),       //       .write
		.avs_ctrl_read        (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_read),        //       .read
		.avs_ctrl_waitrequest (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.asi_ledf_data        (test_ledstate_fled2_data),                                        //   ledf.data
		.asi_ledf_valid       (test_ledstate_fled2_valid),                                       //       .valid
		.coe_LED_R            (led_f2_R),                                                        // EXPORT.export
		.coe_LED_G            (led_f2_G),                                                        //       .export
		.coe_LED_B            (led_f2_B)                                                         //       .export
	);

	basic_FuncLED basic_funcled_3 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                            //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                              //   MCLK.clk
		.avs_ctrl_writedata   (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_writedata),   //   ctrl.writedata
		.avs_ctrl_readdata    (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_ctrl_byteenable  (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_ctrl_write       (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_write),       //       .write
		.avs_ctrl_read        (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_read),        //       .read
		.avs_ctrl_waitrequest (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.asi_ledf_data        (test_ledstate_fled3_data),                                        //   ledf.data
		.asi_ledf_valid       (test_ledstate_fled3_valid),                                       //       .valid
		.coe_LED_R            (led_f3_R),                                                        // EXPORT.export
		.coe_LED_G            (led_f3_G),                                                        //       .export
		.coe_LED_B            (led_f3_B)                                                         //       .export
	);

	basic_ShieldCtrl basic_shieldctrl (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                             //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                               //   MCLK.clk
		.avs_ctrl_writedata   (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_writedata),   //   ctrl.writedata
		.avs_ctrl_readdata    (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_ctrl_byteenable  (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_ctrl_write       (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_write),       //       .write
		.avs_ctrl_read        (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_read),        //       .read
		.avs_ctrl_waitrequest (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.ins_OC_irq           (irq_mapper_receiver0_irq),                                         //     OC.irq
		.coe_A_OCN            (shield_ctrl_A_OCN),                                                // EXPORT.export
		.coe_A_PWREN          (shield_ctrl_A_PWREN),                                              //       .export
		.coe_A_HOE            (shield_ctrl_A_HOE),                                                //       .export
		.coe_A_LOE            (shield_ctrl_A_LOE),                                                //       .export
		.coe_B_OCN            (shield_ctrl_B_OCN),                                                //       .export
		.coe_B_PWREN          (shield_ctrl_B_PWREN),                                              //       .export
		.coe_B_HOE            (shield_ctrl_B_HOE),                                                //       .export
		.coe_B_LOE            (shield_ctrl_B_LOE)                                                 //       .export
	);

	test_LEDState test_ledstate (
		.rsi_MRST_reset  (hps_tabby_mrst_reset),      //  MRST.reset
		.csi_MCLK_clk    (hps_tabby_mclk_clk),        //  MCLK.clk
		.aso_fled0_data  (test_ledstate_fled0_data),  // fled0.data
		.aso_fled0_valid (test_ledstate_fled0_valid), //      .valid
		.aso_fled1_data  (test_ledstate_fled1_data),  // fled1.data
		.aso_fled1_valid (test_ledstate_fled1_valid), //      .valid
		.aso_fled2_data  (test_ledstate_fled2_data),  // fled2.data
		.aso_fled2_valid (test_ledstate_fled2_valid), //      .valid
		.aso_fled3_data  (test_ledstate_fled3_data),  // fled3.data
		.aso_fled3_valid (test_ledstate_fled3_valid)  //      .valid
	);

	grid_PIO26 grid_pio26_a (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                         //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                           //   MCLK.clk
		.avs_gpio_writedata   (grid_pio26_a_gpio_translator_avalon_anti_slave_0_writedata),   //   gpio.writedata
		.avs_gpio_readdata    (grid_pio26_a_gpio_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_gpio_address     (grid_pio26_a_gpio_translator_avalon_anti_slave_0_address),     //       .address
		.avs_gpio_byteenable  (grid_pio26_a_gpio_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_gpio_write       (grid_pio26_a_gpio_translator_avalon_anti_slave_0_write),       //       .write
		.avs_gpio_read        (grid_pio26_a_gpio_translator_avalon_anti_slave_0_read),        //       .read
		.avs_gpio_waitrequest (grid_pio26_a_gpio_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.ins_gpint_irq        (irq_mapper_receiver1_irq),                                     //  gpint.irq
		.coe_P0               (slot_a_P0),                                                    // EXPORT.export
		.coe_P1               (slot_a_P1),                                                    //       .export
		.coe_P2               (slot_a_P2),                                                    //       .export
		.coe_P3               (slot_a_P3),                                                    //       .export
		.coe_P4               (slot_a_P4),                                                    //       .export
		.coe_P5               (slot_a_P5),                                                    //       .export
		.coe_P6               (slot_a_P6),                                                    //       .export
		.coe_P7               (slot_a_P7),                                                    //       .export
		.coe_P8               (slot_a_P8),                                                    //       .export
		.coe_P9               (slot_a_P9),                                                    //       .export
		.coe_P10              (slot_a_P10),                                                   //       .export
		.coe_P11              (slot_a_P11),                                                   //       .export
		.coe_P12              (slot_a_P12),                                                   //       .export
		.coe_P13              (slot_a_P13),                                                   //       .export
		.coe_P14              (slot_a_P14),                                                   //       .export
		.coe_P15              (slot_a_P15),                                                   //       .export
		.coe_P16              (slot_a_P16),                                                   //       .export
		.coe_P17              (slot_a_P17),                                                   //       .export
		.coe_P18              (slot_a_P18),                                                   //       .export
		.coe_P19              (slot_a_P19),                                                   //       .export
		.coe_P20              (slot_a_P20),                                                   //       .export
		.coe_P21              (slot_a_P21),                                                   //       .export
		.coe_P22              (slot_a_P22),                                                   //       .export
		.coe_P23              (slot_a_P23),                                                   //       .export
		.coe_P24              (slot_a_P24),                                                   //       .export
		.coe_P25              (slot_a_P25)                                                    //       .export
	);

	grid_PIO26 grid_pio26_b (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                         //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                           //   MCLK.clk
		.avs_gpio_writedata   (grid_pio26_b_gpio_translator_avalon_anti_slave_0_writedata),   //   gpio.writedata
		.avs_gpio_readdata    (grid_pio26_b_gpio_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_gpio_address     (grid_pio26_b_gpio_translator_avalon_anti_slave_0_address),     //       .address
		.avs_gpio_byteenable  (grid_pio26_b_gpio_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_gpio_write       (grid_pio26_b_gpio_translator_avalon_anti_slave_0_write),       //       .write
		.avs_gpio_read        (grid_pio26_b_gpio_translator_avalon_anti_slave_0_read),        //       .read
		.avs_gpio_waitrequest (grid_pio26_b_gpio_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.ins_gpint_irq        (irq_mapper_receiver2_irq),                                     //  gpint.irq
		.coe_P0               (slot_b_P0),                                                    // EXPORT.export
		.coe_P1               (slot_b_P1),                                                    //       .export
		.coe_P2               (slot_b_P2),                                                    //       .export
		.coe_P3               (slot_b_P3),                                                    //       .export
		.coe_P4               (slot_b_P4),                                                    //       .export
		.coe_P5               (slot_b_P5),                                                    //       .export
		.coe_P6               (slot_b_P6),                                                    //       .export
		.coe_P7               (slot_b_P7),                                                    //       .export
		.coe_P8               (slot_b_P8),                                                    //       .export
		.coe_P9               (slot_b_P9),                                                    //       .export
		.coe_P10              (slot_b_P10),                                                   //       .export
		.coe_P11              (slot_b_P11),                                                   //       .export
		.coe_P12              (slot_b_P12),                                                   //       .export
		.coe_P13              (slot_b_P13),                                                   //       .export
		.coe_P14              (slot_b_P14),                                                   //       .export
		.coe_P15              (slot_b_P15),                                                   //       .export
		.coe_P16              (slot_b_P16),                                                   //       .export
		.coe_P17              (slot_b_P17),                                                   //       .export
		.coe_P18              (slot_b_P18),                                                   //       .export
		.coe_P19              (slot_b_P19),                                                   //       .export
		.coe_P20              (slot_b_P20),                                                   //       .export
		.coe_P21              (slot_b_P21),                                                   //       .export
		.coe_P22              (slot_b_P22),                                                   //       .export
		.coe_P23              (slot_b_P23),                                                   //       .export
		.coe_P24              (slot_b_P24),                                                   //       .export
		.coe_P25              (slot_b_P25)                                                    //       .export
	);

	grid_PWM grid_pwm_0 (
		.rsi_MRST_reset      (hps_tabby_mrst_reset),                                      //   MRST.reset
		.csi_MCLK_clk        (hps_tabby_mclk_clk),                                        //   MCLK.clk
		.avs_pwm_writedata   (grid_pwm_0_pwm_translator_avalon_anti_slave_0_writedata),   //    pwm.writedata
		.avs_pwm_readdata    (grid_pwm_0_pwm_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_pwm_address     (grid_pwm_0_pwm_translator_avalon_anti_slave_0_address),     //       .address
		.avs_pwm_byteenable  (grid_pwm_0_pwm_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_pwm_write       (grid_pwm_0_pwm_translator_avalon_anti_slave_0_write),       //       .write
		.avs_pwm_read        (grid_pwm_0_pwm_translator_avalon_anti_slave_0_read),        //       .read
		.avs_pwm_waitrequest (grid_pwm_0_pwm_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.rsi_PWMRST_reset    (rst_controller_reset_out_reset),                            // PWMRST.reset
		.csi_PWMCLK_clk      (hps_tabby_h2clk_clk),                                       // PWMCLK.clk
		.asi_fm_data         (),                                                          //     fm.data
		.asi_fm_valid        (),                                                          //       .valid
		.asi_fm_ready        (),                                                          //       .ready
		.asi_pm_data         (),                                                          //     pm.data
		.asi_pm_valid        (),                                                          //       .valid
		.asi_pm_ready        (),                                                          //       .ready
		.coe_PWMOUT          (pwm_c0_export)                                              // EXPORT.export
	);

	AM2301 #(
		.high_width  (20),
		.start_width (1000),
		.start       (0),
		.start_read  (1),
		.start_end   (2),
		.start_low   (3),
		.start_high  (4),
		.bit_1_low   (5),
		.bit_1_high  (6),
		.bit_2_low   (7),
		.bit_2_high  (8),
		.bit_3_low   (9),
		.bit_3_high  (10),
		.bit_4_low   (11),
		.bit_4_high  (12),
		.bit_5_low   (13),
		.bit_5_high  (14),
		.bit_6_low   (15),
		.bit_6_high  (16),
		.bit_7_low   (17),
		.bit_7_high  (18),
		.bit_8_low   (19),
		.bit_8_high  (20),
		.bit_9_low   (21),
		.bit_9_high  (22),
		.bit_10_low  (23),
		.bit_10_high (24),
		.bit_11_low  (25),
		.bit_11_high (26),
		.bit_12_low  (27),
		.bit_12_high (28),
		.bit_13_low  (29),
		.bit_13_high (30),
		.bit_14_low  (31),
		.bit_14_high (32),
		.bit_15_low  (33),
		.bit_15_high (34),
		.bit_16_low  (35),
		.bit_16_high (36),
		.bit_17_low  (37),
		.bit_17_high (38),
		.bit_18_low  (39),
		.bit_18_high (40),
		.bit_19_low  (41),
		.bit_19_high (42),
		.bit_20_low  (43),
		.bit_20_high (44),
		.bit_21_low  (45),
		.bit_21_high (46),
		.bit_22_low  (47),
		.bit_22_high (48),
		.bit_23_low  (49),
		.bit_23_high (50),
		.bit_24_low  (51),
		.bit_24_high (52),
		.bit_25_low  (53),
		.bit_25_high (54),
		.bit_26_low  (55),
		.bit_26_high (56),
		.bit_27_low  (57),
		.bit_27_high (58),
		.bit_28_low  (59),
		.bit_28_high (60),
		.bit_29_low  (61),
		.bit_29_high (62),
		.bit_30_low  (63),
		.bit_30_high (64),
		.bit_31_low  (65),
		.bit_31_high (66),
		.bit_32_low  (67),
		.bit_32_high (68),
		.ready       (90),
		.time_2s     (2000000)
	) am2301_0 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                     //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                       //   MCLK.clk
		.avs_ctrl_writedata   (am2301_0_ctrl_translator_avalon_anti_slave_0_writedata),   //   ctrl.writedata
		.avs_ctrl_readdata    (am2301_0_ctrl_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_ctrl_byteenable  (am2301_0_ctrl_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_ctrl_address     (am2301_0_ctrl_translator_avalon_anti_slave_0_address),     //       .address
		.avs_ctrl_write       (am2301_0_ctrl_translator_avalon_anti_slave_0_write),       //       .write
		.avs_ctrl_read        (am2301_0_ctrl_translator_avalon_anti_slave_0_read),        //       .read
		.avs_ctrl_waitrequest (am2301_0_ctrl_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.sda                  (am2301_0_sda),                                             // AM2301.export
		.clk_1us              (am2301_0_clk_1us)                                          //       .export
	);

	step_motor_driver step_motor_driver_0 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                //       MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                  //       MCLK.clk
		.avs_ctrl_writedata   (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata),   //       ctrl.writedata
		.avs_ctrl_readdata    (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata),    //           .readdata
		.avs_ctrl_byteenable  (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable),  //           .byteenable
		.avs_ctrl_address     (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address),     //           .address
		.avs_ctrl_write       (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write),       //           .write
		.avs_ctrl_read        (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read),        //           .read
		.avs_ctrl_waitrequest (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest), //           .waitrequest
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                //     PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk),                                                 //     PWMCLK.clk
		.AX                   (step_motor_driver_0_AX),                                              // step_motor.export
		.AY                   (step_motor_driver_0_AY),                                              //           .export
		.BX                   (step_motor_driver_0_BX),                                              //           .export
		.BY                   (step_motor_driver_0_BY),                                              //           .export
		.AE                   (step_motor_driver_0_AE),                                              //           .export
		.BE                   (step_motor_driver_0_BE)                                               //           .export
	);

	brush_motor_driver brush_motor_driver_0 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                 //        MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                   //        MCLK.clk
		.avs_ctrl_writedata   (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata),   //        ctrl.writedata
		.avs_ctrl_readdata    (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata),    //            .readdata
		.avs_ctrl_byteenable  (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable),  //            .byteenable
		.avs_ctrl_address     (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address),     //            .address
		.avs_ctrl_write       (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write),       //            .write
		.avs_ctrl_read        (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read),        //            .read
		.avs_ctrl_waitrequest (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest), //            .waitrequest
		.HX                   (brush_motor_driver_0_HX),                                              // brush_motor.export
		.HY                   (brush_motor_driver_0_HY),                                              //            .export
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                 //      PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk)                                                   //      PWMCLK.clk
	);

	position_encoder position_encoder_0 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                               //             MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                 //             MCLK.clk
		.avs_ctrl_writedata   (position_encoder_0_ctrl_translator_avalon_anti_slave_0_writedata),   //             ctrl.writedata
		.avs_ctrl_readdata    (position_encoder_0_ctrl_translator_avalon_anti_slave_0_readdata),    //                 .readdata
		.avs_ctrl_byteenable  (position_encoder_0_ctrl_translator_avalon_anti_slave_0_byteenable),  //                 .byteenable
		.avs_ctrl_address     (position_encoder_0_ctrl_translator_avalon_anti_slave_0_address),     //                 .address
		.avs_ctrl_write       (position_encoder_0_ctrl_translator_avalon_anti_slave_0_write),       //                 .write
		.avs_ctrl_read        (position_encoder_0_ctrl_translator_avalon_anti_slave_0_read),        //                 .read
		.avs_ctrl_waitrequest (position_encoder_0_ctrl_translator_avalon_anti_slave_0_waitrequest), //                 .waitrequest
		.A                    (position_encoder_0_A),                                               // position_encoder.export
		.B                    (position_encoder_0_B),                                               //                 .export
		.Z                    (position_encoder_0_Z)                                                //                 .export
	);

	fan_motor_driver fan_motor_driver_0 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                               //      MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                 //      MCLK.clk
		.avs_ctrl_writedata   (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata),   //      ctrl.writedata
		.avs_ctrl_readdata    (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata),    //          .readdata
		.avs_ctrl_byteenable  (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable),  //          .byteenable
		.avs_ctrl_address     (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address),     //          .address
		.avs_ctrl_write       (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write),       //          .write
		.avs_ctrl_read        (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read),        //          .read
		.avs_ctrl_waitrequest (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest), //          .waitrequest
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                               //    PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk),                                                //    PWMCLK.clk
		.fan                  (fan_motor_driver_0_export)                                           // fan_motor.export
	);

	step_motor_driver step_motor_driver_1 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                //       MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                  //       MCLK.clk
		.avs_ctrl_writedata   (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_writedata),   //       ctrl.writedata
		.avs_ctrl_readdata    (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_readdata),    //           .readdata
		.avs_ctrl_byteenable  (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_byteenable),  //           .byteenable
		.avs_ctrl_address     (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_address),     //           .address
		.avs_ctrl_write       (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_write),       //           .write
		.avs_ctrl_read        (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_read),        //           .read
		.avs_ctrl_waitrequest (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_waitrequest), //           .waitrequest
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                //     PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk),                                                 //     PWMCLK.clk
		.AX                   (step_motor_driver_1_AX),                                              // step_motor.export
		.AY                   (step_motor_driver_1_AY),                                              //           .export
		.BX                   (step_motor_driver_1_BX),                                              //           .export
		.BY                   (step_motor_driver_1_BY),                                              //           .export
		.AE                   (step_motor_driver_1_AE),                                              //           .export
		.BE                   (step_motor_driver_1_BE)                                               //           .export
	);

	AM2301 #(
		.high_width  (20),
		.start_width (1000),
		.start       (0),
		.start_read  (1),
		.start_end   (2),
		.start_low   (3),
		.start_high  (4),
		.bit_1_low   (5),
		.bit_1_high  (6),
		.bit_2_low   (7),
		.bit_2_high  (8),
		.bit_3_low   (9),
		.bit_3_high  (10),
		.bit_4_low   (11),
		.bit_4_high  (12),
		.bit_5_low   (13),
		.bit_5_high  (14),
		.bit_6_low   (15),
		.bit_6_high  (16),
		.bit_7_low   (17),
		.bit_7_high  (18),
		.bit_8_low   (19),
		.bit_8_high  (20),
		.bit_9_low   (21),
		.bit_9_high  (22),
		.bit_10_low  (23),
		.bit_10_high (24),
		.bit_11_low  (25),
		.bit_11_high (26),
		.bit_12_low  (27),
		.bit_12_high (28),
		.bit_13_low  (29),
		.bit_13_high (30),
		.bit_14_low  (31),
		.bit_14_high (32),
		.bit_15_low  (33),
		.bit_15_high (34),
		.bit_16_low  (35),
		.bit_16_high (36),
		.bit_17_low  (37),
		.bit_17_high (38),
		.bit_18_low  (39),
		.bit_18_high (40),
		.bit_19_low  (41),
		.bit_19_high (42),
		.bit_20_low  (43),
		.bit_20_high (44),
		.bit_21_low  (45),
		.bit_21_high (46),
		.bit_22_low  (47),
		.bit_22_high (48),
		.bit_23_low  (49),
		.bit_23_high (50),
		.bit_24_low  (51),
		.bit_24_high (52),
		.bit_25_low  (53),
		.bit_25_high (54),
		.bit_26_low  (55),
		.bit_26_high (56),
		.bit_27_low  (57),
		.bit_27_high (58),
		.bit_28_low  (59),
		.bit_28_high (60),
		.bit_29_low  (61),
		.bit_29_high (62),
		.bit_30_low  (63),
		.bit_30_high (64),
		.bit_31_low  (65),
		.bit_31_high (66),
		.bit_32_low  (67),
		.bit_32_high (68),
		.ready       (90),
		.time_2s     (2000000)
	) am2301_1 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                     //   MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                       //   MCLK.clk
		.avs_ctrl_writedata   (am2301_1_ctrl_translator_avalon_anti_slave_0_writedata),   //   ctrl.writedata
		.avs_ctrl_readdata    (am2301_1_ctrl_translator_avalon_anti_slave_0_readdata),    //       .readdata
		.avs_ctrl_byteenable  (am2301_1_ctrl_translator_avalon_anti_slave_0_byteenable),  //       .byteenable
		.avs_ctrl_address     (am2301_1_ctrl_translator_avalon_anti_slave_0_address),     //       .address
		.avs_ctrl_write       (am2301_1_ctrl_translator_avalon_anti_slave_0_write),       //       .write
		.avs_ctrl_read        (am2301_1_ctrl_translator_avalon_anti_slave_0_read),        //       .read
		.avs_ctrl_waitrequest (am2301_1_ctrl_translator_avalon_anti_slave_0_waitrequest), //       .waitrequest
		.sda                  (am2301_1_sda),                                             // AM2301.export
		.clk_1us              (am2301_1_clk_1us)                                          //       .export
	);

	brush_motor_driver brush_motor_driver_1 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                 //        MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                   //        MCLK.clk
		.avs_ctrl_writedata   (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_writedata),   //        ctrl.writedata
		.avs_ctrl_readdata    (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_readdata),    //            .readdata
		.avs_ctrl_byteenable  (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_byteenable),  //            .byteenable
		.avs_ctrl_address     (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_address),     //            .address
		.avs_ctrl_write       (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_write),       //            .write
		.avs_ctrl_read        (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_read),        //            .read
		.avs_ctrl_waitrequest (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_waitrequest), //            .waitrequest
		.HX                   (brush_motor_driver_1_HX),                                              // brush_motor.export
		.HY                   (brush_motor_driver_1_HY),                                              //            .export
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                 //      PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk)                                                   //      PWMCLK.clk
	);

	brush_motor_driver brush_motor_driver_2 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                 //        MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                   //        MCLK.clk
		.avs_ctrl_writedata   (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_writedata),   //        ctrl.writedata
		.avs_ctrl_readdata    (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_readdata),    //            .readdata
		.avs_ctrl_byteenable  (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_byteenable),  //            .byteenable
		.avs_ctrl_address     (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_address),     //            .address
		.avs_ctrl_write       (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_write),       //            .write
		.avs_ctrl_read        (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_read),        //            .read
		.avs_ctrl_waitrequest (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_waitrequest), //            .waitrequest
		.HX                   (brush_motor_driver_2_HX),                                              // brush_motor.export
		.HY                   (brush_motor_driver_2_HY),                                              //            .export
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                 //      PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk)                                                   //      PWMCLK.clk
	);

	brush_motor_driver brush_motor_driver_3 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                 //        MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                   //        MCLK.clk
		.avs_ctrl_writedata   (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_writedata),   //        ctrl.writedata
		.avs_ctrl_readdata    (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_readdata),    //            .readdata
		.avs_ctrl_byteenable  (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_byteenable),  //            .byteenable
		.avs_ctrl_address     (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_address),     //            .address
		.avs_ctrl_write       (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_write),       //            .write
		.avs_ctrl_read        (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_read),        //            .read
		.avs_ctrl_waitrequest (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_waitrequest), //            .waitrequest
		.HX                   (brush_motor_driver_3_HX),                                              // brush_motor.export
		.HY                   (brush_motor_driver_3_HY),                                              //            .export
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                 //      PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk)                                                   //      PWMCLK.clk
	);

	step_motor_driver step_motor_driver_2 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                //       MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                  //       MCLK.clk
		.avs_ctrl_writedata   (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_writedata),   //       ctrl.writedata
		.avs_ctrl_readdata    (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_readdata),    //           .readdata
		.avs_ctrl_byteenable  (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_byteenable),  //           .byteenable
		.avs_ctrl_address     (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_address),     //           .address
		.avs_ctrl_write       (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_write),       //           .write
		.avs_ctrl_read        (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_read),        //           .read
		.avs_ctrl_waitrequest (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_waitrequest), //           .waitrequest
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                //     PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk),                                                 //     PWMCLK.clk
		.AX                   (step_motor_driver_2_AX),                                              // step_motor.export
		.AY                   (step_motor_driver_2_AY),                                              //           .export
		.BX                   (step_motor_driver_2_BX),                                              //           .export
		.BY                   (step_motor_driver_2_BY),                                              //           .export
		.AE                   (step_motor_driver_2_AE),                                              //           .export
		.BE                   (step_motor_driver_2_BE)                                               //           .export
	);

	step_motor_driver step_motor_driver_3 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                //       MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                  //       MCLK.clk
		.avs_ctrl_writedata   (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_writedata),   //       ctrl.writedata
		.avs_ctrl_readdata    (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_readdata),    //           .readdata
		.avs_ctrl_byteenable  (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_byteenable),  //           .byteenable
		.avs_ctrl_address     (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_address),     //           .address
		.avs_ctrl_write       (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_write),       //           .write
		.avs_ctrl_read        (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_read),        //           .read
		.avs_ctrl_waitrequest (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_waitrequest), //           .waitrequest
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                //     PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk),                                                 //     PWMCLK.clk
		.AX                   (step_motor_driver_3_AX),                                              // step_motor.export
		.AY                   (step_motor_driver_3_AY),                                              //           .export
		.BX                   (step_motor_driver_3_BX),                                              //           .export
		.BY                   (step_motor_driver_3_BY),                                              //           .export
		.AE                   (step_motor_driver_3_AE),                                              //           .export
		.BE                   (step_motor_driver_3_BE)                                               //           .export
	);

	step_motor_driver step_motor_driver_4 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                                //       MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                  //       MCLK.clk
		.avs_ctrl_writedata   (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_writedata),   //       ctrl.writedata
		.avs_ctrl_readdata    (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_readdata),    //           .readdata
		.avs_ctrl_byteenable  (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_byteenable),  //           .byteenable
		.avs_ctrl_address     (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_address),     //           .address
		.avs_ctrl_write       (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_write),       //           .write
		.avs_ctrl_read        (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_read),        //           .read
		.avs_ctrl_waitrequest (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_waitrequest), //           .waitrequest
		.rsi_PWMRST_reset     (hps_tabby_mrst_reset),                                                //     PWMRST.reset
		.csi_PWMCLK_clk       (hps_tabby_h2clk_clk),                                                 //     PWMCLK.clk
		.AX                   (step_motor_driver_4_AX),                                              // step_motor.export
		.AY                   (step_motor_driver_4_AY),                                              //           .export
		.BX                   (step_motor_driver_4_BX),                                              //           .export
		.BY                   (step_motor_driver_4_BY),                                              //           .export
		.AE                   (step_motor_driver_4_AE),                                              //           .export
		.BE                   (step_motor_driver_4_BE)                                               //           .export
	);

	position_encoder position_encoder_1 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                               //             MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                 //             MCLK.clk
		.avs_ctrl_writedata   (position_encoder_1_ctrl_translator_avalon_anti_slave_0_writedata),   //             ctrl.writedata
		.avs_ctrl_readdata    (position_encoder_1_ctrl_translator_avalon_anti_slave_0_readdata),    //                 .readdata
		.avs_ctrl_byteenable  (position_encoder_1_ctrl_translator_avalon_anti_slave_0_byteenable),  //                 .byteenable
		.avs_ctrl_address     (position_encoder_1_ctrl_translator_avalon_anti_slave_0_address),     //                 .address
		.avs_ctrl_write       (position_encoder_1_ctrl_translator_avalon_anti_slave_0_write),       //                 .write
		.avs_ctrl_read        (position_encoder_1_ctrl_translator_avalon_anti_slave_0_read),        //                 .read
		.avs_ctrl_waitrequest (position_encoder_1_ctrl_translator_avalon_anti_slave_0_waitrequest), //                 .waitrequest
		.A                    (position_encoder_1_A),                                               // position_encoder.export
		.B                    (position_encoder_1_B),                                               //                 .export
		.Z                    (position_encoder_1_Z)                                                //                 .export
	);

	position_encoder position_encoder_2 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                               //             MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                 //             MCLK.clk
		.avs_ctrl_writedata   (position_encoder_2_ctrl_translator_avalon_anti_slave_0_writedata),   //             ctrl.writedata
		.avs_ctrl_readdata    (position_encoder_2_ctrl_translator_avalon_anti_slave_0_readdata),    //                 .readdata
		.avs_ctrl_byteenable  (position_encoder_2_ctrl_translator_avalon_anti_slave_0_byteenable),  //                 .byteenable
		.avs_ctrl_address     (position_encoder_2_ctrl_translator_avalon_anti_slave_0_address),     //                 .address
		.avs_ctrl_write       (position_encoder_2_ctrl_translator_avalon_anti_slave_0_write),       //                 .write
		.avs_ctrl_read        (position_encoder_2_ctrl_translator_avalon_anti_slave_0_read),        //                 .read
		.avs_ctrl_waitrequest (position_encoder_2_ctrl_translator_avalon_anti_slave_0_waitrequest), //                 .waitrequest
		.A                    (position_encoder_2_A),                                               // position_encoder.export
		.B                    (position_encoder_2_B),                                               //                 .export
		.Z                    (position_encoder_2_Z)                                                //                 .export
	);

	position_encoder position_encoder_3 (
		.rsi_MRST_reset       (hps_tabby_mrst_reset),                                               //             MRST.reset
		.csi_MCLK_clk         (hps_tabby_mclk_clk),                                                 //             MCLK.clk
		.avs_ctrl_writedata   (position_encoder_3_ctrl_translator_avalon_anti_slave_0_writedata),   //             ctrl.writedata
		.avs_ctrl_readdata    (position_encoder_3_ctrl_translator_avalon_anti_slave_0_readdata),    //                 .readdata
		.avs_ctrl_byteenable  (position_encoder_3_ctrl_translator_avalon_anti_slave_0_byteenable),  //                 .byteenable
		.avs_ctrl_address     (position_encoder_3_ctrl_translator_avalon_anti_slave_0_address),     //                 .address
		.avs_ctrl_write       (position_encoder_3_ctrl_translator_avalon_anti_slave_0_write),       //                 .write
		.avs_ctrl_read        (position_encoder_3_ctrl_translator_avalon_anti_slave_0_read),        //                 .read
		.avs_ctrl_waitrequest (position_encoder_3_ctrl_translator_avalon_anti_slave_0_waitrequest), //                 .waitrequest
		.A                    (position_encoder_3_A),                                               // position_encoder.export
		.B                    (position_encoder_3_B),                                               //                 .export
		.Z                    (position_encoder_3_Z)                                                //                 .export
	);

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (30),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (32),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (1),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (0),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) hps_tabby_m1_translator (
		.clk                   (hps_tabby_mclk_clk),                                              //                       clk.clk
		.reset                 (hps_tabby_mrst_reset),                                            //                     reset.reset
		.uav_address           (hps_tabby_m1_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount        (hps_tabby_m1_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read              (hps_tabby_m1_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write             (hps_tabby_m1_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest       (hps_tabby_m1_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid     (hps_tabby_m1_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable        (hps_tabby_m1_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata          (hps_tabby_m1_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata         (hps_tabby_m1_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock              (hps_tabby_m1_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess       (hps_tabby_m1_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address            (hps_tabby_m1_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest        (hps_tabby_m1_waitrequest),                                        //                          .waitrequest
		.av_byteenable         (hps_tabby_m1_byteenable),                                         //                          .byteenable
		.av_begintransfer      (hps_tabby_m1_begintransfer),                                      //                          .begintransfer
		.av_read               (hps_tabby_m1_read),                                               //                          .read
		.av_readdata           (hps_tabby_m1_readdata),                                           //                          .readdata
		.av_readdatavalid      (hps_tabby_m1_readdatavalid),                                      //                          .readdatavalid
		.av_write              (hps_tabby_m1_write),                                              //                          .write
		.av_writedata          (hps_tabby_m1_writedata),                                          //                          .writedata
		.av_burstcount         (1'b1),                                                            //               (terminated)
		.av_beginbursttransfer (1'b0),                                                            //               (terminated)
		.av_chipselect         (1'b0),                                                            //               (terminated)
		.av_lock               (1'b0),                                                            //               (terminated)
		.av_debugaccess        (1'b0),                                                            //               (terminated)
		.uav_clken             (),                                                                //               (terminated)
		.av_clken              (1'b1)                                                             //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (2),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) basic_sysid_sysid_translator (
		.clk                   (hps_tabby_mclk_clk),                                                           //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                         //                    reset.reset
		.uav_address           (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (basic_sysid_sysid_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_read               (basic_sysid_sysid_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (basic_sysid_sysid_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_waitrequest        (basic_sysid_sysid_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_write              (),                                                                             //              (terminated)
		.av_writedata          (),                                                                             //              (terminated)
		.av_begintransfer      (),                                                                             //              (terminated)
		.av_beginbursttransfer (),                                                                             //              (terminated)
		.av_burstcount         (),                                                                             //              (terminated)
		.av_byteenable         (),                                                                             //              (terminated)
		.av_readdatavalid      (1'b0),                                                                         //              (terminated)
		.av_writebyteenable    (),                                                                             //              (terminated)
		.av_lock               (),                                                                             //              (terminated)
		.av_chipselect         (),                                                                             //              (terminated)
		.av_clken              (),                                                                             //              (terminated)
		.uav_clken             (1'b0),                                                                         //              (terminated)
		.av_debugaccess        (),                                                                             //              (terminated)
		.av_outputenable       ()                                                                              //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (1),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) basic_funcled_0_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                              //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                            //                    reset.reset
		.uav_address           (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_write              (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_write),                       //      avalon_anti_slave_0.write
		.av_read               (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (basic_funcled_0_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_address            (),                                                                                //              (terminated)
		.av_begintransfer      (),                                                                                //              (terminated)
		.av_beginbursttransfer (),                                                                                //              (terminated)
		.av_burstcount         (),                                                                                //              (terminated)
		.av_readdatavalid      (1'b0),                                                                            //              (terminated)
		.av_writebyteenable    (),                                                                                //              (terminated)
		.av_lock               (),                                                                                //              (terminated)
		.av_chipselect         (),                                                                                //              (terminated)
		.av_clken              (),                                                                                //              (terminated)
		.uav_clken             (1'b0),                                                                            //              (terminated)
		.av_debugaccess        (),                                                                                //              (terminated)
		.av_outputenable       ()                                                                                 //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (1),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) basic_funcled_1_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                              //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                            //                    reset.reset
		.uav_address           (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_write              (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_write),                       //      avalon_anti_slave_0.write
		.av_read               (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (basic_funcled_1_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_address            (),                                                                                //              (terminated)
		.av_begintransfer      (),                                                                                //              (terminated)
		.av_beginbursttransfer (),                                                                                //              (terminated)
		.av_burstcount         (),                                                                                //              (terminated)
		.av_readdatavalid      (1'b0),                                                                            //              (terminated)
		.av_writebyteenable    (),                                                                                //              (terminated)
		.av_lock               (),                                                                                //              (terminated)
		.av_chipselect         (),                                                                                //              (terminated)
		.av_clken              (),                                                                                //              (terminated)
		.uav_clken             (1'b0),                                                                            //              (terminated)
		.av_debugaccess        (),                                                                                //              (terminated)
		.av_outputenable       ()                                                                                 //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (1),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) basic_funcled_2_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                              //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                            //                    reset.reset
		.uav_address           (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_write              (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_write),                       //      avalon_anti_slave_0.write
		.av_read               (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (basic_funcled_2_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_address            (),                                                                                //              (terminated)
		.av_begintransfer      (),                                                                                //              (terminated)
		.av_beginbursttransfer (),                                                                                //              (terminated)
		.av_burstcount         (),                                                                                //              (terminated)
		.av_readdatavalid      (1'b0),                                                                            //              (terminated)
		.av_writebyteenable    (),                                                                                //              (terminated)
		.av_lock               (),                                                                                //              (terminated)
		.av_chipselect         (),                                                                                //              (terminated)
		.av_clken              (),                                                                                //              (terminated)
		.uav_clken             (1'b0),                                                                            //              (terminated)
		.av_debugaccess        (),                                                                                //              (terminated)
		.av_outputenable       ()                                                                                 //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (1),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) basic_funcled_3_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                              //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                            //                    reset.reset
		.uav_address           (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_write              (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_write),                       //      avalon_anti_slave_0.write
		.av_read               (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (basic_funcled_3_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_address            (),                                                                                //              (terminated)
		.av_begintransfer      (),                                                                                //              (terminated)
		.av_beginbursttransfer (),                                                                                //              (terminated)
		.av_burstcount         (),                                                                                //              (terminated)
		.av_readdatavalid      (1'b0),                                                                            //              (terminated)
		.av_writebyteenable    (),                                                                                //              (terminated)
		.av_lock               (),                                                                                //              (terminated)
		.av_chipselect         (),                                                                                //              (terminated)
		.av_clken              (),                                                                                //              (terminated)
		.uav_clken             (1'b0),                                                                            //              (terminated)
		.av_debugaccess        (),                                                                                //              (terminated)
		.av_outputenable       ()                                                                                 //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (1),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) basic_shieldctrl_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                               //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                             //                    reset.reset
		.uav_address           (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_write              (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_write),                       //      avalon_anti_slave_0.write
		.av_read               (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (basic_shieldctrl_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_address            (),                                                                                 //              (terminated)
		.av_begintransfer      (),                                                                                 //              (terminated)
		.av_beginbursttransfer (),                                                                                 //              (terminated)
		.av_burstcount         (),                                                                                 //              (terminated)
		.av_readdatavalid      (1'b0),                                                                             //              (terminated)
		.av_writebyteenable    (),                                                                                 //              (terminated)
		.av_lock               (),                                                                                 //              (terminated)
		.av_chipselect         (),                                                                                 //              (terminated)
		.av_clken              (),                                                                                 //              (terminated)
		.uav_clken             (1'b0),                                                                             //              (terminated)
		.av_debugaccess        (),                                                                                 //              (terminated)
		.av_outputenable       ()                                                                                  //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (5),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) grid_pio26_a_gpio_translator (
		.clk                   (hps_tabby_mclk_clk),                                                           //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                         //                    reset.reset
		.uav_address           (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (grid_pio26_a_gpio_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (grid_pio26_a_gpio_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (grid_pio26_a_gpio_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (grid_pio26_a_gpio_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (grid_pio26_a_gpio_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (grid_pio26_a_gpio_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (grid_pio26_a_gpio_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                             //              (terminated)
		.av_beginbursttransfer (),                                                                             //              (terminated)
		.av_burstcount         (),                                                                             //              (terminated)
		.av_readdatavalid      (1'b0),                                                                         //              (terminated)
		.av_writebyteenable    (),                                                                             //              (terminated)
		.av_lock               (),                                                                             //              (terminated)
		.av_chipselect         (),                                                                             //              (terminated)
		.av_clken              (),                                                                             //              (terminated)
		.uav_clken             (1'b0),                                                                         //              (terminated)
		.av_debugaccess        (),                                                                             //              (terminated)
		.av_outputenable       ()                                                                              //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (5),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) grid_pio26_b_gpio_translator (
		.clk                   (hps_tabby_mclk_clk),                                                           //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                         //                    reset.reset
		.uav_address           (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (grid_pio26_b_gpio_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (grid_pio26_b_gpio_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (grid_pio26_b_gpio_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (grid_pio26_b_gpio_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (grid_pio26_b_gpio_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (grid_pio26_b_gpio_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (grid_pio26_b_gpio_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                             //              (terminated)
		.av_beginbursttransfer (),                                                                             //              (terminated)
		.av_burstcount         (),                                                                             //              (terminated)
		.av_readdatavalid      (1'b0),                                                                         //              (terminated)
		.av_writebyteenable    (),                                                                             //              (terminated)
		.av_lock               (),                                                                             //              (terminated)
		.av_chipselect         (),                                                                             //              (terminated)
		.av_clken              (),                                                                             //              (terminated)
		.uav_clken             (1'b0),                                                                         //              (terminated)
		.av_debugaccess        (),                                                                             //              (terminated)
		.av_outputenable       ()                                                                              //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) grid_pwm_0_pwm_translator (
		.clk                   (hps_tabby_mclk_clk),                                                        //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                      //                    reset.reset
		.uav_address           (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (grid_pwm_0_pwm_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (grid_pwm_0_pwm_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (grid_pwm_0_pwm_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (grid_pwm_0_pwm_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (grid_pwm_0_pwm_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (grid_pwm_0_pwm_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (grid_pwm_0_pwm_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                          //              (terminated)
		.av_beginbursttransfer (),                                                                          //              (terminated)
		.av_burstcount         (),                                                                          //              (terminated)
		.av_readdatavalid      (1'b0),                                                                      //              (terminated)
		.av_writebyteenable    (),                                                                          //              (terminated)
		.av_lock               (),                                                                          //              (terminated)
		.av_chipselect         (),                                                                          //              (terminated)
		.av_clken              (),                                                                          //              (terminated)
		.uav_clken             (1'b0),                                                                      //              (terminated)
		.av_debugaccess        (),                                                                          //              (terminated)
		.av_outputenable       ()                                                                           //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) am2301_0_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                       //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                     //                    reset.reset
		.uav_address           (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (am2301_0_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (am2301_0_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (am2301_0_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (am2301_0_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (am2301_0_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (am2301_0_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (am2301_0_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                         //              (terminated)
		.av_beginbursttransfer (),                                                                         //              (terminated)
		.av_burstcount         (),                                                                         //              (terminated)
		.av_readdatavalid      (1'b0),                                                                     //              (terminated)
		.av_writebyteenable    (),                                                                         //              (terminated)
		.av_lock               (),                                                                         //              (terminated)
		.av_chipselect         (),                                                                         //              (terminated)
		.av_clken              (),                                                                         //              (terminated)
		.uav_clken             (1'b0),                                                                     //              (terminated)
		.av_debugaccess        (),                                                                         //              (terminated)
		.av_outputenable       ()                                                                          //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) step_motor_driver_0_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                  //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                //                    reset.reset
		.uav_address           (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (step_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                    //              (terminated)
		.av_beginbursttransfer (),                                                                                    //              (terminated)
		.av_burstcount         (),                                                                                    //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                //              (terminated)
		.av_writebyteenable    (),                                                                                    //              (terminated)
		.av_lock               (),                                                                                    //              (terminated)
		.av_chipselect         (),                                                                                    //              (terminated)
		.av_clken              (),                                                                                    //              (terminated)
		.uav_clken             (1'b0),                                                                                //              (terminated)
		.av_debugaccess        (),                                                                                    //              (terminated)
		.av_outputenable       ()                                                                                     //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) position_encoder_0_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                 //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                               //                    reset.reset
		.uav_address           (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (position_encoder_0_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (position_encoder_0_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (position_encoder_0_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (position_encoder_0_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (position_encoder_0_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (position_encoder_0_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (position_encoder_0_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                   //              (terminated)
		.av_beginbursttransfer (),                                                                                   //              (terminated)
		.av_burstcount         (),                                                                                   //              (terminated)
		.av_readdatavalid      (1'b0),                                                                               //              (terminated)
		.av_writebyteenable    (),                                                                                   //              (terminated)
		.av_lock               (),                                                                                   //              (terminated)
		.av_chipselect         (),                                                                                   //              (terminated)
		.av_clken              (),                                                                                   //              (terminated)
		.uav_clken             (1'b0),                                                                               //              (terminated)
		.av_debugaccess        (),                                                                                   //              (terminated)
		.av_outputenable       ()                                                                                    //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) brush_motor_driver_0_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                   //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                 //                    reset.reset
		.uav_address           (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (brush_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                     //              (terminated)
		.av_beginbursttransfer (),                                                                                     //              (terminated)
		.av_burstcount         (),                                                                                     //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                 //              (terminated)
		.av_writebyteenable    (),                                                                                     //              (terminated)
		.av_lock               (),                                                                                     //              (terminated)
		.av_chipselect         (),                                                                                     //              (terminated)
		.av_clken              (),                                                                                     //              (terminated)
		.uav_clken             (1'b0),                                                                                 //              (terminated)
		.av_debugaccess        (),                                                                                     //              (terminated)
		.av_outputenable       ()                                                                                      //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) fan_motor_driver_0_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                 //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                               //                    reset.reset
		.uav_address           (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (fan_motor_driver_0_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                   //              (terminated)
		.av_beginbursttransfer (),                                                                                   //              (terminated)
		.av_burstcount         (),                                                                                   //              (terminated)
		.av_readdatavalid      (1'b0),                                                                               //              (terminated)
		.av_writebyteenable    (),                                                                                   //              (terminated)
		.av_lock               (),                                                                                   //              (terminated)
		.av_chipselect         (),                                                                                   //              (terminated)
		.av_clken              (),                                                                                   //              (terminated)
		.uav_clken             (1'b0),                                                                               //              (terminated)
		.av_debugaccess        (),                                                                                   //              (terminated)
		.av_outputenable       ()                                                                                    //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) step_motor_driver_1_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                  //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                //                    reset.reset
		.uav_address           (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (step_motor_driver_1_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                    //              (terminated)
		.av_beginbursttransfer (),                                                                                    //              (terminated)
		.av_burstcount         (),                                                                                    //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                //              (terminated)
		.av_writebyteenable    (),                                                                                    //              (terminated)
		.av_lock               (),                                                                                    //              (terminated)
		.av_chipselect         (),                                                                                    //              (terminated)
		.av_clken              (),                                                                                    //              (terminated)
		.uav_clken             (1'b0),                                                                                //              (terminated)
		.av_debugaccess        (),                                                                                    //              (terminated)
		.av_outputenable       ()                                                                                     //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) am2301_1_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                       //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                     //                    reset.reset
		.uav_address           (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (am2301_1_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (am2301_1_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (am2301_1_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (am2301_1_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (am2301_1_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (am2301_1_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (am2301_1_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                         //              (terminated)
		.av_beginbursttransfer (),                                                                         //              (terminated)
		.av_burstcount         (),                                                                         //              (terminated)
		.av_readdatavalid      (1'b0),                                                                     //              (terminated)
		.av_writebyteenable    (),                                                                         //              (terminated)
		.av_lock               (),                                                                         //              (terminated)
		.av_chipselect         (),                                                                         //              (terminated)
		.av_clken              (),                                                                         //              (terminated)
		.uav_clken             (1'b0),                                                                     //              (terminated)
		.av_debugaccess        (),                                                                         //              (terminated)
		.av_outputenable       ()                                                                          //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) brush_motor_driver_1_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                   //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                 //                    reset.reset
		.uav_address           (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (brush_motor_driver_1_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                     //              (terminated)
		.av_beginbursttransfer (),                                                                                     //              (terminated)
		.av_burstcount         (),                                                                                     //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                 //              (terminated)
		.av_writebyteenable    (),                                                                                     //              (terminated)
		.av_lock               (),                                                                                     //              (terminated)
		.av_chipselect         (),                                                                                     //              (terminated)
		.av_clken              (),                                                                                     //              (terminated)
		.uav_clken             (1'b0),                                                                                 //              (terminated)
		.av_debugaccess        (),                                                                                     //              (terminated)
		.av_outputenable       ()                                                                                      //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) brush_motor_driver_3_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                   //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                 //                    reset.reset
		.uav_address           (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (brush_motor_driver_3_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                     //              (terminated)
		.av_beginbursttransfer (),                                                                                     //              (terminated)
		.av_burstcount         (),                                                                                     //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                 //              (terminated)
		.av_writebyteenable    (),                                                                                     //              (terminated)
		.av_lock               (),                                                                                     //              (terminated)
		.av_chipselect         (),                                                                                     //              (terminated)
		.av_clken              (),                                                                                     //              (terminated)
		.uav_clken             (1'b0),                                                                                 //              (terminated)
		.av_debugaccess        (),                                                                                     //              (terminated)
		.av_outputenable       ()                                                                                      //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) brush_motor_driver_2_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                   //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                 //                    reset.reset
		.uav_address           (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (brush_motor_driver_2_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                     //              (terminated)
		.av_beginbursttransfer (),                                                                                     //              (terminated)
		.av_burstcount         (),                                                                                     //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                 //              (terminated)
		.av_writebyteenable    (),                                                                                     //              (terminated)
		.av_lock               (),                                                                                     //              (terminated)
		.av_chipselect         (),                                                                                     //              (terminated)
		.av_clken              (),                                                                                     //              (terminated)
		.uav_clken             (1'b0),                                                                                 //              (terminated)
		.av_debugaccess        (),                                                                                     //              (terminated)
		.av_outputenable       ()                                                                                      //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) step_motor_driver_2_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                  //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                //                    reset.reset
		.uav_address           (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (step_motor_driver_2_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                    //              (terminated)
		.av_beginbursttransfer (),                                                                                    //              (terminated)
		.av_burstcount         (),                                                                                    //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                //              (terminated)
		.av_writebyteenable    (),                                                                                    //              (terminated)
		.av_lock               (),                                                                                    //              (terminated)
		.av_chipselect         (),                                                                                    //              (terminated)
		.av_clken              (),                                                                                    //              (terminated)
		.uav_clken             (1'b0),                                                                                //              (terminated)
		.av_debugaccess        (),                                                                                    //              (terminated)
		.av_outputenable       ()                                                                                     //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) step_motor_driver_3_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                  //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                //                    reset.reset
		.uav_address           (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (step_motor_driver_3_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                    //              (terminated)
		.av_beginbursttransfer (),                                                                                    //              (terminated)
		.av_burstcount         (),                                                                                    //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                //              (terminated)
		.av_writebyteenable    (),                                                                                    //              (terminated)
		.av_lock               (),                                                                                    //              (terminated)
		.av_chipselect         (),                                                                                    //              (terminated)
		.av_clken              (),                                                                                    //              (terminated)
		.uav_clken             (1'b0),                                                                                //              (terminated)
		.av_debugaccess        (),                                                                                    //              (terminated)
		.av_outputenable       ()                                                                                     //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) step_motor_driver_4_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                  //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                                //                    reset.reset
		.uav_address           (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (step_motor_driver_4_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                    //              (terminated)
		.av_beginbursttransfer (),                                                                                    //              (terminated)
		.av_burstcount         (),                                                                                    //              (terminated)
		.av_readdatavalid      (1'b0),                                                                                //              (terminated)
		.av_writebyteenable    (),                                                                                    //              (terminated)
		.av_lock               (),                                                                                    //              (terminated)
		.av_chipselect         (),                                                                                    //              (terminated)
		.av_clken              (),                                                                                    //              (terminated)
		.uav_clken             (1'b0),                                                                                //              (terminated)
		.av_debugaccess        (),                                                                                    //              (terminated)
		.av_outputenable       ()                                                                                     //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) position_encoder_1_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                 //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                               //                    reset.reset
		.uav_address           (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (position_encoder_1_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (position_encoder_1_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (position_encoder_1_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (position_encoder_1_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (position_encoder_1_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (position_encoder_1_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (position_encoder_1_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                   //              (terminated)
		.av_beginbursttransfer (),                                                                                   //              (terminated)
		.av_burstcount         (),                                                                                   //              (terminated)
		.av_readdatavalid      (1'b0),                                                                               //              (terminated)
		.av_writebyteenable    (),                                                                                   //              (terminated)
		.av_lock               (),                                                                                   //              (terminated)
		.av_chipselect         (),                                                                                   //              (terminated)
		.av_clken              (),                                                                                   //              (terminated)
		.uav_clken             (1'b0),                                                                               //              (terminated)
		.av_debugaccess        (),                                                                                   //              (terminated)
		.av_outputenable       ()                                                                                    //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) position_encoder_2_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                 //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                               //                    reset.reset
		.uav_address           (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (position_encoder_2_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (position_encoder_2_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (position_encoder_2_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (position_encoder_2_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (position_encoder_2_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (position_encoder_2_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (position_encoder_2_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                   //              (terminated)
		.av_beginbursttransfer (),                                                                                   //              (terminated)
		.av_burstcount         (),                                                                                   //              (terminated)
		.av_readdatavalid      (1'b0),                                                                               //              (terminated)
		.av_writebyteenable    (),                                                                                   //              (terminated)
		.av_lock               (),                                                                                   //              (terminated)
		.av_chipselect         (),                                                                                   //              (terminated)
		.av_clken              (),                                                                                   //              (terminated)
		.uav_clken             (1'b0),                                                                               //              (terminated)
		.av_debugaccess        (),                                                                                   //              (terminated)
		.av_outputenable       ()                                                                                    //              (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) position_encoder_3_ctrl_translator (
		.clk                   (hps_tabby_mclk_clk),                                                                 //                      clk.clk
		.reset                 (hps_tabby_mrst_reset),                                                               //                    reset.reset
		.uav_address           (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address),       // avalon_universal_slave_0.address
		.uav_burstcount        (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),    //                         .burstcount
		.uav_read              (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read),          //                         .read
		.uav_write             (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write),         //                         .write
		.uav_waitrequest       (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid     (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid), //                         .readdatavalid
		.uav_byteenable        (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),    //                         .byteenable
		.uav_readdata          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),      //                         .readdata
		.uav_writedata         (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),     //                         .writedata
		.uav_lock              (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),          //                         .lock
		.uav_debugaccess       (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),   //                         .debugaccess
		.av_address            (position_encoder_3_ctrl_translator_avalon_anti_slave_0_address),                     //      avalon_anti_slave_0.address
		.av_write              (position_encoder_3_ctrl_translator_avalon_anti_slave_0_write),                       //                         .write
		.av_read               (position_encoder_3_ctrl_translator_avalon_anti_slave_0_read),                        //                         .read
		.av_readdata           (position_encoder_3_ctrl_translator_avalon_anti_slave_0_readdata),                    //                         .readdata
		.av_writedata          (position_encoder_3_ctrl_translator_avalon_anti_slave_0_writedata),                   //                         .writedata
		.av_byteenable         (position_encoder_3_ctrl_translator_avalon_anti_slave_0_byteenable),                  //                         .byteenable
		.av_waitrequest        (position_encoder_3_ctrl_translator_avalon_anti_slave_0_waitrequest),                 //                         .waitrequest
		.av_begintransfer      (),                                                                                   //              (terminated)
		.av_beginbursttransfer (),                                                                                   //              (terminated)
		.av_burstcount         (),                                                                                   //              (terminated)
		.av_readdatavalid      (1'b0),                                                                               //              (terminated)
		.av_writebyteenable    (),                                                                                   //              (terminated)
		.av_lock               (),                                                                                   //              (terminated)
		.av_chipselect         (),                                                                                   //              (terminated)
		.av_clken              (),                                                                                   //              (terminated)
		.uav_clken             (1'b0),                                                                               //              (terminated)
		.av_debugaccess        (),                                                                                   //              (terminated)
		.av_outputenable       ()                                                                                    //              (terminated)
	);

	altera_merlin_master_agent #(
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.PKT_BEGIN_BURST           (79),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.ST_DATA_W                 (91),
		.ST_CHANNEL_W              (25),
		.AV_BURSTCOUNT_W           (3),
		.SUPPRESS_0_BYTEEN_RSP     (0),
		.ID                        (1),
		.BURSTWRAP_VALUE           (7)
	) hps_tabby_m1_translator_avalon_universal_master_0_agent (
		.clk              (hps_tabby_mclk_clk),                                                       //       clk.clk
		.reset            (hps_tabby_mrst_reset),                                                     // clk_reset.reset
		.av_address       (hps_tabby_m1_translator_avalon_universal_master_0_address),                //        av.address
		.av_write         (hps_tabby_m1_translator_avalon_universal_master_0_write),                  //          .write
		.av_read          (hps_tabby_m1_translator_avalon_universal_master_0_read),                   //          .read
		.av_writedata     (hps_tabby_m1_translator_avalon_universal_master_0_writedata),              //          .writedata
		.av_readdata      (hps_tabby_m1_translator_avalon_universal_master_0_readdata),               //          .readdata
		.av_waitrequest   (hps_tabby_m1_translator_avalon_universal_master_0_waitrequest),            //          .waitrequest
		.av_readdatavalid (hps_tabby_m1_translator_avalon_universal_master_0_readdatavalid),          //          .readdatavalid
		.av_byteenable    (hps_tabby_m1_translator_avalon_universal_master_0_byteenable),             //          .byteenable
		.av_burstcount    (hps_tabby_m1_translator_avalon_universal_master_0_burstcount),             //          .burstcount
		.av_debugaccess   (hps_tabby_m1_translator_avalon_universal_master_0_debugaccess),            //          .debugaccess
		.av_lock          (hps_tabby_m1_translator_avalon_universal_master_0_lock),                   //          .lock
		.cp_valid         (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_valid),         //        cp.valid
		.cp_data          (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_data),          //          .data
		.cp_startofpacket (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_startofpacket), //          .startofpacket
		.cp_endofpacket   (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_endofpacket),   //          .endofpacket
		.cp_ready         (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_ready),         //          .ready
		.rp_valid         (limiter_rsp_src_valid),                                                    //        rp.valid
		.rp_data          (limiter_rsp_src_data),                                                     //          .data
		.rp_channel       (limiter_rsp_src_channel),                                                  //          .channel
		.rp_startofpacket (limiter_rsp_src_startofpacket),                                            //          .startofpacket
		.rp_endofpacket   (limiter_rsp_src_endofpacket),                                              //          .endofpacket
		.rp_ready         (limiter_rsp_src_ready)                                                     //          .ready
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) basic_sysid_sysid_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                     //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                   //       clk_reset.reset
		.m0_address              (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src0_ready),                                                              //              cp.ready
		.cp_valid                (cmd_xbar_demux_src0_valid),                                                              //                .valid
		.cp_data                 (cmd_xbar_demux_src0_data),                                                               //                .data
		.cp_startofpacket        (cmd_xbar_demux_src0_startofpacket),                                                      //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src0_endofpacket),                                                        //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src0_channel),                                                            //                .channel
		.rf_sink_ready           (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                     //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                   // clk_reset.reset
		.in_data           (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                  // (terminated)
		.csr_read          (1'b0),                                                                                   // (terminated)
		.csr_write         (1'b0),                                                                                   // (terminated)
		.csr_readdata      (),                                                                                       // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                   // (terminated)
		.almost_full_data  (),                                                                                       // (terminated)
		.almost_empty_data (),                                                                                       // (terminated)
		.in_empty          (1'b0),                                                                                   // (terminated)
		.out_empty         (),                                                                                       // (terminated)
		.in_error          (1'b0),                                                                                   // (terminated)
		.out_error         (),                                                                                       // (terminated)
		.in_channel        (1'b0),                                                                                   // (terminated)
		.out_channel       ()                                                                                        // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                        //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                      //       clk_reset.reset
		.m0_address              (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src1_ready),                                                                 //              cp.ready
		.cp_valid                (cmd_xbar_demux_src1_valid),                                                                 //                .valid
		.cp_data                 (cmd_xbar_demux_src1_data),                                                                  //                .data
		.cp_startofpacket        (cmd_xbar_demux_src1_startofpacket),                                                         //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src1_endofpacket),                                                           //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src1_channel),                                                               //                .channel
		.rf_sink_ready           (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                        //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                      // clk_reset.reset
		.in_data           (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                     // (terminated)
		.csr_read          (1'b0),                                                                                      // (terminated)
		.csr_write         (1'b0),                                                                                      // (terminated)
		.csr_readdata      (),                                                                                          // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                      // (terminated)
		.almost_full_data  (),                                                                                          // (terminated)
		.almost_empty_data (),                                                                                          // (terminated)
		.in_empty          (1'b0),                                                                                      // (terminated)
		.out_empty         (),                                                                                          // (terminated)
		.in_error          (1'b0),                                                                                      // (terminated)
		.out_error         (),                                                                                          // (terminated)
		.in_channel        (1'b0),                                                                                      // (terminated)
		.out_channel       ()                                                                                           // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                        //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                      //       clk_reset.reset
		.m0_address              (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src2_ready),                                                                 //              cp.ready
		.cp_valid                (cmd_xbar_demux_src2_valid),                                                                 //                .valid
		.cp_data                 (cmd_xbar_demux_src2_data),                                                                  //                .data
		.cp_startofpacket        (cmd_xbar_demux_src2_startofpacket),                                                         //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src2_endofpacket),                                                           //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src2_channel),                                                               //                .channel
		.rf_sink_ready           (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                        //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                      // clk_reset.reset
		.in_data           (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                     // (terminated)
		.csr_read          (1'b0),                                                                                      // (terminated)
		.csr_write         (1'b0),                                                                                      // (terminated)
		.csr_readdata      (),                                                                                          // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                      // (terminated)
		.almost_full_data  (),                                                                                          // (terminated)
		.almost_empty_data (),                                                                                          // (terminated)
		.in_empty          (1'b0),                                                                                      // (terminated)
		.out_empty         (),                                                                                          // (terminated)
		.in_error          (1'b0),                                                                                      // (terminated)
		.out_error         (),                                                                                          // (terminated)
		.in_channel        (1'b0),                                                                                      // (terminated)
		.out_channel       ()                                                                                           // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                        //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                      //       clk_reset.reset
		.m0_address              (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src3_ready),                                                                 //              cp.ready
		.cp_valid                (cmd_xbar_demux_src3_valid),                                                                 //                .valid
		.cp_data                 (cmd_xbar_demux_src3_data),                                                                  //                .data
		.cp_startofpacket        (cmd_xbar_demux_src3_startofpacket),                                                         //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src3_endofpacket),                                                           //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src3_channel),                                                               //                .channel
		.rf_sink_ready           (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                        //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                      // clk_reset.reset
		.in_data           (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                     // (terminated)
		.csr_read          (1'b0),                                                                                      // (terminated)
		.csr_write         (1'b0),                                                                                      // (terminated)
		.csr_readdata      (),                                                                                          // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                      // (terminated)
		.almost_full_data  (),                                                                                          // (terminated)
		.almost_empty_data (),                                                                                          // (terminated)
		.in_empty          (1'b0),                                                                                      // (terminated)
		.out_empty         (),                                                                                          // (terminated)
		.in_error          (1'b0),                                                                                      // (terminated)
		.out_error         (),                                                                                          // (terminated)
		.in_channel        (1'b0),                                                                                      // (terminated)
		.out_channel       ()                                                                                           // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                        //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                      //       clk_reset.reset
		.m0_address              (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src4_ready),                                                                 //              cp.ready
		.cp_valid                (cmd_xbar_demux_src4_valid),                                                                 //                .valid
		.cp_data                 (cmd_xbar_demux_src4_data),                                                                  //                .data
		.cp_startofpacket        (cmd_xbar_demux_src4_startofpacket),                                                         //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src4_endofpacket),                                                           //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src4_channel),                                                               //                .channel
		.rf_sink_ready           (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                        //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                      // clk_reset.reset
		.in_data           (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                     // (terminated)
		.csr_read          (1'b0),                                                                                      // (terminated)
		.csr_write         (1'b0),                                                                                      // (terminated)
		.csr_readdata      (),                                                                                          // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                      // (terminated)
		.almost_full_data  (),                                                                                          // (terminated)
		.almost_empty_data (),                                                                                          // (terminated)
		.in_empty          (1'b0),                                                                                      // (terminated)
		.out_empty         (),                                                                                          // (terminated)
		.in_error          (1'b0),                                                                                      // (terminated)
		.out_error         (),                                                                                          // (terminated)
		.in_channel        (1'b0),                                                                                      // (terminated)
		.out_channel       ()                                                                                           // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                         //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                       //       clk_reset.reset
		.m0_address              (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src5_ready),                                                                  //              cp.ready
		.cp_valid                (cmd_xbar_demux_src5_valid),                                                                  //                .valid
		.cp_data                 (cmd_xbar_demux_src5_data),                                                                   //                .data
		.cp_startofpacket        (cmd_xbar_demux_src5_startofpacket),                                                          //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src5_endofpacket),                                                            //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src5_channel),                                                                //                .channel
		.rf_sink_ready           (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                         //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                       // clk_reset.reset
		.in_data           (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                      // (terminated)
		.csr_read          (1'b0),                                                                                       // (terminated)
		.csr_write         (1'b0),                                                                                       // (terminated)
		.csr_readdata      (),                                                                                           // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                       // (terminated)
		.almost_full_data  (),                                                                                           // (terminated)
		.almost_empty_data (),                                                                                           // (terminated)
		.in_empty          (1'b0),                                                                                       // (terminated)
		.out_empty         (),                                                                                           // (terminated)
		.in_error          (1'b0),                                                                                       // (terminated)
		.out_error         (),                                                                                           // (terminated)
		.in_channel        (1'b0),                                                                                       // (terminated)
		.out_channel       ()                                                                                            // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                     //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                   //       clk_reset.reset
		.m0_address              (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src6_ready),                                                              //              cp.ready
		.cp_valid                (cmd_xbar_demux_src6_valid),                                                              //                .valid
		.cp_data                 (cmd_xbar_demux_src6_data),                                                               //                .data
		.cp_startofpacket        (cmd_xbar_demux_src6_startofpacket),                                                      //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src6_endofpacket),                                                        //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src6_channel),                                                            //                .channel
		.rf_sink_ready           (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                     //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                   // clk_reset.reset
		.in_data           (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                  // (terminated)
		.csr_read          (1'b0),                                                                                   // (terminated)
		.csr_write         (1'b0),                                                                                   // (terminated)
		.csr_readdata      (),                                                                                       // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                   // (terminated)
		.almost_full_data  (),                                                                                       // (terminated)
		.almost_empty_data (),                                                                                       // (terminated)
		.in_empty          (1'b0),                                                                                   // (terminated)
		.out_empty         (),                                                                                       // (terminated)
		.in_error          (1'b0),                                                                                   // (terminated)
		.out_error         (),                                                                                       // (terminated)
		.in_channel        (1'b0),                                                                                   // (terminated)
		.out_channel       ()                                                                                        // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                     //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                   //       clk_reset.reset
		.m0_address              (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src7_ready),                                                              //              cp.ready
		.cp_valid                (cmd_xbar_demux_src7_valid),                                                              //                .valid
		.cp_data                 (cmd_xbar_demux_src7_data),                                                               //                .data
		.cp_startofpacket        (cmd_xbar_demux_src7_startofpacket),                                                      //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src7_endofpacket),                                                        //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src7_channel),                                                            //                .channel
		.rf_sink_ready           (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                     //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                   // clk_reset.reset
		.in_data           (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                  // (terminated)
		.csr_read          (1'b0),                                                                                   // (terminated)
		.csr_write         (1'b0),                                                                                   // (terminated)
		.csr_readdata      (),                                                                                       // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                   // (terminated)
		.almost_full_data  (),                                                                                       // (terminated)
		.almost_empty_data (),                                                                                       // (terminated)
		.in_empty          (1'b0),                                                                                   // (terminated)
		.out_empty         (),                                                                                       // (terminated)
		.in_error          (1'b0),                                                                                   // (terminated)
		.out_error         (),                                                                                       // (terminated)
		.in_channel        (1'b0),                                                                                   // (terminated)
		.out_channel       ()                                                                                        // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                  //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                //       clk_reset.reset
		.m0_address              (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src8_ready),                                                           //              cp.ready
		.cp_valid                (cmd_xbar_demux_src8_valid),                                                           //                .valid
		.cp_data                 (cmd_xbar_demux_src8_data),                                                            //                .data
		.cp_startofpacket        (cmd_xbar_demux_src8_startofpacket),                                                   //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src8_endofpacket),                                                     //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src8_channel),                                                         //                .channel
		.rf_sink_ready           (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                  //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                // clk_reset.reset
		.in_data           (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                               // (terminated)
		.csr_read          (1'b0),                                                                                // (terminated)
		.csr_write         (1'b0),                                                                                // (terminated)
		.csr_readdata      (),                                                                                    // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                // (terminated)
		.almost_full_data  (),                                                                                    // (terminated)
		.almost_empty_data (),                                                                                    // (terminated)
		.in_empty          (1'b0),                                                                                // (terminated)
		.out_empty         (),                                                                                    // (terminated)
		.in_error          (1'b0),                                                                                // (terminated)
		.out_error         (),                                                                                    // (terminated)
		.in_channel        (1'b0),                                                                                // (terminated)
		.out_channel       ()                                                                                     // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) am2301_0_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                 //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                               //       clk_reset.reset
		.m0_address              (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src9_ready),                                                          //              cp.ready
		.cp_valid                (cmd_xbar_demux_src9_valid),                                                          //                .valid
		.cp_data                 (cmd_xbar_demux_src9_data),                                                           //                .data
		.cp_startofpacket        (cmd_xbar_demux_src9_startofpacket),                                                  //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src9_endofpacket),                                                    //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src9_channel),                                                        //                .channel
		.rf_sink_ready           (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                 //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                               // clk_reset.reset
		.in_data           (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                              // (terminated)
		.csr_read          (1'b0),                                                                               // (terminated)
		.csr_write         (1'b0),                                                                               // (terminated)
		.csr_readdata      (),                                                                                   // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                               // (terminated)
		.almost_full_data  (),                                                                                   // (terminated)
		.almost_empty_data (),                                                                                   // (terminated)
		.in_empty          (1'b0),                                                                               // (terminated)
		.out_empty         (),                                                                                   // (terminated)
		.in_error          (1'b0),                                                                               // (terminated)
		.out_error         (),                                                                                   // (terminated)
		.in_channel        (1'b0),                                                                               // (terminated)
		.out_channel       ()                                                                                    // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                            //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                          //       clk_reset.reset
		.m0_address              (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src10_ready),                                                                    //              cp.ready
		.cp_valid                (cmd_xbar_demux_src10_valid),                                                                    //                .valid
		.cp_data                 (cmd_xbar_demux_src10_data),                                                                     //                .data
		.cp_startofpacket        (cmd_xbar_demux_src10_startofpacket),                                                            //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src10_endofpacket),                                                              //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src10_channel),                                                                  //                .channel
		.rf_sink_ready           (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                            //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                          // clk_reset.reset
		.in_data           (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                         // (terminated)
		.csr_read          (1'b0),                                                                                          // (terminated)
		.csr_write         (1'b0),                                                                                          // (terminated)
		.csr_readdata      (),                                                                                              // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                          // (terminated)
		.almost_full_data  (),                                                                                              // (terminated)
		.almost_empty_data (),                                                                                              // (terminated)
		.in_empty          (1'b0),                                                                                          // (terminated)
		.out_empty         (),                                                                                              // (terminated)
		.in_error          (1'b0),                                                                                          // (terminated)
		.out_error         (),                                                                                              // (terminated)
		.in_channel        (1'b0),                                                                                          // (terminated)
		.out_channel       ()                                                                                               // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                           //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                         //       clk_reset.reset
		.m0_address              (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src11_ready),                                                                   //              cp.ready
		.cp_valid                (cmd_xbar_demux_src11_valid),                                                                   //                .valid
		.cp_data                 (cmd_xbar_demux_src11_data),                                                                    //                .data
		.cp_startofpacket        (cmd_xbar_demux_src11_startofpacket),                                                           //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src11_endofpacket),                                                             //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src11_channel),                                                                 //                .channel
		.rf_sink_ready           (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                           //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                         // clk_reset.reset
		.in_data           (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                        // (terminated)
		.csr_read          (1'b0),                                                                                         // (terminated)
		.csr_write         (1'b0),                                                                                         // (terminated)
		.csr_readdata      (),                                                                                             // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                         // (terminated)
		.almost_full_data  (),                                                                                             // (terminated)
		.almost_empty_data (),                                                                                             // (terminated)
		.in_empty          (1'b0),                                                                                         // (terminated)
		.out_empty         (),                                                                                             // (terminated)
		.in_error          (1'b0),                                                                                         // (terminated)
		.out_error         (),                                                                                             // (terminated)
		.in_channel        (1'b0),                                                                                         // (terminated)
		.out_channel       ()                                                                                              // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                             //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                           //       clk_reset.reset
		.m0_address              (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src12_ready),                                                                     //              cp.ready
		.cp_valid                (cmd_xbar_demux_src12_valid),                                                                     //                .valid
		.cp_data                 (cmd_xbar_demux_src12_data),                                                                      //                .data
		.cp_startofpacket        (cmd_xbar_demux_src12_startofpacket),                                                             //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src12_endofpacket),                                                               //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src12_channel),                                                                   //                .channel
		.rf_sink_ready           (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                             //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                           // clk_reset.reset
		.in_data           (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                          // (terminated)
		.csr_read          (1'b0),                                                                                           // (terminated)
		.csr_write         (1'b0),                                                                                           // (terminated)
		.csr_readdata      (),                                                                                               // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                           // (terminated)
		.almost_full_data  (),                                                                                               // (terminated)
		.almost_empty_data (),                                                                                               // (terminated)
		.in_empty          (1'b0),                                                                                           // (terminated)
		.out_empty         (),                                                                                               // (terminated)
		.in_error          (1'b0),                                                                                           // (terminated)
		.out_error         (),                                                                                               // (terminated)
		.in_channel        (1'b0),                                                                                           // (terminated)
		.out_channel       ()                                                                                                // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                           //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                         //       clk_reset.reset
		.m0_address              (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src13_ready),                                                                   //              cp.ready
		.cp_valid                (cmd_xbar_demux_src13_valid),                                                                   //                .valid
		.cp_data                 (cmd_xbar_demux_src13_data),                                                                    //                .data
		.cp_startofpacket        (cmd_xbar_demux_src13_startofpacket),                                                           //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src13_endofpacket),                                                             //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src13_channel),                                                                 //                .channel
		.rf_sink_ready           (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                           //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                         // clk_reset.reset
		.in_data           (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                        // (terminated)
		.csr_read          (1'b0),                                                                                         // (terminated)
		.csr_write         (1'b0),                                                                                         // (terminated)
		.csr_readdata      (),                                                                                             // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                         // (terminated)
		.almost_full_data  (),                                                                                             // (terminated)
		.almost_empty_data (),                                                                                             // (terminated)
		.in_empty          (1'b0),                                                                                         // (terminated)
		.out_empty         (),                                                                                             // (terminated)
		.in_error          (1'b0),                                                                                         // (terminated)
		.out_error         (),                                                                                             // (terminated)
		.in_channel        (1'b0),                                                                                         // (terminated)
		.out_channel       ()                                                                                              // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                            //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                          //       clk_reset.reset
		.m0_address              (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src14_ready),                                                                    //              cp.ready
		.cp_valid                (cmd_xbar_demux_src14_valid),                                                                    //                .valid
		.cp_data                 (cmd_xbar_demux_src14_data),                                                                     //                .data
		.cp_startofpacket        (cmd_xbar_demux_src14_startofpacket),                                                            //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src14_endofpacket),                                                              //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src14_channel),                                                                  //                .channel
		.rf_sink_ready           (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                            //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                          // clk_reset.reset
		.in_data           (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                         // (terminated)
		.csr_read          (1'b0),                                                                                          // (terminated)
		.csr_write         (1'b0),                                                                                          // (terminated)
		.csr_readdata      (),                                                                                              // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                          // (terminated)
		.almost_full_data  (),                                                                                              // (terminated)
		.almost_empty_data (),                                                                                              // (terminated)
		.in_empty          (1'b0),                                                                                          // (terminated)
		.out_empty         (),                                                                                              // (terminated)
		.in_error          (1'b0),                                                                                          // (terminated)
		.out_error         (),                                                                                              // (terminated)
		.in_channel        (1'b0),                                                                                          // (terminated)
		.out_channel       ()                                                                                               // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) am2301_1_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                 //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                               //       clk_reset.reset
		.m0_address              (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src15_ready),                                                         //              cp.ready
		.cp_valid                (cmd_xbar_demux_src15_valid),                                                         //                .valid
		.cp_data                 (cmd_xbar_demux_src15_data),                                                          //                .data
		.cp_startofpacket        (cmd_xbar_demux_src15_startofpacket),                                                 //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src15_endofpacket),                                                   //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src15_channel),                                                       //                .channel
		.rf_sink_ready           (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                 //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                               // clk_reset.reset
		.in_data           (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                              // (terminated)
		.csr_read          (1'b0),                                                                               // (terminated)
		.csr_write         (1'b0),                                                                               // (terminated)
		.csr_readdata      (),                                                                                   // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                               // (terminated)
		.almost_full_data  (),                                                                                   // (terminated)
		.almost_empty_data (),                                                                                   // (terminated)
		.in_empty          (1'b0),                                                                               // (terminated)
		.out_empty         (),                                                                                   // (terminated)
		.in_error          (1'b0),                                                                               // (terminated)
		.out_error         (),                                                                                   // (terminated)
		.in_channel        (1'b0),                                                                               // (terminated)
		.out_channel       ()                                                                                    // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                             //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                           //       clk_reset.reset
		.m0_address              (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src16_ready),                                                                     //              cp.ready
		.cp_valid                (cmd_xbar_demux_src16_valid),                                                                     //                .valid
		.cp_data                 (cmd_xbar_demux_src16_data),                                                                      //                .data
		.cp_startofpacket        (cmd_xbar_demux_src16_startofpacket),                                                             //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src16_endofpacket),                                                               //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src16_channel),                                                                   //                .channel
		.rf_sink_ready           (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                             //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                           // clk_reset.reset
		.in_data           (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                          // (terminated)
		.csr_read          (1'b0),                                                                                           // (terminated)
		.csr_write         (1'b0),                                                                                           // (terminated)
		.csr_readdata      (),                                                                                               // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                           // (terminated)
		.almost_full_data  (),                                                                                               // (terminated)
		.almost_empty_data (),                                                                                               // (terminated)
		.in_empty          (1'b0),                                                                                           // (terminated)
		.out_empty         (),                                                                                               // (terminated)
		.in_error          (1'b0),                                                                                           // (terminated)
		.out_error         (),                                                                                               // (terminated)
		.in_channel        (1'b0),                                                                                           // (terminated)
		.out_channel       ()                                                                                                // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                             //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                           //       clk_reset.reset
		.m0_address              (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src17_ready),                                                                     //              cp.ready
		.cp_valid                (cmd_xbar_demux_src17_valid),                                                                     //                .valid
		.cp_data                 (cmd_xbar_demux_src17_data),                                                                      //                .data
		.cp_startofpacket        (cmd_xbar_demux_src17_startofpacket),                                                             //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src17_endofpacket),                                                               //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src17_channel),                                                                   //                .channel
		.rf_sink_ready           (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                             //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                           // clk_reset.reset
		.in_data           (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                          // (terminated)
		.csr_read          (1'b0),                                                                                           // (terminated)
		.csr_write         (1'b0),                                                                                           // (terminated)
		.csr_readdata      (),                                                                                               // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                           // (terminated)
		.almost_full_data  (),                                                                                               // (terminated)
		.almost_empty_data (),                                                                                               // (terminated)
		.in_empty          (1'b0),                                                                                           // (terminated)
		.out_empty         (),                                                                                               // (terminated)
		.in_error          (1'b0),                                                                                           // (terminated)
		.out_error         (),                                                                                               // (terminated)
		.in_channel        (1'b0),                                                                                           // (terminated)
		.out_channel       ()                                                                                                // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                             //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                           //       clk_reset.reset
		.m0_address              (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src18_ready),                                                                     //              cp.ready
		.cp_valid                (cmd_xbar_demux_src18_valid),                                                                     //                .valid
		.cp_data                 (cmd_xbar_demux_src18_data),                                                                      //                .data
		.cp_startofpacket        (cmd_xbar_demux_src18_startofpacket),                                                             //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src18_endofpacket),                                                               //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src18_channel),                                                                   //                .channel
		.rf_sink_ready           (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                             //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                           // clk_reset.reset
		.in_data           (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                          // (terminated)
		.csr_read          (1'b0),                                                                                           // (terminated)
		.csr_write         (1'b0),                                                                                           // (terminated)
		.csr_readdata      (),                                                                                               // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                           // (terminated)
		.almost_full_data  (),                                                                                               // (terminated)
		.almost_empty_data (),                                                                                               // (terminated)
		.in_empty          (1'b0),                                                                                           // (terminated)
		.out_empty         (),                                                                                               // (terminated)
		.in_error          (1'b0),                                                                                           // (terminated)
		.out_error         (),                                                                                               // (terminated)
		.in_channel        (1'b0),                                                                                           // (terminated)
		.out_channel       ()                                                                                                // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                            //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                          //       clk_reset.reset
		.m0_address              (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src19_ready),                                                                    //              cp.ready
		.cp_valid                (cmd_xbar_demux_src19_valid),                                                                    //                .valid
		.cp_data                 (cmd_xbar_demux_src19_data),                                                                     //                .data
		.cp_startofpacket        (cmd_xbar_demux_src19_startofpacket),                                                            //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src19_endofpacket),                                                              //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src19_channel),                                                                  //                .channel
		.rf_sink_ready           (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                            //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                          // clk_reset.reset
		.in_data           (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                         // (terminated)
		.csr_read          (1'b0),                                                                                          // (terminated)
		.csr_write         (1'b0),                                                                                          // (terminated)
		.csr_readdata      (),                                                                                              // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                          // (terminated)
		.almost_full_data  (),                                                                                              // (terminated)
		.almost_empty_data (),                                                                                              // (terminated)
		.in_empty          (1'b0),                                                                                          // (terminated)
		.out_empty         (),                                                                                              // (terminated)
		.in_error          (1'b0),                                                                                          // (terminated)
		.out_error         (),                                                                                              // (terminated)
		.in_channel        (1'b0),                                                                                          // (terminated)
		.out_channel       ()                                                                                               // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                            //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                          //       clk_reset.reset
		.m0_address              (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src20_ready),                                                                    //              cp.ready
		.cp_valid                (cmd_xbar_demux_src20_valid),                                                                    //                .valid
		.cp_data                 (cmd_xbar_demux_src20_data),                                                                     //                .data
		.cp_startofpacket        (cmd_xbar_demux_src20_startofpacket),                                                            //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src20_endofpacket),                                                              //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src20_channel),                                                                  //                .channel
		.rf_sink_ready           (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                            //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                          // clk_reset.reset
		.in_data           (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                         // (terminated)
		.csr_read          (1'b0),                                                                                          // (terminated)
		.csr_write         (1'b0),                                                                                          // (terminated)
		.csr_readdata      (),                                                                                              // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                          // (terminated)
		.almost_full_data  (),                                                                                              // (terminated)
		.almost_empty_data (),                                                                                              // (terminated)
		.in_empty          (1'b0),                                                                                          // (terminated)
		.out_empty         (),                                                                                              // (terminated)
		.in_error          (1'b0),                                                                                          // (terminated)
		.out_error         (),                                                                                              // (terminated)
		.in_channel        (1'b0),                                                                                          // (terminated)
		.out_channel       ()                                                                                               // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                            //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                          //       clk_reset.reset
		.m0_address              (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src21_ready),                                                                    //              cp.ready
		.cp_valid                (cmd_xbar_demux_src21_valid),                                                                    //                .valid
		.cp_data                 (cmd_xbar_demux_src21_data),                                                                     //                .data
		.cp_startofpacket        (cmd_xbar_demux_src21_startofpacket),                                                            //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src21_endofpacket),                                                              //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src21_channel),                                                                  //                .channel
		.rf_sink_ready           (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                            //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                          // clk_reset.reset
		.in_data           (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                         // (terminated)
		.csr_read          (1'b0),                                                                                          // (terminated)
		.csr_write         (1'b0),                                                                                          // (terminated)
		.csr_readdata      (),                                                                                              // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                          // (terminated)
		.almost_full_data  (),                                                                                              // (terminated)
		.almost_empty_data (),                                                                                              // (terminated)
		.in_empty          (1'b0),                                                                                          // (terminated)
		.out_empty         (),                                                                                              // (terminated)
		.in_error          (1'b0),                                                                                          // (terminated)
		.out_error         (),                                                                                              // (terminated)
		.in_channel        (1'b0),                                                                                          // (terminated)
		.out_channel       ()                                                                                               // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                           //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                         //       clk_reset.reset
		.m0_address              (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src22_ready),                                                                   //              cp.ready
		.cp_valid                (cmd_xbar_demux_src22_valid),                                                                   //                .valid
		.cp_data                 (cmd_xbar_demux_src22_data),                                                                    //                .data
		.cp_startofpacket        (cmd_xbar_demux_src22_startofpacket),                                                           //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src22_endofpacket),                                                             //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src22_channel),                                                                 //                .channel
		.rf_sink_ready           (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                           //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                         // clk_reset.reset
		.in_data           (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                        // (terminated)
		.csr_read          (1'b0),                                                                                         // (terminated)
		.csr_write         (1'b0),                                                                                         // (terminated)
		.csr_readdata      (),                                                                                             // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                         // (terminated)
		.almost_full_data  (),                                                                                             // (terminated)
		.almost_empty_data (),                                                                                             // (terminated)
		.in_empty          (1'b0),                                                                                         // (terminated)
		.out_empty         (),                                                                                             // (terminated)
		.in_error          (1'b0),                                                                                         // (terminated)
		.out_error         (),                                                                                             // (terminated)
		.in_channel        (1'b0),                                                                                         // (terminated)
		.out_channel       ()                                                                                              // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                           //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                         //       clk_reset.reset
		.m0_address              (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src23_ready),                                                                   //              cp.ready
		.cp_valid                (cmd_xbar_demux_src23_valid),                                                                   //                .valid
		.cp_data                 (cmd_xbar_demux_src23_data),                                                                    //                .data
		.cp_startofpacket        (cmd_xbar_demux_src23_startofpacket),                                                           //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src23_endofpacket),                                                             //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src23_channel),                                                                 //                .channel
		.rf_sink_ready           (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                           //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                         // clk_reset.reset
		.in_data           (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                        // (terminated)
		.csr_read          (1'b0),                                                                                         // (terminated)
		.csr_write         (1'b0),                                                                                         // (terminated)
		.csr_readdata      (),                                                                                             // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                         // (terminated)
		.almost_full_data  (),                                                                                             // (terminated)
		.almost_empty_data (),                                                                                             // (terminated)
		.in_empty          (1'b0),                                                                                         // (terminated)
		.out_empty         (),                                                                                             // (terminated)
		.in_error          (1'b0),                                                                                         // (terminated)
		.out_error         (),                                                                                             // (terminated)
		.in_channel        (1'b0),                                                                                         // (terminated)
		.out_channel       ()                                                                                              // (terminated)
	);

	altera_merlin_slave_agent #(
		.PKT_DATA_H                (31),
		.PKT_DATA_L                (0),
		.PKT_BEGIN_BURST           (79),
		.PKT_SYMBOL_W              (8),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32),
		.PKT_ADDR_H                (67),
		.PKT_ADDR_L                (36),
		.PKT_TRANS_COMPRESSED_READ (68),
		.PKT_TRANS_POSTED          (69),
		.PKT_TRANS_WRITE           (70),
		.PKT_TRANS_READ            (71),
		.PKT_TRANS_LOCK            (72),
		.PKT_SRC_ID_H              (84),
		.PKT_SRC_ID_L              (80),
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_BURSTWRAP_H           (78),
		.PKT_BURSTWRAP_L           (76),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_PROTECTION_H          (90),
		.PKT_PROTECTION_L          (90),
		.ST_CHANNEL_W              (25),
		.ST_DATA_W                 (91),
		.AVS_BURSTCOUNT_W          (3),
		.SUPPRESS_0_BYTEEN_CMD     (0),
		.PREVENT_FIFO_OVERFLOW     (1)
	) position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent (
		.clk                     (hps_tabby_mclk_clk),                                                                           //             clk.clk
		.reset                   (hps_tabby_mrst_reset),                                                                         //       clk_reset.reset
		.m0_address              (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_address),                 //              m0.address
		.m0_burstcount           (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_burstcount),              //                .burstcount
		.m0_byteenable           (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_byteenable),              //                .byteenable
		.m0_debugaccess          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_debugaccess),             //                .debugaccess
		.m0_lock                 (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_lock),                    //                .lock
		.m0_readdata             (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdata),                //                .readdata
		.m0_readdatavalid        (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_readdatavalid),           //                .readdatavalid
		.m0_read                 (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_read),                    //                .read
		.m0_waitrequest          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_waitrequest),             //                .waitrequest
		.m0_writedata            (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_writedata),               //                .writedata
		.m0_write                (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_m0_write),                   //                .write
		.rp_endofpacket          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),             //              rp.endofpacket
		.rp_ready                (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),                   //                .ready
		.rp_valid                (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),                   //                .valid
		.rp_data                 (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data),                    //                .data
		.rp_startofpacket        (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket),           //                .startofpacket
		.cp_ready                (cmd_xbar_demux_src24_ready),                                                                   //              cp.ready
		.cp_valid                (cmd_xbar_demux_src24_valid),                                                                   //                .valid
		.cp_data                 (cmd_xbar_demux_src24_data),                                                                    //                .data
		.cp_startofpacket        (cmd_xbar_demux_src24_startofpacket),                                                           //                .startofpacket
		.cp_endofpacket          (cmd_xbar_demux_src24_endofpacket),                                                             //                .endofpacket
		.cp_channel              (cmd_xbar_demux_src24_channel),                                                                 //                .channel
		.rf_sink_ready           (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //         rf_sink.ready
		.rf_sink_valid           (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //                .valid
		.rf_sink_startofpacket   (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //                .startofpacket
		.rf_sink_endofpacket     (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //                .endofpacket
		.rf_sink_data            (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //                .data
		.rf_source_ready         (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //       rf_source.ready
		.rf_source_valid         (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //                .valid
		.rf_source_startofpacket (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //                .startofpacket
		.rf_source_endofpacket   (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //                .endofpacket
		.rf_source_data          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //                .data
		.rdata_fifo_sink_ready   (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       // rdata_fifo_sink.ready
		.rdata_fifo_sink_valid   (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_sink_data    (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data),        //                .data
		.rdata_fifo_src_ready    (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_ready),       //  rdata_fifo_src.ready
		.rdata_fifo_src_valid    (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_valid),       //                .valid
		.rdata_fifo_src_data     (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rdata_fifo_src_data)         //                .data
	);

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (92),
		.FIFO_DEPTH          (2),
		.CHANNEL_WIDTH       (0),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (0),
		.EMPTY_LATENCY       (1),
		.USE_MEMORY_BLOCKS   (0),
		.USE_STORE_FORWARD   (0),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo (
		.clk               (hps_tabby_mclk_clk),                                                                           //       clk.clk
		.reset             (hps_tabby_mrst_reset),                                                                         // clk_reset.reset
		.in_data           (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_data),             //        in.data
		.in_valid          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_valid),            //          .valid
		.in_ready          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_ready),            //          .ready
		.in_startofpacket  (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_startofpacket),    //          .startofpacket
		.in_endofpacket    (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rf_source_endofpacket),      //          .endofpacket
		.out_data          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_data),          //       out.data
		.out_valid         (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_valid),         //          .valid
		.out_ready         (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_ready),         //          .ready
		.out_startofpacket (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_startofpacket), //          .startofpacket
		.out_endofpacket   (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rsp_fifo_out_endofpacket),   //          .endofpacket
		.csr_address       (2'b00),                                                                                        // (terminated)
		.csr_read          (1'b0),                                                                                         // (terminated)
		.csr_write         (1'b0),                                                                                         // (terminated)
		.csr_readdata      (),                                                                                             // (terminated)
		.csr_writedata     (32'b00000000000000000000000000000000),                                                         // (terminated)
		.almost_full_data  (),                                                                                             // (terminated)
		.almost_empty_data (),                                                                                             // (terminated)
		.in_empty          (1'b0),                                                                                         // (terminated)
		.out_empty         (),                                                                                             // (terminated)
		.in_error          (1'b0),                                                                                         // (terminated)
		.out_error         (),                                                                                             // (terminated)
		.in_channel        (1'b0),                                                                                         // (terminated)
		.out_channel       ()                                                                                              // (terminated)
	);

	frontier_addr_router addr_router (
		.sink_ready         (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_ready),         //      sink.ready
		.sink_valid         (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_valid),         //          .valid
		.sink_data          (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_data),          //          .data
		.sink_startofpacket (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_startofpacket), //          .startofpacket
		.sink_endofpacket   (hps_tabby_m1_translator_avalon_universal_master_0_agent_cp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                       //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                     // clk_reset.reset
		.src_ready          (addr_router_src_ready),                                                    //       src.ready
		.src_valid          (addr_router_src_valid),                                                    //          .valid
		.src_data           (addr_router_src_data),                                                     //          .data
		.src_channel        (addr_router_src_channel),                                                  //          .channel
		.src_startofpacket  (addr_router_src_startofpacket),                                            //          .startofpacket
		.src_endofpacket    (addr_router_src_endofpacket)                                               //          .endofpacket
	);

	frontier_id_router id_router (
		.sink_ready         (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (basic_sysid_sysid_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                           //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                         // clk_reset.reset
		.src_ready          (id_router_src_ready),                                                          //       src.ready
		.src_valid          (id_router_src_valid),                                                          //          .valid
		.src_data           (id_router_src_data),                                                           //          .data
		.src_channel        (id_router_src_channel),                                                        //          .channel
		.src_startofpacket  (id_router_src_startofpacket),                                                  //          .startofpacket
		.src_endofpacket    (id_router_src_endofpacket)                                                     //          .endofpacket
	);

	frontier_id_router id_router_001 (
		.sink_ready         (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (basic_funcled_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                              //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                            // clk_reset.reset
		.src_ready          (id_router_001_src_ready),                                                         //       src.ready
		.src_valid          (id_router_001_src_valid),                                                         //          .valid
		.src_data           (id_router_001_src_data),                                                          //          .data
		.src_channel        (id_router_001_src_channel),                                                       //          .channel
		.src_startofpacket  (id_router_001_src_startofpacket),                                                 //          .startofpacket
		.src_endofpacket    (id_router_001_src_endofpacket)                                                    //          .endofpacket
	);

	frontier_id_router id_router_002 (
		.sink_ready         (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (basic_funcled_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                              //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                            // clk_reset.reset
		.src_ready          (id_router_002_src_ready),                                                         //       src.ready
		.src_valid          (id_router_002_src_valid),                                                         //          .valid
		.src_data           (id_router_002_src_data),                                                          //          .data
		.src_channel        (id_router_002_src_channel),                                                       //          .channel
		.src_startofpacket  (id_router_002_src_startofpacket),                                                 //          .startofpacket
		.src_endofpacket    (id_router_002_src_endofpacket)                                                    //          .endofpacket
	);

	frontier_id_router id_router_003 (
		.sink_ready         (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (basic_funcled_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                              //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                            // clk_reset.reset
		.src_ready          (id_router_003_src_ready),                                                         //       src.ready
		.src_valid          (id_router_003_src_valid),                                                         //          .valid
		.src_data           (id_router_003_src_data),                                                          //          .data
		.src_channel        (id_router_003_src_channel),                                                       //          .channel
		.src_startofpacket  (id_router_003_src_startofpacket),                                                 //          .startofpacket
		.src_endofpacket    (id_router_003_src_endofpacket)                                                    //          .endofpacket
	);

	frontier_id_router id_router_004 (
		.sink_ready         (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (basic_funcled_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                              //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                            // clk_reset.reset
		.src_ready          (id_router_004_src_ready),                                                         //       src.ready
		.src_valid          (id_router_004_src_valid),                                                         //          .valid
		.src_data           (id_router_004_src_data),                                                          //          .data
		.src_channel        (id_router_004_src_channel),                                                       //          .channel
		.src_startofpacket  (id_router_004_src_startofpacket),                                                 //          .startofpacket
		.src_endofpacket    (id_router_004_src_endofpacket)                                                    //          .endofpacket
	);

	frontier_id_router id_router_005 (
		.sink_ready         (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (basic_shieldctrl_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                               //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                             // clk_reset.reset
		.src_ready          (id_router_005_src_ready),                                                          //       src.ready
		.src_valid          (id_router_005_src_valid),                                                          //          .valid
		.src_data           (id_router_005_src_data),                                                           //          .data
		.src_channel        (id_router_005_src_channel),                                                        //          .channel
		.src_startofpacket  (id_router_005_src_startofpacket),                                                  //          .startofpacket
		.src_endofpacket    (id_router_005_src_endofpacket)                                                     //          .endofpacket
	);

	frontier_id_router id_router_006 (
		.sink_ready         (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (grid_pio26_a_gpio_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                           //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                         // clk_reset.reset
		.src_ready          (id_router_006_src_ready),                                                      //       src.ready
		.src_valid          (id_router_006_src_valid),                                                      //          .valid
		.src_data           (id_router_006_src_data),                                                       //          .data
		.src_channel        (id_router_006_src_channel),                                                    //          .channel
		.src_startofpacket  (id_router_006_src_startofpacket),                                              //          .startofpacket
		.src_endofpacket    (id_router_006_src_endofpacket)                                                 //          .endofpacket
	);

	frontier_id_router id_router_007 (
		.sink_ready         (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (grid_pio26_b_gpio_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                           //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                         // clk_reset.reset
		.src_ready          (id_router_007_src_ready),                                                      //       src.ready
		.src_valid          (id_router_007_src_valid),                                                      //          .valid
		.src_data           (id_router_007_src_data),                                                       //          .data
		.src_channel        (id_router_007_src_channel),                                                    //          .channel
		.src_startofpacket  (id_router_007_src_startofpacket),                                              //          .startofpacket
		.src_endofpacket    (id_router_007_src_endofpacket)                                                 //          .endofpacket
	);

	frontier_id_router id_router_008 (
		.sink_ready         (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (grid_pwm_0_pwm_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                        //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                      // clk_reset.reset
		.src_ready          (id_router_008_src_ready),                                                   //       src.ready
		.src_valid          (id_router_008_src_valid),                                                   //          .valid
		.src_data           (id_router_008_src_data),                                                    //          .data
		.src_channel        (id_router_008_src_channel),                                                 //          .channel
		.src_startofpacket  (id_router_008_src_startofpacket),                                           //          .startofpacket
		.src_endofpacket    (id_router_008_src_endofpacket)                                              //          .endofpacket
	);

	frontier_id_router id_router_009 (
		.sink_ready         (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (am2301_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                       //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                     // clk_reset.reset
		.src_ready          (id_router_009_src_ready),                                                  //       src.ready
		.src_valid          (id_router_009_src_valid),                                                  //          .valid
		.src_data           (id_router_009_src_data),                                                   //          .data
		.src_channel        (id_router_009_src_channel),                                                //          .channel
		.src_startofpacket  (id_router_009_src_startofpacket),                                          //          .startofpacket
		.src_endofpacket    (id_router_009_src_endofpacket)                                             //          .endofpacket
	);

	frontier_id_router id_router_010 (
		.sink_ready         (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (step_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                  //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                // clk_reset.reset
		.src_ready          (id_router_010_src_ready),                                                             //       src.ready
		.src_valid          (id_router_010_src_valid),                                                             //          .valid
		.src_data           (id_router_010_src_data),                                                              //          .data
		.src_channel        (id_router_010_src_channel),                                                           //          .channel
		.src_startofpacket  (id_router_010_src_startofpacket),                                                     //          .startofpacket
		.src_endofpacket    (id_router_010_src_endofpacket)                                                        //          .endofpacket
	);

	frontier_id_router id_router_011 (
		.sink_ready         (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (position_encoder_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                 //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                               // clk_reset.reset
		.src_ready          (id_router_011_src_ready),                                                            //       src.ready
		.src_valid          (id_router_011_src_valid),                                                            //          .valid
		.src_data           (id_router_011_src_data),                                                             //          .data
		.src_channel        (id_router_011_src_channel),                                                          //          .channel
		.src_startofpacket  (id_router_011_src_startofpacket),                                                    //          .startofpacket
		.src_endofpacket    (id_router_011_src_endofpacket)                                                       //          .endofpacket
	);

	frontier_id_router id_router_012 (
		.sink_ready         (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (brush_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                   //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                 // clk_reset.reset
		.src_ready          (id_router_012_src_ready),                                                              //       src.ready
		.src_valid          (id_router_012_src_valid),                                                              //          .valid
		.src_data           (id_router_012_src_data),                                                               //          .data
		.src_channel        (id_router_012_src_channel),                                                            //          .channel
		.src_startofpacket  (id_router_012_src_startofpacket),                                                      //          .startofpacket
		.src_endofpacket    (id_router_012_src_endofpacket)                                                         //          .endofpacket
	);

	frontier_id_router id_router_013 (
		.sink_ready         (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (fan_motor_driver_0_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                 //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                               // clk_reset.reset
		.src_ready          (id_router_013_src_ready),                                                            //       src.ready
		.src_valid          (id_router_013_src_valid),                                                            //          .valid
		.src_data           (id_router_013_src_data),                                                             //          .data
		.src_channel        (id_router_013_src_channel),                                                          //          .channel
		.src_startofpacket  (id_router_013_src_startofpacket),                                                    //          .startofpacket
		.src_endofpacket    (id_router_013_src_endofpacket)                                                       //          .endofpacket
	);

	frontier_id_router id_router_014 (
		.sink_ready         (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (step_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                  //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                // clk_reset.reset
		.src_ready          (id_router_014_src_ready),                                                             //       src.ready
		.src_valid          (id_router_014_src_valid),                                                             //          .valid
		.src_data           (id_router_014_src_data),                                                              //          .data
		.src_channel        (id_router_014_src_channel),                                                           //          .channel
		.src_startofpacket  (id_router_014_src_startofpacket),                                                     //          .startofpacket
		.src_endofpacket    (id_router_014_src_endofpacket)                                                        //          .endofpacket
	);

	frontier_id_router id_router_015 (
		.sink_ready         (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (am2301_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                       //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                     // clk_reset.reset
		.src_ready          (id_router_015_src_ready),                                                  //       src.ready
		.src_valid          (id_router_015_src_valid),                                                  //          .valid
		.src_data           (id_router_015_src_data),                                                   //          .data
		.src_channel        (id_router_015_src_channel),                                                //          .channel
		.src_startofpacket  (id_router_015_src_startofpacket),                                          //          .startofpacket
		.src_endofpacket    (id_router_015_src_endofpacket)                                             //          .endofpacket
	);

	frontier_id_router id_router_016 (
		.sink_ready         (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (brush_motor_driver_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                   //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                 // clk_reset.reset
		.src_ready          (id_router_016_src_ready),                                                              //       src.ready
		.src_valid          (id_router_016_src_valid),                                                              //          .valid
		.src_data           (id_router_016_src_data),                                                               //          .data
		.src_channel        (id_router_016_src_channel),                                                            //          .channel
		.src_startofpacket  (id_router_016_src_startofpacket),                                                      //          .startofpacket
		.src_endofpacket    (id_router_016_src_endofpacket)                                                         //          .endofpacket
	);

	frontier_id_router id_router_017 (
		.sink_ready         (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (brush_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                   //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                 // clk_reset.reset
		.src_ready          (id_router_017_src_ready),                                                              //       src.ready
		.src_valid          (id_router_017_src_valid),                                                              //          .valid
		.src_data           (id_router_017_src_data),                                                               //          .data
		.src_channel        (id_router_017_src_channel),                                                            //          .channel
		.src_startofpacket  (id_router_017_src_startofpacket),                                                      //          .startofpacket
		.src_endofpacket    (id_router_017_src_endofpacket)                                                         //          .endofpacket
	);

	frontier_id_router id_router_018 (
		.sink_ready         (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (brush_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                   //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                 // clk_reset.reset
		.src_ready          (id_router_018_src_ready),                                                              //       src.ready
		.src_valid          (id_router_018_src_valid),                                                              //          .valid
		.src_data           (id_router_018_src_data),                                                               //          .data
		.src_channel        (id_router_018_src_channel),                                                            //          .channel
		.src_startofpacket  (id_router_018_src_startofpacket),                                                      //          .startofpacket
		.src_endofpacket    (id_router_018_src_endofpacket)                                                         //          .endofpacket
	);

	frontier_id_router id_router_019 (
		.sink_ready         (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (step_motor_driver_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                  //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                // clk_reset.reset
		.src_ready          (id_router_019_src_ready),                                                             //       src.ready
		.src_valid          (id_router_019_src_valid),                                                             //          .valid
		.src_data           (id_router_019_src_data),                                                              //          .data
		.src_channel        (id_router_019_src_channel),                                                           //          .channel
		.src_startofpacket  (id_router_019_src_startofpacket),                                                     //          .startofpacket
		.src_endofpacket    (id_router_019_src_endofpacket)                                                        //          .endofpacket
	);

	frontier_id_router id_router_020 (
		.sink_ready         (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (step_motor_driver_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                  //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                // clk_reset.reset
		.src_ready          (id_router_020_src_ready),                                                             //       src.ready
		.src_valid          (id_router_020_src_valid),                                                             //          .valid
		.src_data           (id_router_020_src_data),                                                              //          .data
		.src_channel        (id_router_020_src_channel),                                                           //          .channel
		.src_startofpacket  (id_router_020_src_startofpacket),                                                     //          .startofpacket
		.src_endofpacket    (id_router_020_src_endofpacket)                                                        //          .endofpacket
	);

	frontier_id_router id_router_021 (
		.sink_ready         (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (step_motor_driver_4_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                  //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                                // clk_reset.reset
		.src_ready          (id_router_021_src_ready),                                                             //       src.ready
		.src_valid          (id_router_021_src_valid),                                                             //          .valid
		.src_data           (id_router_021_src_data),                                                              //          .data
		.src_channel        (id_router_021_src_channel),                                                           //          .channel
		.src_startofpacket  (id_router_021_src_startofpacket),                                                     //          .startofpacket
		.src_endofpacket    (id_router_021_src_endofpacket)                                                        //          .endofpacket
	);

	frontier_id_router id_router_022 (
		.sink_ready         (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (position_encoder_1_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                 //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                               // clk_reset.reset
		.src_ready          (id_router_022_src_ready),                                                            //       src.ready
		.src_valid          (id_router_022_src_valid),                                                            //          .valid
		.src_data           (id_router_022_src_data),                                                             //          .data
		.src_channel        (id_router_022_src_channel),                                                          //          .channel
		.src_startofpacket  (id_router_022_src_startofpacket),                                                    //          .startofpacket
		.src_endofpacket    (id_router_022_src_endofpacket)                                                       //          .endofpacket
	);

	frontier_id_router id_router_023 (
		.sink_ready         (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (position_encoder_2_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                 //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                               // clk_reset.reset
		.src_ready          (id_router_023_src_ready),                                                            //       src.ready
		.src_valid          (id_router_023_src_valid),                                                            //          .valid
		.src_data           (id_router_023_src_data),                                                             //          .data
		.src_channel        (id_router_023_src_channel),                                                          //          .channel
		.src_startofpacket  (id_router_023_src_startofpacket),                                                    //          .startofpacket
		.src_endofpacket    (id_router_023_src_endofpacket)                                                       //          .endofpacket
	);

	frontier_id_router id_router_024 (
		.sink_ready         (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_ready),         //      sink.ready
		.sink_valid         (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_valid),         //          .valid
		.sink_data          (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_data),          //          .data
		.sink_startofpacket (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_startofpacket), //          .startofpacket
		.sink_endofpacket   (position_encoder_3_ctrl_translator_avalon_universal_slave_0_agent_rp_endofpacket),   //          .endofpacket
		.clk                (hps_tabby_mclk_clk),                                                                 //       clk.clk
		.reset              (hps_tabby_mrst_reset),                                                               // clk_reset.reset
		.src_ready          (id_router_024_src_ready),                                                            //       src.ready
		.src_valid          (id_router_024_src_valid),                                                            //          .valid
		.src_data           (id_router_024_src_data),                                                             //          .data
		.src_channel        (id_router_024_src_channel),                                                          //          .channel
		.src_startofpacket  (id_router_024_src_startofpacket),                                                    //          .startofpacket
		.src_endofpacket    (id_router_024_src_endofpacket)                                                       //          .endofpacket
	);

	altera_merlin_traffic_limiter #(
		.PKT_DEST_ID_H             (89),
		.PKT_DEST_ID_L             (85),
		.PKT_TRANS_POSTED          (69),
		.MAX_OUTSTANDING_RESPONSES (5),
		.PIPELINED                 (0),
		.ST_DATA_W                 (91),
		.ST_CHANNEL_W              (25),
		.VALID_WIDTH               (25),
		.ENFORCE_ORDER             (1),
		.PKT_BYTE_CNT_H            (75),
		.PKT_BYTE_CNT_L            (73),
		.PKT_BYTEEN_H              (35),
		.PKT_BYTEEN_L              (32)
	) limiter (
		.clk                    (hps_tabby_mclk_clk),             //       clk.clk
		.reset                  (hps_tabby_mrst_reset),           // clk_reset.reset
		.cmd_sink_ready         (addr_router_src_ready),          //  cmd_sink.ready
		.cmd_sink_valid         (addr_router_src_valid),          //          .valid
		.cmd_sink_data          (addr_router_src_data),           //          .data
		.cmd_sink_channel       (addr_router_src_channel),        //          .channel
		.cmd_sink_startofpacket (addr_router_src_startofpacket),  //          .startofpacket
		.cmd_sink_endofpacket   (addr_router_src_endofpacket),    //          .endofpacket
		.cmd_src_ready          (limiter_cmd_src_ready),          //   cmd_src.ready
		.cmd_src_data           (limiter_cmd_src_data),           //          .data
		.cmd_src_channel        (limiter_cmd_src_channel),        //          .channel
		.cmd_src_startofpacket  (limiter_cmd_src_startofpacket),  //          .startofpacket
		.cmd_src_endofpacket    (limiter_cmd_src_endofpacket),    //          .endofpacket
		.rsp_sink_ready         (rsp_xbar_mux_src_ready),         //  rsp_sink.ready
		.rsp_sink_valid         (rsp_xbar_mux_src_valid),         //          .valid
		.rsp_sink_channel       (rsp_xbar_mux_src_channel),       //          .channel
		.rsp_sink_data          (rsp_xbar_mux_src_data),          //          .data
		.rsp_sink_startofpacket (rsp_xbar_mux_src_startofpacket), //          .startofpacket
		.rsp_sink_endofpacket   (rsp_xbar_mux_src_endofpacket),   //          .endofpacket
		.rsp_src_ready          (limiter_rsp_src_ready),          //   rsp_src.ready
		.rsp_src_valid          (limiter_rsp_src_valid),          //          .valid
		.rsp_src_data           (limiter_rsp_src_data),           //          .data
		.rsp_src_channel        (limiter_rsp_src_channel),        //          .channel
		.rsp_src_startofpacket  (limiter_rsp_src_startofpacket),  //          .startofpacket
		.rsp_src_endofpacket    (limiter_rsp_src_endofpacket),    //          .endofpacket
		.cmd_src_valid          (limiter_cmd_valid_data)          // cmd_valid.data
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS        (1),
		.OUTPUT_RESET_SYNC_EDGES ("deassert"),
		.SYNC_DEPTH              (2)
	) rst_controller (
		.reset_in0  (hps_tabby_mrst_reset),           // reset_in0.reset
		.clk        (hps_tabby_h2clk_clk),            //       clk.clk
		.reset_out  (rst_controller_reset_out_reset), // reset_out.reset
		.reset_in1  (1'b0),                           // (terminated)
		.reset_in2  (1'b0),                           // (terminated)
		.reset_in3  (1'b0),                           // (terminated)
		.reset_in4  (1'b0),                           // (terminated)
		.reset_in5  (1'b0),                           // (terminated)
		.reset_in6  (1'b0),                           // (terminated)
		.reset_in7  (1'b0),                           // (terminated)
		.reset_in8  (1'b0),                           // (terminated)
		.reset_in9  (1'b0),                           // (terminated)
		.reset_in10 (1'b0),                           // (terminated)
		.reset_in11 (1'b0),                           // (terminated)
		.reset_in12 (1'b0),                           // (terminated)
		.reset_in13 (1'b0),                           // (terminated)
		.reset_in14 (1'b0),                           // (terminated)
		.reset_in15 (1'b0)                            // (terminated)
	);

	frontier_cmd_xbar_demux cmd_xbar_demux (
		.clk                 (hps_tabby_mclk_clk),                 //        clk.clk
		.reset               (hps_tabby_mrst_reset),               //  clk_reset.reset
		.sink_ready          (limiter_cmd_src_ready),              //       sink.ready
		.sink_channel        (limiter_cmd_src_channel),            //           .channel
		.sink_data           (limiter_cmd_src_data),               //           .data
		.sink_startofpacket  (limiter_cmd_src_startofpacket),      //           .startofpacket
		.sink_endofpacket    (limiter_cmd_src_endofpacket),        //           .endofpacket
		.sink_valid          (limiter_cmd_valid_data),             // sink_valid.data
		.src0_ready          (cmd_xbar_demux_src0_ready),          //       src0.ready
		.src0_valid          (cmd_xbar_demux_src0_valid),          //           .valid
		.src0_data           (cmd_xbar_demux_src0_data),           //           .data
		.src0_channel        (cmd_xbar_demux_src0_channel),        //           .channel
		.src0_startofpacket  (cmd_xbar_demux_src0_startofpacket),  //           .startofpacket
		.src0_endofpacket    (cmd_xbar_demux_src0_endofpacket),    //           .endofpacket
		.src1_ready          (cmd_xbar_demux_src1_ready),          //       src1.ready
		.src1_valid          (cmd_xbar_demux_src1_valid),          //           .valid
		.src1_data           (cmd_xbar_demux_src1_data),           //           .data
		.src1_channel        (cmd_xbar_demux_src1_channel),        //           .channel
		.src1_startofpacket  (cmd_xbar_demux_src1_startofpacket),  //           .startofpacket
		.src1_endofpacket    (cmd_xbar_demux_src1_endofpacket),    //           .endofpacket
		.src2_ready          (cmd_xbar_demux_src2_ready),          //       src2.ready
		.src2_valid          (cmd_xbar_demux_src2_valid),          //           .valid
		.src2_data           (cmd_xbar_demux_src2_data),           //           .data
		.src2_channel        (cmd_xbar_demux_src2_channel),        //           .channel
		.src2_startofpacket  (cmd_xbar_demux_src2_startofpacket),  //           .startofpacket
		.src2_endofpacket    (cmd_xbar_demux_src2_endofpacket),    //           .endofpacket
		.src3_ready          (cmd_xbar_demux_src3_ready),          //       src3.ready
		.src3_valid          (cmd_xbar_demux_src3_valid),          //           .valid
		.src3_data           (cmd_xbar_demux_src3_data),           //           .data
		.src3_channel        (cmd_xbar_demux_src3_channel),        //           .channel
		.src3_startofpacket  (cmd_xbar_demux_src3_startofpacket),  //           .startofpacket
		.src3_endofpacket    (cmd_xbar_demux_src3_endofpacket),    //           .endofpacket
		.src4_ready          (cmd_xbar_demux_src4_ready),          //       src4.ready
		.src4_valid          (cmd_xbar_demux_src4_valid),          //           .valid
		.src4_data           (cmd_xbar_demux_src4_data),           //           .data
		.src4_channel        (cmd_xbar_demux_src4_channel),        //           .channel
		.src4_startofpacket  (cmd_xbar_demux_src4_startofpacket),  //           .startofpacket
		.src4_endofpacket    (cmd_xbar_demux_src4_endofpacket),    //           .endofpacket
		.src5_ready          (cmd_xbar_demux_src5_ready),          //       src5.ready
		.src5_valid          (cmd_xbar_demux_src5_valid),          //           .valid
		.src5_data           (cmd_xbar_demux_src5_data),           //           .data
		.src5_channel        (cmd_xbar_demux_src5_channel),        //           .channel
		.src5_startofpacket  (cmd_xbar_demux_src5_startofpacket),  //           .startofpacket
		.src5_endofpacket    (cmd_xbar_demux_src5_endofpacket),    //           .endofpacket
		.src6_ready          (cmd_xbar_demux_src6_ready),          //       src6.ready
		.src6_valid          (cmd_xbar_demux_src6_valid),          //           .valid
		.src6_data           (cmd_xbar_demux_src6_data),           //           .data
		.src6_channel        (cmd_xbar_demux_src6_channel),        //           .channel
		.src6_startofpacket  (cmd_xbar_demux_src6_startofpacket),  //           .startofpacket
		.src6_endofpacket    (cmd_xbar_demux_src6_endofpacket),    //           .endofpacket
		.src7_ready          (cmd_xbar_demux_src7_ready),          //       src7.ready
		.src7_valid          (cmd_xbar_demux_src7_valid),          //           .valid
		.src7_data           (cmd_xbar_demux_src7_data),           //           .data
		.src7_channel        (cmd_xbar_demux_src7_channel),        //           .channel
		.src7_startofpacket  (cmd_xbar_demux_src7_startofpacket),  //           .startofpacket
		.src7_endofpacket    (cmd_xbar_demux_src7_endofpacket),    //           .endofpacket
		.src8_ready          (cmd_xbar_demux_src8_ready),          //       src8.ready
		.src8_valid          (cmd_xbar_demux_src8_valid),          //           .valid
		.src8_data           (cmd_xbar_demux_src8_data),           //           .data
		.src8_channel        (cmd_xbar_demux_src8_channel),        //           .channel
		.src8_startofpacket  (cmd_xbar_demux_src8_startofpacket),  //           .startofpacket
		.src8_endofpacket    (cmd_xbar_demux_src8_endofpacket),    //           .endofpacket
		.src9_ready          (cmd_xbar_demux_src9_ready),          //       src9.ready
		.src9_valid          (cmd_xbar_demux_src9_valid),          //           .valid
		.src9_data           (cmd_xbar_demux_src9_data),           //           .data
		.src9_channel        (cmd_xbar_demux_src9_channel),        //           .channel
		.src9_startofpacket  (cmd_xbar_demux_src9_startofpacket),  //           .startofpacket
		.src9_endofpacket    (cmd_xbar_demux_src9_endofpacket),    //           .endofpacket
		.src10_ready         (cmd_xbar_demux_src10_ready),         //      src10.ready
		.src10_valid         (cmd_xbar_demux_src10_valid),         //           .valid
		.src10_data          (cmd_xbar_demux_src10_data),          //           .data
		.src10_channel       (cmd_xbar_demux_src10_channel),       //           .channel
		.src10_startofpacket (cmd_xbar_demux_src10_startofpacket), //           .startofpacket
		.src10_endofpacket   (cmd_xbar_demux_src10_endofpacket),   //           .endofpacket
		.src11_ready         (cmd_xbar_demux_src11_ready),         //      src11.ready
		.src11_valid         (cmd_xbar_demux_src11_valid),         //           .valid
		.src11_data          (cmd_xbar_demux_src11_data),          //           .data
		.src11_channel       (cmd_xbar_demux_src11_channel),       //           .channel
		.src11_startofpacket (cmd_xbar_demux_src11_startofpacket), //           .startofpacket
		.src11_endofpacket   (cmd_xbar_demux_src11_endofpacket),   //           .endofpacket
		.src12_ready         (cmd_xbar_demux_src12_ready),         //      src12.ready
		.src12_valid         (cmd_xbar_demux_src12_valid),         //           .valid
		.src12_data          (cmd_xbar_demux_src12_data),          //           .data
		.src12_channel       (cmd_xbar_demux_src12_channel),       //           .channel
		.src12_startofpacket (cmd_xbar_demux_src12_startofpacket), //           .startofpacket
		.src12_endofpacket   (cmd_xbar_demux_src12_endofpacket),   //           .endofpacket
		.src13_ready         (cmd_xbar_demux_src13_ready),         //      src13.ready
		.src13_valid         (cmd_xbar_demux_src13_valid),         //           .valid
		.src13_data          (cmd_xbar_demux_src13_data),          //           .data
		.src13_channel       (cmd_xbar_demux_src13_channel),       //           .channel
		.src13_startofpacket (cmd_xbar_demux_src13_startofpacket), //           .startofpacket
		.src13_endofpacket   (cmd_xbar_demux_src13_endofpacket),   //           .endofpacket
		.src14_ready         (cmd_xbar_demux_src14_ready),         //      src14.ready
		.src14_valid         (cmd_xbar_demux_src14_valid),         //           .valid
		.src14_data          (cmd_xbar_demux_src14_data),          //           .data
		.src14_channel       (cmd_xbar_demux_src14_channel),       //           .channel
		.src14_startofpacket (cmd_xbar_demux_src14_startofpacket), //           .startofpacket
		.src14_endofpacket   (cmd_xbar_demux_src14_endofpacket),   //           .endofpacket
		.src15_ready         (cmd_xbar_demux_src15_ready),         //      src15.ready
		.src15_valid         (cmd_xbar_demux_src15_valid),         //           .valid
		.src15_data          (cmd_xbar_demux_src15_data),          //           .data
		.src15_channel       (cmd_xbar_demux_src15_channel),       //           .channel
		.src15_startofpacket (cmd_xbar_demux_src15_startofpacket), //           .startofpacket
		.src15_endofpacket   (cmd_xbar_demux_src15_endofpacket),   //           .endofpacket
		.src16_ready         (cmd_xbar_demux_src16_ready),         //      src16.ready
		.src16_valid         (cmd_xbar_demux_src16_valid),         //           .valid
		.src16_data          (cmd_xbar_demux_src16_data),          //           .data
		.src16_channel       (cmd_xbar_demux_src16_channel),       //           .channel
		.src16_startofpacket (cmd_xbar_demux_src16_startofpacket), //           .startofpacket
		.src16_endofpacket   (cmd_xbar_demux_src16_endofpacket),   //           .endofpacket
		.src17_ready         (cmd_xbar_demux_src17_ready),         //      src17.ready
		.src17_valid         (cmd_xbar_demux_src17_valid),         //           .valid
		.src17_data          (cmd_xbar_demux_src17_data),          //           .data
		.src17_channel       (cmd_xbar_demux_src17_channel),       //           .channel
		.src17_startofpacket (cmd_xbar_demux_src17_startofpacket), //           .startofpacket
		.src17_endofpacket   (cmd_xbar_demux_src17_endofpacket),   //           .endofpacket
		.src18_ready         (cmd_xbar_demux_src18_ready),         //      src18.ready
		.src18_valid         (cmd_xbar_demux_src18_valid),         //           .valid
		.src18_data          (cmd_xbar_demux_src18_data),          //           .data
		.src18_channel       (cmd_xbar_demux_src18_channel),       //           .channel
		.src18_startofpacket (cmd_xbar_demux_src18_startofpacket), //           .startofpacket
		.src18_endofpacket   (cmd_xbar_demux_src18_endofpacket),   //           .endofpacket
		.src19_ready         (cmd_xbar_demux_src19_ready),         //      src19.ready
		.src19_valid         (cmd_xbar_demux_src19_valid),         //           .valid
		.src19_data          (cmd_xbar_demux_src19_data),          //           .data
		.src19_channel       (cmd_xbar_demux_src19_channel),       //           .channel
		.src19_startofpacket (cmd_xbar_demux_src19_startofpacket), //           .startofpacket
		.src19_endofpacket   (cmd_xbar_demux_src19_endofpacket),   //           .endofpacket
		.src20_ready         (cmd_xbar_demux_src20_ready),         //      src20.ready
		.src20_valid         (cmd_xbar_demux_src20_valid),         //           .valid
		.src20_data          (cmd_xbar_demux_src20_data),          //           .data
		.src20_channel       (cmd_xbar_demux_src20_channel),       //           .channel
		.src20_startofpacket (cmd_xbar_demux_src20_startofpacket), //           .startofpacket
		.src20_endofpacket   (cmd_xbar_demux_src20_endofpacket),   //           .endofpacket
		.src21_ready         (cmd_xbar_demux_src21_ready),         //      src21.ready
		.src21_valid         (cmd_xbar_demux_src21_valid),         //           .valid
		.src21_data          (cmd_xbar_demux_src21_data),          //           .data
		.src21_channel       (cmd_xbar_demux_src21_channel),       //           .channel
		.src21_startofpacket (cmd_xbar_demux_src21_startofpacket), //           .startofpacket
		.src21_endofpacket   (cmd_xbar_demux_src21_endofpacket),   //           .endofpacket
		.src22_ready         (cmd_xbar_demux_src22_ready),         //      src22.ready
		.src22_valid         (cmd_xbar_demux_src22_valid),         //           .valid
		.src22_data          (cmd_xbar_demux_src22_data),          //           .data
		.src22_channel       (cmd_xbar_demux_src22_channel),       //           .channel
		.src22_startofpacket (cmd_xbar_demux_src22_startofpacket), //           .startofpacket
		.src22_endofpacket   (cmd_xbar_demux_src22_endofpacket),   //           .endofpacket
		.src23_ready         (cmd_xbar_demux_src23_ready),         //      src23.ready
		.src23_valid         (cmd_xbar_demux_src23_valid),         //           .valid
		.src23_data          (cmd_xbar_demux_src23_data),          //           .data
		.src23_channel       (cmd_xbar_demux_src23_channel),       //           .channel
		.src23_startofpacket (cmd_xbar_demux_src23_startofpacket), //           .startofpacket
		.src23_endofpacket   (cmd_xbar_demux_src23_endofpacket),   //           .endofpacket
		.src24_ready         (cmd_xbar_demux_src24_ready),         //      src24.ready
		.src24_valid         (cmd_xbar_demux_src24_valid),         //           .valid
		.src24_data          (cmd_xbar_demux_src24_data),          //           .data
		.src24_channel       (cmd_xbar_demux_src24_channel),       //           .channel
		.src24_startofpacket (cmd_xbar_demux_src24_startofpacket), //           .startofpacket
		.src24_endofpacket   (cmd_xbar_demux_src24_endofpacket)    //           .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux (
		.clk                (hps_tabby_mclk_clk),                //       clk.clk
		.reset              (hps_tabby_mrst_reset),              // clk_reset.reset
		.sink_ready         (id_router_src_ready),               //      sink.ready
		.sink_channel       (id_router_src_channel),             //          .channel
		.sink_data          (id_router_src_data),                //          .data
		.sink_startofpacket (id_router_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_001 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_001_src_ready),               //      sink.ready
		.sink_channel       (id_router_001_src_channel),             //          .channel
		.sink_data          (id_router_001_src_data),                //          .data
		.sink_startofpacket (id_router_001_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_001_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_001_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_001_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_001_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_001_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_001_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_001_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_001_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_002 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_002_src_ready),               //      sink.ready
		.sink_channel       (id_router_002_src_channel),             //          .channel
		.sink_data          (id_router_002_src_data),                //          .data
		.sink_startofpacket (id_router_002_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_002_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_002_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_002_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_002_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_002_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_002_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_002_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_002_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_003 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_003_src_ready),               //      sink.ready
		.sink_channel       (id_router_003_src_channel),             //          .channel
		.sink_data          (id_router_003_src_data),                //          .data
		.sink_startofpacket (id_router_003_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_003_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_003_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_003_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_003_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_003_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_003_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_003_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_003_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_004 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_004_src_ready),               //      sink.ready
		.sink_channel       (id_router_004_src_channel),             //          .channel
		.sink_data          (id_router_004_src_data),                //          .data
		.sink_startofpacket (id_router_004_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_004_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_004_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_004_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_004_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_004_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_004_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_004_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_004_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_005 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_005_src_ready),               //      sink.ready
		.sink_channel       (id_router_005_src_channel),             //          .channel
		.sink_data          (id_router_005_src_data),                //          .data
		.sink_startofpacket (id_router_005_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_005_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_005_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_005_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_005_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_005_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_005_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_005_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_005_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_006 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_006_src_ready),               //      sink.ready
		.sink_channel       (id_router_006_src_channel),             //          .channel
		.sink_data          (id_router_006_src_data),                //          .data
		.sink_startofpacket (id_router_006_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_006_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_006_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_006_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_006_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_006_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_006_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_006_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_006_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_007 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_007_src_ready),               //      sink.ready
		.sink_channel       (id_router_007_src_channel),             //          .channel
		.sink_data          (id_router_007_src_data),                //          .data
		.sink_startofpacket (id_router_007_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_007_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_007_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_007_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_007_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_007_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_007_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_007_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_007_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_008 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_008_src_ready),               //      sink.ready
		.sink_channel       (id_router_008_src_channel),             //          .channel
		.sink_data          (id_router_008_src_data),                //          .data
		.sink_startofpacket (id_router_008_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_008_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_008_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_008_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_008_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_008_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_008_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_008_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_008_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_009 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_009_src_ready),               //      sink.ready
		.sink_channel       (id_router_009_src_channel),             //          .channel
		.sink_data          (id_router_009_src_data),                //          .data
		.sink_startofpacket (id_router_009_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_009_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_009_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_009_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_009_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_009_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_009_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_009_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_009_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_010 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_010_src_ready),               //      sink.ready
		.sink_channel       (id_router_010_src_channel),             //          .channel
		.sink_data          (id_router_010_src_data),                //          .data
		.sink_startofpacket (id_router_010_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_010_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_010_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_010_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_010_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_010_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_010_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_010_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_010_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_011 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_011_src_ready),               //      sink.ready
		.sink_channel       (id_router_011_src_channel),             //          .channel
		.sink_data          (id_router_011_src_data),                //          .data
		.sink_startofpacket (id_router_011_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_011_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_011_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_011_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_011_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_011_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_011_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_011_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_011_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_012 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_012_src_ready),               //      sink.ready
		.sink_channel       (id_router_012_src_channel),             //          .channel
		.sink_data          (id_router_012_src_data),                //          .data
		.sink_startofpacket (id_router_012_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_012_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_012_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_012_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_012_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_012_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_012_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_012_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_012_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_013 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_013_src_ready),               //      sink.ready
		.sink_channel       (id_router_013_src_channel),             //          .channel
		.sink_data          (id_router_013_src_data),                //          .data
		.sink_startofpacket (id_router_013_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_013_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_013_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_013_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_013_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_013_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_013_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_013_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_013_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_014 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_014_src_ready),               //      sink.ready
		.sink_channel       (id_router_014_src_channel),             //          .channel
		.sink_data          (id_router_014_src_data),                //          .data
		.sink_startofpacket (id_router_014_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_014_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_014_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_014_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_014_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_014_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_014_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_014_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_014_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_015 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_015_src_ready),               //      sink.ready
		.sink_channel       (id_router_015_src_channel),             //          .channel
		.sink_data          (id_router_015_src_data),                //          .data
		.sink_startofpacket (id_router_015_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_015_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_015_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_015_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_015_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_015_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_015_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_015_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_015_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_016 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_016_src_ready),               //      sink.ready
		.sink_channel       (id_router_016_src_channel),             //          .channel
		.sink_data          (id_router_016_src_data),                //          .data
		.sink_startofpacket (id_router_016_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_016_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_016_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_016_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_016_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_016_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_016_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_016_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_016_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_017 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_017_src_ready),               //      sink.ready
		.sink_channel       (id_router_017_src_channel),             //          .channel
		.sink_data          (id_router_017_src_data),                //          .data
		.sink_startofpacket (id_router_017_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_017_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_017_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_017_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_017_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_017_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_017_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_017_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_017_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_018 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_018_src_ready),               //      sink.ready
		.sink_channel       (id_router_018_src_channel),             //          .channel
		.sink_data          (id_router_018_src_data),                //          .data
		.sink_startofpacket (id_router_018_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_018_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_018_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_018_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_018_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_018_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_018_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_018_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_018_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_019 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_019_src_ready),               //      sink.ready
		.sink_channel       (id_router_019_src_channel),             //          .channel
		.sink_data          (id_router_019_src_data),                //          .data
		.sink_startofpacket (id_router_019_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_019_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_019_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_019_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_019_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_019_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_019_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_019_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_019_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_020 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_020_src_ready),               //      sink.ready
		.sink_channel       (id_router_020_src_channel),             //          .channel
		.sink_data          (id_router_020_src_data),                //          .data
		.sink_startofpacket (id_router_020_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_020_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_020_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_020_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_020_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_020_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_020_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_020_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_020_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_021 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_021_src_ready),               //      sink.ready
		.sink_channel       (id_router_021_src_channel),             //          .channel
		.sink_data          (id_router_021_src_data),                //          .data
		.sink_startofpacket (id_router_021_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_021_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_021_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_021_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_021_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_021_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_021_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_021_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_021_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_022 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_022_src_ready),               //      sink.ready
		.sink_channel       (id_router_022_src_channel),             //          .channel
		.sink_data          (id_router_022_src_data),                //          .data
		.sink_startofpacket (id_router_022_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_022_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_022_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_022_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_022_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_022_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_022_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_022_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_022_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_023 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_023_src_ready),               //      sink.ready
		.sink_channel       (id_router_023_src_channel),             //          .channel
		.sink_data          (id_router_023_src_data),                //          .data
		.sink_startofpacket (id_router_023_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_023_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_023_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_023_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_023_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_023_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_023_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_023_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_023_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_demux rsp_xbar_demux_024 (
		.clk                (hps_tabby_mclk_clk),                    //       clk.clk
		.reset              (hps_tabby_mrst_reset),                  // clk_reset.reset
		.sink_ready         (id_router_024_src_ready),               //      sink.ready
		.sink_channel       (id_router_024_src_channel),             //          .channel
		.sink_data          (id_router_024_src_data),                //          .data
		.sink_startofpacket (id_router_024_src_startofpacket),       //          .startofpacket
		.sink_endofpacket   (id_router_024_src_endofpacket),         //          .endofpacket
		.sink_valid         (id_router_024_src_valid),               //          .valid
		.src0_ready         (rsp_xbar_demux_024_src0_ready),         //      src0.ready
		.src0_valid         (rsp_xbar_demux_024_src0_valid),         //          .valid
		.src0_data          (rsp_xbar_demux_024_src0_data),          //          .data
		.src0_channel       (rsp_xbar_demux_024_src0_channel),       //          .channel
		.src0_startofpacket (rsp_xbar_demux_024_src0_startofpacket), //          .startofpacket
		.src0_endofpacket   (rsp_xbar_demux_024_src0_endofpacket)    //          .endofpacket
	);

	frontier_rsp_xbar_mux rsp_xbar_mux (
		.clk                  (hps_tabby_mclk_clk),                    //       clk.clk
		.reset                (hps_tabby_mrst_reset),                  // clk_reset.reset
		.src_ready            (rsp_xbar_mux_src_ready),                //       src.ready
		.src_valid            (rsp_xbar_mux_src_valid),                //          .valid
		.src_data             (rsp_xbar_mux_src_data),                 //          .data
		.src_channel          (rsp_xbar_mux_src_channel),              //          .channel
		.src_startofpacket    (rsp_xbar_mux_src_startofpacket),        //          .startofpacket
		.src_endofpacket      (rsp_xbar_mux_src_endofpacket),          //          .endofpacket
		.sink0_ready          (rsp_xbar_demux_src0_ready),             //     sink0.ready
		.sink0_valid          (rsp_xbar_demux_src0_valid),             //          .valid
		.sink0_channel        (rsp_xbar_demux_src0_channel),           //          .channel
		.sink0_data           (rsp_xbar_demux_src0_data),              //          .data
		.sink0_startofpacket  (rsp_xbar_demux_src0_startofpacket),     //          .startofpacket
		.sink0_endofpacket    (rsp_xbar_demux_src0_endofpacket),       //          .endofpacket
		.sink1_ready          (rsp_xbar_demux_001_src0_ready),         //     sink1.ready
		.sink1_valid          (rsp_xbar_demux_001_src0_valid),         //          .valid
		.sink1_channel        (rsp_xbar_demux_001_src0_channel),       //          .channel
		.sink1_data           (rsp_xbar_demux_001_src0_data),          //          .data
		.sink1_startofpacket  (rsp_xbar_demux_001_src0_startofpacket), //          .startofpacket
		.sink1_endofpacket    (rsp_xbar_demux_001_src0_endofpacket),   //          .endofpacket
		.sink2_ready          (rsp_xbar_demux_002_src0_ready),         //     sink2.ready
		.sink2_valid          (rsp_xbar_demux_002_src0_valid),         //          .valid
		.sink2_channel        (rsp_xbar_demux_002_src0_channel),       //          .channel
		.sink2_data           (rsp_xbar_demux_002_src0_data),          //          .data
		.sink2_startofpacket  (rsp_xbar_demux_002_src0_startofpacket), //          .startofpacket
		.sink2_endofpacket    (rsp_xbar_demux_002_src0_endofpacket),   //          .endofpacket
		.sink3_ready          (rsp_xbar_demux_003_src0_ready),         //     sink3.ready
		.sink3_valid          (rsp_xbar_demux_003_src0_valid),         //          .valid
		.sink3_channel        (rsp_xbar_demux_003_src0_channel),       //          .channel
		.sink3_data           (rsp_xbar_demux_003_src0_data),          //          .data
		.sink3_startofpacket  (rsp_xbar_demux_003_src0_startofpacket), //          .startofpacket
		.sink3_endofpacket    (rsp_xbar_demux_003_src0_endofpacket),   //          .endofpacket
		.sink4_ready          (rsp_xbar_demux_004_src0_ready),         //     sink4.ready
		.sink4_valid          (rsp_xbar_demux_004_src0_valid),         //          .valid
		.sink4_channel        (rsp_xbar_demux_004_src0_channel),       //          .channel
		.sink4_data           (rsp_xbar_demux_004_src0_data),          //          .data
		.sink4_startofpacket  (rsp_xbar_demux_004_src0_startofpacket), //          .startofpacket
		.sink4_endofpacket    (rsp_xbar_demux_004_src0_endofpacket),   //          .endofpacket
		.sink5_ready          (rsp_xbar_demux_005_src0_ready),         //     sink5.ready
		.sink5_valid          (rsp_xbar_demux_005_src0_valid),         //          .valid
		.sink5_channel        (rsp_xbar_demux_005_src0_channel),       //          .channel
		.sink5_data           (rsp_xbar_demux_005_src0_data),          //          .data
		.sink5_startofpacket  (rsp_xbar_demux_005_src0_startofpacket), //          .startofpacket
		.sink5_endofpacket    (rsp_xbar_demux_005_src0_endofpacket),   //          .endofpacket
		.sink6_ready          (rsp_xbar_demux_006_src0_ready),         //     sink6.ready
		.sink6_valid          (rsp_xbar_demux_006_src0_valid),         //          .valid
		.sink6_channel        (rsp_xbar_demux_006_src0_channel),       //          .channel
		.sink6_data           (rsp_xbar_demux_006_src0_data),          //          .data
		.sink6_startofpacket  (rsp_xbar_demux_006_src0_startofpacket), //          .startofpacket
		.sink6_endofpacket    (rsp_xbar_demux_006_src0_endofpacket),   //          .endofpacket
		.sink7_ready          (rsp_xbar_demux_007_src0_ready),         //     sink7.ready
		.sink7_valid          (rsp_xbar_demux_007_src0_valid),         //          .valid
		.sink7_channel        (rsp_xbar_demux_007_src0_channel),       //          .channel
		.sink7_data           (rsp_xbar_demux_007_src0_data),          //          .data
		.sink7_startofpacket  (rsp_xbar_demux_007_src0_startofpacket), //          .startofpacket
		.sink7_endofpacket    (rsp_xbar_demux_007_src0_endofpacket),   //          .endofpacket
		.sink8_ready          (rsp_xbar_demux_008_src0_ready),         //     sink8.ready
		.sink8_valid          (rsp_xbar_demux_008_src0_valid),         //          .valid
		.sink8_channel        (rsp_xbar_demux_008_src0_channel),       //          .channel
		.sink8_data           (rsp_xbar_demux_008_src0_data),          //          .data
		.sink8_startofpacket  (rsp_xbar_demux_008_src0_startofpacket), //          .startofpacket
		.sink8_endofpacket    (rsp_xbar_demux_008_src0_endofpacket),   //          .endofpacket
		.sink9_ready          (rsp_xbar_demux_009_src0_ready),         //     sink9.ready
		.sink9_valid          (rsp_xbar_demux_009_src0_valid),         //          .valid
		.sink9_channel        (rsp_xbar_demux_009_src0_channel),       //          .channel
		.sink9_data           (rsp_xbar_demux_009_src0_data),          //          .data
		.sink9_startofpacket  (rsp_xbar_demux_009_src0_startofpacket), //          .startofpacket
		.sink9_endofpacket    (rsp_xbar_demux_009_src0_endofpacket),   //          .endofpacket
		.sink10_ready         (rsp_xbar_demux_010_src0_ready),         //    sink10.ready
		.sink10_valid         (rsp_xbar_demux_010_src0_valid),         //          .valid
		.sink10_channel       (rsp_xbar_demux_010_src0_channel),       //          .channel
		.sink10_data          (rsp_xbar_demux_010_src0_data),          //          .data
		.sink10_startofpacket (rsp_xbar_demux_010_src0_startofpacket), //          .startofpacket
		.sink10_endofpacket   (rsp_xbar_demux_010_src0_endofpacket),   //          .endofpacket
		.sink11_ready         (rsp_xbar_demux_011_src0_ready),         //    sink11.ready
		.sink11_valid         (rsp_xbar_demux_011_src0_valid),         //          .valid
		.sink11_channel       (rsp_xbar_demux_011_src0_channel),       //          .channel
		.sink11_data          (rsp_xbar_demux_011_src0_data),          //          .data
		.sink11_startofpacket (rsp_xbar_demux_011_src0_startofpacket), //          .startofpacket
		.sink11_endofpacket   (rsp_xbar_demux_011_src0_endofpacket),   //          .endofpacket
		.sink12_ready         (rsp_xbar_demux_012_src0_ready),         //    sink12.ready
		.sink12_valid         (rsp_xbar_demux_012_src0_valid),         //          .valid
		.sink12_channel       (rsp_xbar_demux_012_src0_channel),       //          .channel
		.sink12_data          (rsp_xbar_demux_012_src0_data),          //          .data
		.sink12_startofpacket (rsp_xbar_demux_012_src0_startofpacket), //          .startofpacket
		.sink12_endofpacket   (rsp_xbar_demux_012_src0_endofpacket),   //          .endofpacket
		.sink13_ready         (rsp_xbar_demux_013_src0_ready),         //    sink13.ready
		.sink13_valid         (rsp_xbar_demux_013_src0_valid),         //          .valid
		.sink13_channel       (rsp_xbar_demux_013_src0_channel),       //          .channel
		.sink13_data          (rsp_xbar_demux_013_src0_data),          //          .data
		.sink13_startofpacket (rsp_xbar_demux_013_src0_startofpacket), //          .startofpacket
		.sink13_endofpacket   (rsp_xbar_demux_013_src0_endofpacket),   //          .endofpacket
		.sink14_ready         (rsp_xbar_demux_014_src0_ready),         //    sink14.ready
		.sink14_valid         (rsp_xbar_demux_014_src0_valid),         //          .valid
		.sink14_channel       (rsp_xbar_demux_014_src0_channel),       //          .channel
		.sink14_data          (rsp_xbar_demux_014_src0_data),          //          .data
		.sink14_startofpacket (rsp_xbar_demux_014_src0_startofpacket), //          .startofpacket
		.sink14_endofpacket   (rsp_xbar_demux_014_src0_endofpacket),   //          .endofpacket
		.sink15_ready         (rsp_xbar_demux_015_src0_ready),         //    sink15.ready
		.sink15_valid         (rsp_xbar_demux_015_src0_valid),         //          .valid
		.sink15_channel       (rsp_xbar_demux_015_src0_channel),       //          .channel
		.sink15_data          (rsp_xbar_demux_015_src0_data),          //          .data
		.sink15_startofpacket (rsp_xbar_demux_015_src0_startofpacket), //          .startofpacket
		.sink15_endofpacket   (rsp_xbar_demux_015_src0_endofpacket),   //          .endofpacket
		.sink16_ready         (rsp_xbar_demux_016_src0_ready),         //    sink16.ready
		.sink16_valid         (rsp_xbar_demux_016_src0_valid),         //          .valid
		.sink16_channel       (rsp_xbar_demux_016_src0_channel),       //          .channel
		.sink16_data          (rsp_xbar_demux_016_src0_data),          //          .data
		.sink16_startofpacket (rsp_xbar_demux_016_src0_startofpacket), //          .startofpacket
		.sink16_endofpacket   (rsp_xbar_demux_016_src0_endofpacket),   //          .endofpacket
		.sink17_ready         (rsp_xbar_demux_017_src0_ready),         //    sink17.ready
		.sink17_valid         (rsp_xbar_demux_017_src0_valid),         //          .valid
		.sink17_channel       (rsp_xbar_demux_017_src0_channel),       //          .channel
		.sink17_data          (rsp_xbar_demux_017_src0_data),          //          .data
		.sink17_startofpacket (rsp_xbar_demux_017_src0_startofpacket), //          .startofpacket
		.sink17_endofpacket   (rsp_xbar_demux_017_src0_endofpacket),   //          .endofpacket
		.sink18_ready         (rsp_xbar_demux_018_src0_ready),         //    sink18.ready
		.sink18_valid         (rsp_xbar_demux_018_src0_valid),         //          .valid
		.sink18_channel       (rsp_xbar_demux_018_src0_channel),       //          .channel
		.sink18_data          (rsp_xbar_demux_018_src0_data),          //          .data
		.sink18_startofpacket (rsp_xbar_demux_018_src0_startofpacket), //          .startofpacket
		.sink18_endofpacket   (rsp_xbar_demux_018_src0_endofpacket),   //          .endofpacket
		.sink19_ready         (rsp_xbar_demux_019_src0_ready),         //    sink19.ready
		.sink19_valid         (rsp_xbar_demux_019_src0_valid),         //          .valid
		.sink19_channel       (rsp_xbar_demux_019_src0_channel),       //          .channel
		.sink19_data          (rsp_xbar_demux_019_src0_data),          //          .data
		.sink19_startofpacket (rsp_xbar_demux_019_src0_startofpacket), //          .startofpacket
		.sink19_endofpacket   (rsp_xbar_demux_019_src0_endofpacket),   //          .endofpacket
		.sink20_ready         (rsp_xbar_demux_020_src0_ready),         //    sink20.ready
		.sink20_valid         (rsp_xbar_demux_020_src0_valid),         //          .valid
		.sink20_channel       (rsp_xbar_demux_020_src0_channel),       //          .channel
		.sink20_data          (rsp_xbar_demux_020_src0_data),          //          .data
		.sink20_startofpacket (rsp_xbar_demux_020_src0_startofpacket), //          .startofpacket
		.sink20_endofpacket   (rsp_xbar_demux_020_src0_endofpacket),   //          .endofpacket
		.sink21_ready         (rsp_xbar_demux_021_src0_ready),         //    sink21.ready
		.sink21_valid         (rsp_xbar_demux_021_src0_valid),         //          .valid
		.sink21_channel       (rsp_xbar_demux_021_src0_channel),       //          .channel
		.sink21_data          (rsp_xbar_demux_021_src0_data),          //          .data
		.sink21_startofpacket (rsp_xbar_demux_021_src0_startofpacket), //          .startofpacket
		.sink21_endofpacket   (rsp_xbar_demux_021_src0_endofpacket),   //          .endofpacket
		.sink22_ready         (rsp_xbar_demux_022_src0_ready),         //    sink22.ready
		.sink22_valid         (rsp_xbar_demux_022_src0_valid),         //          .valid
		.sink22_channel       (rsp_xbar_demux_022_src0_channel),       //          .channel
		.sink22_data          (rsp_xbar_demux_022_src0_data),          //          .data
		.sink22_startofpacket (rsp_xbar_demux_022_src0_startofpacket), //          .startofpacket
		.sink22_endofpacket   (rsp_xbar_demux_022_src0_endofpacket),   //          .endofpacket
		.sink23_ready         (rsp_xbar_demux_023_src0_ready),         //    sink23.ready
		.sink23_valid         (rsp_xbar_demux_023_src0_valid),         //          .valid
		.sink23_channel       (rsp_xbar_demux_023_src0_channel),       //          .channel
		.sink23_data          (rsp_xbar_demux_023_src0_data),          //          .data
		.sink23_startofpacket (rsp_xbar_demux_023_src0_startofpacket), //          .startofpacket
		.sink23_endofpacket   (rsp_xbar_demux_023_src0_endofpacket),   //          .endofpacket
		.sink24_ready         (rsp_xbar_demux_024_src0_ready),         //    sink24.ready
		.sink24_valid         (rsp_xbar_demux_024_src0_valid),         //          .valid
		.sink24_channel       (rsp_xbar_demux_024_src0_channel),       //          .channel
		.sink24_data          (rsp_xbar_demux_024_src0_data),          //          .data
		.sink24_startofpacket (rsp_xbar_demux_024_src0_startofpacket), //          .startofpacket
		.sink24_endofpacket   (rsp_xbar_demux_024_src0_endofpacket)    //          .endofpacket
	);

	frontier_irq_mapper irq_mapper (
		.clk           (hps_tabby_mclk_clk),            //       clk.clk
		.reset         (hps_tabby_mrst_reset),          // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),      // receiver0.irq
		.receiver1_irq (irq_mapper_receiver1_irq),      // receiver1.irq
		.receiver2_irq (irq_mapper_receiver2_irq),      // receiver2.irq
		.sender_irq    (irq_synchronizer_receiver_irq)  //    sender.irq
	);

	altera_irq_clock_crosser #(
		.IRQ_WIDTH (10)
	) irq_synchronizer (
		.receiver_clk   (hps_tabby_mclk_clk),            //       receiver_clk.clk
		.sender_clk     (hps_tabby_mclk_clk),            //         sender_clk.clk
		.receiver_reset (hps_tabby_mrst_reset),          // receiver_clk_reset.reset
		.sender_reset   (hps_tabby_mrst_reset),          //   sender_clk_reset.reset
		.receiver_irq   (irq_synchronizer_receiver_irq), //           receiver.irq
		.sender_irq     (hps_tabby_events_irq)           //             sender.irq
	);

endmodule
