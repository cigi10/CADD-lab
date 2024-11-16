module tb_enabled_registers;
  
    logic clk;
    logic reset;
    logic enable;
    logic [3:0] data_in;
    logic [3:0] data_out_async;
    logic [3:0] data_out_sync;

    async_enabled_register async_reg (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .data_in(data_in),
        .data_out(data_out_async)
    );

    sync_enabled_register sync_reg (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .data_in(data_in),
        .data_out(data_out_sync)
    );

    always begin
        #10 clk = ~clk; 
    end

    initial begin
       
        clk = 0;
        reset = 0;
        enable = 0;
        data_in = 4'b0000;

      
        $monitor("At time %t, reset = %b, enable = %b, data_in = %b, async_out = %b, sync_out = %b",
                 $time, reset, enable, data_in, data_out_async, data_out_sync);

        #5 reset = 1;
        #10 reset = 0;
      
        #10 enable = 1; data_in = 4'b1101; 
        #10 enable = 0; 
        #10 enable = 1; data_in = 4'b1010; 
    
        #10 enable = 1; data_in = 4'b0011; 
        #10 enable = 0; 
        #10 enable = 1; data_in = 4'b1110; 

        #20 $finish; 
    end
endmodule
