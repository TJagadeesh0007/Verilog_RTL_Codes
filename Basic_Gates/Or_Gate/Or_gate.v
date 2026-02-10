module or_gate(input a,b, output y);

	// or g1 (y,a,b);      //Primitive Gate
	
	assign y = a | b;
	
endmodule
