//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" LPM_PIPELINE=2 LPM_REPRESENTATION="UNSIGNED" LPM_WIDTHA=6 LPM_WIDTHB=25 LPM_WIDTHP=31 aclr clken clock dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:09:SJ cbx_lpm_add_sub 2018:09:12:13:04:09:SJ cbx_lpm_mult 2018:09:12:13:04:09:SJ cbx_mgl 2018:09:12:14:15:07:SJ cbx_nadder 2018:09:12:13:04:09:SJ cbx_padd 2018:09:12:13:04:09:SJ cbx_stratix 2018:09:12:13:04:09:SJ cbx_stratixii 2018:09:12:13:04:09:SJ cbx_util_mgl 2018:09:12:13:04:09:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2018  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details.



//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_qgo
	( 
	aclr,
	clken,
	clock,
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clken;
	input   clock;
	input   [5:0]  dataa;
	input   [24:0]  datab;
	output   [30:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clken;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg  [5:0]  dataa_input_reg;
	reg  [24:0]  datab_input_reg;
	reg  [30:0]  result_output_reg;
	wire [5:0]    dataa_wire;
	wire [24:0]    datab_wire;
	wire [30:0]    result_wire;


	// synopsys translate_off
	initial
		dataa_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock or posedge aclr)
		if (aclr == 1'b1)
			dataa_input_reg <= 6'b0;
		else
			if (clken == 1'b1)
				dataa_input_reg <= dataa;
	// synopsys translate_off
	initial
		datab_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock or posedge aclr)
		if (aclr == 1'b1)
			datab_input_reg <= 25'b0;
		else
			if (clken == 1'b1)
				datab_input_reg <= datab;
	// synopsys translate_off
	initial
		result_output_reg = 0;
	// synopsys translate_on
	always @(posedge clock or posedge aclr)
		if (aclr == 1'b1)
			result_output_reg <= 31'b0;
		else
			if (clken == 1'b1)
				result_output_reg <= result_wire[30:0];

	assign dataa_wire = dataa_input_reg;
	assign datab_wire = datab_input_reg;
	assign result_wire = dataa_wire * datab_wire;
	assign result = ({result_output_reg});

endmodule //mult_qgo
//VALID FILE
