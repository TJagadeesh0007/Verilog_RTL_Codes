module decoder_2X4_tb();
	
	reg [1:0] a;
	wire [3:0] y;
	
	decoder_2X4 DUT(.a(a), .y(y));
	
	initial
		begin
			$monitor($time," a=%b | y=%b",a,y);
			
			#5 a=2'b00;
			#5 a=2'b01;
			#5 a=2'b10;
			#5 a=2'b11;
		
			#30 $finish;
		end
endmodule
