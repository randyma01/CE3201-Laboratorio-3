module deco_results_module
(
  input logic [3:0] temp_results,
  output logic [6:0] results
);

  always @(temp_results)
    begin
	   case (temp_results)
		  0 : results = 7'b0000000;
		  
		  1 : results = 7'b0000001;
		  
		  2 : results = 7'b0000010;
		  
		  3 : results = 7'b0000011;
		  
		  4 : results = 7'b0000100;
		  
		  5 : results = 7'b0000101;
		  
		  6 : results = 7'b0000110;
		  
		  7 : results = 7'b0000111;
		  
		  8 : results = 7'b0001000;
		  
		  9 : results = 7'b0001001;
		  
		  10 : results = 7'b0001010;
		  
		  11 : results = 7'b0001011;
		  
		  12 : results = 7'b0001100;
		  
		  13 : results = 7'b0001101;
		  
		  14 : results = 7'b0001110;
		  
		  15 : results = 7'b0001111;
		  
		  default : results = 7'b1111111; 
       endcase
	  end
	  
endmodule 