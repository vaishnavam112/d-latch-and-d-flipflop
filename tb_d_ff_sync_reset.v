`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 16:39:11
// Design Name: 
// Module Name: tb_d_ff_sync_reset
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_d_ff_sync_reset();

    reg d, clk, rst ;
    wire q;
    
    d_ff_sync_reset ff(.d(d), .clk(clk),.q(q), .rst(rst) );
    
    always #20 clk = ~clk; 
    always #10 d=~d;
   
    initial

    begin 
        rst=0;
        clk=0;
        d=0;
        #40;
        rst=1;
        #10
        $finish;
    end
endmodule
