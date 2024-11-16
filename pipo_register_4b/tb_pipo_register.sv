module tb_pipo_register;
    logic clk;
    logic reset;
    logic load;
    logic [3:0] data_in;
    logic [3:0] data_out;

    pipo_register uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .data_in(data_in),
        .data_out(data_out)
    );

    always begin
        #10 clk = ~clk; 
    end
  
    initial begin
  
        clk = 0;
        reset = 0;
        load = 0;
        data_in = 4'b0000;

        $monitor("At time %t, reset = %b, load = %b, data_in = %b, data_out = %b", $time, reset, load, data_in, data_out);

        #5 reset = 1; 
        #10 reset = 0;

        #10 load = 1; data_in = 4'b1010; 
        #10 load = 0; 
        #10 load = 1; data_in = 4'b1111; 

        #10 load = 0;
        #10 $finish; 
    end
endmodule
