`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 20:47:29
// Design Name: 
// Module Name: testbench
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


module testbench;

  mux2 mux2_call (
    .d0(b),
    .d1(not_b),
    .aluControl(aluControl[0]),
    .mux2_output(mux2_output)
  );
  
  NbitFulladder fadder_call (
    .a(a),
    .mux2_output(mux2_output),
    .cin(aluControl[0]),
    .fadder_output(fadder_output),
    .cout(cout)
  );
  
  and_module _and (
    .a(a),
    .b(b),
    .result(and_module_output)
  );
  
   or_module _or(
    .a(a),
    .b(b),
    .result(or_module_output)
  );
  
  mux4 mux4_call(
    .sum(fadder_output),
    .sub(fadder_output),
    ._and(and_module_output),
    ._or(or_module_output),
    .aluControl(aluControl),
    .mux4_output(mux4_output)
  );
  
  check_one dut1(        
    .mux4_output(mux4_output),
    .allZero(allZero)
   );
   
   isNegative dut2(        
    .msb(mux4_output[7]),
    .result(isNegative)
   );
   
   checkCarry dut3(
    .aluControl(aluControl[1]),
    .cout(cout),
    .result(carry)
   );
   
   
  overflow_control dut4(
    .aluControl(aluControl),
    .a(a),
    .b(b),
    .sum(mux4_output),
    .result(overflow)
   );
   
  
  logic [7:0] b;
  logic [7:0] not_b;
  logic [1:0] aluControl;
  logic [7:0] mux2_output;
 
  logic [7:0] a;
  logic [7:0] fadder_output;
  logic cout;
  
  logic [7:0] and_module_output;
  logic [7:0] or_module_output;
  
  logic [7:0] mux4_output;

  logic allZero;
  logic isNegative;
  logic carry;
  logic overflow;

  initial begin

    b = 8'b11010011;
    not_b = ~b;
    aluControl = 2'b00;
    
    a = 8'b00110101;
    
    allZero = 1'b0;
    isNegative = 1'b0;
        
  end

endmodule
