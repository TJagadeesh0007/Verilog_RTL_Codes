module half_addr_tb();

	reg a,b;
	wire sum,carry;
	
	half_addr DUT(.a(a), .b(b), .sum(sum), .carry(carry));
	
	integer i;
	
	initial
		begin
			$monitor("Time=%0t | a=%0b | b=%0b | sum=%0b | carry=%0b",$time,a,b,sum,carry);
			
			for(i=0;i<=5;i=i+1)
			#5 {a,b} = $random;
			
			#100 $finish;
			
		end
endmodule
			
			
