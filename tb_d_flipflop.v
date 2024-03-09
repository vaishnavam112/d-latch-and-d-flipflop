`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 16:27:10
// Design Name: 
// Module Name: tb_d_flipflop
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


module tb_d_flipflop();
    
    reg d, clk, rst ;
    wire q;
    
    d_flipflop ff(.d(d), .clk(clk),.q(q), .rst(rst) );
    
    always #20 clk = ~clk; 
    always #10 d=~d;
   
    initial

    begin 
        rst=0;
        clk=0;
        d=0;
        #40;
        rst=1;
        #100
        $finish;
    end
    

endmodule
