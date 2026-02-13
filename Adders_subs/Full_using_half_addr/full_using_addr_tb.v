module full_using_half_tb();
	reg a,b,c;
	wire sum,carry;
	
	full_using_half DUT(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
	
	integer i;
	
	initial
		begin
			$monitor($time,"a=%b | b=%b | c=%b | sum=%b | carry=%b",a,b,c,sum,carry);
			
			for(i=0;i<=16;i=i+1)
				#5 {a,b,c} = $random;
			#200 $finish;
		end
endmodule
