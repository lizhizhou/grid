module port_io_interface(
	input clk,	
	input rst,
	// port io interface	
	input  [7:0] port0_w,
	output reg [7:0] port0_r,
	input  [7:0] port0_d,
	input  [7:0] port1_w,
	output reg [7:0] port1_r,
	input  [7:0] port1_d,
	input  [7:0] port2_w,
	output reg [7:0] port2_r,
	input  [7:0] port2_d,
	input  [7:0] port3_w,
	output reg [7:0] port3_r,
	input  [7:0] port3_d,
	input  [7:0] port4_w,
	output reg [7:0] port4_r,
	input  [7:0] port4_d,
	input  [7:0] port5_w,
	output reg [7:0] port5_r,
	input  [7:0] port5_d,
	input  [7:0] port6_w,
	output reg [7:0] port6_r,
	input  [7:0] port6_d,
	input  [7:0] port7_w,
	output reg [7:0] port7_r,
	input  [7:0] port7_d,
	input  [7:0] port8_w,
	output reg [7:0] port8_r,
	input  [7:0] port8_d,
	// serial bus
	output port_clk,
	output reg port_rst,
	inout  [7:0] data
	);

	reg read_write;
	reg [7:0] data_r;
	
	assign port_clk = clk;
	
	parameter state_reset= 8'd0;
	parameter port0_dir        = state_reset+1;
	parameter port0_read       = port0_dir+1;
	parameter port0_write      = port0_read+1;
	parameter port1_dir        = port0_write+1;
	parameter port1_read       = port1_dir+1;
	parameter port1_write      = port1_read+1;
	parameter port2_dir        = port1_write+1;
	parameter port2_read       = port2_dir+1;
	parameter port2_write      = port2_read+1;	
	parameter last             = port2_write+1;
	reg [7:0] state;
	reg [7:0] nextstate;
	always @(posedge clk)
	begin
		if(rst)
			state<=state_reset;
		else
			state<=nextstate;
	end
	always @(state)
	begin
		case(state)
		last:nextstate<=state_reset;
		default:
			nextstate<=state + 8'b1;
		endcase
	end

	always @(posedge clk)
	begin
		case(state)
		state_reset: port_rst<=1'b1;
		default:     port_rst<=1'b0;
		endcase
	end
	
	always @(posedge clk)
	begin
		case(state)
		port0_dir:   data_r <=port0_d; 
		port0_read:  begin port0_r <= data; read_write<=1'b0; end
		port0_write: begin data_r  <= port0_w; read_write<=1'b1;  end
		port1_dir:   data_r <=port1_d; 
		port1_read:  begin port1_r <= data; read_write<=1'b0; end
		port1_write: begin data_r  <= port1_w; read_write<=1'b1;  end
		port2_dir:   data_r <=port2_d; 
		port2_read:  begin port2_r <= data; read_write<=1'b0; end
		port2_write: begin data_r  <= port2_w; read_write<=1'b1;  end
		endcase
	end
	assign data  = !read_write ? data_r : 8'hzz;


endmodule