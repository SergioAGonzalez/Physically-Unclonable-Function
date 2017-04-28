`timescale 1ns / 1ps

module bbl(c, d, rst, q);
	input c, d, rst; // challenge, data in, reset
	output q;		  // output q
	
	(*KEEP = "true"*) wire dm0, dm1, no0, no1;
	 
	(*KEEP = "true"*) demux_2x1 dmux0(d, c, dm0, dm1);
	(*KEEP = "true"*) nor n0(no0, dm0, rst);
	(*KEEP = "true"*) nor n1(no1, dm1, rst);
	(*KEEP = "true"*) mux_2x1 mux0(no0, no1, c, q);

endmodule
