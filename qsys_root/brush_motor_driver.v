module brush_motor_driver(
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

//brush_moter_interface		
		output HX,
		output HY		
		);
		reg      [31:0] read_data;
		reg      [31:0] write_data;
		assign	avs_ctrl_readdata = read_data;
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
					1: read_data <= 32'hEA680002;
					2: read_data <= 32'hEA680002;
					3: read_data <= 21;
					4: read_data <= 20;
					default: read_data <= 0;
				endcase
			end
		end
		
		wire forword_back;
	   wire on_off;
		wire X, Y;
		
	   assign forword_back = write_data[1];
		assign on_off = write_data[0];
	   assign X  = forword_back?1:0;
	   assign Y  = forword_back?0:1;
		assign HX = on_off?X:0; 
		assign HY = on_off?Y:0; 
endmodule