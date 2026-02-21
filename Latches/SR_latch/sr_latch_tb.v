module sr_latch_tb();
	reg s,r;
	wire q;
	
	sr_latch DUT(.s(s), .r(r), .q(q));
	
	initial
		begin
			$monitor($time," s=%b | r=%b | q=b",s,r,q);
			
			#5 s=0; r=0;
			#5 s=0; r=1;
			#5 s=0; r=0;
			#5 s=1; r=0;
			#5 s=0; r=0;
			#5 s=0; r=1;
			#5 s=0; r=0;
			#5 s=1; r=1;		
		end
endmodule
