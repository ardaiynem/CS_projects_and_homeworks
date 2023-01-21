`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 12:42:21
// Design Name: 
// Module Name: tb_two_to_four_dec
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


module tb_two_to_four_dec();
    logic e, a[1:0], y[3:0];
    two_to_four_dec dut(e, a[1:0], y[3:0]);
    initial begin
        e = 0; a[1] = 0; a[0] = 0; #10;
        a[0] = 1; #10;
        a[1] = 1; a[0] = 0; #10;
        a[0] = 1; #10;
        e = 1; a[1] = 0; a[0] = 0; #10;
        a[0] = 1; #10;
        a[1] = 1; a[0] = 0; #10;
        a[0] = 1; #10;
    end
endmodule
