module nand_gate(input a,b, output y);
	
	//nand g1(y,a,b);     //Primitive Gate
	
	assign y = ~(a&b);
	
endmodule
