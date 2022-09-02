`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2022 10:27:37 AM
// Design Name: 
// Module Name: Top
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


module Top(Reset,Clk,out7, en_out);

input Clk, Reset;
output [6:0] out7; //seg a, b, ... g
output [7:0] en_out;

wire [31:0] Instruction;
wire [31:0] PCResult;
wire ClkOut;

ClkDiv ClkDiv(Clk, Reset, ClkOut);
InstructionFetchUnit InstructionFetchUnit(Instruction,PCResult, Reset, ClkOut);
Two4DigitDisplay Two4DigitDisplay(Clk,Instruction[15:0],PCResult[15:0],out7,en_out);


endmodule
