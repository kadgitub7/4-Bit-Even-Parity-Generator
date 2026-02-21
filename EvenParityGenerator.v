`timescale 1ns / 1ps

module EvenParityGenerator(
    input b0,
    input b1,
    input b2,
    input b3,
    output P0
    );
    
    assign P0 = b0 ^ b1 ^ b2 ^ b3;
endmodule