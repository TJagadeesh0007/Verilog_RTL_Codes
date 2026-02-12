module full_sub(input a,b,bin, output diff,borr);

	assign diff = a^b^bin;
	assign borr = ((~a&bin) + (b&bin) + (~a&b));
	
endmodule
