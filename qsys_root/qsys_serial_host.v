module PNLCtrl(
MCLK,
MCLR,

PNL_DO,
PNL_DI,
PNL_CLK,
PNL_LE,
PNL_STA,

KEY_KA,
KEY_KB,
KEY_KC,
KEY_KD,
KEY_KE,

LED_STAT,

BUZZER,
LCD_EN,
LCD_RST,
LCD_FS
);

input					MCLK, MCLR;

input					PNL_DO;
output				PNL_DI, PNL_CLK, PNL_LE, PNL_STA;
reg					PNL_DI, PNL_CLK, PNL_LE, PNL_STA;

output	[3:0]		LED_STAT;
output				BUZZER, LCD_EN, LCD_RST, LCD_FS;

assign	LED_STAT = board_ctrl[3:0];
//assign	LED_STAT = {1'b1, ~KEY_ABC_state};
assign	BUZZER = board_ctrl[4];
assign	LCD_EN = 1'b0;
//assign	LCD_RST = board_ctrl[6];
assign	LCD_RST = MCLR;
assign	LCD_FS = 1'b1;

reg		[15:0]	recv_buffer = 16'hFFFF;
reg		[15:0]	send_buffer = 0;
reg		[15:0]	board_ctrl = 16'hFFBF;

reg		[7:0]		timeout = 0;

reg		[7:0]		state = 0;

reg					KEY_ABC_tag = 1'b0;
reg					KEY_KD_tag = 1'b0;
reg					KEY_KE_tag = 1'b0;

