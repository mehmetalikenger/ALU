`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 23:10:30
// Design Name: 
// Module Name: check_one
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


module check_one(input logic [3:0] mux4_output, output logic allZero);

      always_comb begin 
       
        if (!mux4_output) begin       
          allZero = 1;
        end
        
      end

endmodule
