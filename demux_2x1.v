`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:49 04/08/2017 
// Design Name: 
// Module Name:    demux_2x1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module demux_2x1(d, s, q0, q1);
	input d, s;
	output q0, q1;
	
	(*KEEP = "true"*) assign q0 = ~s * d;
	(*KEEP = "true"*) assign q1 = s * d;

endmodule
