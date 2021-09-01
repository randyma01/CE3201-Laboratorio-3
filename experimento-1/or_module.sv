module or_module
(
  input logic [3:0] a,
  input logic [3:0] b,
  output logic [3:0] result,
  output logic [3:0] flags
);

  assign result = a || b;
  
  always @(result)
    begin
      if(result == 4'b0000)
	     flags=4'b0001;
	   else
	     flags=4'b0000;
    end
  
endmodule 