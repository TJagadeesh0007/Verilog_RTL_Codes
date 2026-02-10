module excess_3(input [3:0] decimal, output [3:0] excess);

	assign excess = decimal + 4'd3;
	
endmodule
