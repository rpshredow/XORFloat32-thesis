//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" LPM_PIPELINE=1 LPM_REPRESENTATION="UNSIGNED" LPM_WIDTHA=4 LPM_WIDTHB=25 LPM_WIDTHP=29 aclr clken clock dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
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




//adder CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" WIDTH=28 dataa datab datac result
//VERSION_BEGIN 18.1 cbx_mgl 2018:09:12:14:15:07:SJ cbx_stratixii 2018:09:12:13:04:09:SJ cbx_util_mgl 2018:09:12:13:04:09:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=26 dataa datab result
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:09:SJ cbx_lpm_add_sub 2018:09:12:13:04:09:SJ cbx_mgl 2018:09:12:14:15:07:SJ cbx_nadder 2018:09:12:13:04:09:SJ cbx_stratix 2018:09:12:13:04:09:SJ cbx_stratixii 2018:09:12:13:04:09:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=26 dataa datab result
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:09:SJ cbx_lpm_add_sub 2018:09:12:13:04:09:SJ cbx_mgl 2018:09:12:14:15:07:SJ cbx_nadder 2018:09:12:13:04:09:SJ cbx_stratix 2018:09:12:13:04:09:SJ cbx_stratixii 2018:09:12:13:04:09:SJ  VERSION_END

