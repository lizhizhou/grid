module io_to_epl_bus(
	// EPL interface
	output EPL_SCLK,	
	output reg EPL_SDI,	
	input  EPL_SDO,		
	output reg EPL_SLE,		
	input  EPL_INT,
	// IO interface
	input  clk,
	input  reset,
	input  [31:0] port_i,
	output reg [31:0] port_o
);	
	assign EPL_SCLK = clk;
	reg [63:0]data_buffer;
	parameter data_input=1'd0;
	parameter data_sync = data_input+1'd1;
	parameter data_ouput = data_sync+1'd1;	
	reg [2:0] state;
	reg [2:0] nextstate;
	
	always@(posedge clk)
	begin
		state <= state + 1;
		case(state)
			data_input: 
			begin
				EPL_SLE <= 1'b0;
				data_buffer[31:0] <= port_i;
			end
			data_sync:
			begin
				integer i;
				EPL_SLE <= 1'b1;
				EPL_SDI <= data_buffer[63];
				for(i=0;i<62;i=i+1)
					data_buffer[i+1] <= data_buffer[i];
				data_buffer[0]<= EPL_SDO;
			end
			data_ouput:
			begin
				EPL_SLE <= 1'b0;
				port_o <= data_buffer[31:0];
			end
		endcase
	end

endmodule 



