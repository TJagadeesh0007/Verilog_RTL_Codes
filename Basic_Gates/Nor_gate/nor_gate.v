module nor_gate(input a,b, output y);

	//nor g1(y,a,b);   //Primitive Gate
	
	assign y = ~(a|b);

endmodule
