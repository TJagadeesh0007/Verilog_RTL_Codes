module addr_sub_tb();

	reg [3:0] a,b;
	reg cin;
	wire [3:0] sum;
	wire carry;
	
	addr_sub DUT(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
	
	integer i;
	
	initial
		begin
			
			for(i=0;i<=16;i=i+1)begin
				#5 {a,b,cin} = $random;
				if(cin==1)
					$monitor("Time=%0t | a=%b | b=%b | cin=%b | sub=%b | carry=%b",$time,a,b,cin,sum,carry);
				else
					$monitor("Time=%0t | a=%b | b=%b | cin=%b | sum=%b | carry=%b",$time,a,b,cin,sum,carry);
			end
				
			#90 $finish;
		end
endmodule
