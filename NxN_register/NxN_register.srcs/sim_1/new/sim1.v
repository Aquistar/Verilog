`timescale 1ns / 1ps

module NxN_register_tb;
    
    // Parameters
    parameter N = 4;

    // Testbench signals
    reg clk;
    reg [N-1:0] in;
    wire [N-1:0] out;

    // Instantiate the MxN_register module
    NxN_register #(.N(N)) uut (
        .clk(clk),
        .in(in),
        .out(out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Stimulus generation
    initial begin
        // Initialize inputs
        in = 0;

        // Wait for global reset
        #10;

        // Apply test vectors
        in = 4'b0011; #10;  
        in = 4'b0100; #10;  
        in = 4'b1111; #10;  
        in = 4'b0000; #10;  
        in = 4'b1010; #10;  

        // Finish simulation
        #50;
        $finish;
    end



endmodule
