module test_rom(
	input [7:0] address,
	output reg [7:0] read,
	input rd
);
	always@(negedge rd)
	begin
		case (address)
		8'd0: read<=8'd1;
		8'd1: read<=8'd2;
		8'd2: read<=8'd3;	
		8'd3: read<=8'd4;	
		8'd4: read<=8'd5;	
		8'd5: read<=8'd6;	
		8'd6: read<=8'd7;	
		8'd7: read<=8'd8;			
		endcase
	end

endmodule