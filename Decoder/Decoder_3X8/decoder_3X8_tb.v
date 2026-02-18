module decoder_3X8_tb();

	reg [2:0] a;
	wire [7:0] y;
	
	integer i;
	
	decoder_3X8 DUt(.a(a), .y(y));
	
	initial
		begin	
			
			
			for(i=0;i<=16;i=i+1)
				begin
					#5 {a} =$random;
					#1 $display($time, " a=%b | y=%b",a,y);
				end
			#100 $finish;
		end
endmodule
	
