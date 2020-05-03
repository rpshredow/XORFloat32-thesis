//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" LPM_PIPELINE=1 LPM_REPRESENTATION="UNSIGNED" LPM_WIDTHA=4 LPM_WIDTHB=19 LPM_WIDTHP=23 aclr clken clock dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
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




//adder CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" WIDTH=22 dataa datab datac result
//VERSION_BEGIN 18.1 cbx_mgl 2018:09:12:14:15:07:SJ cbx_stratixii 2018:09:12:13:04:09:SJ cbx_util_mgl 2018:09:12:13:04:09:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=20 dataa datab result
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:09:SJ cbx_lpm_add_sub 2018:09:12:13:04:09:SJ cbx_mgl 2018:09:12:14:15:07:SJ cbx_nadder 2018:09:12:13:04:09:SJ cbx_stratix 2018:09:12:13:04:09:SJ cbx_stratixii 2018:09:12:13:04:09:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=20 dataa datab result
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:09:SJ cbx_lpm_add_sub 2018:09:12:13:04:09:SJ cbx_mgl 2018:09:12:14:15:07:SJ cbx_nadder 2018:09:12:13:04:09:SJ cbx_stratix 2018:09:12:13:04:09:SJ cbx_stratixii 2018:09:12:13:04:09:SJ  VERSION_END

