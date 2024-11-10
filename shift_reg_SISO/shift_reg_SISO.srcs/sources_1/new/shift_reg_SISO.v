`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2024 10:00:53 PM
// Design Name: 
// Module Name: shift_reg_SISO
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


module shift_reg_SISO (input clk,
		input rst,
		input s_in,
		output s_out);
		
	reg [7:0] q;
	
	assign s_out = q[7];
		
		always @(posedge clk) begin
			if (rst) q <= 8'h00;
			else begin
				q[0] <= s_in;
				q[7:1] <= q[6:0];
			end
		end
	
	endmodule
