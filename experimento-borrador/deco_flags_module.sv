module deco_flags_module
(
  input logic [3:0] temp_flags,
  output logic [3:0] flags
);

  always @(temp_flags)
    begin
	   case (temp_flags)
		  0 : flags = 4'b0000;
		  
		  1 : flags = 4'b0001;
		  
		  2 : flags = 4'b0010;
		  
		  3 : flags = 4'b0011;
		  
		  4 : flags = 4'b0100;
		  
		  5 : flags = 4'b0101;
		  
		  6 : flags = 4'b0110;
		  
		  7 : flags = 4'b0111;
		  
		  8 : flags = 4'b1000;
		  
		  9 : flags = 4'b1001;
		  
		  10 : flags = 4'b1010;
		  
		  11 : flags = 4'b1011;
		  
		  12 : flags = 4'b1100;
		  
		  13 : flags = 4'b1101;
		  
		  14 : flags = 4'b1110;
		  
		  15 : flags = 4'b1111;
		  
		  default : flags = 4'b111111; 
       endcase
	  end
	  
endmodule 