//synthesis_resources = lut 84 reg 42 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_rgo
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
	input   [3:0]  dataa;
	input   [18:0]  datab;
	output   [22:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clken;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	[21:0]	wire_add44_result;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe10;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe11;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe12;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe13;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe14;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe15;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe16;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe17;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe18;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe19;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe2;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe20;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe21;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe22;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe23;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe24;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe25;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe26;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe27;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe28;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe29;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe3;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe30;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe31;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe32;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe33;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe34;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe35;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe36;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe37;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe38;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe39;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe4;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe40;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe41;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe42;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe43;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe5;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe6;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe7;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe8;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe9;
	wire	[19:0]	wire_sum_adder1aa_0dataa;
	wire	[19:0]	wire_sum_adder1aa_0datab;
	wire	[19:0]	wire_sum_adder1aa_0result;
	wire	[19:0]	wire_sum_adder1aa_1dataa;
	wire	[19:0]	wire_sum_adder1aa_1datab;
	wire	[19:0]	wire_sum_adder1aa_1result;
	wire  [21:0]   wire_sft45a_in;
	wire  [21:0]   wire_sft45a_out;
	wire  [21:0]   wire_sft46a_in;
	wire  [21:0]   wire_sft46a_out;
	wire  [21:0]   wire_sft47a_in;
	wire  [21:0]   wire_sft47a_out;
	wire  [21:0]   wire_sft48a_in;
	wire  [21:0]   wire_sft48a_out;
	wire  [18:0]  dataa_node;
	wire  [3:0]  datab_node;
	wire  [22:0]  final_result_node;
	wire  w126w;
	wire  [23:0]  w212w;
	wire  [75:0]  w_decoder_node9w;
	wire  [3:0]  w_le_datab_node8w;
	wire  [41:0]  w_sum_node10w;

	assign
		wire_add44_result = wire_sft45a_out + wire_sft46a_out + wire_sft47a_out;
	// synopsys translate_off
	initial
		dffe10 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe10 <= 1'b0;
		else if  (clken == 1'b1)   dffe10 <= w_sum_node10w[5];
	// synopsys translate_off
	initial
		dffe11 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe11 <= 1'b0;
		else if  (clken == 1'b1)   dffe11 <= w_sum_node10w[24];
	// synopsys translate_off
	initial
		dffe12 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe12 <= 1'b0;
		else if  (clken == 1'b1)   dffe12 <= w_sum_node10w[6];
	// synopsys translate_off
	initial
		dffe13 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe13 <= 1'b0;
		else if  (clken == 1'b1)   dffe13 <= w_sum_node10w[25];
	// synopsys translate_off
	initial
		dffe14 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe14 <= 1'b0;
		else if  (clken == 1'b1)   dffe14 <= w_sum_node10w[7];
	// synopsys translate_off
	initial
		dffe15 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe15 <= 1'b0;
		else if  (clken == 1'b1)   dffe15 <= w_sum_node10w[26];
	// synopsys translate_off
	initial
		dffe16 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe16 <= 1'b0;
		else if  (clken == 1'b1)   dffe16 <= w_sum_node10w[8];
	// synopsys translate_off
	initial
		dffe17 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe17 <= 1'b0;
		else if  (clken == 1'b1)   dffe17 <= w_sum_node10w[27];
	// synopsys translate_off
	initial
		dffe18 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe18 <= 1'b0;
		else if  (clken == 1'b1)   dffe18 <= w_sum_node10w[9];
	// synopsys translate_off
	initial
		dffe19 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe19 <= 1'b0;
		else if  (clken == 1'b1)   dffe19 <= w_sum_node10w[28];
	// synopsys translate_off
	initial
		dffe2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe2 <= 1'b0;
		else if  (clken == 1'b1)   dffe2 <= w_sum_node10w[0];
	// synopsys translate_off
	initial
		dffe20 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe20 <= 1'b0;
		else if  (clken == 1'b1)   dffe20 <= w_sum_node10w[10];
	// synopsys translate_off
	initial
		dffe21 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe21 <= 1'b0;
		else if  (clken == 1'b1)   dffe21 <= w_sum_node10w[29];
	// synopsys translate_off
	initial
		dffe22 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe22 <= 1'b0;
		else if  (clken == 1'b1)   dffe22 <= w_sum_node10w[11];
	// synopsys translate_off
	initial
		dffe23 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe23 <= 1'b0;
		else if  (clken == 1'b1)   dffe23 <= w_sum_node10w[30];
	// synopsys translate_off
	initial
		dffe24 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe24 <= 1'b0;
		else if  (clken == 1'b1)   dffe24 <= w_sum_node10w[12];
	// synopsys translate_off
	initial
		dffe25 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe25 <= 1'b0;
		else if  (clken == 1'b1)   dffe25 <= w_sum_node10w[31];
	// synopsys translate_off
	initial
		dffe26 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe26 <= 1'b0;
		else if  (clken == 1'b1)   dffe26 <= w_sum_node10w[13];
	// synopsys translate_off
	initial
		dffe27 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe27 <= 1'b0;
		else if  (clken == 1'b1)   dffe27 <= w_sum_node10w[32];
	// synopsys translate_off
	initial
		dffe28 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe28 <= 1'b0;
		else if  (clken == 1'b1)   dffe28 <= w_sum_node10w[14];
	// synopsys translate_off
	initial
		dffe29 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe29 <= 1'b0;
		else if  (clken == 1'b1)   dffe29 <= w_sum_node10w[33];
	// synopsys translate_off
	initial
		dffe3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe3 <= 1'b0;
		else if  (clken == 1'b1)   dffe3 <= w_sum_node10w[1];
	// synopsys translate_off
	initial
		dffe30 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe30 <= 1'b0;
		else if  (clken == 1'b1)   dffe30 <= w_sum_node10w[15];
	// synopsys translate_off
	initial
		dffe31 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe31 <= 1'b0;
		else if  (clken == 1'b1)   dffe31 <= w_sum_node10w[34];
	// synopsys translate_off
	initial
		dffe32 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe32 <= 1'b0;
		else if  (clken == 1'b1)   dffe32 <= w_sum_node10w[16];
	// synopsys translate_off
	initial
		dffe33 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe33 <= 1'b0;
		else if  (clken == 1'b1)   dffe33 <= w_sum_node10w[35];
	// synopsys translate_off
	initial
		dffe34 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe34 <= 1'b0;
		else if  (clken == 1'b1)   dffe34 <= w_sum_node10w[17];
	// synopsys translate_off
	initial
		dffe35 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe35 <= 1'b0;
		else if  (clken == 1'b1)   dffe35 <= w_sum_node10w[36];
	// synopsys translate_off
	initial
		dffe36 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe36 <= 1'b0;
		else if  (clken == 1'b1)   dffe36 <= w_sum_node10w[18];
	// synopsys translate_off
	initial
		dffe37 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe37 <= 1'b0;
		else if  (clken == 1'b1)   dffe37 <= w_sum_node10w[37];
	// synopsys translate_off
	initial
		dffe38 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe38 <= 1'b0;
		else if  (clken == 1'b1)   dffe38 <= w_sum_node10w[19];
	// synopsys translate_off
	initial
		dffe39 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe39 <= 1'b0;
		else if  (clken == 1'b1)   dffe39 <= w_sum_node10w[38];
	// synopsys translate_off
	initial
		dffe4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe4 <= 1'b0;
		else if  (clken == 1'b1)   dffe4 <= w_sum_node10w[2];
	// synopsys translate_off
	initial
		dffe40 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe40 <= 1'b0;
		else if  (clken == 1'b1)   dffe40 <= w_sum_node10w[20];
	// synopsys translate_off
	initial
		dffe41 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe41 <= 1'b0;
		else if  (clken == 1'b1)   dffe41 <= w_sum_node10w[39];
	// synopsys translate_off
	initial
		dffe42 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe42 <= 1'b0;
		else if  (clken == 1'b1)   dffe42 <= w_sum_node10w[40];
	// synopsys translate_off
	initial
		dffe43 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe43 <= 1'b0;
		else if  (clken == 1'b1)   dffe43 <= w_sum_node10w[41];
	// synopsys translate_off
	initial
		dffe5 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe5 <= 1'b0;
		else if  (clken == 1'b1)   dffe5 <= w_sum_node10w[21];
	// synopsys translate_off
	initial
		dffe6 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe6 <= 1'b0;
		else if  (clken == 1'b1)   dffe6 <= w_sum_node10w[3];
	// synopsys translate_off
	initial
		dffe7 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe7 <= 1'b0;
		else if  (clken == 1'b1)   dffe7 <= w_sum_node10w[22];
	// synopsys translate_off
	initial
		dffe8 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe8 <= 1'b0;
		else if  (clken == 1'b1)   dffe8 <= w_sum_node10w[4];
	// synopsys translate_off
	initial
		dffe9 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe9 <= 1'b0;
		else if  (clken == 1'b1)   dffe9 <= w_sum_node10w[23];
	assign
		wire_sum_adder1aa_0result = wire_sum_adder1aa_0dataa + wire_sum_adder1aa_0datab;
	assign
		wire_sum_adder1aa_0dataa = {1'b0, w_decoder_node9w[37:19]},
		wire_sum_adder1aa_0datab = {{2{1'b0}}, w_decoder_node9w[18:1]};
	assign
		wire_sum_adder1aa_1result = wire_sum_adder1aa_1dataa + wire_sum_adder1aa_1datab;
	assign
		wire_sum_adder1aa_1dataa = {1'b0, w_decoder_node9w[75:57]},
		wire_sum_adder1aa_1datab = {{2{1'b0}}, w_decoder_node9w[56:39]};
	soft   sft45a_0
	( 
	.in(wire_sft45a_in[0:0]),
	.out(wire_sft45a_out[0:0]));
	soft   sft45a_1
	( 
	.in(wire_sft45a_in[1:1]),
	.out(wire_sft45a_out[1:1]));
	soft   sft45a_2
	( 
	.in(wire_sft45a_in[2:2]),
	.out(wire_sft45a_out[2:2]));
	soft   sft45a_3
	( 
	.in(wire_sft45a_in[3:3]),
	.out(wire_sft45a_out[3:3]));
	soft   sft45a_4
	( 
	.in(wire_sft45a_in[4:4]),
	.out(wire_sft45a_out[4:4]));
	soft   sft45a_5
	( 
	.in(wire_sft45a_in[5:5]),
	.out(wire_sft45a_out[5:5]));
	soft   sft45a_6
	( 
	.in(wire_sft45a_in[6:6]),
	.out(wire_sft45a_out[6:6]));
	soft   sft45a_7
	( 
	.in(wire_sft45a_in[7:7]),
	.out(wire_sft45a_out[7:7]));
	soft   sft45a_8
	( 
	.in(wire_sft45a_in[8:8]),
	.out(wire_sft45a_out[8:8]));
	soft   sft45a_9
	( 
	.in(wire_sft45a_in[9:9]),
	.out(wire_sft45a_out[9:9]));
	soft   sft45a_10
	( 
	.in(wire_sft45a_in[10:10]),
	.out(wire_sft45a_out[10:10]));
	soft   sft45a_11
	( 
	.in(wire_sft45a_in[11:11]),
	.out(wire_sft45a_out[11:11]));
	soft   sft45a_12
	( 
	.in(wire_sft45a_in[12:12]),
	.out(wire_sft45a_out[12:12]));
	soft   sft45a_13
	( 
	.in(wire_sft45a_in[13:13]),
	.out(wire_sft45a_out[13:13]));
	soft   sft45a_14
	( 
	.in(wire_sft45a_in[14:14]),
	.out(wire_sft45a_out[14:14]));
	soft   sft45a_15
	( 
	.in(wire_sft45a_in[15:15]),
	.out(wire_sft45a_out[15:15]));
	soft   sft45a_16
	( 
	.in(wire_sft45a_in[16:16]),
	.out(wire_sft45a_out[16:16]));
	soft   sft45a_17
	( 
	.in(wire_sft45a_in[17:17]),
	.out(wire_sft45a_out[17:17]));
	soft   sft45a_18
	( 
	.in(wire_sft45a_in[18:18]),
	.out(wire_sft45a_out[18:18]));
	soft   sft45a_19
	( 
	.in(wire_sft45a_in[19:19]),
	.out(wire_sft45a_out[19:19]));
	soft   sft45a_20
	( 
	.in(wire_sft45a_in[20:20]),
	.out(wire_sft45a_out[20:20]));
	soft   sft45a_21
	( 
	.in(wire_sft45a_in[21:21]),
	.out(wire_sft45a_out[21:21]));
	assign
		wire_sft45a_in = {w126w, {dffe43, {dffe42, {dffe40, {dffe38, {dffe36, {dffe34, {dffe32, {dffe30, {dffe28, {dffe26, {dffe24, {dffe22, {dffe20, {dffe18, {dffe16, {dffe14, {dffe12, {dffe10, {dffe8, {dffe6, dffe4}}}}}}}}}}}}}}}}}}}}};
	soft   sft46a_0
	( 
	.in(wire_sft46a_in[0:0]),
	.out(wire_sft46a_out[0:0]));
	soft   sft46a_1
	( 
	.in(wire_sft46a_in[1:1]),
	.out(wire_sft46a_out[1:1]));
	soft   sft46a_2
	( 
	.in(wire_sft46a_in[2:2]),
	.out(wire_sft46a_out[2:2]));
	soft   sft46a_3
	( 
	.in(wire_sft46a_in[3:3]),
	.out(wire_sft46a_out[3:3]));
	soft   sft46a_4
	( 
	.in(wire_sft46a_in[4:4]),
	.out(wire_sft46a_out[4:4]));
	soft   sft46a_5
	( 
	.in(wire_sft46a_in[5:5]),
	.out(wire_sft46a_out[5:5]));
	soft   sft46a_6
	( 
	.in(wire_sft46a_in[6:6]),
	.out(wire_sft46a_out[6:6]));
	soft   sft46a_7
	( 
	.in(wire_sft46a_in[7:7]),
	.out(wire_sft46a_out[7:7]));
	soft   sft46a_8
	( 
	.in(wire_sft46a_in[8:8]),
	.out(wire_sft46a_out[8:8]));
	soft   sft46a_9
	( 
	.in(wire_sft46a_in[9:9]),
	.out(wire_sft46a_out[9:9]));
	soft   sft46a_10
	( 
	.in(wire_sft46a_in[10:10]),
	.out(wire_sft46a_out[10:10]));
	soft   sft46a_11
	( 
	.in(wire_sft46a_in[11:11]),
	.out(wire_sft46a_out[11:11]));
	soft   sft46a_12
	( 
	.in(wire_sft46a_in[12:12]),
	.out(wire_sft46a_out[12:12]));
	soft   sft46a_13
	( 
	.in(wire_sft46a_in[13:13]),
	.out(wire_sft46a_out[13:13]));
	soft   sft46a_14
	( 
	.in(wire_sft46a_in[14:14]),
	.out(wire_sft46a_out[14:14]));
	soft   sft46a_15
	( 
	.in(wire_sft46a_in[15:15]),
	.out(wire_sft46a_out[15:15]));
	soft   sft46a_16
	( 
	.in(wire_sft46a_in[16:16]),
	.out(wire_sft46a_out[16:16]));
	soft   sft46a_17
	( 
	.in(wire_sft46a_in[17:17]),
	.out(wire_sft46a_out[17:17]));
	soft   sft46a_18
	( 
	.in(wire_sft46a_in[18:18]),
	.out(wire_sft46a_out[18:18]));
	soft   sft46a_19
	( 
	.in(wire_sft46a_in[19:19]),
	.out(wire_sft46a_out[19:19]));
	soft   sft46a_20
	( 
	.in(wire_sft46a_in[20:20]),
	.out(wire_sft46a_out[20:20]));
	soft   sft46a_21
	( 
	.in(wire_sft46a_in[21:21]),
	.out(wire_sft46a_out[21:21]));
	assign
		wire_sft46a_in = {w126w, {w126w, {w126w, {dffe41, {dffe39, {dffe37, {dffe35, {dffe33, {dffe31, {dffe29, {dffe27, {dffe25, {dffe23, {dffe21, {dffe19, {dffe17, {dffe15, {dffe13, {dffe11, {dffe9, {dffe7, dffe5}}}}}}}}}}}}}}}}}}}}};
	soft   sft47a_0
	( 
	.in(wire_sft47a_in[0:0]),
	.out(wire_sft47a_out[0:0]));
	soft   sft47a_1
	( 
	.in(wire_sft47a_in[1:1]),
	.out(wire_sft47a_out[1:1]));
	soft   sft47a_2
	( 
	.in(wire_sft47a_in[2:2]),
	.out(wire_sft47a_out[2:2]));
	soft   sft47a_3
	( 
	.in(wire_sft47a_in[3:3]),
	.out(wire_sft47a_out[3:3]));
	soft   sft47a_4
	( 
	.in(wire_sft47a_in[4:4]),
	.out(wire_sft47a_out[4:4]));
	soft   sft47a_5
	( 
	.in(wire_sft47a_in[5:5]),
	.out(wire_sft47a_out[5:5]));
	soft   sft47a_6
	( 
	.in(wire_sft47a_in[6:6]),
	.out(wire_sft47a_out[6:6]));
	soft   sft47a_7
	( 
	.in(wire_sft47a_in[7:7]),
	.out(wire_sft47a_out[7:7]));
	soft   sft47a_8
	( 
	.in(wire_sft47a_in[8:8]),
	.out(wire_sft47a_out[8:8]));
	soft   sft47a_9
	( 
	.in(wire_sft47a_in[9:9]),
	.out(wire_sft47a_out[9:9]));
	soft   sft47a_10
	( 
	.in(wire_sft47a_in[10:10]),
	.out(wire_sft47a_out[10:10]));
	soft   sft47a_11
	( 
	.in(wire_sft47a_in[11:11]),
	.out(wire_sft47a_out[11:11]));
	soft   sft47a_12
	( 
	.in(wire_sft47a_in[12:12]),
	.out(wire_sft47a_out[12:12]));
	soft   sft47a_13
	( 
	.in(wire_sft47a_in[13:13]),
	.out(wire_sft47a_out[13:13]));
	soft   sft47a_14
	( 
	.in(wire_sft47a_in[14:14]),
	.out(wire_sft47a_out[14:14]));
	soft   sft47a_15
	( 
	.in(wire_sft47a_in[15:15]),
	.out(wire_sft47a_out[15:15]));
	soft   sft47a_16
	( 
	.in(wire_sft47a_in[16:16]),
	.out(wire_sft47a_out[16:16]));
	soft   sft47a_17
	( 
	.in(wire_sft47a_in[17:17]),
	.out(wire_sft47a_out[17:17]));
	soft   sft47a_18
	( 
	.in(wire_sft47a_in[18:18]),
	.out(wire_sft47a_out[18:18]));
	soft   sft47a_19
	( 
	.in(wire_sft47a_in[19:19]),
	.out(wire_sft47a_out[19:19]));
	soft   sft47a_20
	( 
	.in(wire_sft47a_in[20:20]),
	.out(wire_sft47a_out[20:20]));
	soft   sft47a_21
	( 
	.in(wire_sft47a_in[21:21]),
	.out(wire_sft47a_out[21:21]));
	assign
		wire_sft47a_in = {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {w126w, {2{w126w}}}}}}}}}}}}}}}}}}}}}};
	soft   sft48a_0
	( 
	.in(wire_sft48a_in[0:0]),
	.out(wire_sft48a_out[0:0]));
	soft   sft48a_1
	( 
	.in(wire_sft48a_in[1:1]),
	.out(wire_sft48a_out[1:1]));
	soft   sft48a_2
	( 
	.in(wire_sft48a_in[2:2]),
	.out(wire_sft48a_out[2:2]));
	soft   sft48a_3
	( 
	.in(wire_sft48a_in[3:3]),
	.out(wire_sft48a_out[3:3]));
	soft   sft48a_4
	( 
	.in(wire_sft48a_in[4:4]),
	.out(wire_sft48a_out[4:4]));
	soft   sft48a_5
	( 
	.in(wire_sft48a_in[5:5]),
	.out(wire_sft48a_out[5:5]));
	soft   sft48a_6
	( 
	.in(wire_sft48a_in[6:6]),
	.out(wire_sft48a_out[6:6]));
	soft   sft48a_7
	( 
	.in(wire_sft48a_in[7:7]),
	.out(wire_sft48a_out[7:7]));
	soft   sft48a_8
	( 
	.in(wire_sft48a_in[8:8]),
	.out(wire_sft48a_out[8:8]));
	soft   sft48a_9
	( 
	.in(wire_sft48a_in[9:9]),
	.out(wire_sft48a_out[9:9]));
	soft   sft48a_10
	( 
	.in(wire_sft48a_in[10:10]),
	.out(wire_sft48a_out[10:10]));
	soft   sft48a_11
	( 
	.in(wire_sft48a_in[11:11]),
	.out(wire_sft48a_out[11:11]));
	soft   sft48a_12
	( 
	.in(wire_sft48a_in[12:12]),
	.out(wire_sft48a_out[12:12]));
	soft   sft48a_13
	( 
	.in(wire_sft48a_in[13:13]),
	.out(wire_sft48a_out[13:13]));
	soft   sft48a_14
	( 
	.in(wire_sft48a_in[14:14]),
	.out(wire_sft48a_out[14:14]));
	soft   sft48a_15
	( 
	.in(wire_sft48a_in[15:15]),
	.out(wire_sft48a_out[15:15]));
	soft   sft48a_16
	( 
	.in(wire_sft48a_in[16:16]),
	.out(wire_sft48a_out[16:16]));
	soft   sft48a_17
	( 
	.in(wire_sft48a_in[17:17]),
	.out(wire_sft48a_out[17:17]));
	soft   sft48a_18
	( 
	.in(wire_sft48a_in[18:18]),
	.out(wire_sft48a_out[18:18]));
	soft   sft48a_19
	( 
	.in(wire_sft48a_in[19:19]),
	.out(wire_sft48a_out[19:19]));
	soft   sft48a_20
	( 
	.in(wire_sft48a_in[20:20]),
	.out(wire_sft48a_out[20:20]));
	soft   sft48a_21
	( 
	.in(wire_sft48a_in[21:21]),
	.out(wire_sft48a_out[21:21]));
	assign
		wire_sft48a_in = wire_add44_result;
	assign
		dataa_node = {datab[18:0]},
		datab_node = {dataa[3:0]},
		final_result_node = {w212w[22:0]},
		result = {final_result_node[22:0]},
		w126w = 1'b0,
		w212w = {wire_sft48a_out[21:20], wire_sft48a_out[19:18], wire_sft48a_out[17:16], wire_sft48a_out[15:14], wire_sft48a_out[13:12], wire_sft48a_out[11:10], wire_sft48a_out[9:8], wire_sft48a_out[7:6], wire_sft48a_out[5:4], wire_sft48a_out[3:2], wire_sft48a_out[1:0], dffe3, dffe2},
		w_decoder_node9w = {({dataa_node[18:0]} & {19{w_le_datab_node8w[3]}}), ({dataa_node[18:0]} & {19{w_le_datab_node8w[2]}}), ({dataa_node[18:0]} & {19{w_le_datab_node8w[1]}}), ({dataa_node[18:0]} & {19{w_le_datab_node8w[0]}})},
		w_le_datab_node8w = {datab_node[3:0]},
		w_sum_node10w = {wire_sum_adder1aa_1result[19:0], w_decoder_node9w[38], wire_sum_adder1aa_0result[19:0], w_decoder_node9w[0]};
endmodule //mult_rgo
//VALID FILE
