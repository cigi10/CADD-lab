`timescale 1ns / 1ps

module priority_circuit_casez (
    input logic [3:0] A, 
    output logic Y       
);
    always_comb begin
        casez (A)
            4'b1??? : Y = 1;  
            4'b01?? : Y = 1;
            4'b001? : Y = 1;
            4'b0001 : Y = 1;
            default: Y = 0;   
        endcase
    end
endmodule

// Priority circuit using if statement -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/* module priority_circuit_if (
    input logic [3:0] A,  
    output logic Y        
);
    always_comb begin
   
        if (A[3]) 
            Y = 1;  
        else if (A[2])
            Y = 1;
        else if (A[1])
            Y = 1;
        else if (A[0])
            Y = 1;
        else
            Y = 0;  
    end
endmodule

*/
