`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 12:31:24
// Design Name: 
// Module Name: one_to_two_dec
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


module one_to_two_dec(input e, a0, output y[1:0]);
    assign y[0] = e & ~a0;
    assign y[1] = e & a0;
endmodule
