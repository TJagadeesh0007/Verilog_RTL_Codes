module full_using_half_tb();

	reg a,b,bin;
	wire diff,borrow;
	
	
	full_using_half DUT(.a(a), .b(b), .bin(bin), .diff(diff), .borrow(borrow));
	
	initial
		begin
			$monitor($time," a=%b | b=%b | bin=%b | diff=%b | borrow=%b",a,b,bin,diff,borrow);
			
			#5 a=0;b=0;bin=0;
			#5 a=0;b=0;bin=1;
			#5 a=0;b=1;bin=0;
			#5 a=0;b=1;bin=1;
			#5 a=1;b=0;bin=0;
			#5 a=1;b=0;bin=1;
			#5 a=1;b=1;bin=0;
			#5 a=1;b=1;bin=1;
			
			#60 $finish;
		end
endmodule
