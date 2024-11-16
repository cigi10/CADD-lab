`timescale 1ns / 1ps

module mux_4_1
    (
    input logic [3:0] D,
    input logic [1:0] S,
    output logic Y
);
    assign Y = (~S[1] & ~S[0] & D[0]) | (~S[1] & S[0] & D[1]) | (S[1] & ~S[0] & D[2]) | (S[1] & S[0] & D[3]);
endmodule
