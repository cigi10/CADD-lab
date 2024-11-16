module tb_comparator_two_bit;

    logic [1:0] A_in, B_in;        
    logic is_greater, is_equal, is_less; 
  
    comparator_two_bit uut (
        .A_in(A_in),
        .B_in(B_in),
        .is_greater(is_greater),
        .is_equal(is_equal),
        .is_less(is_less)
    );
  
    initial begin
      
        A_in = 2'b00; B_in = 2'b00; #10;
        A_in = 2'b01; B_in = 2'b00; #10;
        A_in = 2'b10; B_in = 2'b01; #10;
        A_in = 2'b11; B_in = 2'b10; #10;
        A_in = 2'b01; B_in = 2'b11; #10;
        A_in = 2'b10; B_in = 2'b10; #10;

        $finish; 
    end

endmodule
