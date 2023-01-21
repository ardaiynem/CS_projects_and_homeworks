`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2022 10:36:06
// Design Name: 
// Module Name: shift_register
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

module shift_register(clk, shift, reset, load, prl, inBit, outBit);
    input logic clk, shift, reset, load, inBit;
    input logic [7:0] prl;
    logic [7:0] d,x;
    output logic [7:0] outBit;
    
    always @ (posedge clk)
        if (load) d = prl;
        else if(shift) d = {inBit, d[7], d[6], d[5], d[4], d[3],d[2],d[1]];
        
    d_ff f8(inBit, d[7], clk, reset);
    d_ff f7(d[7], d[6], clk, reset);
    d_ff f6(d[6], d[5], clk, reset);
    d_ff f5(d[5], d[4], clk, reset);
    d_ff f4(d[4], d[3], clk, reset);
    d_ff f3(d[3], d[2], clk, reset);
    d_ff f2(d[2], d[1], clk, reset);
    d_ff f1(d[1], d[0], clk, reset);    
    assign outBit = d;
endmodule
