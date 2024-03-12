`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 17:01:30
// Design Name: 
// Module Name: PIPO_Test
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


module PIPO_Test();

    reg clk,reset;
    reg [3:0] D; 
    wire [3:0] q;
    
    parameter CLK_PERIOD = 10; // Clock period in nanoseconds
    
    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;
    
    // Instantiating module
    
    PIPO Dut( .clk(clk), .reset(reset),.d(D), .q(q) );
    
    initial begin
    
        clk = 0;
        reset = 1;
        D = 4'b1001;
        #15 reset  = 0;
        #10 D = 4'b0000;
        #10 D = 4'b0100;
        #10 D = 4'b1000;
        #10 D = 4'b1100;
        #10 D = 4'b1111;
    end
    
     initial begin
    
        $monitor("Clock = %b, D = %b,  Q = %b",clk,D,q);
        #70 $finish;
    end
endmodule
