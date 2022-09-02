`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2022 11:36:02 AM
// Design Name: 
// Module Name: InstructionFetchUnit_tb
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


module InstructionFetchUnit_tb();
	
	reg [31:0]Instruction;
	reg Reset, Clk;

initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

InstructionFetchUnit InstructionFetchUnit(Instruction, Reset, Clk);

	initial begin
	
    /* Please fill in the implementation here... */
    
    @ (posedge Clk)
    Reset <= 1;
    @ (posedge Clk)
    Reset <= 0;

   
    
	
	end
endmodule

