`timescale 1ns / 1ps

module NxN_register_tb;
    
    
    parameter N = 4;

    
    reg clk;
    reg [N-1:0] in;
    wire [N-1:0] out;

    
    NxN_register #(.N(N)) uut (
        .clk(clk),
        .in(in),
        .out(out)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    
    initial begin
        in = 0;
        
        #10;
        
        in = 4'b0011; #10;  
        in = 4'b0100; #10;  
        in = 4'b1111; #10;  
        in = 4'b0000; #10;  
        in = 4'b1010; #10;  
        
        #50;
        $finish;
    end



endmodule
