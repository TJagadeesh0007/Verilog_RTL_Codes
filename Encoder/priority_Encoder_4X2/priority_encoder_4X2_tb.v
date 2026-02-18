module priority_encoder_4X2_tb();

	reg [3:0] a;
	wire valid;
	wire [1:0] y;
	
	integer i;
	
	priority_encoder_4X2 DUT(.a(a), .valid(valid), .y(y));
	
	initial
		begin
			for(i=0;i<=16;i=i+1)
				begin
					#4 {a} =$random;
					#1 $display($time," a=%b | valid=%b | y=%b ", a,valid,y);
				end
			#150 $finish;
		end
endmodule
			
