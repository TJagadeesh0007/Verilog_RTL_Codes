module mux_4X1_tb();

	reg enable;
	reg [3:0]a;
	reg [1:0]sel;
	wire y;
	
	mux_4X1 DUT(.a(a), .enable(enable), .sel(sel), .y(y));
	
	integer i;
	
	initial
		begin
			$monitor($time," enable=%b | a=%b | sel=%b | y=%b",enable,a,sel,y);
			
			#5 enable=1'b0;sel=2'b01;a=4'b0011;
			
			#5 enable=1'b1;sel=2'b10;a=4'b1001;
			
			#5 enable=1'b1;{sel}=$random;{a}=$random;
			
			#5 enable=1'b1;{sel}=$random;{a}=$random;
			
			for(i=0;i<=10;i=i+1)
				begin
				#5 {a}=$random;
				    {sel}=$random;
				end
			#200 $finish;
		end
endmodule
				   
			
			
