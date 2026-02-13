module full_using_half(input a,b,c, output sum,carry);
	
	wire w1,w2;

	half_addr g1 (.a(a), .b(b), .sum(w1), .carry(w2));
	half_addr g2 (.a(w1), .b(c), .sum(sum), .carry(w3));
	
	assign carry = w2 | w3;
	
endmodule
