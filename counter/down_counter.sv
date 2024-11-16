module down_counter (
    input logic clk,      
    input logic reset,    
    output logic [3:0] count
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b1111; 
        else
            count <= count - 1; 
    end

endmodule
