`timescale 1ns / 1ps

module ParityGenerator_tb();
//inputs
reg b0;
reg b1;
reg b2;
reg b3;

//outputs
wire P0;

// Unit under test UUT(Assign by Name)
/*
EvenParityGenerator uut(
    .b0(b0),
    .b1(b1),
    .b2(b2),
    .b3(b3),
    .P0(P0)
);
*/

// Unit under test UUT(Assign by Reference)
EvenParityGenerator uut(b0,b1,b2,b3,P0);
integer k = 0;
initial
    begin
        {b3, b2, b1, b0} = 4'b0000;
        for(k=0;k<16;k=k+1)begin
            #10 {b0,b1,b2,b3} = k; // We are able to take the integer and assign it to the integer bits
            $strobe("Input: %b%b%b%b | Parity: %b", b0, b1, b2, b3, P0);
        end
        $finish;
    end
endmodule