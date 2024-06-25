`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 23:25:31
// Design Name: 
// Module Name: isNegative
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


module isNegative(input logic msb, output logic result);

    always_comb begin 
       
        if (msb) begin       
          result = 1;
        end
        
      end
    
endmodule
