`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 12:35:08
// Design Name: 
// Module Name: four_to_one_mux
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


module four_to_one_mux(input d[3:0], s[1:0],
output y);
logic m[1:0];
    two_to_one_mux mux1(d[1:0], s[0], m[0]);
    two_to_one_mux mux2(d[3:2], s[0], m[1]);
    two_to_one_mux mux3(m[1:0], s[1], y);
endmodule
