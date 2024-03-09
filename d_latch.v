`timescale 1ns / 1ps
module d_latch(
    input d, clk,
    output reg q
    );
    always @(*)
     begin
     if(clk)
        q<=d;
     end   
endmodule

//signal for reset: synchronous active high reset= rst
//                  synchronous active low reset= rstn/ rst_n
//                  asynchronous active high reset= arst
//                  asynchronous active low reset= artn/ arst_n 
