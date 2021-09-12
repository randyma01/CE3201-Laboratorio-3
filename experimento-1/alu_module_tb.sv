module alu_module_tb #(parameter N=4)();
	
  logic [N-1:0] a;
  logic [N-1:0] b;
  logic [N-1:0] uc;
  logic [N-1:0] r;
  logic [3:0] f;
  alu_module modulo(a,b,uc,r,f);
	
  initial begin
    $display("Iniciando simulacion");
	
	  a=4'b0000;
	  b=4'b0000;
	  uc=3'b000;
	  #40
	
	  a=4'b0001;
	  b=4'b0001;
	  uc=3'b001;
	  #40
	
	
	  a=4'b0001;
	  b=4'b0001;
	  uc=3'b010;
	  #40
	
	  a=4'b0001;
	  b=4'b0001;
	  uc=3'b011;
	  #40
	
	  a=4'b0001;
	  b=4'b0001;
	  uc=3'b100;
	  #40
	
	  a=4'b0001;
	  b=4'b0001;
	  uc=3'b101;
	  #40
	
	  a=4'b0001;
	  b=4'b0001;
	  uc=3'b110;
	  #40
	
	  a=4'b0001;
	  b=4'b0001;
	  uc=3'b111;
		
	end
endmodule 