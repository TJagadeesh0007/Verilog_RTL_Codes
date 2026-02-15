module four_bit_parallel_addr_tb();

	reg [3:0] a,b;
	reg cin;
	wire [3:0] sum;
	wire carry;
	
	four_bit_parallel_addr DUT(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
	
	integer i;
	
	initial
		begin
			$monitor("Time=%0t | a=%b | b=%b | cin=%b | sum=%b | carry=%b",$time,a,b,cin,sum,carry);
			
			for(i=0;i<=16;i=i+1)
				#5 {a,b,cin} = $random;
				
			#90 $finish;
		end
endmodule
