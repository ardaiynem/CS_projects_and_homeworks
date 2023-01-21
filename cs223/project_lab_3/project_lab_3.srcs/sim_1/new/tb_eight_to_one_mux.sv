`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 12:44:23
// Design Name: 
// Module Name: tb_eight_to_one_mux
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


module tb_eight_to_one_mux();
    logic d[7:0], s[2:0], y;
    
    eight_to_one_mux dut(d[7:0], s[2:0], y);
    initial begin
        s[2] = 0; s[1] = 0; s[0] = 0; d[0] = 0; #10; d[0] = 1; #10;
        s[2] = 0; s[1] = 0; s[0] = 1; d[1] = 0; #10; d[1] = 1; #10;
        s[2] = 0; s[1] = 1; s[0] = 0; d[2] = 0; #10; d[2] = 1; #10;
        s[2] = 0; s[1] = 1; s[0] = 1; d[3] = 0; #10; d[3] = 1; #10;
        s[2] = 1; s[1] = 0; s[0] = 0; d[4] = 0; #10; d[4] = 1; #10;
        s[2] = 1; s[1] = 0; s[0] = 1; d[5] = 0; #10; d[5] = 1; #10;
        s[2] = 1; s[1] = 1; s[0] = 0; d[6] = 0; #10; d[6] = 1; #10;
        s[2] = 1; s[1] = 1; s[0] = 1; d[7] = 0; #10; d[7] = 1; #10;
    end
endmodule
