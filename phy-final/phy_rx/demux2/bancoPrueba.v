`timescale 	1ns				/ 100ps
`include "demux2.v"
`include "synth.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas; 
	wire[7:0] out_synth1, data_out_0, data_out_1, out_synth0, data_in;
	wire reset, clk_2f, valid_in, valid_out_0, valid_out_1, valid_out0_synth, valid_out1_synth;

	demux2 demux(/*AUTOINST*/
		    // Outputs
		    .data_out_0		(data_out_0[7:0]),
		    .data_out_1		(data_out_1[7:0]),
		    .valid_out_0		(valid_out_0),
		    .valid_out_1		(valid_out_1),
		    // Inputs
		    .clk_2f		(clk_2f),
		    .reset		(reset),
		    .data_in		(data_in[7:0]),
		    .valid_in		(valid_in));

	synth synth(/*AUTOINST*/
		    // Outputs
		    .out_synth0		(out_synth0[7:0]),
		    .out_synth1		(out_synth1[7:0]),
		    .valid_out0_synth	(valid_out0_synth),
		    .valid_out1_synth	(valid_out1_synth),
		    // Inputs
		    .clk_2f		(clk_2f),
		    .data_in		(data_in[7:0]),
		    .reset		(reset),
		    .valid_in		(valid_in));
	
	probador probador_(	/*AUTOINST*/
			   // Outputs
			   .clk_2f			(clk_2f),
			   .reset		(reset),
			   .data_in		(data_in[7:0]),
			   .valid_in		(valid_in),
			   // Inputs
			   .data_out_0		(data_out_0[7:0]),
			   .data_out_1		(data_out_1[7:0]),
			   .out_synth0		(out_synth0[7:0]),
			   .out_synth1		(out_synth1[7:0]),
			   .valid_out_0		(valid_out_0),
			   .valid_out_1		(valid_out_1),
			   .valid_out0_synth	(valid_out0_synth),
			   .valid_out1_synth	(valid_out1_synth));
endmodule
