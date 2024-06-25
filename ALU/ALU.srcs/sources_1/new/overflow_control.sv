`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 16:37:03
// Design Name: 
// Module Name: overflow_control
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


module overflow_control(input logic [1:0] aluControl, input logic [3:0] a, b, sum, output logic result);

    assign _xor = a[3] ^ sum[3];
    assign _xnor = ~(aluControl[0] ^ a[3] ^ b[3]); 
    assign result = ~aluControl[1] & _xor & _xnor;

endmodule
