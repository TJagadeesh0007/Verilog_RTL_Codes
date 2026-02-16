module addr_sub (input [3:0]a,b, input cin, output [3:0] sum, output carry);

	wire x,w1,w2,w3;
	
	assign x = cin;
	
	//If x=1 then it will act as Substractor.
	//If x=0 then it will act as Adder.
	
	full_addr g1 (.a(a[0]), .b(b[0]^x), .cin(cin), .sum(sum[0]), .carry(w1));
	full_addr g2 (.a(a[1]), .b(b[1]^x), .cin(w1), .sum(sum[1]), .carry(w2));
	full_addr g3 (.a(a[2]), .b(b[2]^x), .cin(w2), .sum(sum[2]), .carry(w3));
	full_addr g4 (.a(a[3]), .b(b[3]^x), .cin(w3), .sum(sum[3]), .carry(carry));
	
endmodule
