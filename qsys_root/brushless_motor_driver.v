module brushless_motor(
					input I_limit,
			
					input f_r,
					input brak,            
					
					input Ha,
					input Hb,
					input Hc,
					
					output reg Lau,		
					output reg Lbu,
					output reg Lcu,
					output reg Lad,
					output reg Lbd,
					output reg Lcd,
					
					output error		    //
					);
			always @(Ha or Hb or Hc)
			begin
				if(I_limit)
					{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'd0;
				else if(brak)
					{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b000111;
				else
				if(f_r)		
					case ({Ha,Hb,Hc})
						3'b100:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b100001;
						3'b110:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b010001;
						3'b010:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b010100;
						3'b011:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b001100;
						3'b001:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b001010;
						3'b101:	
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b100010;
						default:					
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'd0;	
					endcase
				else 
					case ({Ha,Hb,Hc})
						3'b100:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b001100;
						3'b110:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b001010;
						3'b010:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b100010;
						3'b011:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b100001;
						3'b001:
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b010001;
						3'b101:	
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'b010100;
						default:					
							{Lau,Lbu,Lcu,Lad,Lbd,Lcd}<= 6'd0;	
				endcase
			end	
			assign error = {Lau,Lbu,Lcu,Lad,Lbd,Lcd}?0:1;		
endmodule






























