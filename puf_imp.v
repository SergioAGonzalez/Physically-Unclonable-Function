`timescale 1ns / 1ps

module puf_imp(clk, sw, seg, an);
	input[3:0] sw;												//define switch interface for displaying response
	input clk;													//clk
	output[6:0] seg;											//for seven seg
	output reg[3:0] an;										//for seven seg
	
	reg[63:0] rsp_stb;										//stable response
	reg[3:0] d_in, d0, d1, d2, d3;						//for seven seg
	reg[1:0] dig;												//for seven seg
	reg in_up, rst, stable_state;
	wire[63:0] c, rsp;										//challenge bit and response	
	wire clk_dis;												//modified clock for seven seg and stability
	
	//ideally this would be serial.. too hard to figure out
	assign c = 64'H0123456789abcdef;						//challenge -> this should be modified for each trial
	
	clock_divider disp_delay(clk, clk_dis);			//update delay for seven seg

	seven_seg disp(d_in, seg);								//define seven seg output

	(*KEEP = "true"*) bbt p0(c, rst, rsp[0]);			//instantiate each puf bit
	(*KEEP = "true"*) bbt p1(c, rst, rsp[1]);
	(*KEEP = "true"*) bbt p2(c, rst, rsp[2]);
	(*KEEP = "true"*) bbt p3(c, rst, rsp[3]);
	(*KEEP = "true"*) bbt p4(c, rst, rsp[4]);
	(*KEEP = "true"*) bbt p5(c, rst, rsp[5]);
	(*KEEP = "true"*) bbt p6(c, rst, rsp[6]);
	(*KEEP = "true"*) bbt p7(c, rst, rsp[7]);
	(*KEEP = "true"*) bbt p8(c, rst, rsp[8]);
	(*KEEP = "true"*) bbt p9(c, rst, rsp[9]);
	(*KEEP = "true"*) bbt p10(c, rst, rsp[10]);
	(*KEEP = "true"*) bbt p11(c, rst, rsp[11]);
	(*KEEP = "true"*) bbt p12(c, rst, rsp[12]);
	(*KEEP = "true"*) bbt p13(c, rst, rsp[13]);
	(*KEEP = "true"*) bbt p14(c, rst, rsp[14]);
	(*KEEP = "true"*) bbt p15(c, rst, rsp[15]);
	
	(*KEEP = "true"*) bbt p16(c, rst, rsp[16]);
	(*KEEP = "true"*) bbt p17(c, rst, rsp[17]);
	(*KEEP = "true"*) bbt p18(c, rst, rsp[18]);
	(*KEEP = "true"*) bbt p19(c, rst, rsp[19]);
	(*KEEP = "true"*) bbt p20(c, rst, rsp[20]);
	(*KEEP = "true"*) bbt p21(c, rst, rsp[21]);
	(*KEEP = "true"*) bbt p22(c, rst, rsp[22]);
	(*KEEP = "true"*) bbt p23(c, rst, rsp[23]);
	(*KEEP = "true"*) bbt p24(c, rst, rsp[24]);
	(*KEEP = "true"*) bbt p25(c, rst, rsp[25]);
	(*KEEP = "true"*) bbt p26(c, rst, rsp[26]);
	(*KEEP = "true"*) bbt p27(c, rst, rsp[27]);
	(*KEEP = "true"*) bbt p28(c, rst, rsp[28]);
	(*KEEP = "true"*) bbt p29(c, rst, rsp[29]);
	(*KEEP = "true"*) bbt p30(c, rst, rsp[30]);
	(*KEEP = "true"*) bbt p31(c, rst, rsp[31]);
	
	(*KEEP = "true"*) bbt p32(c, rst, rsp[32]);
	(*KEEP = "true"*) bbt p33(c, rst, rsp[33]);
	(*KEEP = "true"*) bbt p34(c, rst, rsp[34]);
	(*KEEP = "true"*) bbt p35(c, rst, rsp[35]);
	(*KEEP = "true"*) bbt p36(c, rst, rsp[36]);
	(*KEEP = "true"*) bbt p37(c, rst, rsp[37]);
	(*KEEP = "true"*) bbt p38(c, rst, rsp[38]);
	(*KEEP = "true"*) bbt p39(c, rst, rsp[39]);
	(*KEEP = "true"*) bbt p40(c, rst, rsp[40]);
	(*KEEP = "true"*) bbt p41(c, rst, rsp[41]);
	(*KEEP = "true"*) bbt p42(c, rst, rsp[42]);
	(*KEEP = "true"*) bbt p43(c, rst, rsp[43]);
	(*KEEP = "true"*) bbt p44(c, rst, rsp[44]);
	(*KEEP = "true"*) bbt p45(c, rst, rsp[45]);
	(*KEEP = "true"*) bbt p46(c, rst, rsp[46]);
	(*KEEP = "true"*) bbt p47(c, rst, rsp[47]);
	
	(*KEEP = "true"*) bbt p48(c, rst, rsp[48]);
	(*KEEP = "true"*) bbt p49(c, rst, rsp[49]);
	(*KEEP = "true"*) bbt p50(c, rst, rsp[50]);
	(*KEEP = "true"*) bbt p51(c, rst, rsp[51]);
	(*KEEP = "true"*) bbt p52(c, rst, rsp[52]);
	(*KEEP = "true"*) bbt p53(c, rst, rsp[53]);
	(*KEEP = "true"*) bbt p54(c, rst, rsp[54]);
	(*KEEP = "true"*) bbt p55(c, rst, rsp[55]);
	(*KEEP = "true"*) bbt p56(c, rst, rsp[56]);
	(*KEEP = "true"*) bbt p57(c, rst, rsp[57]);
	(*KEEP = "true"*) bbt p58(c, rst, rsp[58]);
	(*KEEP = "true"*) bbt p59(c, rst, rsp[59]);
	(*KEEP = "true"*) bbt p60(c, rst, rsp[60]);
	(*KEEP = "true"*) bbt p61(c, rst, rsp[61]);
	(*KEEP = "true"*) bbt p62(c, rst, rsp[62]);
	(*KEEP = "true"*) bbt p63(c, rst, rsp[63]);
		
	initial begin													//initialize register values
		d_in <= 0;
		dig <= 0;
		d0 <= 0;
		d1 <= 0;
		d2 <= 0;
		d3 <= 0;
		in_up <= 1;
		rst<= 1;
		stable_state <= 0;
		rsp_stb <= 0;
	end
		
	always@* begin													//flip switch to display desired portion of response
		if(sw[0]) begin //switch 0
			d0[0]<= rsp_stb[0];
			d0[1]<= rsp_stb[1];
			d0[2]<= rsp_stb[2];
			d0[3]<= rsp_stb[3];
			d1[0]<= rsp_stb[4];
			d1[1]<= rsp_stb[5];
			d1[2]<= rsp_stb[6];
			d1[3]<= rsp_stb[7];
			d2[0]<= rsp_stb[8];
			d2[1]<= rsp_stb[9];
			d2[2]<= rsp_stb[10];
			d2[3]<= rsp_stb[11];
			d3[0]<= rsp_stb[12];
			d3[1]<= rsp_stb[13];
			d3[2]<= rsp_stb[14];
			d3[3]<= rsp_stb[15];
		end else if(sw[1]) begin //switch 1
			d0[0]<= rsp_stb[16];
			d0[1]<= rsp_stb[17];
			d0[2]<= rsp_stb[18];
			d0[3]<= rsp_stb[19];
			d1[0]<= rsp_stb[20];
			d1[1]<= rsp_stb[21];
			d1[2]<= rsp_stb[22];
			d1[3]<= rsp_stb[23];
			d2[0]<= rsp_stb[24];
			d2[1]<= rsp_stb[25];
			d2[2]<= rsp_stb[26];
			d2[3]<= rsp_stb[27];
			d3[0]<= rsp_stb[28];
			d3[1]<= rsp_stb[29];
			d3[2]<= rsp_stb[30];
			d3[3]<= rsp_stb[31];
		end else if(sw[2]) begin //switch 2
			d0[0]<= rsp_stb[32];
			d0[1]<= rsp_stb[33];
			d0[2]<= rsp_stb[34];
			d0[3]<= rsp_stb[35];
			d1[0]<= rsp_stb[36];
			d1[1]<= rsp_stb[37];
			d1[2]<= rsp_stb[38];
			d1[3]<= rsp_stb[39];
			d2[0]<= rsp_stb[40];
			d2[1]<= rsp_stb[41];
			d2[2]<= rsp_stb[42];
			d2[3]<= rsp_stb[43];
			d3[0]<= rsp_stb[44];
			d3[1]<= rsp_stb[45];
			d3[2]<= rsp_stb[46];
			d3[3]<= rsp_stb[47];
		end else if(sw[3]) begin //switch 3
			d0[0]<= rsp_stb[48];
			d0[1]<= rsp_stb[49];
			d0[2]<= rsp_stb[50];
			d0[3]<= rsp_stb[51];
			d1[0]<= rsp_stb[52];
			d1[1]<= rsp_stb[53];
			d1[2]<= rsp_stb[54];
			d1[3]<= rsp_stb[55];
			d2[0]<= rsp_stb[56];
			d2[1]<= rsp_stb[57];
			d2[2]<= rsp_stb[58];
			d2[3]<= rsp_stb[59];
			d3[0]<= rsp_stb[60];
			d3[1]<= rsp_stb[61];
			d3[2]<= rsp_stb[62];
			d3[3]<= rsp_stb[63];
		end
	end

	always @(posedge clk_dis) begin	//display to seven seg
		if(stable_state*in_up) begin
			rsp_stb <= rsp;
			in_up <= 0;
		end
		dig <= dig + 1;
		if(dig == 0) begin
			an <= 4'B1110;
			d_in <= d0;
		end else if (dig == 1) begin
			rst <= 0;
			an <= 4'B1101;
			d_in <= d1;
		end else if (dig == 2) begin
			an <= 4'B1011;
			d_in <= d2;
		end else begin
			an <= 4'B0111;
			d_in <= d3;
			stable_state <=1;
		end
	end

endmodule
