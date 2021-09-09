module register_in_module #(parameter N=4)
(
  input logic clk,
  input logic rst,
  input logic [N-1:0] a, 
  input logic [N-1:0] b,
  output logic [N-1:0] new_a, 
  output logic [N-1:0]new_b
);
	
  always_ff @(posedge clk, posedge rst)
    begin
      if (rst)
		  begin
	       new_a = 4'b0000;
		    new_b = 4'b0000;
		  end
	   else
		  begin
	       new_a = a;
		    new_b = b;
		  end
	 end
			
endmodule 