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


module NxN_register(
    input clk,
    input [N-1:0] in,
    output [N-1:0] out
    );
    parameter  N = 4;
    wire [N*(N-1):1] t;
    
        dffn #(N) p [0:N-1] (.clk(clk), .d({t, in}), .q({out, t}));
endmodule
