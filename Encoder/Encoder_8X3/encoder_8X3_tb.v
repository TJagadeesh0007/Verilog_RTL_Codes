module encoder_8X3_tb();
	
	reg [7:0] a;
	wire [2:0] y;
	
	integer i;
	
	encoder_8X3 DUT(.a(a), .y(y));
	
	initial
		begin
			$monitor($time," a=%b | y=%b",a,y);
			
			#5 a = 8'b00000000;
			#5 a = 8'b00000010; 
			#5 a = 8'b00000100;
			#5 a = 8'b00001000;
			#5 a = 8'b00010000;
			#5 a = 8'b00100000;
			#5 a = 8'b01000000;
			#5 a = 8'b10000000;
			
			for(i=0;i<=5;i=i+1)
				begin
					#5 {a} = $random;
				end
			#120 $finish;
		end
endmodule
