module demux_1X2 (input a,sel,enable, output reg [1:0] y);
	
	always @(*)
		begin
			if(!enable)
				y=1'b0;
			else
				case(sel)
					1'b0 : y[0] = a;
					1'b1 : y[1] = a;
					default : y = 0;
				endcase
		end
endmodule
