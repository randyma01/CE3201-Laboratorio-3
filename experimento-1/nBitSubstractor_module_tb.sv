module nBitSubstractor_module_tb #(parameter N=4)();
	
	logic [N-1:0] a;
	logic [N-1:0] b;
	logic [N-1:0] r;
	logic [3:0] f;
	nBitSubstractor_module modulo(a,b,r,f);
	
	initial begin
	$display("Iniciando simulacion");
	a=4'b1111;
	b=4'b0001;
	#40
	
	a=4'b0001;
	b=4'b0001;
	#40
	
	a=4'b1000;
	b=4'b0100;
	#40
	
	a=4'b0001;
	b=4'b0011;
	
	
	end
endmodule