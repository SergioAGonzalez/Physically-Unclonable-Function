`timescale 1ns / 1ps

//this module takes in a 4 bit number and returns a 7 bit representation of that
//number on a 7-segment display

module seven_seg(d, q);
	input[3:0] d;
	output[6:0] q;
	
	assign q[0] = ~d[3]*(~d[1]*(~d[2]*d[0] + d[2]*~d[0])) + d[3]*(d[0]*(~d[2]*d[1] + d[2]*~d[1]));
	assign q[1] = ~d[3]*d[2]*(~d[1]*d[0] + d[1]*~d[0]) + d[3]*(~d[2]*d[1]*d[0] + d[2]*(~d[1]*~d[0] + d[1]));
	assign q[2] = ~d[3]*~d[2]*d[1]*~d[0] + d[3]*d[2]*(~d[1]*~d[0] + d[1]);
	assign q[3] = ~d[3]*(~d[2]*~d[1]*d[0] + d[2]*(~d[1]*~d[0] + d[1]*d[0])) + d[3]*d[1]*(~d[2]*~d[0] + d[2]*d[0]);
	assign q[4] = ~d[3]*(~d[2]*(~d[1]*d[0] + d[1]*d[0]) + d[2]*(~d[1] + d[1]*d[0])) + d[3]*~d[2]*~d[1]*d[0];
	assign q[5] = ~d[3]*(~d[2]*(~d[1]*d[0] + d[1]) + d[2]*d[1]*d[0]) + d[3]*d[2]*~d[1]*d[0];
	assign q[6] = ~d[3]*(~d[2]*~d[1] + d[2]*d[1]*d[0]) + d[3]*d[2]*~d[1]*~d[0];
	
endmodule
