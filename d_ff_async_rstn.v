`timescale 1ns / 1ps
module d_ff_async_rstn(
    input d,clk,rstn,
    output reg q
    );
    
    always @(posedge clk or negedge rstn)
begin
    if (!rstn)
        q <= 1'b0;
    else
        q <= d;
end
endmodule
