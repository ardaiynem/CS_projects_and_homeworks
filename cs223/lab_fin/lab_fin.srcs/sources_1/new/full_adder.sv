`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2022 12:54:33
// Design Name: 
// Module Name: full_adder
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


module full_adder(input logic a, b, cin, output logic s, cout);
    logic s0, c0, c1;
    
    half_adder ha(a, b, s0, c0);
    half_adder ha2(s0, cin, s, c1);
    or orgate(cout, c0, c1);
endmodule