//synthesis_resources = lut 108 reg 54 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_ugo
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
	input   [24:0]  datab;
	output   [28:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clken;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	[27:0]	wire_add56_result;
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
	reg	dffe44;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe45;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe46;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe47;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe48;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe49;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe5;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe50;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe51;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe52;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe53;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe54;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe55;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe6;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe7;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe8;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe9;
	wire	[25:0]	wire_sum_adder1aa_0dataa;
	wire	[25:0]	wire_sum_adder1aa_0datab;
	wire	[25:0]	wire_sum_adder1aa_0result;
	wire	[25:0]	wire_sum_adder1aa_1dataa;
	wire	[25:0]	wire_sum_adder1aa_1datab;
	wire	[25:0]	wire_sum_adder1aa_1result;
	wire  [27:0]   wire_sft57a_in;
	wire  [27:0]   wire_sft57a_out;
	wire  [27:0]   wire_sft58a_in;
	wire  [27:0]   wire_sft58a_out;
	wire  [27:0]   wire_sft59a_in;
	wire  [27:0]   wire_sft59a_out;
	wire  [27:0]   wire_sft60a_in;
	wire  [27:0]   wire_sft60a_out;
	wire  [24:0]  dataa_node;
	wire  [3:0]  datab_node;
	wire  [28:0]  final_result_node;
	wire  w144w;
	wire  [29:0]  w254w;
	wire  [99:0]  w_decoder_node9w;
	wire  [3:0]  w_le_datab_node8w;
	wire  [53:0]  w_sum_node10w;

	assign
		wire_add56_result = wire_sft57a_out + wire_sft58a_out + wire_sft59a_out;
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
		else if  (clken == 1'b1)   dffe11 <= w_sum_node10w[30];
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
		else if  (clken == 1'b1)   dffe13 <= w_sum_node10w[31];
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
		else if  (clken == 1'b1)   dffe15 <= w_sum_node10w[32];
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
		else if  (clken == 1'b1)   dffe17 <= w_sum_node10w[33];
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
		else if  (clken == 1'b1)   dffe19 <= w_sum_node10w[34];
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
		else if  (clken == 1'b1)   dffe21 <= w_sum_node10w[35];
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
		else if  (clken == 1'b1)   dffe23 <= w_sum_node10w[36];
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
		else if  (clken == 1'b1)   dffe25 <= w_sum_node10w[37];
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
		else if  (clken == 1'b1)   dffe27 <= w_sum_node10w[38];
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
		else if  (clken == 1'b1)   dffe29 <= w_sum_node10w[39];
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
		else if  (clken == 1'b1)   dffe31 <= w_sum_node10w[40];
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
		else if  (clken == 1'b1)   dffe33 <= w_sum_node10w[41];
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
		else if  (clken == 1'b1)   dffe35 <= w_sum_node10w[42];
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
		else if  (clken == 1'b1)   dffe37 <= w_sum_node10w[43];
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
		else if  (clken == 1'b1)   dffe39 <= w_sum_node10w[44];
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
		else if  (clken == 1'b1)   dffe41 <= w_sum_node10w[45];
	// synopsys translate_off
	initial
		dffe42 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe42 <= 1'b0;
		else if  (clken == 1'b1)   dffe42 <= w_sum_node10w[21];
	// synopsys translate_off
	initial
		dffe43 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe43 <= 1'b0;
		else if  (clken == 1'b1)   dffe43 <= w_sum_node10w[46];
	// synopsys translate_off
	initial
		dffe44 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe44 <= 1'b0;
		else if  (clken == 1'b1)   dffe44 <= w_sum_node10w[22];
	// synopsys translate_off
	initial
		dffe45 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe45 <= 1'b0;
		else if  (clken == 1'b1)   dffe45 <= w_sum_node10w[47];
	// synopsys translate_off
	initial
		dffe46 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe46 <= 1'b0;
		else if  (clken == 1'b1)   dffe46 <= w_sum_node10w[23];
	// synopsys translate_off
	initial
		dffe47 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe47 <= 1'b0;
		else if  (clken == 1'b1)   dffe47 <= w_sum_node10w[48];
	// synopsys translate_off
	initial
		dffe48 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe48 <= 1'b0;
		else if  (clken == 1'b1)   dffe48 <= w_sum_node10w[24];
	// synopsys translate_off
	initial
		dffe49 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe49 <= 1'b0;
		else if  (clken == 1'b1)   dffe49 <= w_sum_node10w[49];
	// synopsys translate_off
	initial
		dffe5 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe5 <= 1'b0;
		else if  (clken == 1'b1)   dffe5 <= w_sum_node10w[27];
	// synopsys translate_off
	initial
		dffe50 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe50 <= 1'b0;
		else if  (clken == 1'b1)   dffe50 <= w_sum_node10w[25];
	// synopsys translate_off
	initial
		dffe51 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe51 <= 1'b0;
		else if  (clken == 1'b1)   dffe51 <= w_sum_node10w[50];
	// synopsys translate_off
	initial
		dffe52 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe52 <= 1'b0;
		else if  (clken == 1'b1)   dffe52 <= w_sum_node10w[26];
	// synopsys translate_off
	initial
		dffe53 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe53 <= 1'b0;
		else if  (clken == 1'b1)   dffe53 <= w_sum_node10w[51];
	// synopsys translate_off
	initial
		dffe54 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe54 <= 1'b0;
		else if  (clken == 1'b1)   dffe54 <= w_sum_node10w[52];
	// synopsys translate_off
	initial
		dffe55 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe55 <= 1'b0;
		else if  (clken == 1'b1)   dffe55 <= w_sum_node10w[53];
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
		else if  (clken == 1'b1)   dffe7 <= w_sum_node10w[28];
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
		else if  (clken == 1'b1)   dffe9 <= w_sum_node10w[29];
	assign
		wire_sum_adder1aa_0result = wire_sum_adder1aa_0dataa + wire_sum_adder1aa_0datab;
	assign
		wire_sum_adder1aa_0dataa = {1'b0, w_decoder_node9w[49:25]},
		wire_sum_adder1aa_0datab = {{2{1'b0}}, w_decoder_node9w[24:1]};
	assign
		wire_sum_adder1aa_1result = wire_sum_adder1aa_1dataa + wire_sum_adder1aa_1datab;
	assign
		wire_sum_adder1aa_1dataa = {1'b0, w_decoder_node9w[99:75]},
		wire_sum_adder1aa_1datab = {{2{1'b0}}, w_decoder_node9w[74:51]};
	soft   sft57a_0
	( 
	.in(wire_sft57a_in[0:0]),
	.out(wire_sft57a_out[0:0]));
	soft   sft57a_1
	( 
	.in(wire_sft57a_in[1:1]),
	.out(wire_sft57a_out[1:1]));
	soft   sft57a_2
	( 
	.in(wire_sft57a_in[2:2]),
	.out(wire_sft57a_out[2:2]));
	soft   sft57a_3
	( 
	.in(wire_sft57a_in[3:3]),
	.out(wire_sft57a_out[3:3]));
	soft   sft57a_4
	( 
	.in(wire_sft57a_in[4:4]),
	.out(wire_sft57a_out[4:4]));
	soft   sft57a_5
	( 
	.in(wire_sft57a_in[5:5]),
	.out(wire_sft57a_out[5:5]));
	soft   sft57a_6
	( 
	.in(wire_sft57a_in[6:6]),
	.out(wire_sft57a_out[6:6]));
	soft   sft57a_7
	( 
	.in(wire_sft57a_in[7:7]),
	.out(wire_sft57a_out[7:7]));
	soft   sft57a_8
	( 
	.in(wire_sft57a_in[8:8]),
	.out(wire_sft57a_out[8:8]));
	soft   sft57a_9
	( 
	.in(wire_sft57a_in[9:9]),
	.out(wire_sft57a_out[9:9]));
	soft   sft57a_10
	( 
	.in(wire_sft57a_in[10:10]),
	.out(wire_sft57a_out[10:10]));
	soft   sft57a_11
	( 
	.in(wire_sft57a_in[11:11]),
	.out(wire_sft57a_out[11:11]));
	soft   sft57a_12
	( 
	.in(wire_sft57a_in[12:12]),
	.out(wire_sft57a_out[12:12]));
	soft   sft57a_13
	( 
	.in(wire_sft57a_in[13:13]),
	.out(wire_sft57a_out[13:13]));
	soft   sft57a_14
	( 
	.in(wire_sft57a_in[14:14]),
	.out(wire_sft57a_out[14:14]));
	soft   sft57a_15
	( 
	.in(wire_sft57a_in[15:15]),
	.out(wire_sft57a_out[15:15]));
	soft   sft57a_16
	( 
	.in(wire_sft57a_in[16:16]),
	.out(wire_sft57a_out[16:16]));
	soft   sft57a_17
	( 
	.in(wire_sft57a_in[17:17]),
	.out(wire_sft57a_out[17:17]));
	soft   sft57a_18
	( 
	.in(wire_sft57a_in[18:18]),
	.out(wire_sft57a_out[18:18]));
	soft   sft57a_19
	( 
	.in(wire_sft57a_in[19:19]),
	.out(wire_sft57a_out[19:19]));
	soft   sft57a_20
	( 
	.in(wire_sft57a_in[20:20]),
	.out(wire_sft57a_out[20:20]));
	soft   sft57a_21
	( 
	.in(wire_sft57a_in[21:21]),
	.out(wire_sft57a_out[21:21]));
	soft   sft57a_22
	( 
	.in(wire_sft57a_in[22:22]),
	.out(wire_sft57a_out[22:22]));
	soft   sft57a_23
	( 
	.in(wire_sft57a_in[23:23]),
	.out(wire_sft57a_out[23:23]));
	soft   sft57a_24
	( 
	.in(wire_sft57a_in[24:24]),
	.out(wire_sft57a_out[24:24]));
	soft   sft57a_25
	( 
	.in(wire_sft57a_in[25:25]),
	.out(wire_sft57a_out[25:25]));
	soft   sft57a_26
	( 
	.in(wire_sft57a_in[26:26]),
	.out(wire_sft57a_out[26:26]));
	soft   sft57a_27
	( 
	.in(wire_sft57a_in[27:27]),
	.out(wire_sft57a_out[27:27]));
	assign
		wire_sft57a_in = {w144w, {dffe55, {dffe54, {dffe52, {dffe50, {dffe48, {dffe46, {dffe44, {dffe42, {dffe40, {dffe38, {dffe36, {dffe34, {dffe32, {dffe30, {dffe28, {dffe26, {dffe24, {dffe22, {dffe20, {dffe18, {dffe16, {dffe14, {dffe12, {dffe10, {dffe8, {dffe6, dffe4}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft58a_0
	( 
	.in(wire_sft58a_in[0:0]),
	.out(wire_sft58a_out[0:0]));
	soft   sft58a_1
	( 
	.in(wire_sft58a_in[1:1]),
	.out(wire_sft58a_out[1:1]));
	soft   sft58a_2
	( 
	.in(wire_sft58a_in[2:2]),
	.out(wire_sft58a_out[2:2]));
	soft   sft58a_3
	( 
	.in(wire_sft58a_in[3:3]),
	.out(wire_sft58a_out[3:3]));
	soft   sft58a_4
	( 
	.in(wire_sft58a_in[4:4]),
	.out(wire_sft58a_out[4:4]));
	soft   sft58a_5
	( 
	.in(wire_sft58a_in[5:5]),
	.out(wire_sft58a_out[5:5]));
	soft   sft58a_6
	( 
	.in(wire_sft58a_in[6:6]),
	.out(wire_sft58a_out[6:6]));
	soft   sft58a_7
	( 
	.in(wire_sft58a_in[7:7]),
	.out(wire_sft58a_out[7:7]));
	soft   sft58a_8
	( 
	.in(wire_sft58a_in[8:8]),
	.out(wire_sft58a_out[8:8]));
	soft   sft58a_9
	( 
	.in(wire_sft58a_in[9:9]),
	.out(wire_sft58a_out[9:9]));
	soft   sft58a_10
	( 
	.in(wire_sft58a_in[10:10]),
	.out(wire_sft58a_out[10:10]));
	soft   sft58a_11
	( 
	.in(wire_sft58a_in[11:11]),
	.out(wire_sft58a_out[11:11]));
	soft   sft58a_12
	( 
	.in(wire_sft58a_in[12:12]),
	.out(wire_sft58a_out[12:12]));
	soft   sft58a_13
	( 
	.in(wire_sft58a_in[13:13]),
	.out(wire_sft58a_out[13:13]));
	soft   sft58a_14
	( 
	.in(wire_sft58a_in[14:14]),
	.out(wire_sft58a_out[14:14]));
	soft   sft58a_15
	( 
	.in(wire_sft58a_in[15:15]),
	.out(wire_sft58a_out[15:15]));
	soft   sft58a_16
	( 
	.in(wire_sft58a_in[16:16]),
	.out(wire_sft58a_out[16:16]));
	soft   sft58a_17
	( 
	.in(wire_sft58a_in[17:17]),
	.out(wire_sft58a_out[17:17]));
	soft   sft58a_18
	( 
	.in(wire_sft58a_in[18:18]),
	.out(wire_sft58a_out[18:18]));
	soft   sft58a_19
	( 
	.in(wire_sft58a_in[19:19]),
	.out(wire_sft58a_out[19:19]));
	soft   sft58a_20
	( 
	.in(wire_sft58a_in[20:20]),
	.out(wire_sft58a_out[20:20]));
	soft   sft58a_21
	( 
	.in(wire_sft58a_in[21:21]),
	.out(wire_sft58a_out[21:21]));
	soft   sft58a_22
	( 
	.in(wire_sft58a_in[22:22]),
	.out(wire_sft58a_out[22:22]));
	soft   sft58a_23
	( 
	.in(wire_sft58a_in[23:23]),
	.out(wire_sft58a_out[23:23]));
	soft   sft58a_24
	( 
	.in(wire_sft58a_in[24:24]),
	.out(wire_sft58a_out[24:24]));
	soft   sft58a_25
	( 
	.in(wire_sft58a_in[25:25]),
	.out(wire_sft58a_out[25:25]));
	soft   sft58a_26
	( 
	.in(wire_sft58a_in[26:26]),
	.out(wire_sft58a_out[26:26]));
	soft   sft58a_27
	( 
	.in(wire_sft58a_in[27:27]),
	.out(wire_sft58a_out[27:27]));
	assign
		wire_sft58a_in = {w144w, {w144w, {w144w, {dffe53, {dffe51, {dffe49, {dffe47, {dffe45, {dffe43, {dffe41, {dffe39, {dffe37, {dffe35, {dffe33, {dffe31, {dffe29, {dffe27, {dffe25, {dffe23, {dffe21, {dffe19, {dffe17, {dffe15, {dffe13, {dffe11, {dffe9, {dffe7, dffe5}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft59a_0
	( 
	.in(wire_sft59a_in[0:0]),
	.out(wire_sft59a_out[0:0]));
	soft   sft59a_1
	( 
	.in(wire_sft59a_in[1:1]),
	.out(wire_sft59a_out[1:1]));
	soft   sft59a_2
	( 
	.in(wire_sft59a_in[2:2]),
	.out(wire_sft59a_out[2:2]));
	soft   sft59a_3
	( 
	.in(wire_sft59a_in[3:3]),
	.out(wire_sft59a_out[3:3]));
	soft   sft59a_4
	( 
	.in(wire_sft59a_in[4:4]),
	.out(wire_sft59a_out[4:4]));
	soft   sft59a_5
	( 
	.in(wire_sft59a_in[5:5]),
	.out(wire_sft59a_out[5:5]));
	soft   sft59a_6
	( 
	.in(wire_sft59a_in[6:6]),
	.out(wire_sft59a_out[6:6]));
	soft   sft59a_7
	( 
	.in(wire_sft59a_in[7:7]),
	.out(wire_sft59a_out[7:7]));
	soft   sft59a_8
	( 
	.in(wire_sft59a_in[8:8]),
	.out(wire_sft59a_out[8:8]));
	soft   sft59a_9
	( 
	.in(wire_sft59a_in[9:9]),
	.out(wire_sft59a_out[9:9]));
	soft   sft59a_10
	( 
	.in(wire_sft59a_in[10:10]),
	.out(wire_sft59a_out[10:10]));
	soft   sft59a_11
	( 
	.in(wire_sft59a_in[11:11]),
	.out(wire_sft59a_out[11:11]));
	soft   sft59a_12
	( 
	.in(wire_sft59a_in[12:12]),
	.out(wire_sft59a_out[12:12]));
	soft   sft59a_13
	( 
	.in(wire_sft59a_in[13:13]),
	.out(wire_sft59a_out[13:13]));
	soft   sft59a_14
	( 
	.in(wire_sft59a_in[14:14]),
	.out(wire_sft59a_out[14:14]));
	soft   sft59a_15
	( 
	.in(wire_sft59a_in[15:15]),
	.out(wire_sft59a_out[15:15]));
	soft   sft59a_16
	( 
	.in(wire_sft59a_in[16:16]),
	.out(wire_sft59a_out[16:16]));
	soft   sft59a_17
	( 
	.in(wire_sft59a_in[17:17]),
	.out(wire_sft59a_out[17:17]));
	soft   sft59a_18
	( 
	.in(wire_sft59a_in[18:18]),
	.out(wire_sft59a_out[18:18]));
	soft   sft59a_19
	( 
	.in(wire_sft59a_in[19:19]),
	.out(wire_sft59a_out[19:19]));
	soft   sft59a_20
	( 
	.in(wire_sft59a_in[20:20]),
	.out(wire_sft59a_out[20:20]));
	soft   sft59a_21
	( 
	.in(wire_sft59a_in[21:21]),
	.out(wire_sft59a_out[21:21]));
	soft   sft59a_22
	( 
	.in(wire_sft59a_in[22:22]),
	.out(wire_sft59a_out[22:22]));
	soft   sft59a_23
	( 
	.in(wire_sft59a_in[23:23]),
	.out(wire_sft59a_out[23:23]));
	soft   sft59a_24
	( 
	.in(wire_sft59a_in[24:24]),
	.out(wire_sft59a_out[24:24]));
	soft   sft59a_25
	( 
	.in(wire_sft59a_in[25:25]),
	.out(wire_sft59a_out[25:25]));
	soft   sft59a_26
	( 
	.in(wire_sft59a_in[26:26]),
	.out(wire_sft59a_out[26:26]));
	soft   sft59a_27
	( 
	.in(wire_sft59a_in[27:27]),
	.out(wire_sft59a_out[27:27]));
	assign
		wire_sft59a_in = {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {w144w, {2{w144w}}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft60a_0
	( 
	.in(wire_sft60a_in[0:0]),
	.out(wire_sft60a_out[0:0]));
	soft   sft60a_1
	( 
	.in(wire_sft60a_in[1:1]),
	.out(wire_sft60a_out[1:1]));
	soft   sft60a_2
	( 
	.in(wire_sft60a_in[2:2]),
	.out(wire_sft60a_out[2:2]));
	soft   sft60a_3
	( 
	.in(wire_sft60a_in[3:3]),
	.out(wire_sft60a_out[3:3]));
	soft   sft60a_4
	( 
	.in(wire_sft60a_in[4:4]),
	.out(wire_sft60a_out[4:4]));
	soft   sft60a_5
	( 
	.in(wire_sft60a_in[5:5]),
	.out(wire_sft60a_out[5:5]));
	soft   sft60a_6
	( 
	.in(wire_sft60a_in[6:6]),
	.out(wire_sft60a_out[6:6]));
	soft   sft60a_7
	( 
	.in(wire_sft60a_in[7:7]),
	.out(wire_sft60a_out[7:7]));
	soft   sft60a_8
	( 
	.in(wire_sft60a_in[8:8]),
	.out(wire_sft60a_out[8:8]));
	soft   sft60a_9
	( 
	.in(wire_sft60a_in[9:9]),
	.out(wire_sft60a_out[9:9]));
	soft   sft60a_10
	( 
	.in(wire_sft60a_in[10:10]),
	.out(wire_sft60a_out[10:10]));
	soft   sft60a_11
	( 
	.in(wire_sft60a_in[11:11]),
	.out(wire_sft60a_out[11:11]));
	soft   sft60a_12
	( 
	.in(wire_sft60a_in[12:12]),
	.out(wire_sft60a_out[12:12]));
	soft   sft60a_13
	( 
	.in(wire_sft60a_in[13:13]),
	.out(wire_sft60a_out[13:13]));
	soft   sft60a_14
	( 
	.in(wire_sft60a_in[14:14]),
	.out(wire_sft60a_out[14:14]));
	soft   sft60a_15
	( 
	.in(wire_sft60a_in[15:15]),
	.out(wire_sft60a_out[15:15]));
	soft   sft60a_16
	( 
	.in(wire_sft60a_in[16:16]),
	.out(wire_sft60a_out[16:16]));
	soft   sft60a_17
	( 
	.in(wire_sft60a_in[17:17]),
	.out(wire_sft60a_out[17:17]));
	soft   sft60a_18
	( 
	.in(wire_sft60a_in[18:18]),
	.out(wire_sft60a_out[18:18]));
	soft   sft60a_19
	( 
	.in(wire_sft60a_in[19:19]),
	.out(wire_sft60a_out[19:19]));
	soft   sft60a_20
	( 
	.in(wire_sft60a_in[20:20]),
	.out(wire_sft60a_out[20:20]));
	soft   sft60a_21
	( 
	.in(wire_sft60a_in[21:21]),
	.out(wire_sft60a_out[21:21]));
	soft   sft60a_22
	( 
	.in(wire_sft60a_in[22:22]),
	.out(wire_sft60a_out[22:22]));
	soft   sft60a_23
	( 
	.in(wire_sft60a_in[23:23]),
	.out(wire_sft60a_out[23:23]));
	soft   sft60a_24
	( 
	.in(wire_sft60a_in[24:24]),
	.out(wire_sft60a_out[24:24]));
	soft   sft60a_25
	( 
	.in(wire_sft60a_in[25:25]),
	.out(wire_sft60a_out[25:25]));
	soft   sft60a_26
	( 
	.in(wire_sft60a_in[26:26]),
	.out(wire_sft60a_out[26:26]));
	soft   sft60a_27
	( 
	.in(wire_sft60a_in[27:27]),
	.out(wire_sft60a_out[27:27]));
	assign
		wire_sft60a_in = wire_add56_result;
	assign
		dataa_node = {datab[24:0]},
		datab_node = {dataa[3:0]},
		final_result_node = {w254w[28:0]},
		result = {final_result_node[28:0]},
		w144w = 1'b0,
		w254w = {wire_sft60a_out[27:26], wire_sft60a_out[25:24], wire_sft60a_out[23:22], wire_sft60a_out[21:20], wire_sft60a_out[19:18], wire_sft60a_out[17:16], wire_sft60a_out[15:14], wire_sft60a_out[13:12], wire_sft60a_out[11:10], wire_sft60a_out[9:8], wire_sft60a_out[7:6], wire_sft60a_out[5:4], wire_sft60a_out[3:2], wire_sft60a_out[1:0], dffe3, dffe2},
		w_decoder_node9w = {({dataa_node[24:0]} & {25{w_le_datab_node8w[3]}}), ({dataa_node[24:0]} & {25{w_le_datab_node8w[2]}}), ({dataa_node[24:0]} & {25{w_le_datab_node8w[1]}}), ({dataa_node[24:0]} & {25{w_le_datab_node8w[0]}})},
		w_le_datab_node8w = {datab_node[3:0]},
		w_sum_node10w = {wire_sum_adder1aa_1result[25:0], w_decoder_node9w[50], wire_sum_adder1aa_0result[25:0], w_decoder_node9w[0]};
endmodule //mult_ugo
//VALID FILE
