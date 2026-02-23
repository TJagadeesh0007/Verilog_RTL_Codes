module jk_ff_tb();
	
	reg reset,clk,j,k;
	wire q,qbar;
	
	jk_ff DUT(.reset(reset), .clk(clk), .j(j), .k(k), .q(q), .qbar(qbar));
	
	initial
		begin
			clk = 1'b0;
			forever #5 clk = ~ clk;
		end
		
	task in(input reg r,a,b);
		begin
			@(negedge clk)
				reset <= r;
				j <= a;
				k <= b;
		end
	endtask
	
	initial
		begin
			$monitor($time," reset=%b | j=%b | k=%b | q=%b | qbar=%b",reset,j,k,q,qbar);
			
			in(1,0,0);
			in(0,0,1);
			in(0,1,0);
			in(0,1,1);
			in(0,1,0);
			in(0,0,1);
			in(0,0,0);
			in(1,1,1);
		end
endmodule
