`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 12:38:11
// Design Name: 
// Module Name: eight_to_one_mux
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


module eight_to_one_mux(input d[7:0], s[2:0], output y);
    logic m[1:0];
    four_to_one_mux mux1(d[3:0], s[1:0], m[0]);
    four_to_one_mux mux2(d[7:4], s[1:0], m[1]);
    logic tmpA, tmpB, tmpC;
    not(tmpC, s[2]);
    and(tmpA, m[0], tmpC);
    and(tmpB, m[1], s[2]);
    or(y, tmpA, tmpB);
endmodule
