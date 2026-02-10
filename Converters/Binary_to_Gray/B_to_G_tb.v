module B_to_G_tb();

	reg [3:0] b;
	wire [3:0] g;
	
	B_to_G DUT(.b(b), .g(g));
	
	integer i;
	
	initial
		begin
			$monitor("Time=%0t | Binary=%b | Gray=%b",$time,b,g);
			
			for(i=0;i<=10;i=i+1)
				#5 {b} = $random;
			#200 $finish;
		end
endmodule
