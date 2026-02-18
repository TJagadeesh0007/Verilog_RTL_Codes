module priority_encoder_8X3(input [7:0] a, output reg [2:0] y,output reg valid);

	always @(*)
		begin
			y=4'b0000;
			valid = 1'b0;
			
			if(a[7])
				begin
					y=3'b111;
					valid = 1'b1;
				end
			else if(a[6])
				begin
					y=3'b110;
					valid = 1'b1;
				end
			else if(a[5])
				begin
					y=3'b101;
					valid = 1'b1;
				end
			else if(a[4])
				begin
					y=3'b100;
					valid = 1'b1;
				end
			else if(a[3])
				begin
					y=3'b011;
					valid = 1'b1;
				end
			else if(a[2])
				begin
					y=3'b010;
					valid = 1'b1;
				end
			else if(a[1])
				begin
					y=3'b001;
					valid = 1'b1;
				end
			else if(a[0])
				begin
					y=3'b000;
					valid = 1'b1;
				end
		end
endmodule
