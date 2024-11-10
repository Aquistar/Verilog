`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2024 10:10:55 PM
// Design Name: 
// Module Name: pload_shift_reg
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


module pload_shift_reg (input clk,
			input rstn,
			input load,
			input [7:0] din,
			output [7:0] pout);
			
	reg [7:0] shift_reg;
	
	assign pout = shift_reg;
	
	always @(posedge clk) begin
		if (!rstn) shift_reg <= 0;
		else
			if (load) shift_reg <= din;
			else shift_reg <= shift_reg << 1;
		end
	
	endmodule
