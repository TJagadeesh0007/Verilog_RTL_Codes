module max_4X1_tb();
	
	reg [3:0] a;
	reg [1:0] sel;
	
	wire y;
	
	integer i;
	
	mux_4X1_using_2X1 DUT(.a(a), .sel(sel), .y(y));
	
	initial
		begin
			$monitor($time, " a=%b | sel=%b | y=%b",a,sel,y);
			
			for(i=0;i<=10;i=i+1)
				begin
					#5 {a} = $random;
					   {sel} = $random;
				end
			#100 $finish;
		end
endmodule
