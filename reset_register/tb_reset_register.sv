module tb_reset_registers;

    logic clk;
    logic reset;
    logic [3:0] data_in;
    logic [3:0] data_out_async;
    logic [3:0] data_out_sync;

    async_reset_register async_reg (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out_async)
    );

    sync_reset_register sync_reg (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out_sync)
    );

    always begin
        #5 clk = ~clk; 
    end

    initial begin
      
        clk = 0;
        reset = 0;
        data_in = 4'b0000;

        $monitor("At time %t, reset = %b, data_in = %b, async_out = %b, sync_out = %b", $time, reset, data_in, data_out_async, data_out_sync);

        #5 reset = 1; 
        #10 reset = 0; 
        #10 data_in = 4'b1010;
        #10 data_in = 4'b1111; 
        #10 reset = 1; 

        #10 reset = 0; 
        #10 data_in = 4'b1100; 
        #10 data_in = 4'b0011; 
        #10 reset = 1; 

        #20 $finish; 
    end
endmodule
