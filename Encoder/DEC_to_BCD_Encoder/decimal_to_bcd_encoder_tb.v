module decimal_to_bcd_encoder_tb();

	reg [3:0] a;
	wire [3:0] y;
	wire valid;
	
	integer i;
	
	decimal_to_bcd_encoder DUT(.a(a), .valid(valid), .y(y));
	
	initial
		begin
			for(i=0;i<16;i=i+1)
				begin
					#4 {a} = $random;
					#1 $display($time," a=%d | valid=%b | y=%b",a,valid,y);
				end
			#150 $finish;
		end
endmodule
			
