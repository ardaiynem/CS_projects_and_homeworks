`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2022 00:11:57
// Design Name: 
// Module Name: tb_sa
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


module tb_sa();
logic shift, reset, load;
    logic [7:0] parallel_A;
    logic [7:0] parallel_B;
    logic [7:0] out_S;
    
    serial_adder dut (shift, reset, load, parallel_A, parallel_B, out_S);
    
        initial begin
            reset = 1; #10;
            parallel_A = 8'b01001010; parallel_B = 8'b00110011; shift = 0; reset = 0; #10; load = 1; #10;
            load = 0; shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            parallel_A = 8'b10101010; parallel_B = 8'b10101010; load = 1; #10; 
            load = 0; shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            reset = 1; #10; reset = 0;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            shift = 1; #10; shift = 0; #10;
            end
endmodule
