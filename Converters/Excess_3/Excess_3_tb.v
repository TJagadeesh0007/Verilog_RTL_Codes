module excess_3_tb();

	reg [3:0]decimal;
	wire [3:0]excess;
	
	excess_3 DUT(.decimal(decimal), .excess(excess));
	
	integer i;
	
	initial
		begin
			$monitor("Time=%0t | decimal=%b | excess_3=%b",$time,decimal,excess);
			
			for(i=0;i<=15;i=i+1)
				#5 {decimal} = $random;
				
			#500 $finish;
				
		end
endmodule
