module tb_basic_gates;
    logic A, B;
    logic AND_gate, OR_gate, NOT_gate_A, NAND_gate, NOR_gate, XOR_gate, XNOR_gate;

    basic_gates uut
  	(
        .A(A),
        .B(B),
        .AND_gate(AND_gate),
        .OR_gate(OR_gate),
        .NOT_gate_A(NOT_gate_A),
        .NAND_gate(NAND_gate),
        .NOR_gate(NOR_gate),
        .XOR_gate(XOR_gate),
        .XNOR_gate(XNOR_gate)
    );

    initial begin
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $stop;
    end
endmodule
