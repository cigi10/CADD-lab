module basic_gates(
    input  logic A,
    input  logic B,
    output logic AND_gate,
    output logic OR_gate,
    output logic NOT_gate_A,
    output logic NAND_gate,
    output logic NOR_gate,
    output logic XOR_gate,
    output logic XNOR_gate
);
    assign AND_gate  = A & B;
    assign OR_gate   = A | B;
    assign NOT_gate_A = ~A;
    assign NAND_gate = ~(A & B);
    assign NOR_gate  = ~(A | B);
    assign XOR_gate  = A ^ B;
    assign XNOR_gate = ~(A ^ B);
endmodule
