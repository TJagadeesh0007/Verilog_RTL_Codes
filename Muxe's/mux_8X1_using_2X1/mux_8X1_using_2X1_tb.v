module mux_8X1_using_2X1_tb();
	
	reg [7:0] a;
	reg [2:0] sel;
	wire y;
	
	integer i;
	
	mux_8X1_using_2X1 DUT(.a(a), .sel(sel), .y(y));
	
	initial
		begin
			$monitor($time, " a=%b | sel=%b | y=%b",a,sel,y);
			
			for(i=0;i<=16;i=i+1)
				begin
					#5 {a} =$random;
					   {sel} = $random;
				end
				
				#150 $finish;
		end
endmodule
	
