module top_module_register_tb #(parameter N=4)();

  logic clk; 
  logic rst;
  
  logic [N-1:0] a;
  logic [N-1:0] b;
  logic [N-1:0] uc;
  logic [N-1:0] r;
  logic [3:0] f;

  top_module modulo(clk, rst, a, b, uc, r, f);

  always
    begin
	   clk = 0; 
		#10;
		
		clk = 1;
		#10;
    end

  initial begin
    rst=1;
    a=256'b0000;
	 b=256'b0000;
	 uc=3'b000;
	 #10
	
	 rst=0;
	 a=256'b0001;
	 b=256'b0001;
	 uc=3'b010;
	 #10
	
	 rst=0;
	 a=256'b0001;
	 b=256'b0001;
	 uc=3'b001;

  end
endmodule 