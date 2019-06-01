`timescale 	1ns				/ 100ps
`include "phy_tx.v"
`include "synth.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas; 
	wire[7:0] data2send0_synth;
	wire[7:0] data2send1_synth;
	wire[7:0] data2send0;
	wire[7:0] data2send1;
	wire data_outS0;
	wire[7:0] data_in0;
	wire[7:0] data_in1;
	wire data_outS1;
    wire  data_outS0_synth;
    wire  data_outS1_synth;
	wire reset, clk_2f, clk_f, clk_8f, valid_in0, valid_in1;

	phy_tx phy_tx(/*AUTOINST*/
		      // Outputs
		      .data2send0	(data2send0[7:0]),
		      .data2send1	(data2send1[7:0]),
		      .data_outS0	(data_outS0),
		      .data_outS1	(data_outS1),
		      // Inputs
		      .clk_2f		(clk_2f),
		      .clk_8f		(clk_8f),
		      .clk_f		(clk_f),
		      .reset		(reset),
		      .data_in0		(data_in0[7:0]),
		      .data_in1		(data_in1[7:0]),
		      .valid_in0	(valid_in0),
		      .valid_in1	(valid_in1));

	synth synth(/*AUTOINST*/
		    // Outputs
		    .data2send0_synth	(data2send0_synth[7:0]),
		    .data2send1_synth	(data2send1_synth[7:0]),
		    .data_outS0_synth	(data_outS0_synth),
		    .data_outS1_synth	(data_outS1_synth),
		    // Inputs
		    .clk_2f		(clk_2f),
		    .clk_8f		(clk_8f),
		    .clk_f		(clk_f),
		    .data_in0		(data_in0[7:0]),
		    .data_in1		(data_in1[7:0]),
		    .reset		(reset),
		    .valid_in0		(valid_in0),
		    .valid_in1		(valid_in1));	
	
	probador probador(/*AUTOINST*/
			  // Outputs
			  .clk_2f		(clk_2f),
			  .clk_8f		(clk_8f),
			  .clk_f		(clk_f),
			  .reset		(reset),
			  .data_in0		(data_in0[7:0]),
			  .data_in1		(data_in1[7:0]),
			  .valid_in0		(valid_in0),
			  .valid_in1		(valid_in1),
			  // Inputs
			  .data2send0		(data2send0[7:0]),
			  .data2send1		(data2send1[7:0]),
			  .data_outS0		(data_outS0),
			  .data_outS1		(data_outS1),
			  .data2send0_synth	(data2send0_synth[7:0]),
			  .data2send1_synth	(data2send1_synth[7:0]),
			  .data_outS0_synth	(data_outS0_synth),
			  .data_outS1_synth	(data_outS1_synth));


endmodule

