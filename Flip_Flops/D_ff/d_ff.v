module d_ff(input clk,reset,d, output reg q,output qbar);

	always @(posedge clk)
		begin
			if(reset)
				q <= 1'b0;
			else
				q <= d;
		end
	assign qbar = ~q;
endmodule
