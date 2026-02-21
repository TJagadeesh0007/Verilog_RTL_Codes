module d_latch_tb();

	reg d,en;
	wire q;
	
	d_latch DUT(.d(d), .en(en), .q(q));
	
	initial
		begin
			$monitor($time," en=%b | d=%b | q=%b",en,d,q);
			
			#5 en=1;d=1;
			#5 d=0;
			#5 d=1;
			#5 en=0;d=1;
			#5 d=0;
			#5 en=1; d=1;
			
			#60 $finish;
		end
endmodule
