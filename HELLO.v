`timescale 1ns/1ps

module hello;

initial begin
    $display{"HELLO"};
    $finish;
end

endmodule