module mealy_sequence_detector (
    input logic clk,
    input logic reset,
    input logic in,     
    output logic out    
);

    typedef enum logic [1:0] {S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11} state_t;
    state_t state, next_state;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;  
        else
            state <= next_state;
    end
  
    always_comb begin
        case(state)
            S0: next_state = (in) ? S1 : S0;
            S1: next_state = (in) ? S1 : S2;
            S2: next_state = (in) ? S3 : S0;
            S3: next_state = (in) ? S1 : S0;
            default: next_state = S0;
        endcase
    end

    always_comb begin
        case(state)
            S0: out = 0;
            S1: out = 0;
            S2: out = 0;
            S3: out = (in) ? 1 : 0; 
            default: out = 0;
        endcase
    end

endmodule
