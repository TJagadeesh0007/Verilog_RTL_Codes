module demux_1X4_tb();

	reg a,enable;
	reg [1:0] sel;
	wire [3:0] y;
	
	integer i;
	demux_1X4 DUT(.enable(enable), .a(a), .sel(sel), .y(y));
	
	initial
		begin
			$monitor($time," Enable=%b | a=%b | sel=%b | y[0]=%b | y[1]=%b | y[2]=%b | y[3]=%b",enable,a,sel,y[0],y[1],y[2],y[3]);
			
			#5 enable = 0; sel=2'b01; a=1'b1;
			#5 enable = 1; sel=2'b10; a=1'b1;
			#5 enable = 1; sel=2'b11; a=1'b1;
			for(i=0;i<=16;i=i+1)
				begin
					#5 {sel} = $random;
					   {a} =$random;
				end
			
		end
endmodule
			
