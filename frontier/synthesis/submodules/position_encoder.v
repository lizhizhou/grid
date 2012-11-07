module position_encoder(
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

// Encoder sensor interface		
		input A,
		input B,
		input Z
		);
		// Qsys bus controller	
		reg [31:0] read_data;
		assign	avs_ctrl_readdata = read_data;
		always@(posedge csi_MCLK_clk or posedge rsi_MRST_reset)
		begin
			if(rsi_MRST_reset) begin
				read_data <= 0;
			end
			else begin
				case(avs_ctrl_address)
					0: read_data <= 32'hEA680003;
					1: read_data <= {22'b0,postion};
					default: read_data <= 32'b0;
				endcase
			end
		end
			
		reg [9:0]postion;
		always @(posedge A or posedge rsi_MRST_reset)
		begin
			if (rsi_MRST_reset)
				postion <= 10'b0;
			else if (Z)
				postion <= 10'b0;
			else
				postion <= postion+1;
				
		end
endmodule






