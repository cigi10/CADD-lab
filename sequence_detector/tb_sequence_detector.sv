module tb_sequence_detector;

    logic clk;
    logic reset;
    logic in;
    logic out_moore, out_mealy;

    
    moore_sequence_detector moore (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out_moore)
    );

    mealy_sequence_detector mealy (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out_mealy)
    );

   
    always begin
        #5 clk = ~clk; 
    end

    initial begin
        
        clk = 0;
        reset = 0;
        in = 0;
        
        #10 reset = 1;  
        #10 reset = 0;  

        #10 in = 1; 
        #10 in = 0;  
        #10 in = 1;  
        #10 in = 0;  
        #10 in = 1;  
        
        #100 $finish; 
    end

endmodule
