`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2022 23:16:50
// Design Name: 
// Module Name: fa
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


module fa(a, b, cin, s, cout);
    input logic a, b, cin;
    output logic s, cout;
    logic xor1, and1, and2;
    
    assign xor1 = a ^ b;
    assign s = xor1 ^ cin;
    assign and1 = xor1 & cin;
    assign and2 = a & b;
    assign cout = and1 | and2;
endmodule
