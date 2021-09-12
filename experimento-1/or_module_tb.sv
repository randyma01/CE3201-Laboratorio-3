module or_module_tb #(parameter N=4)();
	
  logic [N-1:0] a;
  logic [N-1:0] b;
  logic [N-1:0] r;
  logic [3:0] f;
  or_module modulo(a,b,r,f);

  initial begin
    $display("Iniciando simulacion");
    a=4'b0001;
    b=4'b0001;
    #40

    a=4'b0000;
    b=4'b0000;
    #40

    a=4'b0010;
    b=4'b0001;

   end
endmodule 