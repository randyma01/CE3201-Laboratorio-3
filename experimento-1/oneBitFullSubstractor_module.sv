module oneBitFullSubstractor_module
(
  input logic a,
  input logic b,
  input logic cin,
  output logic res,
  output logic cout
);
  
  assign res = (cin & ~a & ~b) | (~cin & ~a & b) | (cin & a & b) | (~cin & a & ~b);
  assign cout = (cin & ~a) | (cin & b) | (~a & b);

endmodule 