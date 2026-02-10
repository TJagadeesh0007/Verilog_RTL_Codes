module nor_gate_tb();

	reg a,b;
	wire y;
	
	nor_gate DUT(.a(a), .b(b), .y(y));
	
	initial
		begin
			$monitor($time,"a=%b | b=%b | y=%b",a,b,y);
			
			#0 a=0; b= 0;
			#5 a=0; b=0;
			#10 a=0; b=1;
			#15 a=1; b=0;
			#20 a=1; b=1;
			
			#100 $finish;
		end
endmodule
