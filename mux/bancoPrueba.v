`timescale 	1ns				/ 100ps
`include "mux.v"
`include "synth.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas; 
	wire[7:0] data_out_synth;
	wire[7:0] data_out;
	wire[7:0] data_in0;
	wire[7:0] data_in1;
	wire reset_L, f2, valid_in0, valid_in1, valid_out, valid_out_synth;

	mux mux(/*AUTOINST*/
		// Outputs
		.data_out		(data_out[7:0]),
		.valid_out		(valid_out),
		// Inputs
		.f2			(f2),
		.reset_L		(reset_L),
		.data_in0		(data_in0[7:0]),
		.data_in1		(data_in1[7:0]),
		.valid_in0		(valid_in0),
		.valid_in1		(valid_in1));

	synth synth(/*AUTOINST*/
		    // Outputs
		    .data_out_synth	(data_out_synth[7:0]),
		    .valid_out_synth	(valid_out_synth),
		    // Inputs
		    .data_in0		(data_in0[7:0]),
		    .data_in1		(data_in1[7:0]),
		    .f2			(f2),
		    .reset_L		(reset_L),
		    .valid_in0		(valid_in0),
		    .valid_in1		(valid_in1));
	
	probador probador(/*AUTOINST*/
			  // Outputs
			  .f2			(f2),
			  .reset_L		(reset_L),
			  .data_in0		(data_in0[7:0]),
			  .data_in1		(data_in1[7:0]),
			  .valid_in0		(valid_in0),
			  .valid_in1		(valid_in1),
			  // Inputs
			  .data_out		(data_out[7:0]),
			  .valid_out		(valid_out),
			  .data_out_synth	(data_out_synth[7:0]),
			  .valid_out_synth	(valid_out_synth));

endmodule
