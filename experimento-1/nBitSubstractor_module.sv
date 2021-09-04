module nBitSubstractor_module #(parameter N=4)
(
  input logic [N-1:0] a, 
  input logic [N-1:0] b,
  output logic [N-1:0] result,
  output logic [3:0] flags
 );
 
	/*

	logic co = 0;
	logic [N-1:0] c;
	genvar i;
	
	oneBitFullAdder_module oba0 (a[0],b[0],co,result[0],c[0]);
	
	generate forBlock
		for (i=1; i < N; i = i+1)
		begin
			oneBitFullAdder_module obaN (a[i],b[i],c[i-1],result[i],c[i]);	
		end
		
	endgenerate
	
	always @(result)
    begin
      if(result == 4'b0000 && c4==0)
	     flags=4'b0001;
		else if((result == 4'b0000 && c4==1) || (c4==1))
			flags=4'b0010;
	   else
	     flags=4'b0000;
    end
	 
	 */

 
 	logic co = 0;
	logic c1,c2,c3,c4;
	
	oneBitFullSubstractor_module obs0 (a[0],b[0],co,result[0],c1);
	oneBitFullSubstractor_module obs1 (a[1],b[1],c1,result[1],c2);
	oneBitFullSubstractor_module obs2 (a[2],b[2],c2,result[2],c3);
	oneBitFullSubstractor_module obs3 (a[3],b[3],c3,result[3],c4);

	
	 always @(result)
    begin
      if(result == 4'b0000 && c4==0)
	     flags=4'b0001;
		else if((result == 4'b0000 && c4==1) || (c4==1))
			flags=4'b0100;
	   else
	     flags=4'b0000;
    end
	
endmodule 