module calculator_module
(
  input logic [3:0] a, 
  input logic [3:0] b,
  input logic [4:0] uc, 
  output logic [6:0] results,
  output logic [3:0] flags
);

  logic [3:0] temp_results;
  logic [3:0] temp_flags;

  alu_module alu(a, b, uc, temp_results, temp_flags);
  
  deco_results_module deco_results(temp_results, results);
  
  deco_flags_module deco_flags(temp_flags, flags);


endmodule 