module ad7490(
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
		// ad7490 interface
	   output SCLK,
		output SDI,
		input  SDO,
		output nCS
);
	reg      [31:0] read_data;
	reg      [31:0] write_data;
	wire     data_ready;
	assign	avs_ctrl_readdata = read_data;
	//assign   data_ready = (state==ready);
	always@(posedge csi_MCLK_clk or posedge rsi_MRST_reset)
	begin
		if(rsi_MRST_reset) begin
			read_data <= 0;
		end
		else if(avs_ctrl_write) 
		begin
			case(avs_ctrl_address)
				0: write_data <= avs_ctrl_writedata;
				default:;
			endcase	
		end
		else begin
			case(avs_ctrl_address)
				0: read_data <= 32;
				1: read_data <= 32'hEA680004;
				2: read_data <= 32'hEA680004;
				3: read_data <= data[31:0];
				//4: read_data <= {31'd0,data_ready};
				default: read_data <= 0;
			endcase
		end
	end
	
	//clock generator
	reg [31:0]counter;
	always@(posedge csi_MCLK_clk or posedge rsi_MRST_reset)
	begin
		if(rsi_MRST_reset) begin
			counter <= 0;
		end else
			counter<=counter+32'd64585974/4;//for 133.33Mhz clk
	end
	assign SCLK = counter[31];
	reg [31:0] data;
	
endmodule