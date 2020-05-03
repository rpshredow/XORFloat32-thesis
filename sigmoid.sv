module sigmoid(
	input clk,
	input [31:0] in,
	output [31:0] out
);

wire [31:0] expOutAddIn;
wire [31:0] addOutInvIn;

wire [31:0] addIn;

assign addIn[30:1] = in[30:1];
assign addIn[31] = ~in[31];

expo	expo_inst (
	.clock ( clk ),
	.data ( addIn ),
	.result ( expOutAddIn )
	);
	
add	add_inst (
	.clock ( clk ),
	.dataa ( expOutAddIn ),
	.datab ( 32'b00111111100000000000000000000000 ),
	.result ( addOutInvIn )
	);
	
inverse	inverse_inst (
	.clock ( clk ),
	.data ( addOutInvIn ),
	.result ( out )
	);

endmodule