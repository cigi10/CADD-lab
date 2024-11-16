`timescale 1ns / 1ps

module decoder_3_8 (
    input logic [2:0] A,        
    output logic [7:0] Y        
);
    always_comb begin
        case (A)
            3'b000: Y = 8'b00000001;
            3'b001: Y = 8'b00000010;
            3'b010: Y = 8'b00000100;
            3'b011: Y = 8'b00001000;
            3'b100: Y = 8'b00010000;
            3'b101: Y = 8'b00100000;
            3'b110: Y = 8'b01000000;
            3'b111: Y = 8'b10000000;
            default: Y = 8'b00000000;
        endcase
    end
endmodule 
              
// Parametrized module 2^N
              
/* module decoder #(parameter N = 8) (
    input logic [$clog2(N)-1:0] A,  
    output logic [N-1:0] Y          
);
    always_comb begin
        Y = 0;  
        Y[A] = 1; 
    end
endmodule */
              

