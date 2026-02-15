module carry_look_addr_tb();
	reg [3:0]a,b;
	reg cin;
	wire [3:0] sum;
	wire cout;
	
	carry_look_addr DUT(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
	
	integer i;
	
	initial
		begin
			$monitor($time," a=%b | b=%b | cin=%b | sum=%b | cout=%b",a,b,cin,sum,cout);
				for(i=0;i<=16;i=i+1)
					#5 {a,b,cin} = $random;
				#200 $finish;
		end
endmodule
