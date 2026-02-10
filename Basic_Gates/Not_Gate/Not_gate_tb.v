module not_gate_tb();
	
	reg a;
	wire y;
	
	not_gate jagga(.a(a), .y(y));
	
	initial
		begin
			$monitor("Time=%0t | a=%b | y=%b",$time,a,y);
			#5 a=0;
			#5 a=1;
			#5 a=1;
			#5 a=0;
			
			#50 $finish;
		end
endmodule

