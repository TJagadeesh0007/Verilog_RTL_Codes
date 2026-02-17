module mux_16X1_tb();
	
	reg [15:0]a;
	reg enable;
	reg [3:0] sel;
	wire y;
	
	mux_16X1 DUT(.enable(enable), .a(a), .sel(sel), .y(y));
	
	integer i;
	
	initial
		begin
			$monitor($time," enable=%b | a=%b | sel=%b | y=%b ",enable,a,sel,y);
			
			enable = 1'b0; #5;
			enable = 1'b1; 
			
			for(i=0;i<=20;i=i+1)
				begin
					#5 {a} = $random;
					 {sel} = $random;
				end
				
				 #200 $finish;
		end
endmodule

