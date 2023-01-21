`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 12:39:32
// Design Name: 
// Module Name: function_f
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


module function_f(input a, b, c, d, output y);
    logic m[7:0];
    //assign m = {d, d, ~d, ~d, 0, d, d, 0};
    assign m = {0, ~d, ~d, ~d, d, d, d, 0};
    eight_to_one_mux mux1(m, {a, b, c}, y);
endmodule
