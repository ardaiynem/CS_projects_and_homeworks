`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2022 06:00:40
// Design Name: 
// Module Name: seven_seg_disp
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


module seven_seg_disp(
    input clk, 
    input [3:0] in3, in2, in1, in0,
    output [6:0]seg, logic dp,
    output [3:0] an
    );
    
    localparam N = 17;
    logic [N-1:0] count = {N{1'b0}};
    logic [1:0] select = 2'b00;
    //logic [1:0] select;
    always@ (posedge clk)
        if (count == 99_999) begin //99_999
            count <= 0;
            select <= (select == 2'b11) ? 2'b00 : select + 1;
        end
        else count <= count + 1;
        
       
   logic [3:0]digit_en;
   
    always @ (select) begin
        case(select)
            
           2'b00 :  //select first 7Seg.
            begin
             digit_en = 4'b1110;
            end
            
           2'b01:  //select second 7Seg.
            begin
             digit_en = 4'b1101;
            end
            
           2'b10:  //select third 7Seg.
            begin
             digit_en = 4'b1011;
            end
             
           2'b11:  //select forth 7Seg.
            begin
             digit_en = 4'b0111;
            end
          endcase
      end
        
    

 /*
    always@ (posedge clk)
     begin
     digit_en = 4'b1111;
     digit_val = in0;
     
      case(select)
        
       2'b00 :  //select first 7Seg.
        begin
         digit_val = {1'b0, in0};
         digit_en = 4'b1110;
        end
        
       2'b01:  //select second 7Seg.
        begin
         digit_val = {1'b0, in1};
         digit_en = 4'b1101;
        end
        
       2'b10:  //select third 7Seg.
        begin
         digit_val = {1'b1, in2};
         digit_en = 4'b1011;
        end
         
       2'b11:  //select forth 7Seg.
        begin
         digit_val = {1'b0, in3};
         digit_en = 4'b0111;
        end
      endcase
     end
     */
     
    
    //Convert digit number to LED vector. LEDs are active low.
    logic [6:0] sseg_LEDs; 
    always @(*)
     begin 
      //sseg_LEDs = 7'b1111111; //default
      case(select)
        2'b00:
            case (in0)
            4'b0000: sseg_LEDs = 7'b1000000; // "0"  
            4'b0001: sseg_LEDs = 7'b1111001; // "1" 
            4'b0010: sseg_LEDs = 7'b0100100; // "2" 
            4'b0011: sseg_LEDs = 7'b0110000; // "3" 
            4'b0100: sseg_LEDs = 7'b0011001; // "4" 
            4'b0101: sseg_LEDs = 7'b0010010; // "5" 
            4'b0110: sseg_LEDs = 7'b0000010; // "6" 
            4'b0111: sseg_LEDs = 7'b1111000; // "7" 
            4'b1000: sseg_LEDs = 7'b0000000; // "8"  
            4'b1001: sseg_LEDs = 7'b0010000; // "9" 
            default: sseg_LEDs = 7'b1000000; // "0
           endcase
       2'b01: 
        case (in1)
        4'b0000: sseg_LEDs = 7'b1000000; // "0"  
        4'b0001: sseg_LEDs = 7'b1111001; // "1" 
        4'b0010: sseg_LEDs = 7'b0100100; // "2" 
        4'b0011: sseg_LEDs = 7'b0110000; // "3" 
        4'b0100: sseg_LEDs = 7'b0011001; // "4" 
        4'b0101: sseg_LEDs = 7'b0010010; // "5" 
        4'b0110: sseg_LEDs = 7'b0000010; // "6" 
        4'b0111: sseg_LEDs = 7'b1111000; // "7" 
        4'b1000: sseg_LEDs = 7'b0000000; // "8"  
        4'b1001: sseg_LEDs = 7'b0010000; // "9" 
        default: sseg_LEDs = 7'b1000000; // "0
      endcase
     2'b10: 
       case (in2)
        4'b0000: sseg_LEDs = 7'b1000000; // "0"  
       4'b0001: sseg_LEDs = 7'b1111001; // "1" 
       4'b0010: sseg_LEDs = 7'b0100100; // "2" 
       4'b0011: sseg_LEDs = 7'b0110000; // "3" 
       4'b0100: sseg_LEDs = 7'b0011001; // "4" 
       4'b0101: sseg_LEDs = 7'b0010010; // "5" 
       4'b0110: sseg_LEDs = 7'b0000010; // "6" 
       4'b0111: sseg_LEDs = 7'b1111000; // "7" 
       4'b1000: sseg_LEDs = 7'b0000000; // "8"  
       4'b1001: sseg_LEDs = 7'b0010000; // "9" 
       default: sseg_LEDs = 7'b1000000; // "0
     endcase
    2'b11: begin
      case (in3)
        4'b0000: sseg_LEDs = 7'b1000000; // "0"  
      4'b0001: sseg_LEDs = 7'b1111001; // "1" 
      4'b0010: sseg_LEDs = 7'b0100100; // "2" 
      4'b0011: sseg_LEDs = 7'b0110000; // "3" 
      4'b0100: sseg_LEDs = 7'b0011001; // "4" 
      4'b0101: sseg_LEDs = 7'b0010010; // "5" 
      4'b0110: sseg_LEDs = 7'b0000010; // "6" 
      4'b0111: sseg_LEDs = 7'b1111000; // "7" 
      4'b1000: sseg_LEDs = 7'b0000000; // "8"  
      4'b1001: sseg_LEDs = 7'b0010000; // "9" 
      default: sseg_LEDs = 7'b1000000; // "0
    endcase
    end
  endcase
end
     
    assign an = digit_en;
    assign seg = sseg_LEDs; 
    assign dp = 1'b1; //turn dp off
    
endmodule
