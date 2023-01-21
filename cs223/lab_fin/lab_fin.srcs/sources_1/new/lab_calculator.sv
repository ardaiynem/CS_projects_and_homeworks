`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2022 12:56:09
// Design Name: 
// Module Name: lab_calculator
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


module lab_calculator(input logic a, b, c, d, output logic y, z);
    logic tmp_s, tmp_cout, tmp_d, tmp_bout, tmp_nand, tmp_xor;
    
    half_adder ha(a, b, tmp_s, tmp_cout);
    half_subtractor hs(a, b, tmp_d, tmp_bout);
    nand nandgate(tmp_nand, a, b);
    xor xorgate(tmp_xor, a, b);
    
    assign y = c ? (d ? tmp_d : tmp_s) : (d ? tmp_nand : tmp_xor);
    assign z = c ? (d ? tmp_bout : tmp_cout) : 0;
endmodule
