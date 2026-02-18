module encoder_4X2_tb();
	
	reg [3:0] a;
	wire [1:0] y;
	
	integer i;
	
	encoder_4X2 DUT(.a(a), .y(y));
	
	initial
		begin
			$monitor($time, " a=%b | y=%b", a,y);
			
			#5 a=4'b0000;
			#5 a=4'b0010;
			#5 a=4'b0100;
			#5 a=4'b1000;
			
			for(i=0;i<=16;i=i+1)
				begin
					#10 {a} =$random;
				end
			#150 $finish;
		end
endmodule
