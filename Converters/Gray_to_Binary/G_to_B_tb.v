module G_to_B_tb();

	reg [3:0] g;
	wire [3:0] b;
	
	G_to_B DUT(.g(g), .b(b));
	
	integer i;
	
	initial
		begin
			$monitor("Time=%0t | Gray=%b | Binary=%b",$time,g,b);
			
			for(i=0;i<=10;i=i+1)
				#5 {g} = $random;
			#200 $finish;
		end
endmodule
