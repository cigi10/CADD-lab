module tb_up_counter;

    logic clk;
    logic reset;
    logic [3:0] count;

  
    up_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    always begin
        #5 clk = ~clk; 
    end

    initial begin
      
        clk = 0;
        reset = 0;

        #10 reset = 1; 
        #10 reset = 0; 
        #100 
      $finish; 
    end

endmodule
