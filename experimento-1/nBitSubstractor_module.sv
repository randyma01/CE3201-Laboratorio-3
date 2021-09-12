module nBitSubstractor_module #(parameter N=4)
(
  input logic [N-1:0] a, 
  input logic [N-1:0] b,
  output logic [N-1:0] result,
  output logic [3:0] flags
 );

  logic co;
  logic [N-1:0] c;
  genvar i;
 
  generate
    
	 assign co = 0;
	 
	 oneBitFullSubstractor_module oba0 (a[0], b[0], co, result[0], c[0]);
	 
	 for(i=1; i<N; i=i+1) begin: forloop
	  oneBitFullSubstractor_module obaN (a[i],b[i],c[i-1],result[i],c[i]);	 
	 end
	
	 always @(result)
	   begin
		  if(result == 4'b0000 && c[N-1]==0)
		    flags=4'b0001;
		  else if((c[N-1]==1))
			 flags=4'b0100;
		  else
			 flags=4'b0000;
	   end		
	 
  endgenerate 
	
endmodule 