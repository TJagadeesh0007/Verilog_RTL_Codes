module four_bit_parallel_addr(input [3:0]a,b, input cin, output [3:0]sum, output carry);

	wire w1,w2,w3;
	
	full_addr g1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .carry(w1));
	full_addr g2(.a(a[1]), .b(b[1]), .cin(w1), .sum(sum[1]), .carry(w2));
	full_addr g3(.a(a[2]), .b(b[2]), .cin(w2), .sum(sum[2]), .carry(w3));
	full_addr g4(.a(a[3]), .b(b[3]), .cin(w3), .sum(sum[3]), .carry(carry));
	
endmodule
	
