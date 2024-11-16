module mod_n_counter (
    input logic clk,        
    input logic reset,      
    input logic direction,   
    input logic [3:0] N,    
    output logic [3:0] count 
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000; 
        else begin
            if (direction == 0) begin 
                if (count == N - 1)
                    count <= 4'b0000; 
                else
                    count <= count + 1;
            end
            else begin
                if (count == 4'b0000)
                    count <= N - 1; 
                else
                    count <= count - 1;
            end
        end
    end

endmodule
