`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2024 09:19:41 PM
// Design Name: 
// Module Name: MxN_register
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


module MxN_register(
    input clk,
    input [M-1:0] in,
    output [M-1:0] out
    );
    parameter M = 3, N = 4;
    wire [M*(N-1):1] t;
    
        dffn #(M) p [1:N] (.clk(clk), .d({t, in}), .1({out, t}));
endmodule
