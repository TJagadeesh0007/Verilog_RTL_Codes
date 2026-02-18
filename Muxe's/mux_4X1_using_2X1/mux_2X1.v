module mux_2X1(input [1:0] a, input sel, output reg y);
	
	always @(*)
		begin
			case(sel)
				1'b0 : y = a[0];
				1'b1 : y = a[1];
			endcase
		end
endmodule
