`timescale 1ns / 1ps
module bbt(chal, rst, p_bit, w0, w1);
	input[63:0] chal;
	input rst;
	output p_bit, w0, w1;
	
	(*KEEP = "true"*) wire  /*w0,  w1,*/  w2,  w3,  w4,  w5,  w6,  w7;
	(*KEEP = "true"*) wire  w8,  w9, w10, w11, w12, w13, w14, w15;
	(*KEEP = "true"*) wire w16, w17, w18, w19, w20, w21, w22, w23;
	(*KEEP = "true"*) wire w24, w25, w26, w27, w28, w29, w30, w31;
	(*KEEP = "true"*) wire w32, w33, w34, w35, w36, w37, w38, w39;
	(*KEEP = "true"*) wire w40, w41, w42, w43, w44, w45, w46, w47;
	(*KEEP = "true"*) wire w48, w49, w50, w51, w52, w53, w54, w55;
	(*KEEP = "true"*) wire w56, w57, w58, w59, w60, w61, w62, w63;
	
	assign p_bit = w32;
	
	(*KEEP = "true"*) bbl b0(chal[0], w0, rst, w1);
	(*KEEP = "true"*) bbl b1(chal[1], w1, rst, w2);
	(*KEEP = "true"*) bbl b2(chal[2], w2, rst, w3);
	(*KEEP = "true"*) bbl b3(chal[3], w3, rst, w4);
	(*KEEP = "true"*) bbl b4(chal[4], w4, rst, w5);
	(*KEEP = "true"*) bbl b5(chal[5], w5, rst, w6);
	(*KEEP = "true"*) bbl b6(chal[6], w6, rst, w7);
	(*KEEP = "true"*) bbl b7(chal[7], w7, rst, w8);
	(*KEEP = "true"*) bbl b8(chal[8], w8, rst, w9);
	(*KEEP = "true"*) bbl b9(chal[9], w9, rst, w10);
	(*KEEP = "true"*) bbl b10(chal[10], w10, rst, w11);
	(*KEEP = "true"*) bbl b11(chal[11], w11, rst, w12);
	(*KEEP = "true"*) bbl b12(chal[12], w12, rst, w13);
	(*KEEP = "true"*) bbl b13(chal[13], w13, rst, w14);
	(*KEEP = "true"*) bbl b14(chal[14], w14, rst, w15);
	(*KEEP = "true"*) bbl b15(chal[15], w15, rst, w16);
	
	(*KEEP = "true"*) bbl b16(chal[16], w16, rst, w17);
	(*KEEP = "true"*) bbl b17(chal[17], w17, rst, w18);
	(*KEEP = "true"*) bbl b18(chal[18], w18, rst, w19);
	(*KEEP = "true"*) bbl b19(chal[19], w19, rst, w20);
	(*KEEP = "true"*) bbl b20(chal[20], w20, rst, w21);
	(*KEEP = "true"*) bbl b21(chal[21], w21, rst, w22);
	(*KEEP = "true"*) bbl b22(chal[22], w22, rst, w23);
	(*KEEP = "true"*) bbl b23(chal[23], w23, rst, w24);
	(*KEEP = "true"*) bbl b24(chal[24], w24, rst, w25);
	(*KEEP = "true"*) bbl b25(chal[25], w25, rst, w26);
	(*KEEP = "true"*) bbl b26(chal[26], w26, rst, w27);
	(*KEEP = "true"*) bbl b27(chal[27], w27, rst, w28);
	(*KEEP = "true"*) bbl b28(chal[28], w28, rst, w29);
	(*KEEP = "true"*) bbl b29(chal[29], w29, rst, w30);
	(*KEEP = "true"*) bbl b30(chal[30], w30, rst, w31);
	(*KEEP = "true"*) bbl b31(chal[31], w31, rst, w32);
	
	(*KEEP = "true"*) bbl b32(chal[32], w32, rst, w33);
	(*KEEP = "true"*) bbl b33(chal[33], w33, rst, w34);
	(*KEEP = "true"*) bbl b34(chal[34], w34, rst, w35);
	(*KEEP = "true"*) bbl b35(chal[35], w35, rst, w36);
	(*KEEP = "true"*) bbl b36(chal[36], w36, rst, w37);
	(*KEEP = "true"*) bbl b37(chal[37], w37, rst, w38);
	(*KEEP = "true"*) bbl b38(chal[38], w38, rst, w39);
	(*KEEP = "true"*) bbl b39(chal[39], w39, rst, w40);
	(*KEEP = "true"*) bbl b40(chal[40], w40, rst, w41);
	(*KEEP = "true"*) bbl b41(chal[41], w41, rst, w42);
	(*KEEP = "true"*) bbl b42(chal[42], w42, rst, w43);
	(*KEEP = "true"*) bbl b43(chal[43], w43, rst, w44);
	(*KEEP = "true"*) bbl b44(chal[44], w44, rst, w45);
	(*KEEP = "true"*) bbl b45(chal[45], w45, rst, w46);
	(*KEEP = "true"*) bbl b46(chal[46], w46, rst, w47);
	(*KEEP = "true"*) bbl b47(chal[47], w47, rst, w48);
	
	(*KEEP = "true"*) bbl b48(chal[48], w48, rst, w49);
	(*KEEP = "true"*) bbl b49(chal[49], w49, rst, w50);
	(*KEEP = "true"*) bbl b50(chal[50], w50, rst, w51);
	(*KEEP = "true"*) bbl b51(chal[51], w51, rst, w52);
	(*KEEP = "true"*) bbl b52(chal[52], w52, rst, w53);
	(*KEEP = "true"*) bbl b53(chal[53], w53, rst, w54);
	(*KEEP = "true"*) bbl b54(chal[54], w54, rst, w55);
	(*KEEP = "true"*) bbl b55(chal[55], w55, rst, w56);
	(*KEEP = "true"*) bbl b56(chal[56], w56, rst, w57);
	(*KEEP = "true"*) bbl b57(chal[57], w57, rst, w58);
	(*KEEP = "true"*) bbl b58(chal[58], w58, rst, w59);
	(*KEEP = "true"*) bbl b59(chal[59], w59, rst, w60);
	(*KEEP = "true"*) bbl b60(chal[60], w60, rst, w61);
	(*KEEP = "true"*) bbl b61(chal[61], w61, rst, w62);
	(*KEEP = "true"*) bbl b62(chal[62], w62, rst, w63);
	(*KEEP = "true"*) bbl b63(chal[63], w63, rst, w0);
	
endmodule
