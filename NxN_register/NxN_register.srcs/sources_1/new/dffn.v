`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2024 09:19:41 PM
// Design Name: 
// Module Name: dffn
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


module dffn(
    input clk,
    input [BITS-1:0] d,
    input [BITS-1:0] q
    );
    parameter BITS = 1;
    DFF dff_array [BITS-1:0] (.clk(clk), .in(d), .out(q));
endmodule