module t_ff(input reset,clk,t, output reg q, output qbar);

	assign qbar = ~q;
	
	always @(posedge clk)
		begin
			if(reset)
				q <= 1'b0;
			else if(!t)
				q <= q;
			else 
				q <= ~q;
		end
endmodule
