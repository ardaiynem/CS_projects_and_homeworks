`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2022 12:55:29
// Design Name: 
// Module Name: two_bit_adder
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


module two_bit_adder(input logic a0, b0, a1, b1, cin0, output logic s0, s1, cout1);
    logic cout0;
    
    full_adder fa(a0, b0, cin0, s0, cout0);
    full_adder fa2(a1, b1, cout0, s1, cout1);
endmodule
