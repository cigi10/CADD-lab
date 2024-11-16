module tb_priority_circuit_casez;
    logic [3:0] A;
    logic Y;

    priority_circuit_casez uut (
        .A(A),
        .Y(Y)
    );

    initial begin
      
        A = 4'b0000; #10; 
        A = 4'b0001; #10; 
        A = 4'b0010; #10; 
        A = 4'b0100; #10; 
        A = 4'b1000; #10; 
      
        $finish;
    end
endmodule
