module top_module #(parameter N=4)
(
  input logic clk,
  input logic rst,
  input logic [N-1:0] a, 
  input logic [N-1:0] b,
  input logic [2:0] uc, 
  output logic [6:0] results,
  output logic [3:0] flags
);

  logic [N-1:0] new_a;
  logic [N-1:0] new_b;
  
  logic [N-1:0] temp_results;
  logic [3:0] temp_flags;
  
  
  register_in_module register_in(clk, rst, a, b, new_a, new_b);
  
  alu_module alu(new_a, new_b, uc, temp_results, temp_flags);
  
  register_out_module register_out(clk, rst, temp_results, results);
 
  assign flags = temp_flags;

endmodule 