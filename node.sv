module node(
	input clk,
	input [31:0] in1,
	input [31:0] in2,
	input [31:0] weight1,
	input [31:0] weight2,
	input [31:0] bias,
	output [31:0] out
);

wire [31:0] mul1OutAdd1In;
wire [31:0] mul2OutAdd1In;
wire [31:0] add1OutAdd2In;

mult	mult_1 (
	.clock ( clk ),
	.dataa ( in1 ),
	.datab ( weight1 ),
	.result ( mul1OutAdd1In )
	);
	
mult	mult_2 (
	.clock ( clk ),
	.dataa ( in2 ),
	.datab ( weight2 ),
	.result ( mul2OutAdd1In )
	);
	
add	add_1 (
	.clock ( clk ),
	.dataa ( mul1OutAdd1In ),
	.datab ( mul2OutAdd1In ),
	.result ( add1OutAdd2In )
	);
	
add	add_2 (
	.clock ( clk ),
	.dataa ( add1OutAdd2In ),
	.datab ( bias ),
	.result ( out )
	);

endmodule