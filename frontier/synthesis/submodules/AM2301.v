module AM2301(
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
		// AM2301 interface
	   output clk_1us,
		//input sda_in,
		inout sda
);
	reg      [31:0] read_data;
	reg      [31:0] write_data;
	wire     data_ready;
	assign	avs_ctrl_readdata = read_data;
	assign   data_ready = (state==ready);
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
				1: read_data <= 32'hEA680003;
				2: read_data <= 32'hEA680003;
				3: read_data <= data[31:0];
				4: read_data <= {31'd0,data_ready};
				default: read_data <= 0;
			endcase
		end
	end
	
	//wire clk_1us;
	reg [31:0]counter;
	always@(posedge csi_MCLK_clk or posedge rsi_MRST_reset)
	begin
		if(rsi_MRST_reset) begin
			counter <= 0;
		end else
			counter<=counter+32'd64585974;//for 133.333Mhz clk
	end
	//assign clk_1us = csi_MCLK_clk;
	assign clk_1us = counter[31];
	
	reg [40:0] data;
	reg [7:0] state;
	reg [7:0] next_state;
	reg [24:0] temp_time;
	reg [24:0] time_out;
	reg sda_dir;
	reg sda_data;
	//wire sda_in;
	assign sda    = sda_dir?sda_data:1'bz;
	assign sda_in = sda_dir?1:sda;

	parameter high_width  = 80;	
	parameter start_width = 1000;
	
	// machine state
	parameter start=0;
	parameter start_read=1;
	parameter start_end =2;
	parameter start_low =3;
	parameter start_high=4;
	parameter bit_1_low =5;
	parameter bit_1_high=6;
	parameter bit_2_low =7;
	parameter bit_2_high=8;
	parameter bit_3_low =9;
	parameter bit_3_high=10;
	parameter bit_4_low =11;
	parameter bit_4_high=12;
	parameter bit_5_low =13;
	parameter bit_5_high=14;
	parameter bit_6_low =15;
	parameter bit_6_high=16;
	parameter bit_7_low =17;
	parameter bit_7_high=18;
	parameter bit_8_low =19;
	parameter bit_8_high=20;
	parameter bit_9_low =21;
	parameter bit_9_high=22;
	parameter bit_10_low =23;
	parameter bit_10_high=24;
	parameter bit_11_low =25;
	parameter bit_11_high=26;	
	parameter bit_12_low =27;
	parameter bit_12_high=28;	
	parameter bit_13_low =29;
	parameter bit_13_high=30;	
	parameter bit_14_low =31;
	parameter bit_14_high=32;
	parameter bit_15_low =33;
	parameter bit_15_high=34;
	parameter bit_16_low =35;
	parameter bit_16_high=36;
	parameter bit_17_low =37;
	parameter bit_17_high=38;
	parameter bit_18_low =39;
	parameter bit_18_high=40;
	parameter bit_19_low =41;
	parameter bit_19_high=42;
	parameter bit_20_low =43;
	parameter bit_20_high=44;
	parameter bit_21_low =45;
	parameter bit_21_high=46;
	parameter bit_22_low =47;
	parameter bit_22_high=48;
	parameter bit_23_low =49;
	parameter bit_23_high=50;
	parameter bit_24_low =51;
	parameter bit_24_high=52;
	parameter bit_25_low =53;
	parameter bit_25_high=54;
	parameter bit_26_low =55;
	parameter bit_26_high=56;
	parameter bit_27_low =57;
	parameter bit_27_high=58;
	parameter bit_28_low =59;
	parameter bit_28_high=60;
	parameter bit_29_low =61;
	parameter bit_29_high=62;
	parameter bit_30_low =63;
	parameter bit_30_high=64;
	parameter bit_31_low =65;
	parameter bit_31_high=66;
	parameter bit_32_low =67;
	parameter bit_32_high=68;

	parameter ready = 90;
	
	parameter time_2s=2000000;
	always@(posedge clk_1us or posedge rsi_MRST_reset) begin
		if(rsi_MRST_reset) begin
			state <= start;
			time_out <= 0;
		end
		else begin 
			if (time_out > 2000000) begin
				state <= start;         // Time out, reset the state machine
				time_out <= 0;
			end else begin	
				state <= next_state;				
				time_out <= time_out + 1;
			end
		end
	end
	always@(state or sda_in or time_out) begin
		case(state)
		start: begin
			next_state = start_read;
		end
		start_read: begin 
			if(time_out > 1000) begin
				next_state = start_end;
			end else
				next_state = state;
		end
		start_end: begin 
			if (sda_in==0) begin	
				next_state = start_low;
			end else
				next_state = state;
		end 		
		start_low: begin 
			if (sda_in==1) begin	
				next_state = start_high;
			end else
				next_state = state;
		end 
		start_high: begin 
			if (sda_in==0) begin	
				next_state = bit_1_low;
			end else
				next_state = state;
		end 
		bit_1_low: begin 
			if (sda_in==1) begin	
				next_state = bit_1_high;
			end else
				next_state = state;
		end 		
		bit_1_high: begin 
			if (sda_in==0) begin	
				next_state = bit_2_low;
			end else
				next_state = state;
		end 
		bit_2_low: begin 
			if (sda_in==1) begin	
				next_state = bit_2_high;
			end else
				next_state = state;
		end 		
		bit_2_high: begin 
			if (sda_in==0) begin	
				next_state = bit_3_low;
			end else
				next_state = state;
		end 
		bit_3_low: begin 
			if (sda_in==1) begin	
				next_state = bit_3_high;
			end else
				next_state = state;
		end 		
		bit_3_high: begin 
			if (sda_in==0) begin	
				next_state = bit_4_low;
			end else
				next_state = state;
		end 
		bit_4_low: begin 
			if (sda_in==1) begin	
				next_state = bit_4_high;
			end else
				next_state = state;
		end 		
		bit_4_high: begin 
			if (sda_in==0) begin	
				next_state = bit_5_low;
			end else
				next_state = state;
		end 
		bit_5_low: begin 
			if (sda_in==1) begin	
				next_state = bit_5_high;
			end else
				next_state = state;
		end 		
		bit_5_high: begin 
			if (sda_in==0) begin	
				next_state = bit_6_low;
			end else
				next_state = state;
		end 
		bit_6_low: begin 
			if (sda_in==1) begin	
				next_state = bit_6_high;
			end else
				next_state = state;
		end 		
		bit_6_high: begin 
			if (sda_in==0) begin	
				next_state = bit_7_low;
			end else
				next_state = state;
		end 
		bit_7_low: begin 
			if (sda_in==1) begin	
				next_state = bit_7_high;
			end else
				next_state = state;
		end 		
		bit_7_high: begin 
			if (sda_in==0) begin	
				next_state = bit_8_low;
			end else
				next_state = state;
		end 
		bit_8_low: begin 
			if (sda_in==1) begin	
				next_state = bit_8_high;
			end else
				next_state = state;
		end 		
		bit_8_high: begin 
			if (sda_in==0) begin	
				next_state = bit_9_low;
			end else
				next_state = state;
		end 
		bit_9_low: begin 
			if (sda_in==1) begin	
				next_state = bit_9_high;
			end else
				next_state = state;
		end 		
		bit_9_high: begin 
			if (sda_in==0) begin	
				next_state = bit_10_low;
			end else
				next_state = state;
		end 
		bit_10_low: begin 
			if (sda_in==1) begin	
				next_state = bit_10_high;
			end else
				next_state = state;
		end 		
		bit_10_high: begin 
			if (sda_in==0) begin	
				next_state = bit_11_low;
			end else
				next_state = state;
		end 
		bit_11_low: begin 
			if (sda_in==1) begin	
				next_state = bit_11_high;
			end else
				next_state = state;
		end 		
		bit_11_high: begin 
			if (sda_in==0) begin	
				next_state = bit_12_low;
			end else
				next_state = state;
		end 	
		bit_12_low: begin 
			if (sda_in==1) begin	
				next_state = bit_12_high;
			end else
				next_state = state;
		end 		
		bit_12_high: begin 
			if (sda_in==0) begin	
				next_state = bit_13_low;
			end else
				next_state = state;
		end 
		bit_13_low: begin 
			if (sda_in==1) begin	
				next_state = bit_13_high;
			end else
				next_state = state;
		end 		
		bit_13_high: begin 
			if (sda_in==0) begin	
				next_state = bit_14_low;
			end else
				next_state = state;
		end 
		bit_14_low: begin 
			if (sda_in==1) begin	
				next_state = bit_14_high;
			end else
				next_state = state;
		end 		
		bit_14_high: begin 
			if (sda_in==0) begin	
				next_state = bit_15_low;
			end else
				next_state = state;
		end 
		bit_15_low: begin 
			if (sda_in==1) begin	
				next_state = bit_15_high;
			end else
				next_state = state;
		end 		
		bit_15_high: begin 
			if (sda_in==0) begin	
				next_state = bit_16_low;
			end else
				next_state = state;
		end 
		bit_16_low: begin 
			if (sda_in==1) begin	
				next_state = bit_16_high;
			end else
				next_state = state;
		end 		
		bit_16_high: begin 
			if (sda_in==0) begin	
				next_state = bit_17_low;
			end else
				next_state = state;
		end 
		bit_17_low: begin 
			if (sda_in==1) begin	
				next_state = bit_17_high;
			end else
				next_state = state;
		end 		
		bit_17_high: begin 
			if (sda_in==0) begin	
				next_state = bit_18_low;
			end else
				next_state = state;
		end 
		bit_18_low: begin 
			if (sda_in==1) begin	
				next_state = bit_18_high;
			end else
				next_state = state;
		end 		
		bit_18_high: begin 
			if (sda_in==0) begin	
				next_state = bit_19_low;
			end else
				next_state = state;
		end 
		bit_19_low: begin 
			if (sda_in==1) begin	
				next_state = bit_19_high;
			end else
				next_state = state;
		end 		
		bit_19_high: begin 
			if (sda_in==0) begin	
				next_state = bit_20_low;
			end else
				next_state = state;
		end 
		bit_20_low: begin 
			if (sda_in==1) begin	
				next_state = bit_20_high;
			end else
				next_state = state;
		end 		
		bit_20_high: begin 
			if (sda_in==0) begin	
				next_state = bit_21_low;
			end else
				next_state = state;
		end
	   bit_21_low: begin 
			if (sda_in==1) begin	
				next_state = bit_21_high;
			end else
				next_state = state;
		end 		
		bit_21_high: begin 
			if (sda_in==0) begin	
				next_state = bit_22_low;
			end else
				next_state = state;
		end 
		bit_22_low: begin 
			if (sda_in==1) begin	
				next_state = bit_22_high;
			end else
				next_state = state;
		end 		
		bit_22_high: begin 
			if (sda_in==0) begin	
				next_state = bit_23_low;
			end else
				next_state = state;
		end 
	   bit_23_low: begin 
			if (sda_in==1) begin	
				next_state = bit_23_high;
			end else
				next_state = state;
		end 		
		bit_23_high: begin 
			if (sda_in==0) begin	
				next_state = bit_24_low;
			end else
				next_state = state;
		end 
	   bit_24_low: begin 
			if (sda_in==1) begin	
				next_state = bit_24_high;
			end else
				next_state = state;
		end 		
		bit_24_high: begin 
			if (sda_in==0) begin	
				next_state = bit_25_low;
			end else
				next_state = state;
		end 
	   bit_25_low: begin 
			if (sda_in==1) begin	
				next_state = bit_25_high;
			end else
				next_state = state;
		end 		
		bit_25_high: begin 
			if (sda_in==0) begin	
				next_state = bit_26_low;
			end else
				next_state = state;
		end
		bit_26_low: begin 
			if (sda_in==1) begin	
				next_state = bit_26_high;
			end else
				next_state = state;
		end 		
		bit_26_high: begin 
			if (sda_in==0) begin	
				next_state = bit_27_low;
			end else
				next_state = state;
		end
		bit_27_low: begin 
			if (sda_in==1) begin	
				next_state = bit_27_high;
			end else
				next_state = state;
		end 		
		bit_27_high: begin 
			if (sda_in==0) begin	
				next_state = bit_28_low;
			end else
				next_state = state;
		end
		bit_28_low: begin 
			if (sda_in==1) begin	
				next_state = bit_28_high;
			end else
				next_state = state;
		end 		
		bit_28_high: begin 
			if (sda_in==0) begin	
				next_state = bit_29_low;
			end else
				next_state = state;
		end	
		bit_29_low: begin 
			if (sda_in==1) begin	
				next_state = bit_29_high;
			end else
				next_state = state;
		end 		
		bit_29_high: begin 
			if (sda_in==0) begin	
				next_state = bit_30_low;
			end else
				next_state = state;
		end	
		bit_30_low: begin 
			if (sda_in==1) begin	
				next_state = bit_30_high;
			end else
				next_state = state;
		end 		
		bit_30_high: begin 
			if (sda_in==0) begin	
				next_state = bit_31_low;
			end else
				next_state = state;
		end
		bit_31_low: begin 
			if (sda_in==1) begin	
				next_state = bit_31_high;
			end else
				next_state = state;
		end 		
		bit_31_high: begin 
			if (sda_in==0) begin	
				next_state = bit_32_low;
			end else
				next_state = state;
		end
		bit_32_low: begin 
			if (sda_in==1) begin	
				next_state = bit_32_high;
			end else
				next_state = state;
		end 		
		bit_32_high: begin 
			if (sda_in==0) begin	
				next_state = ready;
			end else
				next_state = state;
		end			
		ready:
			if (time_out > 2000000)
				next_state = start;
			else
				next_state = state;
		default:
			next_state = start;
		endcase
	end

	always@(posedge clk_1us or posedge rsi_MRST_reset) begin
		case(state)
//		bit_1_low: begin 
//			temp_time <= time_out;
//		end 		
//		bit_1_high: begin 
//			if(time_out > temp_time + high_width)
//				data[0]<=1;
//			else
//				data[0]<=0;
//		end 
//		bit_2_low: begin 
//
//		end 		
//		bit_2_high: begin 
//
//		end 
//		bit_3_low: begin 
//
//		end 		
//		bit_3_high: begin 
//
//		end 
//		bit_4_low: begin 
//
//		end 		
//		bit_4_high: begin 
//
//		end 
//		bit_5_low: begin 
//
//		end 		
//		bit_5_high: begin 
//
//		end 
//		bit_6_low: begin 
//
//		end 		
//		bit_6_high: begin 
//
//		end 
//		bit_7_low: begin 
//
//		end 		
//		bit_7_high: begin 
//
//		end 
//		bit_8_low: begin 
//
//		end 		
//		bit_8_high: begin 
//
//		end 
//		bit_9_low: begin 
//
//		end 		
//		bit_9_high: begin 
//
//		end 
//		bit_10_low: begin 
//
//		end 		
//		bit_10_high: begin 
//
//		end 
//		bit_11_low: begin 
//
//		end 		
//		bit_11_high: begin 
//
//		end 	
//		bit_12_low: begin 
//
//		end 		
//		bit_12_high: begin 
//
//		end 
//		bit_13_low: begin 
//
//		end 		
//		bit_13_high: begin 
//
//		end 
//		bit_14_low: begin 
//
//		end 		
//		bit_14_high: begin 
//
//		end 
//		bit_15_low: begin 
//
//		end 		
//		bit_15_high: begin 
//
//		end 
//		bit_16_low: begin 
//
//		end 		
//		bit_16_high: begin 
//
//		end 
//		bit_17_low: begin 
//
//		end 		
//		bit_17_high: begin 
//
//		end 
//		bit_18_low: begin 
//
//		end 		
//		bit_18_high: begin 
//
//		end 
//		bit_19_low: begin 
//
//		end 		
//		bit_19_high: begin 
//
//		end 
//		bit_20_low: begin 
//
//		end 		
//		bit_20_high: begin 
//
//		end
//	   bit_21_low: begin 
//
//		end 		
//		bit_21_high: begin 
//
//		end 
//		bit_22_low: begin 
//
//		end 		
//		bit_22_high: begin 
//
//		end 
//	   bit_23_low: begin 
//
//		end 		
//		bit_23_high: begin 
//
//		end 
//	   bit_24_low: begin 
//
//		end 		
//		bit_24_high: begin 
//
//		end 
//	   bit_25_low: begin 
//
//		end 		
//		bit_25_high: begin 
//
//		end
//		bit_26_low: begin 
//
//		end 		
//		bit_26_high: begin 
//
//		end
//		bit_27_low: begin 
//
//		end 		
//		bit_27_high: begin 
//
//		end
//		bit_28_low: begin 
//
//		end 		
//		bit_28_high: begin 
//
//		end	
//		bit_29_low: begin 
//
//		end 		
//		bit_29_high: begin 
//
//		end	
//		bit_30_low: begin 
//
//		end 		
//		bit_30_high: begin 
//
//		end
//		bit_31_low: begin 
//
//		end 		
//		bit_31_high: begin 
//
//		end
//		bit_32_low: begin 
//
//		end 		
//		bit_32_high: begin 
//
//		end			
//		ready:begin
//		end
		default:begin
			data <= 31'd0;
		end
		endcase
	end

	
	always@(posedge clk_1us or posedge rsi_MRST_reset) begin
		if(rsi_MRST_reset) begin
			sda_dir  <= 1;
			sda_data <= 1;
		end else begin
		case(state)
		start: begin
			sda_dir  <= 1;
			sda_data <= 1;
		end
		start_read: begin
			sda_dir  <= 1;
			sda_data <= 0;
		end
		start_end: begin
			sda_dir  <= 0;
			sda_data <= 1;
		end
		default: begin
			sda_dir  <= 0;
			sda_data <= 1;
		end
		endcase
		end
	end
endmodule