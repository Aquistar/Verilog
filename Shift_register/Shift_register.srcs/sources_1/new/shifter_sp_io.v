`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2024 09:29:46 PM
// Design Name: 
// Module Name: shifter_sp_io
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

module shifter_sp_io (input clk,
		input rstn,
		input shift_en,
		input pload_en,
		input pout_en,
		input sin,
		output sout,
		input [Len-1:0] data_io);
		
	parameter Len = 40;
	reg [Len-1:0] shift_reg;
	
	assign data_io = (!pout_en) ? shift_reg : {Len{1'bz}};
	assign sout = shift_reg[7];
	
	always @(posedge clk) begin
		if (!rstn)
			shift_reg <= {Len{1'b0}};
		else begin
			if (!shift_en) begin
				shift_reg <= shift_reg << 1;
				shift_reg[0] <= sin;
			end
			else if (!pload_en)
				shift_reg <= data_io;
			end
		end
	
	endmodule
