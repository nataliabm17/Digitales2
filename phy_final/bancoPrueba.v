`timescale 	1ns				/ 100ps
`include "phy.v"
`include "phy_synth.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas;

	wire[7:0] data_out_0,data_in0, data_in1, data_out_0_synth, data_out_1_synth, data_out_1;
	wire valid_out_0, valid_out_1, reset, valid_out_0_synth, valid_out_1_synth, clk_8f, valid_in0, valid_in1,resetCLK, clk_2f;

	phy phy(/*AUTOINST*/
		// Outputs
		.data_out_0		(data_out_0[7:0]),
		.data_out_1		(data_out_1[7:0]),
		.valid_out_0		(valid_out_0),
		.valid_out_1		(valid_out_1),
		.clk_2f (clk_2f),
		// Inputs
		.clk_8f			(clk_8f),
		.data_in0		(data_in0[7:0]),
		.data_in1		(data_in1[7:0]),
		.reset			(reset),
		.valid_in0		(valid_in0),
		.valid_in1		(valid_in1),
		.resetCLK			(resetCLK));

	phy_synth synth(/*AUTOINST*/
			// Outputs
			.data_out_0_synth(data_out_0_synth[7:0]),
			.data_out_1_synth(data_out_1_synth[7:0]),
			.valid_out_0_synth(valid_out_0_synth),
			.valid_out_1_synth(valid_out_1_synth),
			.clk_2f (clk_2f),
			// Inputs
			.clk_8f		(clk_8f),
			.data_in0	(data_in0[7:0]),
			.data_in1	(data_in1[7:0]),
			.reset		(reset),
			.resetCLK			(resetCLK),
			.valid_in0	(valid_in0),
			.valid_in1	(valid_in1));

	probador probador(/*AUTOINST*/
			  // Outputs
			  .clk_8f		(clk_8f),
				.clk_2f (clk_2f),
			  .reset		(reset),
				.resetCLK			(resetCLK),
			  .data_in0		(data_in0[7:0]),
			  .data_in1		(data_in1[7:0]),
              .valid_in0    (valid_in0),
              .valid_in1    (valid_in1),
			  // Inputs
			  .data_out_0		(data_out_0[7:0]),
			  .data_out_1		(data_out_1[7:0]),
			  .valid_out_0		(valid_out_0),
			  .valid_out_1		(valid_out_1),
			  .data_out_0_synth	(data_out_0_synth[7:0]),
			  .data_out_1_synth	(data_out_1_synth[7:0]),
			  .valid_out_0_synth	(valid_out_0_synth),
			  .valid_out_1_synth	(valid_out_1_synth));


endmodule
