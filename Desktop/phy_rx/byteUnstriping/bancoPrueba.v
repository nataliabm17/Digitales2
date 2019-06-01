`timescale 	1ns				/ 100ps
`include "unstriping.v"
`include "synth.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas; 
	wire[7:0] data_out, data_out_synth;
	wire[7:0] lane_0;
	wire[7:0] lane_1;
	wire reset_L, clk_f, clk_2f, valid_out, reset, valid_0, valid_1, valid_out_synth;

	unstriping unstriping(/*AUTOINST*/
			      // Outputs
			      .data_out		(data_out[7:0]),
			      .valid_out	(valid_out),
			      // Inputs
			      .clk_f		(clk_f),
			      .clk_2f		(clk_2f),
			      .reset		(reset),
			      .lane_0		(lane_0[7:0]),
			      .valid_0		(valid_0),
			      .lane_1		(lane_1[7:0]),
			      .valid_1		(valid_1));

	synth synth(/*AUTOINST*/
		    // Outputs
		    .data_out_synth	(data_out_synth[7:0]),
		    .valid_out_synth	(valid_out_synth),
		    // Inputs
		    .clk_2f		(clk_2f),
		    .clk_f		(clk_f),
		    .lane_0		(lane_0[7:0]),
		    .lane_1		(lane_1[7:0]),
		    .reset		(reset),
		    .valid_0		(valid_0),
		    .valid_1		(valid_1));
	
	probador probador(/*AUTOINST*/
			  // Outputs
			  .clk_f		(clk_f),
			  .clk_2f		(clk_2f),
			  .reset		(reset),
			  .lane_0		(lane_0[7:0]),
			  .lane_1		(lane_1[7:0]),
			  .valid_0		(valid_0),
			  .valid_1		(valid_1),
			  // Inputs
			  .data_out		(data_out[7:0]),
			  .valid_out		(valid_out),
			  .data_out_synth	(data_out_synth[7:0]),
			  .valid_out_synth	(valid_out_synth));

endmodule
