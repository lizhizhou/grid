module matrix(
output AX_step_motor_0,
output AY_step_motor_0,
output BX_step_motor_0,
output BY_step_motor_0,
output AE_step_motor_0,
output BE_step_motor_0,

output AX_step_motor_1,
output AY_step_motor_1,
output BX_step_motor_1,
output BY_step_motor_1,
output AE_step_motor_1,
output BE_step_motor_1,

output AX_step_motor_2,
output AY_step_motor_2,
output BX_step_motor_2,
output BY_step_motor_2,
output AE_step_motor_2,
output BE_step_motor_2,

output AX_step_motor_3,
output AY_step_motor_3,
output BX_step_motor_3,
output BY_step_motor_3,
output AE_step_motor_3,
output BE_step_motor_3,

output HX_brush_motor_0,
output HY_brush_motor_0,

output HX_brush_motor_1,
output HY_brush_motor_1,

output HX_brush_motor_2,
output HY_brush_motor_2,

output HX_brush_motor_3,
output HY_brush_motor_3,

inout PIN_0_PIO26_A,
inout PIN_1_PIO26_A,
inout PIN_2_PIO26_A,
inout PIN_3_PIO26_A,
inout PIN_4_PIO26_A,
inout PIN_5_PIO26_A,
inout PIN_6_PIO26_A,
inout PIN_7_PIO26_A,
inout PIN_8_PIO26_A,
inout PIN_9_PIO26_A,
inout PIN_10_PIO26_A,
inout PIN_11_PIO26_A,
inout PIN_12_PIO26_A,
inout PIN_13_PIO26_A,
inout PIN_14_PIO26_A,
inout PIN_15_PIO26_A,
inout PIN_16_PIO26_A,
inout PIN_17_PIO26_A,
inout PIN_18_PIO26_A,
inout PIN_19_PIO26_A,
inout PIN_20_PIO26_A,
inout PIN_21_PIO26_A,
inout PIN_22_PIO26_A,
inout PIN_23_PIO26_A,
inout PIN_24_PIO26_A,
inout PIN_25_PIO26_A,

inout PIN_0_PIO26_B,
inout PIN_1_PIO26_B,
inout PIN_2_PIO26_B,
inout PIN_3_PIO26_B,
inout PIN_4_PIO26_B,
inout PIN_5_PIO26_B,
inout PIN_6_PIO26_B,
inout PIN_7_PIO26_B,
inout PIN_8_PIO26_B,
inout PIN_9_PIO26_B,
inout PIN_10_PIO26_B,
inout PIN_11_PIO26_B,
inout PIN_12_PIO26_B,
inout PIN_13_PIO26_B,
inout PIN_14_PIO26_B,
inout PIN_15_PIO26_B,
inout PIN_16_PIO26_B,
inout PIN_17_PIO26_B,
inout PIN_18_PIO26_B,
inout PIN_19_PIO26_B,
inout PIN_20_PIO26_B,
inout PIN_21_PIO26_B,
inout PIN_22_PIO26_B,
inout PIN_23_PIO26_B,
inout PIN_24_PIO26_B,
inout PIN_25_PIO26_B,

input clock);
assign AX_step_motor_0 = PIN_0_PIO26_A;
assign AY_step_motor_0 = PIN_2_PIO26_A;
assign BX_step_motor_0 = PIN_1_PIO26_A;
assign BY_step_motor_0 = PIN_3_PIO26_A;
assign AE_step_motor_0 = PIN_4_PIO26_A;
assign BE_step_motor_0 = PIN_5_PIO26_A;
assign AX_step_motor_1 = PIN_6_PIO26_A;
assign AY_step_motor_1 = PIN_8_PIO26_A;
assign BX_step_motor_1 = PIN_7_PIO26_A;
assign BY_step_motor_1 = PIN_9_PIO26_A;
assign AE_step_motor_1 = PIN_10_PIO26_A;
assign BE_step_motor_1 = PIN_11_PIO26_A;
assign AX_step_motor_2 = PIN_12_PIO26_A;
assign AY_step_motor_2 = PIN_14_PIO26_A;
assign BX_step_motor_2 = PIN_13_PIO26_A;
assign BY_step_motor_2 = PIN_15_PIO26_A;
assign AE_step_motor_2 = PIN_16_PIO26_A;
assign BE_step_motor_2 = PIN_17_PIO26_A;
assign AX_step_motor_3 = PIN_18_PIO26_A;
assign AY_step_motor_3 = PIN_20_PIO26_A;
assign BX_step_motor_3 = PIN_19_PIO26_A;
assign BY_step_motor_3 = PIN_21_PIO26_A;
assign AE_step_motor_3 = PIN_22_PIO26_A;
assign BE_step_motor_3 = PIN_23_PIO26_A;
assign HX_brush_motor_0 = PIN_0_PIO26_B;
assign HY_brush_motor_0 = PIN_1_PIO26_B;
assign HX_brush_motor_1 = PIN_2_PIO26_B;
assign HY_brush_motor_1 = PIN_3_PIO26_B;
assign HX_brush_motor_2 = PIN_4_PIO26_B;
assign HY_brush_motor_2 = PIN_5_PIO26_B;
assign HX_brush_motor_3 = PIN_6_PIO26_B;
assign HY_brush_motor_3 = PIN_7_PIO26_B;
endmodule
