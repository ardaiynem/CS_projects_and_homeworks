`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2022 22:47:00
// Design Name: 
// Module Name: tutm
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


module two_to_one_mux(input d[1:0], s, output y);
    assign y = s ? d[1] : d[0];
endmodule

module four_to_one_mux(input d[3:0], s[1:0], output y);
    logic m[1:0];
    
    two_to_one_mux mux1(d[1:0], s[0], m[0]);
    two_to_one_mux mux2(d[3:2], s[0], m[1]);
    two_to_one_mux mux3(m[1:0], s[1], y);
endmodule

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

module function_f(input a, b, c, d, output y);
    logic m[7:0];
    
    assign m = {d, d, ~d, ~d, 0, d, d, 0};
    
    eight_to_one_mux mux1(m, {a, b, c}, y);
endmodule



