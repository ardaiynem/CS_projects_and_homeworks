`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 12:32:37
// Design Name: 
// Module Name: two_to_four_dec
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


module two_to_four_dec(input e, a[1:0], output y[3:0]);
logic m[3:0];
    one_to_two_dec dec1(e, a[1], m[1:0]);
    one_to_two_dec dec2(m[0], a[0], y[1:0]);
    one_to_two_dec dec3(m[1], a[0], y[3:2]);
endmodule
