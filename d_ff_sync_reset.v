`timescale 1ns / 1ps
module d_ff_sync_reset(
    input d, clk, rst,
    output reg q
);

 always @ (posedge(clk))
    begin
        if (rst == 1)
            q <= 1'b0;	// Q is reset to 0
        else
            q <= d;
    end
  endmodule    
