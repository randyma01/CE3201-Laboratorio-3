module register_out_module #(parameter N=4)
(
  input logic clk,
  input logic rst,
  input logic [N-1:0] result,
  output logic [N-1:0] new_result
);
	
  always_ff @(posedge clk, posedge rst)
    begin
      if (rst)
		  new_result= 4'b0000;
	   else
	     new_result = result;
	 end
			
endmodule 