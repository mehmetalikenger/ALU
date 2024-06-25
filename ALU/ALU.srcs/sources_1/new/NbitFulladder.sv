`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 21:08:47
// Design Name: 
// Module Name: NbitFulladder
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


module NbitFulladder( input logic [7:0] a, mux2_output, input logic cin, output logic [7:0] fadder_output, output logic cout );

    wire [6:0] c;
    
    fulladder i_0 (a[0],mux2_output[0],cin,fadder_output[0],c[0]);
    fulladder i_1 (a[1],mux2_output[1],c[0],fadder_output[1],c[1]);
    fulladder i_2 (a[2],mux2_output[2],c[1],fadder_output[2],c[2]);
    fulladder i_3 (a[3],mux2_output[3],c[2],fadder_output[3],c[3]);
    fulladder i_4 (a[4],mux2_output[4],c[3],fadder_output[4],c[4]);
    fulladder i_5 (a[5],mux2_output[5],c[4],fadder_output[5],c[5]);
    fulladder i_6 (a[6],mux2_output[6],c[5],fadder_output[6],c[6]);
    fulladder i_7 (a[7],mux2_output[7],c[6],fadder_output[7],cout);
    
endmodule
