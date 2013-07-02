module mse_host(
		// Qsys serial interface
		output   			sdo,
		input 		      sdi,
		input             clk,
		input             sle,
		output            srdy

		input             reset,
	   // Qsys bus interface
		output				rso_MRST_reset,
		output				cso_MCLK_clk,

		output	[31:0]	avm_M1_writedata,
		input		[31:0]	avm_M1_readdata,
		output	[7:0]	   avm_M1_address,
		output	[3:0]		avm_M1_byteenable,
		output				avm_M1_write,
		output				avm_M1_read,
		output				avm_M1_begintransfer,
		input					avm_M1_readdatavalid,
		input					avm_M1_waitrequest
);

		assign cso_MCLK_clk = clk;
		reg [64:0] data_buffer;
		
		parameter initial_state = 8'd0;
		parameter bus_data_wait = initial_state+8'd1;
		parameter bus_data_ready = bus_data_wait+8'd1;
		parameter bus_transmit_start = bus_data_ready + 8'd1;
		parameter bus_transmit_ready = bus_transmit_start + 8'd1;
		parameter bus_data_received =  bus_transmit_ready + 8'd1;
		parameter bus_data_read     =  bus_data_received + 8'd1;
		reg [7:0] state;
		reg [7:0] nextstate;
		always@(posedge clk or posedge reset)
		begin
			if (reset)
				state <= initial_state;
			else 
				state <= nextstate;
		end
		always@(nextstate or srdy or avs_ctrl_read)
		begin
			case(state)
			initial_state: nextstate <= bus_data_wait;
			bus_data_wait: nextstate <= bus_data_ready;
			bus_data_ready: nextstate <= bus_transmit_start;
			bus_transmit_start:
			begin
				if(srdy == 1)
					nextstate <= bus_transmit_ready;
				else
					nextstate <= bus_transmit_start;
			end
			bus_transmit_ready: nextstate <= bus_data_received;
			bus_data_received: 
			begin
				if(avs_ctrl_read == 0)
					nextstate <= bus_data_read;
				else
					nextstate <= bus_data_received;
			end
			bus_data_read:nextstate <= bus_data_wait;
			endcase
		end
endmodule