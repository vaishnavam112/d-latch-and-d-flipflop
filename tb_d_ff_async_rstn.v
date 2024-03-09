`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 16:48:30
// Design Name: 
// Module Name: tb_d_ff_async_rstn
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


module tb_d_ff_async_rstn( );
    reg d, clk, rstn ;
    wire q;
    
    d_ff_async_rstn ff(.d(d), .clk(clk),.q(q), .rstn(rstn) );
    
    always #20 clk = ~clk; 
    always #10 d=~d;
   
    initial

    begin 
        rstn=0;
        clk=0;
        d=0;
        #40;
        
        #15;
         d=1;
         #10
        rstn=1;
        #10
        $finish;
    end

endmodule
