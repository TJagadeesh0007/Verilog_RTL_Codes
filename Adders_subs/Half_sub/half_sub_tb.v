module half_sub_tb();
	
	reg a,b;
	wire diff,borr;
	
	half_sub DUT(.a(a), .b(b), .diff(diff), .borr(borr));
	
	
	initial
		begin
			$monitor("Time=%0t | a=%b | b=%b | diff=%b | borr=%b",$time,a,b,diff,borr);
			
			#5 a=0;b=0;
			#5 a=0;b=1;
			#5 a=1;b=0;
			#5 a=1;b=1;
			
			#100 $finish;
			
		end
		
endmodule
	
