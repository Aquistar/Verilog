`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2024 09:34:52 PM
// Design Name: 
// Module Name: tb_shifter_sp_io
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

`define PERIOD 20
module tb_shifter_sp_io ( );
	parameter Len = 40;
	reg clk, rstn, shift_en, pload_en, pout_en, sin;
	reg [Len-1:0] data_in;
	wire [Len-1:0] data_io;
	wire sout;
	
	shifter_sp_io U0 (clk, rstn, shift_en, pload_en, pout_en, sin, sout, data_io);
	assign data_io = data_in;
	
	initial begin
		clk = 1'b0;
		forever #(`PERIOD/2) clk = ~clk;
	end
	
	initial begin
			rstn = 1'b0;       shift_en = 1'b1;
			pload_en = 1'b1;   pout_en = 1'b1;
			sin = 1'b1;        data_in = 8'bz;
		#(`PERIOD+5) rstn = 1'b1;   shift_en = 1'b0;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD) sin = 1'b1;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD) sin = 1'b1;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD) sin = 1'b1;
		#(`PERIOD) sin = 1'b1;  pout_en = 1'b0;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD) sin = 1'b1;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD) sin = 1'b1;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD) sin = 1'b0;
		#(`PERIOD) sin = 1'b1;  #(`PERIOD) sin = 1'b0;
		#(`PERIOD) pout_en = 1'b1;
		#(`PERIOD) sin = 1'b1;  #(`PERIOD) sin = 1'b0;
		#(`PERIOD) shift_en = 1'b1; pload_en = 1'b0;
		data_in = 8'b1010_1001;
		#(`PERIOD) pload_en = 1'b1; pout_en = 1'b1;
		shift_en = 1'b0; data_in = 8'bz;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD) sin = 1'b0;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD) sin = 1'b1;
		#(`PERIOD) sin = 1'b0;  #(`PERIOD*10) $finish;
	end

endmodule
