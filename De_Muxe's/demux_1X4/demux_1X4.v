module demux_1X4 (input a,enable, input [1:0] sel,output reg [3:0] y);
	
	always @(*)
		begin
			y=4'b0000;
			
			if(!enable)
				y=4'b0;
			else
				 
				case(sel)
					2'b00 : y[0] = a;
					2'b01 : y[1] = a;
					2'b10 : y[2] = a;
					2'b11 : y[3] = a;
					default : y = 4'b0;
				endcase
			
		end
	
endmodule
