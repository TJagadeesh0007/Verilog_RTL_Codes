module mux_8X1_using_4X1(input [7:0] a, input [2:0] sel, output y);

	wire w1,w2;
	
	mux_4X1 g1(.a({a[3],a[2],a[1],a[0]}), .enable(~sel[2]), .sel({sel[1],sel[0]}), .y(w1));
	mux_4X1 g2(.a({a[7],a[6],a[5],a[4]}), .enable(sel[2]), .sel({sel[1],sel[0]}), .y(w2));
	
	assign y = w1 | w2;
	
endmodule
