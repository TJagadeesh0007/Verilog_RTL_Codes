module demux_1X2_tb();

	reg a,sel,enable;
	wire [1:0] y;
	
	demux_1X2 DUT(.enable(enable), .a(a), .sel(sel), .y(y));
	
	initial
		begin
			$monitor($time," Enable=%b | a=%b | sel=%b | y[0]=%b | y[1]=%b",enable,a,sel,y[0],y[1]);
			
			#5 enable = 1'b0; a = 1'b1; sel = 1'b0; 
			#5 enable = 1'b1; a = 1'b0; sel = 1'b1;
			#5 enable = 1'b1; a = 1'b1; sel = 1'b0;
			#5 enable = 1'b1; a = 1'b0; sel = 1'b0;
			
			#30 $finish;
		end
endmodule
			
