module mux_2X1_tb();
	
	reg a,b,sel;
	wire y;
	
	mux_2X1 DUT(.a(a), .b(b), .sel(sel), .y(y));
	
	initial
		begin
			$monitor($time,"a=%b | b=%b | sel=%b | y=%b",a,b,sel,y);
				
				#5 sel=0; a=1;b=0;
				#5 sel=0; a=0;b=1;
				#5 sel=1; a=1;b=0;
				#5 sel=1; a=0;b=1;
				
			#40 $finish;
		end
endmodule
				
