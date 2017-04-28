`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:16 04/08/2017 
// Design Name: 
// Module Name:    mux_2x1 
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
module mux_2x1(d0, d1, s, q);
	input d0, d1, s;
	output q;
	
	(*KEEP = "true"*) assign q = (s*d1) + (~s*d0);

endmodule
