`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2022 13:47:07
// Design Name: 
// Module Name: sr
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


module sr(input logic CLK, RESET, Load, Shift, s_in,
[7:0] in,
output logic s_out, [7:0] Q);
    always_ff @(posedge CLK, posedge RESET)
        if(RESET) Q <= 8'b00000000;
        else if(Load) Q <= in;
        else if(Shift)
            begin
            if(s_in | ~s_in) Q <= {s_in, Q[7:1]};
            end
    assign s_out = Q[0];
endmodule
