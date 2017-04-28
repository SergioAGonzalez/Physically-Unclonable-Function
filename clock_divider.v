`timescale 1ns / 1ps

module clock_divider(Clk, ClkOut);
   input Clk;
   output reg ClkOut;
  
   parameter DivVal = 25000;
   reg[24:0] DivCnt;
   reg ClkInt;
	
   always @(posedge Clk) begin
		if( DivCnt == DivVal ) begin
			ClkOut <= ~ClkInt;
         ClkInt <= ~ClkInt;
         DivCnt <= 0;
      end
      else begin
			ClkOut <= ClkInt;
         ClkInt <= ClkInt;
         DivCnt <= DivCnt + 1;
      end
   end
endmodule
