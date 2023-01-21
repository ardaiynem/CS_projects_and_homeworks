`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2022 11:11:58
// Design Name: 
// Module Name: d_ff
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


module d_ff(d, q, clk, reset);
    input logic d, clk, reset;
    output logic q;
    
    always_ff @ (posedge clk, posedge reset)
        if (reset) q <= 0;
        else if (shift) q <= d;
endmodule
