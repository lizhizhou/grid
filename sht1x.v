module sht1x(
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
		// sht1x interface
	   output sck, // 100khz 
		inout  sda,
		output sck3
			
		);
		wire sck1;
		wire sck2;
		reg [31:0] clk;
		always @(posedge csi_MCLK_clk)
		begin
			clk <= clk + 32'd64585974/4/4;//for 133.33Mhz clk
		end
		assign sck1 = clk[31];
		assign sck2 = clk[30];
		assign sck3 = sda;
		
	
		
		parameter 
	   Address = 3'b000,
		Measure_Temperature=5'b00011,
		Measure_Relative_Humidity=5'b00101,
		Read_Status_Register=5'b00111,
		Write_Status_Register=5'b00110;
		
		reg dir_r;
		reg sda_r;
		reg sck_r;
		parameter dir_out = 1'b1;
		parameter dir_in  = 1'b0;

		reg sda_in;
		always @ (posedge sck2)
		begin
//			if(dir_r == dir_in)
				sda_in <= sda;
//			else
//				sda_in <= sda_in;
		end
	
		parameter Reset_0 = 16'd0;
		parameter Reset_1 = Reset_0+1; 
		parameter Reset_2 = Reset_1+1;
		parameter Reset_3 = Reset_2+1;
		parameter Reset_4 = Reset_3+1;
		parameter Reset_5 = Reset_4+1;
		parameter Reset_6 = Reset_5+1;
		parameter Reset_7 = Reset_6+1;
		parameter Reset_8 = Reset_7+1;
		parameter Reset_9 = Reset_8+1;
	
		parameter Transmision_Start_0 = Reset_9+1;
		parameter Transmision_Start_1 = Transmision_Start_0+1; 
		parameter Transmision_Start_2 = Transmision_Start_1+1;
		parameter Transmision_Start_3 = Transmision_Start_2+1;
		parameter Transmision_Start_4 = Transmision_Start_3+1;
		parameter Transmision_Start_5 = Transmision_Start_4+1;
		parameter Transmision_Start_6 = Transmision_Start_5+1;
		parameter Transmision_Start_7 = Transmision_Start_6+1;
		
		parameter Command_0   = Transmision_Start_7+1;
		parameter Command_1   = Command_0+1;
		parameter Command_2   = Command_1+1;
		parameter Command_3   = Command_2+1;
		parameter Command_4   = Command_3+1;
	   parameter Command_5   = Command_4+1;
	   parameter Command_6   = Command_5+1;
		parameter Command_7   = Command_6+1;
		parameter Command_ack = Command_7+1;	
		
		parameter Measure_wait = Command_ack+1;
		
		parameter Idle_0 = Measure_wait+1;
		parameter Idle_1 = Idle_0+1;
		parameter Idle_2 = Idle_1+1;
		parameter Idle_3 = Idle_2+1;
		
		parameter Date_0  =  Idle_3 +1;
		parameter Date_1  =  Date_0 +1;
		parameter Date_2  =  Date_1 +1;
		parameter Date_3  =  Date_2 +1;
		parameter Date_4  =  Date_3 +1;
		parameter Date_5  =  Date_4 +1;
		parameter Date_6  =  Date_5 +1;
		parameter Date_7  =  Date_6 +1;
		parameter Date_8  =  Date_7 +1;
		parameter Date_9  =  Date_8 +1;
		parameter Date_10 =  Date_9 +1;
		parameter Date_11 =  Date_10+1;	
		parameter Date_ack = Date_11+1;
		
		parameter Crc_0   = Date_ack+1;
		parameter Crc_1   = Crc_0+1;
		parameter Crc_2   = Crc_1+1;
		parameter Crc_3   = Crc_2+1;
		parameter Crc_4   = Crc_3+1;
		parameter Crc_5   = Crc_4+1;
		parameter Crc_6   = Crc_5+1;
		parameter Crc_7   = Crc_6+1;
		
		reg [15:0]state;
		reg [15:0]next_state;
		
		reg [15:0]time_out;
		
		reg [7:0] command_reg;
		
		always @ (posedge sck2)
		begin
			if(rsi_MRST_reset) begin
				state <= Reset_0;
			end else	begin
				state <= next_state;
			end
		end
		
		always @ (state or sda or time_out)
		begin
			if(state < Transmision_Start_0) begin
				next_state = state + 1;
				sck_r = !sck2;
				sda_r = 1'b1;
				dir_r = dir_out;
			end
			else
			case(state)
			Transmision_Start_0: begin
				next_state = Transmision_Start_1;
				sck_r = 1'b1;
				sda_r = 1'b1;
				dir_r = dir_out;
			end
			Transmision_Start_1: begin
				next_state = Transmision_Start_2;
				sck_r = 1'b1;
				sda_r = 1'b0;
				dir_r = dir_out;
			end
			Transmision_Start_2: begin
				next_state = Transmision_Start_3;
				sck_r = 1'b0;
				sda_r = 1'b0;
				dir_r = dir_out;				
			end
			Transmision_Start_3: begin
				next_state = Transmision_Start_4;
				sck_r = 1'b1;
				sda_r = 1'b0;
				dir_r = dir_out;
			end
			Transmision_Start_4: begin
				next_state = Transmision_Start_5;
				sck_r = 1'b1;
				sda_r = 1'b1;
				dir_r = dir_out;
			end
			Transmision_Start_5: begin
				next_state = Transmision_Start_6;
				sck_r = 1'b0;
				sda_r = 1'b1;
				dir_r = dir_out;				
			end
			Transmision_Start_6: begin
				next_state = Transmision_Start_7;
				sck_r = 1'b0;
				sda_r = 1'b1;
				dir_r = dir_out;			
			end
			Transmision_Start_7: begin
				next_state = Command_0;
				sck_r = 1'b0;
				sda_r = 1'b0;
				dir_r = dir_out;			
				command_reg	= {Address,Measure_Temperature};
			end
			Command_0: begin
				next_state = Command_1;
				sck_r = !sck2;
				sda_r = command_reg[7];
				dir_r = dir_out;	
			end
			Command_1: begin
				next_state = Command_2;
				sck_r = !sck2;
				sda_r = command_reg[6];
				dir_r = dir_out;	
			end
			Command_2: begin
				next_state = Command_3;
				sck_r = !sck2;
				sda_r = command_reg[5];
				dir_r = dir_out;	
			end
			Command_3: begin
				next_state = Command_4;
				sck_r = !sck2;
				sda_r = command_reg[4];
				dir_r = dir_out;	
			end
			Command_4: begin
				next_state = Command_5;
				sck_r = !sck2;
				sda_r = command_reg[3];
				dir_r = dir_out;	
			end
			Command_5: begin
				next_state <= Command_6;
				sck_r = !sck2;
				sda_r = command_reg[2];
				dir_r = dir_out;	
			end
			Command_6: begin
				next_state = Command_7;
				sck_r = !sck2;
				sda_r = command_reg[1];
				dir_r = dir_out;	
			end
			Command_7: begin
				next_state = Command_ack;
				sck_r = !sck2;
				sda_r = command_reg[0];
				dir_r = dir_out;	
			end
			Command_ack: begin
				dir_r = dir_in;
				sck_r = !sck2;
				if(time_out > 16'd500)
					next_state = Reset_0;
				else if( sda_in == 1'b1)
					next_state = Command_ack;	
				else
					next_state = Measure_wait;
			end
			Measure_wait: begin
				dir_r = dir_in;
				sck_r = 0;
				if(time_out > 16'd5000)
					next_state = Reset_0;
				else if( sda_in == 1'b1)
					next_state = Measure_wait;
				else			
					next_state = Idle_0;			
			end
			Idle_0: begin
				next_state = Idle_1;	
				dir_r = dir_in;
				sck_r = !sck2;		
			end
			Idle_1: begin
				next_state = Idle_2;
				dir_r = dir_in;
				sck_r = !sck2;			
			end
			Idle_2: begin
				next_state = Idle_3;			
				dir_r = dir_in;
				sck_r = !sck2;	
			end
			Idle_3: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_0;			
			end	
			Date_0: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_1;				
			end
			Date_1: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_2;				
			end	
			Date_2: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_3;				
			end	
			Date_3: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_4;				
			end	
			Date_4: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_5;				
			end	
			Date_5: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_6;				
			end	
			Date_6: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_7;				
			end	
			Date_7: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_8;				
			end	
			Date_8: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_9;				
			end	
			Date_9: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_10;				
			end	
			Date_10: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_11;				
			end	
			Date_11: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Date_ack;				
			end	
			Date_ack: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Crc_0;				
			end
			Crc_0: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Crc_1;				
			end		
			Crc_1: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Crc_2;				
			end		
			Crc_2: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Crc_3;				
			end		
			Crc_3: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Crc_4;				
			end
			Crc_4: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Crc_5;				
			end		
			Crc_5: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Crc_6;				
			end	
			Crc_6: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = Crc_7;				
			end	
			Crc_7: begin
				dir_r = dir_in;
				sck_r = !sck2;
				next_state = state+1;				
			end					
			default: begin
				next_state = state+1;
				sck_r = 0;
				//sck_r = !sck2;
				dir_r = dir_in;
			end
			endcase
		end
		
		always @ (posedge sck2)
		begin
			case(state)
			Command_ack:
			Measure_wait:
				time_out <= time_out+1;
			default:
				time_out <= 0;
			endcase
		end
		
		assign sda = dir_r ? sda_r : 1'bz;
		assign sck = sck_r;
		
endmodule