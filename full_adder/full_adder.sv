`timescale 1ns / 1ps

module full_adder (
    input logic A,      
    input logic B,      
    input logic Cin,    
    output logic S,     
    output logic Cout   
);
  
    assign S = A ^ B ^ Cin;  
    assign Cout = (A & B) | (Cin & (A ^ B));  

endmodule

// NAND GATES -------------------------------------------------------------------------------------------------------------------------------------------------

    // logic AB_NAND, AN_XOR_B, BN_XOR_A, XOR_AB, XOR_AB_NAND, SUM_NAND;
    // logic AND_AB, AND_XOR_CIN, COUT_NAND1, COUT_NAND2;

        // XOR Logic for A XOR B
        // assign AB_NAND = ~(A & B);                
        // assign AN_XOR_B = ~(A & AB_NAND);         
        // assign BN_XOR_A = ~(B & AB_NAND);         
        // assign XOR_AB = ~(AN_XOR_B & BN_XOR_A);   
    
        // XOR Logic for (A XOR B) XOR Cin
        // assign XOR_AB_NAND = ~(XOR_AB & Cin);        
        // assign SUM_NAND = ~(XOR_AB & XOR_AB_NAND);   
        // assign S = ~(SUM_NAND & Cin);               
    
        // AND Logic for Carry
        // assign AND_AB = ~(AB_NAND & AB_NAND);       
        // assign AND_XOR_CIN = ~(XOR_AB_NAND & XOR_AB_NAND); 
        // assign COUT_NAND1 = ~(AND_AB & AND_AB);      
        // assign COUT_NAND2 = ~(AND_XOR_CIN & AND_XOR_CIN); 
        // assign Cout = ~(COUT_NAND1 & COUT_NAND2);    

// GATE level --------------------------------------------------------------------------------------------------------------------------------------------------
    
    // logic AB_XOR, AND_AB, AND_CIN_XOR;

    // xor (AB_XOR, A, B);

    // xor (S, AB_XOR, Cin);

    // and (AND_AB, A, B);

    // and (AND_CIN_XOR, AB_XOR, Cin);

    // or (Cout, AND_AB, AND_CIN_XOR);

// Full adder using half adder ---------------------------------------------------------------------------------------------------------------------------------

/* module full_adder_using_half_adder (
    input logic A, B, Cin,    
    output logic Sum, Cout    
);

    logic sum1, carry1, carry2;

    half_adder HA1 (
        .A(A),
        .B(B),
        .Sum(sum1),
        .Carry(carry1)
    );

    half_adder HA2 (
        .A(sum1),
        .B(Cin),
        .Sum(Sum),
        .Carry(carry2)
    );

    assign Cout = carry1 | carry2;

endmodule */

