/*
			2005.7.13
*/
module clock#(parameter frequent = 23'd1
			)(
			output outclk,		
			input clk	     
			);
		reg [22:0] temp;
		assign outclk = temp [22];
		always @(posedge clk)
		begin
			temp<=temp+frequent;
		end
		
						
endmodule				