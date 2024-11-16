module tb_comparator_one_bit;

    logic A_in, B_in;             
    logic is_greater, is_equal, is_less; 
  
    comparator_one_bit uut (
        .A_in(A_in),
        .B_in(B_in),
        .is_greater(is_greater),
        .is_equal(is_equal),
        .is_less(is_less)
    );

    initial begin
        A_in = 0; B_in = 0; #10;
        A_in = 0; B_in = 1; #10;
        A_in = 1; B_in = 0; #10;
        A_in = 1; B_in = 1; #10;
        $finish; 
    end

endmodule
