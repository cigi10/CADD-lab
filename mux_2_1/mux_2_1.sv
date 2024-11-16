`timescale 1ns / 1ps

module mux_2_1
    (
    input wire d0,     
    input wire d1,     
    input wire s,      
    output wire y      
);
    assign y = s ? d1 : d0;
endmodule


// Using tri state buffer -----------------------------------------------------------------------------------------------------------------------------------------

 // logic buf0_out, buf1_out;

   
   // tristate_buffer buf0 (
        // .data_in(D0),
       // .enable(~S),      
      // .data_out(buf0_out)
   // );

    // tristate_buffer buf1 (
       // .data_in(D1),
       // .enable(S),        
       // .data_out(buf1_out)
   // );

//    assign Y = (buf0_out !== 1'bz) ? buf0_out : buf1_out;

// endmodule

// module tristate_buffer (
    // input logic data_in,      
    // input logic enable,       
    // output logic data_out     
// );
    // assign data_out = (enable) ? data_in : 1'bz; 
// endmodule
