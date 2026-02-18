module mux_4X1_using_2X1(input [3:0] a, input [1:0] sel, output  y);

	wire w1,w2;

	mux_2X1 g1 (.a({a[1],a[0]}), .sel(sel[0]), .y(w1));
	mux_2X1 g2 (.a({a[3],a[2]}), .sel(sel[0]), .y(w2));
	mux_2X1 g3 (.a({w2,w1}), .sel(sel[1]), .y(y));
	
endmodule
	
