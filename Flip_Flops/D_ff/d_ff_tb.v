module d_ff_tb();

	reg clk,reset,d;
	wire q,qbar;
	
	d_ff DUT(.clk(clk), .reset(reset), .d(d), .q(q), .qbar(qbar));
	
	
	
	always
	   #5 clk = ~clk;
	
	initial
		begin
			$monitor($time," reset=%b | d=%b | q=%b | qbar=%b",reset,d,q,qbar);
			clk=1'b0;
			
			#5 reset=1'b1; d=1'b1;
			#5 reset=1'b0; d=1'b0;
			#5 reset=1'b0; d=1'b0;
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b0;
			#5 reset = 1'b1; d=1'b1;
			#60 $finish;
		end
endmodule
