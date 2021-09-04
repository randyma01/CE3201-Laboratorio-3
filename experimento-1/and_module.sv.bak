module and_module #(parameter N=4)
(
  input logic [N-1:0] a,
  input logic [N-1:0] b,
  output logic [N-1:0] result,
  output logic [3:0] flags
);

  assign result = a && b;
  
  //definimos el orden de los flags como (D)(N)(C)(Z)
  
  always @(result)
    begin
      if(result == 4'b0000)
	     flags=4'b0001;
	   else
	     flags=4'b0000;
    end
	
endmodule 