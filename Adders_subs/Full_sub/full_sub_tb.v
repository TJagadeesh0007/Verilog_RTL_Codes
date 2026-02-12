module full_sub_tb();

	reg a,b,bin;
	wire diff,borr;
	
	full_sub DUT(.a(a), .b(b), .bin(bin), .diff(diff), .borr(borr));
	
	initial
		begin
			$monitor("Time=%0t | a=%b | b=%b | bin=%b | diff=%b | borr=%b",$time,a,b,bin,diff,borr);
			
			#5 a=0;b=0;bin=0;
			#5 a=0;b=0;bin=1;
			#5 a=0;b=1;bin=0;
			#5 a=0;b=1;bin=1;
			#5 a=1;b=0;bin=0;
			#5 a=1;b=0;bin=1;
			#5 a=1;b=1;bin=0;
			#5 a=1;b=1;bin=1;
			
		end
endmodule
