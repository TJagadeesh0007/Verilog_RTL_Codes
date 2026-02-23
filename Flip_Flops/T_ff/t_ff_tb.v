module t_ff_tb();

	reg clk,reset,t;
	wire q,qbar;
	
	t_ff DUT(.reset(reset), .clk(clk), .t(t), .q(q), .qbar(qbar));
	
	initial
		begin
			clk = 1'b0;
			forever #5 clk = ~clk;
		end
	task in(input reg r,a);
		begin
			@(negedge clk)
			reset <= r;
			t <= a;
		end
	endtask
	
	initial
		begin
			$monitor($time," reset=%b | t=%b | q=%b | qbar=%b",reset,t,q,qbar);
			
			in(1,0);
			in(0,0);
			in(0,1);
			in(1,1);
			
			#100 $finish;
		end
endmodule
		 
