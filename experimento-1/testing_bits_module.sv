module testing_bits_module #(parameter N=96)
(
  input logic [N-1:0] a,
  input logic [N-1:0] b,
  output logic [N-1:0] y
);


  assign y = a && b;
  
endmodule 