always@(posedge MCLK or negedge MCLR)
begin
	if(!MCLR) begin
	
		state <= 0;
		
		timeout <= 0;
		
		recv_buffer <= 16'hFFFF;
		send_buffer <= 16'b0;
		board_ctrl = 16'hFFBF;
		
		KEY_ABC_clear <= 1'b1;
		KEY_KD_clear <= 1'b1;
		KEY_KE_clear <= 1'b1;
		
		KEY_ABC_tag <= 1'b0;
		KEY_KD_tag <= 1'b0;
		KEY_KE_tag <= 1'b0;
		
		PNL_DI <= 1'b0;
		PNL_CLK <= 1'b0;
		PNL_LE <= 1'b0; 
		PNL_STA <= 1'b0;
		
	end
	else begin
		case(state)
			0: begin
				if(PNL_DO) begin
					state <= 100;
				end
				
				else if(KEY_KD_event) begin
					send_buffer <= {3'b001, 8'b0, KEY_KD_buffer};
					KEY_KD_tag <= 1'b1;
					state <= 10;
				end
				
				else if(KEY_ABC_event) begin
					send_buffer <= {3'b010, KEY_KC_buffer, KEY_KB_buffer, KEY_KA_buffer};
					KEY_ABC_tag <= 1'b1;
					state <= 10;
				end
				
				else if(KEY_KE_event) begin
					send_buffer <= {3'b101, 11'b0, KEY_KE_buffer};
					KEY_KE_tag <= 1'b1;
					state <= 10;
				end
			end
			
			//Transmit Process
			
			10: begin state <= state + 1; PNL_LE <= 1'b0; end
			11: begin state <= state + 1; PNL_LE <= 1'b1; end
			12: begin state <= state + 1; PNL_LE <= 1'b1; end
			13: begin state <= state + 1; PNL_LE <= 1'b1; end
			14: begin state <= state + 1; PNL_LE <= 1'b0; end
			15: begin state <= state + 1; end
			16: begin state <= 20; end
			
			20: begin state <= state + 1; PNL_DI <= send_buffer[15]; PNL_CLK <= 1'b0; end 
			21: begin state <= state + 1; PNL_DI <= send_buffer[15]; PNL_CLK <= 1'b1; end 
			22: begin state <= state + 1; PNL_DI <= send_buffer[14]; PNL_CLK <= 1'b0; end 
			23: begin state <= state + 1; PNL_DI <= send_buffer[14]; PNL_CLK <= 1'b1; end 
			24: begin state <= state + 1; PNL_DI <= send_buffer[13]; PNL_CLK <= 1'b0; end 
			25: begin state <= state + 1; PNL_DI <= send_buffer[13]; PNL_CLK <= 1'b1; end 
			26: begin state <= state + 1; PNL_DI <= send_buffer[12]; PNL_CLK <= 1'b0; end 
			27: begin state <= state + 1; PNL_DI <= send_buffer[12]; PNL_CLK <= 1'b1; end 
			28: begin state <= state + 1; PNL_DI <= send_buffer[11]; PNL_CLK <= 1'b0; end 
			29: begin state <= state + 1; PNL_DI <= send_buffer[11]; PNL_CLK <= 1'b1; end 
			30: begin state <= state + 1; PNL_DI <= send_buffer[10]; PNL_CLK <= 1'b0; end 
			31: begin state <= state + 1; PNL_DI <= send_buffer[10]; PNL_CLK <= 1'b1; end 
			32: begin state <= state + 1; PNL_DI <= send_buffer[9];  PNL_CLK <= 1'b0; end 
			33: begin state <= state + 1; PNL_DI <= send_buffer[9];  PNL_CLK <= 1'b1; end 
			34: begin state <= state + 1; PNL_DI <= send_buffer[8];  PNL_CLK <= 1'b0; end 
			35: begin state <= state + 1; PNL_DI <= send_buffer[8];  PNL_CLK <= 1'b1; end 
			36: begin state <= state + 1; PNL_DI <= send_buffer[7];  PNL_CLK <= 1'b0; end 
			37: begin state <= state + 1; PNL_DI <= send_buffer[7];  PNL_CLK <= 1'b1; end 
			38: begin state <= state + 1; PNL_DI <= send_buffer[6];  PNL_CLK <= 1'b0; end 
			39: begin state <= state + 1; PNL_DI <= send_buffer[6];  PNL_CLK <= 1'b1; end 
			40: begin state <= state + 1; PNL_DI <= send_buffer[5];  PNL_CLK <= 1'b0; end 
			41: begin state <= state + 1; PNL_DI <= send_buffer[5];  PNL_CLK <= 1'b1; end 
			42: begin state <= state + 1; PNL_DI <= send_buffer[4];  PNL_CLK <= 1'b0; end 
			43: begin state <= state + 1; PNL_DI <= send_buffer[4];  PNL_CLK <= 1'b1; end 
			44: begin state <= state + 1; PNL_DI <= send_buffer[3];  PNL_CLK <= 1'b0; end 
			45: begin state <= state + 1; PNL_DI <= send_buffer[3];  PNL_CLK <= 1'b1; end 
			46: begin state <= state + 1; PNL_DI <= send_buffer[2];  PNL_CLK <= 1'b0; end 
			47: begin state <= state + 1; PNL_DI <= send_buffer[2];  PNL_CLK <= 1'b1; end 
			48: begin state <= state + 1; PNL_DI <= send_buffer[1];  PNL_CLK <= 1'b0; end 
			49: begin state <= state + 1; PNL_DI <= send_buffer[1];  PNL_CLK <= 1'b1; end 
			50: begin state <= state + 1; PNL_DI <= send_buffer[0];  PNL_CLK <= 1'b0; end 
			51: begin state <= state + 1; PNL_DI <= send_buffer[0];  PNL_CLK <= 1'b1; end 
			52: begin state <= 55; PNL_DI <= 1'b0;  PNL_CLK <= 1'b0; end 
			
			55: begin 
				if(KEY_KD_tag == 1'b1) KEY_KD_clear <= 1'b0; 
				if(KEY_ABC_tag == 1'b1) KEY_ABC_clear <= 1'b0; 
				if(KEY_KE_tag == 1'b1) KEY_KE_clear <= 1'b0; 
				state <= 56;
			end
			
			56: begin state <= state + 1; end
			57: begin state <= state + 1; end
			58: begin state <= state + 1; end
			
			59: begin 
				if(KEY_KD_tag == 1'b1) begin KEY_KD_clear <= 1'b1; KEY_KD_tag <= 1'b0; state <= state + 1; end
				if(KEY_ABC_tag == 1'b1) begin KEY_ABC_clear <= 1'b1; KEY_ABC_tag <= 1'b0; state <= state + 1; end
				if(KEY_KE_tag == 1'b1) begin KEY_KE_clear <= 1'b1; KEY_KE_tag <= 1'b0; state <= state + 1; end
			end	
	
			60: begin state <= state + 1; end
			61: begin state <= state + 1; end
			62: begin state <= state + 1; end
			63: begin state <= state + 1; end
			64: begin state <= state + 1; end
			65: begin state <= state + 1; end
			66: begin state <= state + 1; end
			67: begin state <= state + 1; end
			68: begin state <= state + 1; end
			69: begin state <= state + 1; end
			70: begin state <= 0; end
			
			//Receive Process
			
			100: begin state <= state + 1; PNL_LE <= 1'b0; end
			101: begin state <= state + 1; PNL_LE <= 1'b1; end
			102: begin state <= state + 1; timeout <= 0; end
			103: begin 
				if(!PNL_DO) state <= state + 1;
				else if(timeout == 8'hFFFF) begin
					timeout <= 0;
					state <= 0;
				end
				else timeout <= timeout + 1;
			end
			104: begin state <= state + 1; PNL_LE <= 1'b0; timeout <= 0; end
			105: begin state <= state + 1; end
			106: begin state <= 120; end
			
			//Start Serial Data Receive
			
			120: begin state <= state + 1; PNL_CLK <= 1'b0; end
			121: begin state <= state + 1; PNL_CLK <= 1'b1; end
			122: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[15] <= PNL_DO; end
			123: begin state <= state + 1; PNL_CLK <= 1'b1; end
			124: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[14] <= PNL_DO; end
			125: begin state <= state + 1; PNL_CLK <= 1'b1; end
			126: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[13] <= PNL_DO; end
			127: begin state <= state + 1; PNL_CLK <= 1'b1; end
			128: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[12] <= PNL_DO; end
			129: begin state <= state + 1; PNL_CLK <= 1'b1; end
			130: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[11] <= PNL_DO; end
			131: begin state <= state + 1; PNL_CLK <= 1'b1; end
			132: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[10] <= PNL_DO; end
			133: begin state <= state + 1; PNL_CLK <= 1'b1; end
			134: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[9] <= PNL_DO; end
			135: begin state <= state + 1; PNL_CLK <= 1'b1; end
			136: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[8] <= PNL_DO; end
			137: begin state <= state + 1; PNL_CLK <= 1'b1; end
			138: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[7] <= PNL_DO; end
			139: begin state <= state + 1; PNL_CLK <= 1'b1; end
			140: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[6] <= PNL_DO; end
			141: begin state <= state + 1; PNL_CLK <= 1'b1; end
			142: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[5] <= PNL_DO; end
			143: begin state <= state + 1; PNL_CLK <= 1'b1; end
			144: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[4] <= PNL_DO; end
			145: begin state <= state + 1; PNL_CLK <= 1'b1; end
			146: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[3] <= PNL_DO; end
			147: begin state <= state + 1; PNL_CLK <= 1'b1; end
			148: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[2] <= PNL_DO; end
			149: begin state <= state + 1; PNL_CLK <= 1'b1; end
			150: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[1] <= PNL_DO; end
			151: begin state <= state + 1; PNL_CLK <= 1'b1; end
			152: begin state <= state + 1; PNL_CLK <= 1'b0; recv_buffer[0] <= PNL_DO; PNL_LE <= 1'b1; end
			153: begin 
				if(!PNL_DO) begin
					state <= 0;
					PNL_LE <= 1'b0; 
					board_ctrl <= recv_buffer;
					timeout <= 0;
				end
				else if(timeout == 8'hFFFF) begin
					state <= 0;
					timeout <= 0;
					PNL_LE <= 1'b0; 
				end
				else timeout <= timeout + 1;
			end
			
			default: begin
	
				state <= 0;
				
				KEY_ABC_clear <= 1'b1;
				KEY_KD_clear <= 1'b1;
				KEY_KE_clear <= 1'b1;
				
				KEY_ABC_tag <= 1'b0;
				KEY_KD_tag <= 1'b0;
				KEY_KE_tag <= 1'b0;
				
				PNL_DI <= 1'b0;
				PNL_CLK <= 1'b0;
				PNL_LE <= 1'b0; 
				PNL_STA <= 1'b0;
				
			end
		endcase
	end
end

reg		[22:0]	cnt;

always@(posedge MCLK or negedge MCLR)
begin
	if(!MCLR) cnt <= 0;
	else cnt <= cnt + 1;
end

inout		[4:0]		KEY_KA;
inout		[3:0]		KEY_KB;

reg		[4:0]		KEY_KA_buffer;
reg		[3:0]		KEY_KB_buffer;

reg					KEY_KA_dir = 1'b0; // 0 = input, 1 = output;
reg					KEY_KB_dir = 1'b0; // 0 = input, 1 = output;

assign	KEY_KA = (KEY_KA_dir == 1'b1) ? 5'b00000 : 5'bzzzzz;
assign	KEY_KB = (KEY_KB_dir == 1'b1) ? 4'b0000 : 4'bzzzz;

input		[3:0]		KEY_KC;
reg		[3:0]		KEY_KC_buffer;

reg					KEY_ABC_event = 1'b0;
reg					KEY_ABC_clear = 1'b1;
reg		[2:0]		KEY_ABC_state = 0;
wire					abc_clk = cnt[18];

always@(posedge abc_clk or negedge KEY_ABC_clear or negedge MCLR)
begin
	if((!KEY_ABC_clear)||(!MCLR)) begin
		KEY_KA_buffer <= 5'b11111;
		KEY_KB_buffer <= 4'b1111;
		KEY_KC_buffer <= 4'b1111;
		
		KEY_KA_dir <= 1'b0;
		KEY_KB_dir <= 1'b0;
		
		KEY_ABC_event <= 1'b0;
		KEY_ABC_state <= 0;
	end
	else begin
		case(KEY_ABC_state)
			0:	begin
				KEY_KA_dir <= 1'b1;
				KEY_KB_dir <= 1'b0; // Read KB status
				KEY_ABC_state <= 1;
			end
			
			1:	begin
				if((KEY_KB == 4'b1110)||(KEY_KB == 4'b1101)||(KEY_KB == 4'b1011)||(KEY_KB == 4'b0111)||(KEY_KC != 4'b1111)) begin
					KEY_KB_buffer <= KEY_KB;
					KEY_KC_buffer <= KEY_KC;
					KEY_ABC_state <= 2;
				end
			end
			
			2:	begin
				if((KEY_KB == KEY_KB_buffer)&&(KEY_KC == KEY_KC_buffer)) begin
					KEY_KA_dir <= 1'b0; // Read KA status
					KEY_KB_dir <= 1'b1;
					KEY_ABC_state <= 3;
				end 
				else KEY_ABC_state <= 1;
			end
			
			3:	begin
				KEY_KA_buffer <= KEY_KA;
				KEY_ABC_state <= 4;
			end
			
			4:	begin
				KEY_ABC_event <= 1'b1;
				KEY_KA_dir <= 1'b0;
				KEY_KB_dir <= 1'b0;
			end
			
			default: begin
				KEY_KA_buffer <= 5'b11111;
				KEY_KB_buffer <= 4'b1111;
				KEY_KC_buffer <= 4'b1111;
				KEY_KA_dir <= 1'b0;
				KEY_KB_dir <= 1'b0;
				KEY_ABC_event <= 1'b0;
				KEY_ABC_state <= 0;		
			end
		endcase
	end
end

input		[4:1]		KEY_KD;
reg		[4:0]		KEY_KD_buffer = 0;
reg					KEY_KD_event = 1'b0;
reg					KEY_KD_clear = 1'b1;
reg					KEY_KD_state = 1'b0;
wire					kd_clk = cnt[19];

always@(posedge kd_clk or negedge KEY_KD_clear or negedge MCLR)
begin
	if((!KEY_KD_clear)||(!MCLR)) begin
		KEY_KD_buffer <= 5'b11111;
		KEY_KD_event <= 1'b0;
		KEY_KD_state <= 1'b0;
	end
	else begin
		case(KEY_KD_state)
		
			1'b0: begin 
				if({KEY_KD[4:1], KEY_KE[3]} != 5'b11111) begin 
					KEY_KD_buffer <= {KEY_KD[4:1], KEY_KE[3]};
					KEY_KD_state <= 1'b1;
				end
			end
			
			1'b1: begin 
				if(KEY_KD_buffer == {KEY_KD[4:1], KEY_KE[3]}) begin
					KEY_KD_event <= 1'b1;
				end
				else KEY_KD_state <= 1'b0;
			end

		endcase
	end
end 

input		[3:1]		KEY_KE;
reg		[2:1]		KEY_KE_buffer;
reg					KEY_KE_event = 1'b0;
reg					KEY_KE_clear = 1'b1;
reg		[1:0]		KEY_KE_state = 0;	
wire					ke_clk = cnt[6];		
			
always@(posedge ke_clk or negedge KEY_KE_clear or negedge MCLR)
begin
	if((!KEY_KE_clear)||(!MCLR)) begin
		KEY_KE_buffer <= 1'b0;
		KEY_KE_event <= 1'b0;
		KEY_KE_state <= 0;
	end
	else begin
		case(KEY_KE_state)
		
			0: begin
				if(KEY_KE[2:1] == 2'b11) KEY_KE_state <= 1;
			end
			
			1: begin
				if(KEY_KE[2:1] == 2'b11) KEY_KE_state <= 2;
				else KEY_KE_state <= 0;
			end
			
			2: begin
				case(KEY_KE[2:1])
					2'b10: begin KEY_KE_buffer <= KEY_KE[2:1]; KEY_KE_state <= 3; end
					2'b01: begin KEY_KE_buffer <= KEY_KE[2:1]; KEY_KE_state <= 3; end
					default: KEY_KE_state <= 2;
				endcase
			end
			
			3: begin
				if(KEY_KE_buffer == KEY_KE[2:1]) begin 
					KEY_KE_event = 1'b1;
				end
				else KEY_KE_state <= 2;
			end
			
		endcase
	end
end

endmodule
