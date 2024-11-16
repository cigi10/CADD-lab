`timescale 1ns / 1ps

module comparator_one_bit (
    input logic A_in, B_in,          
    output logic is_greater,         
    output logic is_equal,           
    output logic is_less             
);

    assign is_greater = A_in & ~B_in;
    assign is_equal = ~(A_in ^ B_in);  
    assign is_less = ~A_in & B_in;

endmodule
