module decimal_to_bcd_encoder(input [3:0]a, output reg valid, output reg [3:0] y);

	always @(*)
		begin
			y=4'b000;
			valid =1'b0;
			
			if(a==0)
			    begin
				y = 4'b0000;
				valid =1'b1;
			    end
			else if(a==1)
			    begin
				y = 4'b0001;
				valid =1'b1;
			    end
			else if(a==2)
		            begin
				y = 4'b0010;
				valid =1'b1;
			    end
			else if(a==3)
			    begin
				y = 4'b0011;
				valid =1'b1;
			    end
			else if(a==4)
			    begin
				y = 4'b0100;
				valid =1'b1;
			    end
			else if(a==5)
			    begin
				y = 4'b0101;
				valid =1'b1;
			    end
			else if(a==6)
			    begin
				y = 4'b0110;
				valid =1'b1;
			    end
			else if(a==7)
			    begin
				y = 4'b0111;
				valid =1'b1;
			    end
			else if(a==8)
			    begin
				y = 4'b1000;
				valid =1'b1;
			    end
			else if(a==9)
			    begin
				y = 4'b1001;
				valid =1'b1;
			    end
			//else
				//y = 4'bxxxx;
		end
endmodule
