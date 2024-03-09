`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 16:02:39
// Design Name: 
// Module Name: tb_d_latch
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


module tb_d_latch();
    
    reg d, clk;
    wire q;
    
    d_latch L1(.d(d), .clk(clk),.q(q));
    
    always #20 clk = ~clk; 
    always #5 d=~d;
    //integer i;
    initial
    //clk=0;
    //for(i=0;i<=20;i=i+1)    
    // d=$random;
    //#7;   
    
    begin 
        clk=0;
        d=0;
        #40;
        $finish;
    end
    initial 
    begin
    
    $monitor("Time=%0t d=%0b q=%0t",$time,d,q);
    
    end
    
endmodule
