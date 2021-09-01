module oneBitFullAdder_module(
	input logic a,
	input logic b,
	input logic cin,
	output logic res,
	output logic cout
);

	assign res = (~a & ~b & cin) | (a & ~b & ~cin) | (a & b & cin);
	assign cout = (~a & b & cin) | (a & ~b & cin) | (a & b & ~cin) | (a & b & cin);

endmodule
