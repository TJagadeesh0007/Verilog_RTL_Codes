module mux_8X1_using_2X1(input [7:0]a, input [2:0] sel, output y);

	wire w1,w2,w3,w4,w5,w6;

			mux_2X1 g1 (.a({a[1],a[0]}), .sel(sel[0]), .y(w1));
			mux_2X1 g2 (.a({a[3],a[2]}), .sel(sel[0]), .y(w2));
			mux_2X1 g3 (.a({a[5],a[4]}), .sel(sel[0]), .y(w3));
			mux_2X1 g4 (.a({a[7],a[6]}), .sel(sel[0]), .y(w4));
			mux_2X1 g5 (.a({w2, w1}), .sel(sel[1]), .y(w5));
			mux_2X1 g6 (.a({w3, w4}), .sel(sel[1]), .y(w6));
			mux_2X1 g7 (.a({w6, w5}), .sel(sel[2]), .y(y));

endmodule
			
