module full_using_half(input a,b,bin, output diff,borrow);

	wire w1,w2,w3;

	half_sub g1(.a(a), .b(b), .diff(w1), .borrow(w2));
	half_sub g2(.a(w1), .b(bin), .diff(diff), .borrow(w3));
	
	assign borrow = w2 | bin&(~a|b);
	
endmodule
