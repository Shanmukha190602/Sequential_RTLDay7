`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 16:49:45
// Design Name: 
// Module Name: PIPO
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


module PIPO(q,clk,reset,d);

    output reg [3:0] q;
    input clk,reset;
    input [3:0] d;
    
    always @ (posedge clk)
        if ( reset ==1)
            q = 4'b0000;
        else 
            q = d;
endmodule
