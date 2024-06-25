`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 21:11:05
// Design Name: 
// Module Name: MUX4
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


module mux4(input logic [7:0] sum, sub, _and, _or, input logic [1:0] aluControl, output logic [7:0] mux4_output);

    assign mux4_output = aluControl[1] ? 
           (aluControl[0] ? _or : _and):
           (aluControl[0] ? sub : sum);
    
endmodule

