`timescale 1ns / 1ps

module async_enabled_register (
    input logic clk,         
    input logic reset,       
    input logic enable,      
    input logic [3:0] data_in, 
    output logic [3:0] data_out 
);
    reg [3:0] register; 

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            register <= 4'b0000; 
        end else if (enable) begin
            register <= data_in; 
        end
    end

    assign data_out = register;

endmodule
