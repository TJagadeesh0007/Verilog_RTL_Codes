module mux_4X1(input[3:0]a, input [1:0]sel, input enable, output reg y);

	always @(*)
		begin
			if(!enable)
				y = 1'b0;
			else
				case(sel)
					2'b00 : y = a[0];
					2'b01 : y = a[1];
					2'b10 : y = a[2];
					2'b11 : y = a[3];
					default : y = 1'b0;
				endcase
		end
endmodule
