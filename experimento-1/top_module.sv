module top_module #(parameter N=4)
(
  input logic [N-1:0] a, 
  input logic [N-1:0] b,
  input logic [2:0] uc, 
  output logic [6:0] results,
  output logic [3:0] flags
);


  logic [N-1:0] temp_results;
  logic [3:0] temp_flags;

  alu_module alu(a, b, uc, temp_results, temp_flags);
  
  decoder_module deco(temp_results, results);
 
  assign flags = temp_flags;

endmodule 