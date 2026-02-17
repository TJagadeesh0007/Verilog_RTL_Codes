module mux_8X1_tb();
	
	reg enable;
	reg [7:0] a;
	reg [2:0] sel;
	
	wire y;
	
	integer i;
	
	mux_8X1 DUT(.enable(enable), .a(a), .sel(sel), .y(y));
	
	initial
		begin
			$monitor($time," enable=%b | a=%b | sel=%b | y=%b ",enable,a,sel,y);
			
			   enable=1'b0;sel=3'b000;a=8'b01010100;
			
			#5 enable=1'b1;sel=3'b001;a=8'b00010110;
			
			for(i=0;i<=10;i=i+1)
				begin
					#5 {a}=$random;
					 {sel}=$random;
				end
			#200 $finish;
			
		end
endmodule					
