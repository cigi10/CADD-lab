`timescale 1ns / 1ps

module half_adder
(
    input logic A,   
    input logic B,   
    output logic S,
    output logic C    
);

     assign S = A ^ B;  
     assign C = A & B;

endmodule

// using NAND gates ------------------------------------------------------------------------------------------------------------------------------------------------

  //  assign AB_NAND = ~(A & B);           
  //  assign AN_XOR_B = ~(A & AB_NAND);     
  //  assign BN_XOR_A = ~(B & AB_NAND);     
  //  assign S = ~(AN_XOR_B & BN_XOR_A);   
  //  assign C = ~(AB_NAND & AB_NAND);     

// gate level --------------------------------------------------------------------------------------------------------------------------------------------------

    // logic not_A, not_B, A_and_not_B, not_A_and_B;

    // Logic for XOR (Sum)
    // not (not_A, A);               
    // not (not_B, B);               
    // and (A_and_not_B, A, not_B);  
    // and (not_A_and_B, not_A, B);  
    // or (S, A_and_not_B, not_A_and_B); 

    // Logic for AND (Carry)
    // and (C, A, B);       
