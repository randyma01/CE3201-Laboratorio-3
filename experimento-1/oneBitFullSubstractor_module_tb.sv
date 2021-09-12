module oneBitFullSubstractor_module_tb();
	
  logic a;
  logic b;
  logic cin;
  logic r;
  logic cout;
  oneBitFullSubstractor_module modulo(a,b,cin,r,cout);
	
  initial begin
    $display("Iniciando simulacion");
	  a=1;
	  b=0;
	  cin=0;
	  #40
	
	  a=0;
	  b=1;
	  cin=0;
	  #40
	
	  a=1;
	  b=1;
	  cin=0;
	  #40
	
	  a=0;
	  b=0;
	  cin=0;
	
	end
endmodule 