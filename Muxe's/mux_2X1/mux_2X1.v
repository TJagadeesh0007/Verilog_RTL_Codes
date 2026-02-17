module mux_2X1(input a,b,sel, output reg y);

	always @(*)
		begin
			if(sel)
				y = b;
			else
				y = a;
		end
endmodule
