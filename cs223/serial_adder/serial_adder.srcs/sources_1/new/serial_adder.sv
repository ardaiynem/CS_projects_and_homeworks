`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2022 23:50:32
// Design Name: 
// Module Name: serial_adder
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
module ClockSlowDownFSM(input clk, output clkSlow);
    logic [29:0] count = 0;
    logic clkOut;
    always@(posedge clk)
        begin 
            count <= count + 1;
            if (count == 150000000)
                begin
                    count <= 0;
                    clkOut = ~clkOut;
                end
        end
    assign clkSlow = clkOut;
endmodule

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
module serial_adder(clkSlow, shift, reset, load, parallel_A, parallel_B, out_S);
    input logic clkSlow, shift, reset, load;
    input logic [7:0] parallel_A;
    input logic [7:0] parallel_B;
    logic [7:0] out_A;
    logic [7:0] out_B;
    logic cin, cout, sum;
    output logic [7:0] out_S;
    
    shift_register sr_A(shift, reset, load, parallel_A, 0, out_A);
    shift_register sr_B(shift, reset, load, parallel_B, 0, out_B);
    shift_register sr_S(shift, reset, load, 0, sum, out_S);
    fa fa1(out_A[0], out_B[0], cin, sum, cout);
    d_ff d_ff1(cout, cin, shift, reset);
endmodule
