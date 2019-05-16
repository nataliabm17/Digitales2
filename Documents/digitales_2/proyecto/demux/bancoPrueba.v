`timescale 	1ns				/ 100ps
`include "demux.v"
`include "synth.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas; 
	wire[7:0] out_synth1, dataout0, dataout1, out_synth0, data_in;
	wire reset_L, clk, valid_in, validout0, validout1, valid_out0_synth, valid_out1_synth;

	demux demux(/*AUTOINST*/
		    // Outputs
		    .dataout0		(dataout0[7:0]),
		    .dataout1		(dataout1[7:0]),
		    .validout0		(validout0),
		    .validout1		(validout1),
		    // Inputs
		    .clk		(clk),
		    .reset_L		(reset_L),
		    .data_in		(data_in[7:0]),
		    .valid_in		(valid_in));

	synth synth(/*AUTOINST*/
		    // Outputs
		    .out_synth0		(out_synth0[7:0]),
		    .out_synth1		(out_synth1[7:0]),
		    .valid_out0_synth	(valid_out0_synth),
		    .valid_out1_synth	(valid_out1_synth),
		    // Inputs
		    .clk		(clk),
		    .data_in		(data_in[7:0]),
		    .reset_L		(reset_L),
		    .valid_in		(valid_in));
	
	probador probador_(	/*AUTOINST*/
			   // Outputs
			   .clk			(clk),
			   .reset_L		(reset_L),
			   .data_in		(data_in[7:0]),
			   .valid_in		(valid_in),
			   // Inputs
			   .dataout0		(dataout0[7:0]),
			   .dataout1		(dataout1[7:0]),
			   .out_synth0		(out_synth0[7:0]),
			   .out_synth1		(out_synth1[7:0]),
			   .validout0		(validout0),
			   .validout1		(validout1),
			   .valid_out0_synth	(valid_out0_synth),
			   .valid_out1_synth	(valid_out1_synth));
endmodule
