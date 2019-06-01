`timescale 	1ns				/ 100ps
`include "phy_rx.v"
`include "synth.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas; 

	wire[7:0] data_out_0, data_out_1, lane_0, lane_1, data_out_0_synth, data_out_1_synth;
	wire valid_out_0, valid_out_1, clk_2f, clk_f, reset, valid_0, valid_1, valid_out_0_synth, valid_out_1_synth, clk_8f, data_in0, data_in1; 

	phy_rx phy_rx(/*AUTOINST*/
		      // Outputs
		      .data_out_0	(data_out_0[7:0]),
		      .data_out_1	(data_out_1[7:0]),
		      .valid_out_0	(valid_out_0),
		      .valid_out_1	(valid_out_1),
		      // Inputs
		      .clk_2f		(clk_2f),
		      .clk_f		(clk_f),
				.clk_8f		(clk_8f),
		      .reset		(reset),
				.data_in0   (data_in0),
				.data_in1   (data_in1));

	synth synth(/*AUTOINST*/
		    // Outputs
		      // Outputs
		      .data_out_0_synth	(data_out_0_synth[7:0]),
		      .data_out_1_synth	(data_out_1_synth[7:0]),
		      .valid_out_0_synth	(valid_out_0_synth),
		      .valid_out_1_synth	(valid_out_1_synth),
		      // Inputs
		      .clk_2f		(clk_2f),
			  .clk_8f		(clk_8f),
		      .clk_f		(clk_f),
		      .reset		(reset),
				.data_in0  (data_in0),
				.data_in1  (data_in1));
	
	probador probador(/*AUTOINST*/
			  // Outputs
			  .clk_2f		(clk_2f),
			  .clk_8f		(clk_8f),
			  .clk_f		(clk_f),
			  .reset		(reset),
				.data_in0   (data_in0),
				.data_in1   (data_in1),
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

