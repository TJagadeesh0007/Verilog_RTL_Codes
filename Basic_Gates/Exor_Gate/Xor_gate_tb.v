
module xor_gate_tb();

	reg a,b;
	wire y;
	
	xor_gate DUT(.a(a), .b(b), .y(y));
	
	integer i;
	
	initial
		begin
			$monitor("Time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);
			for(i=0;i<=10;i=i+1)
				#5{a,b} = $random;
			
			#200 $finish;
		end
endmodule
		
