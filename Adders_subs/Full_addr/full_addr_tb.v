module half_addr_tb();

	reg a,b,c;
	wire sum,carry;
	
	full_addr DUT(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
	
	integer i;
	
	initial
		begin
			$monitor("Time=%0t | a=%b | b=%b | c=%b | sum=%b | carry=%b",$time,a,b,c,sum,carry);
			
			for(i=0;i<=16;i=i+1)
				#5 {a,b,c} = $random;
			
			#200 $finish;
		end
endmodule
