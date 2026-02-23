module sr_ff_tb();

	reg clk,reset,s,r;
	wire q,qbar;
	
	sr_ff DUT(.clk(clk), .reset(reset), .s(s), .r(r), .q(q), .qbar(qbar));
	
	
	initial
		begin
			clk=1'b0;
			forever #5 clk = ~clk;
		end
		
	task rst();
		begin
		
		@(negedge clk)
			reset = 1'b1;
		@(negedge clk)
			reset = 1'b0;
		end
	endtask
	
	task intiall();
		begin
			@(negedge clk)
				s <= 0;
				r <= 0;
		end
	endtask
		
	task in(input reg i,input reg j);
		begin
			@(negedge clk)
			//begin
				s=i;
				r=j;
			//end
		end
	endtask	
	
	
	initial
		begin
			
			$monitor($time," reset=%b | s=%b | r=%b | q=%b | qbar=%b",reset,s,r,q,qbar);
			intiall();
			rst();
			in(0,1);
			in(0,0);
			in(1,0);
			in(1,1);
			in(0,0);
			in(1,0);
		
			#200 $finish;
		end
		
endmodule
