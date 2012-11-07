module step_motor_driver(
// Qsys bus interface	
		input					rsi_MRST_reset,
		input					csi_MCLK_clk,
		input		[31:0]	avs_ctrl_writedata,
		output	[31:0]	avs_ctrl_readdata,
		input		[3:0]		avs_ctrl_byteenable,
		input		[2:0]		avs_ctrl_address,
		input					avs_ctrl_write,
		input					avs_ctrl_read,
		output				avs_ctrl_waitrequest,
		
		input					rsi_PWMRST_reset,
      input					csi_PWMCLK_clk,
// step motor interface
		output AX,
		output AY,
		output BX,
		output BY,
		output AE,
		output BE
	
	);
	// Qsys bus controller
	reg        step;
	reg        forward_back;
	reg [31:0] PWM_width_A;
	reg [31:0] PWM_width_B;
	reg [31:0] PWM_frequent;
	reg [31:0] read_data;
	assign	avs_ctrl_readdata = read_data;
	always@(posedge csi_MCLK_clk or posedge rsi_MRST_reset)
	begin
		if(rsi_MRST_reset) begin
			read_data <= 0;
		end
		else if(avs_ctrl_write) 
		begin
			case(avs_ctrl_address)
				0: begin
					if(avs_ctrl_byteenable[3]) PWM_frequent[31:24] <= avs_ctrl_writedata[31:24];
					if(avs_ctrl_byteenable[2]) PWM_frequent[23:16] <= avs_ctrl_writedata[23:16];
					if(avs_ctrl_byteenable[1]) PWM_frequent[15:8] <= avs_ctrl_writedata[15:8];
					if(avs_ctrl_byteenable[0]) PWM_frequent[7:0] <= avs_ctrl_writedata[7:0];
				end
				1: begin
					if(avs_ctrl_byteenable[3]) PWM_width_A[31:24] <= avs_ctrl_writedata[31:24];
					if(avs_ctrl_byteenable[2]) PWM_width_A[23:16] <= avs_ctrl_writedata[23:16];
					if(avs_ctrl_byteenable[1]) PWM_width_A[15:8] <= avs_ctrl_writedata[15:8];
					if(avs_ctrl_byteenable[0]) PWM_width_A[7:0] <= avs_ctrl_writedata[7:0];
				end
				2: begin
					if(avs_ctrl_byteenable[3]) PWM_width_B[31:24] <= avs_ctrl_writedata[31:24];
					if(avs_ctrl_byteenable[2]) PWM_width_B[23:16] <= avs_ctrl_writedata[23:16];
					if(avs_ctrl_byteenable[1]) PWM_width_B[15:8] <= avs_ctrl_writedata[15:8];
					if(avs_ctrl_byteenable[0]) PWM_width_B[7:0] <= avs_ctrl_writedata[7:0];
				end
				3: step <= avs_ctrl_writedata[0];
				4: forward_back <= avs_ctrl_writedata[0];
				default:;
			endcase
	   end
		else begin
			case(avs_ctrl_address)
				0: read_data <= PWM_frequent;
				1: read_data <= PWM_width_A;
				2: read_data <= PWM_width_B;
				3: read_data <= {31'b0,step};
				4: read_data <= {31'b0,forward_back};
				default: read_data <= 32'b0;
			endcase
		end
	end
	
//PWM controller
	reg [31:0] PWM_A;
	reg [31:0] PWM_B;
	reg PWM_out_A;
	reg PWM_out_B;
	always @ (posedge csi_PWMCLK_clk or posedge rsi_PWMRST_reset)
	begin
		if(rsi_PWMRST_reset)
			PWM_A <= 32'b0;
		else
		begin
			PWM_A <= PWM_A + PWM_frequent;
			PWM_out_A <=(PWM_A > PWM_width_A) ? 0:1;   
			//PWM <= PWM +  2 * 10737;//32'd500 *  33'h100000000 / 32'd200000000;
			//PWM_out <= (PWM > 32'h80000000) ? 0:1;
		end
	end
	always @ (posedge csi_PWMCLK_clk or posedge rsi_PWMRST_reset)
	begin
		if(rsi_PWMRST_reset)
			PWM_B <= 32'b0;
		else
		begin
			PWM_B <= PWM_B + PWM_frequent;
			PWM_out_B <=(PWM_B > PWM_width_B) ? 0:1;   
		end
	end

	// step motor state
	reg [0:3] motor_state;
	always @ (posedge step or posedge rsi_MRST_reset)
	begin
		if(rsi_MRST_reset)
			motor_state	<= 4'b 1000;
		else 
		begin
			if(forward_back)
			case(motor_state)
				4'b1000: motor_state<= 4'b1010;
				4'b1010: motor_state<= 4'b0010;
				4'b0010: motor_state<= 4'b0110;
				4'b0110: motor_state<= 4'b0100;
				4'b0100: motor_state<= 4'b0101;
				4'b0101: motor_state<= 4'b0001;
				4'b0001: motor_state<= 4'b1001;
				4'b1001: motor_state<= 4'b1000;
			endcase
			else
			case(motor_state)
				4'b1010: motor_state<= 4'b1000;
				4'b0010: motor_state<= 4'b1010;
				4'b0110: motor_state<= 4'b0010;
				4'b0100: motor_state<= 4'b0110;
				4'b0101: motor_state<= 4'b0100;
				4'b0001: motor_state<= 4'b0101;
				4'b1001: motor_state<= 4'b0001;
				4'b1000: motor_state<= 4'b1001;
			endcase
		end
	end
	
	//output signal
	assign AE = !PWM_out_A;
	assign BE = !PWM_out_B;
	assign AX = !motor_state[3];
	assign AY = !motor_state[2];
	assign BX = !motor_state[1];
	assign BY =	!motor_state[0];
	
endmodule