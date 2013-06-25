`timescale 1us/1us
module port_io_interface_sim;
	integer n;
	
	reg clk;
	reg reset;
	wire [7:0] port0;
	wire [7:0] port1;
	wire [7:0] port2;
	wire [7:0] port3;
	wire [7:0] port4;
	wire [7:0] port5;
	wire [7:0] port6;
	wire [7:0] port7;
	wire [7:0] port8;
	wire [7:0] port9;

	wire [7:0] port0_i;
	wire [7:0] port1_i;
	wire [7:0] port2_i;
	wire [7:0] port3_i;
	wire [7:0] port4_i;
	wire [7:0] port5_i;
	wire [7:0] port6_i;
	wire [7:0] port7_i;
	wire [7:0] port8_i;
	wire [7:0] port9_i;	
	
	assign port0_i = 8'b 11100111;
	
	wire [7:0] data;
	wire port_clk;
	wire port_rst;
	
	port_io_interface io (
	.clk(clk),
	.rst(!reset),
	.port0_d(8'b00000000),
	//.port1_dir(),
	//.port2_dir(),
	.port0(port0_i),
	//port1,
	//port2,
	.port_clk(port_clk),
	.port_rst(port_rst),
	.data(data)
	);

	interface_port_io oi(
	.port_clk(port_clk),
	.port_rst(port_rst),
	.data(data),
		
	.port0(port0)
	);
	initial
	begin
	   clk <= 0;
	   reset<= 0;
	end
	initial     //test_start
	begin
	   #2 reset<=0;
	      clk<=1;
	   #2 clk<=0;  
	   #2 reset<=1;
	      clk<=1;			
		for (n = 0; n<= 20000; n = n + 1)
		begin    
			#0.5  clk <= 1'b0;
			#0.5  clk <= 1'b1;
		end
		$display( "All Test Complete." );
		$stop;
	end
endmodule