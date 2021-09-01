module fourBitAdder_module
(
  input logic [3:0] a, 
  input logic [3:0] b,
  input logic [4:0] temp_carry,
  output logic [3:0] flags,
  output logic [3:0] result
 );
	
	oneBitFullAdder_module adder_1(a[0], b[0], temp_carry[0], result[0], temp_carry[1]);
	oneBitFullAdder_module adder_2(a[1], b[1], temp_carry[1], result[1], temp_carry[2]);
	oneBitFullAdder_module adder_3(a[2], b[2], temp_carry[2], result[2], temp_carry[3]);
	oneBitFullAdder_module adder_4(a[3], b[3], temp_carry[3], result[3], temp_carry[4]);

	// (N)
	assign flags[0] = 0;
	
	// (Z)
	assign flags[1] = (result == 0);
	
	// (C)
	assign flags[2] = (temp_carry[4] == 1);
	
	// (V)
	assign flags[3] = (temp_carry[4] == 1);
	
	
endmodule 