`timescale 1ns/100ps
//`include "gen.v"
`include "probador.v"
`include "byte_striping.v"
`include "byte_striping_synth.v"
`include "cmos_cells.v"
module bancoprueba; 
    wire clk_2f;
	wire clk_f;
    wire valid_in;
    wire [7:0]data_in;
    wire reset;
    wire [7:0] lane_0;
    wire  [7:0]lane_1; 
    wire valid_0F;
    wire valid_1F;
    wire [7:0] lane_0_synth;
    wire  [7:0]lane_1_synth; 
    wire valid_0_synth;
    wire valid_1_synth;

byte_striping cond (/*AUTOINST*/
		    // Outputs
		    .lane_0		(lane_0[7:0]),
		    .lane_1		(lane_1[7:0]),
		    .valid_0F		(valid_0F),
		    .valid_1F		(valid_1F),
		    // Inputs
		    .clk_2f		(clk_2f),
		    .clk_f		(clk_f),
		    .valid_in		(valid_in),
		    .data_in		(data_in[7:0]),
		    .reset		(reset));
probador prob (/*AUTOINST*/
	       // Outputs
	       .clk_2f			(clk_2f),
		    .clk_f		(clk_f),
	       .valid_in		(valid_in),
	       .data_in			(data_in[7:0]),
	       .reset			(reset),
	       // Inputs
	       .lane_0			(lane_0[7:0]),
	       .lane_1			(lane_1[7:0]),
	       .valid_0			(valid_0F),
	       .valid_1			(valid_1F),
	       .lane_0_synth		(lane_0_synth[7:0]),
	       .lane_1_synth		(lane_1_synth[7:0]),
	       .valid_0_synth		(valid_0_synth),
	       .valid_1_synth		(valid_1_synth)); 


byte_striping_synth est (/*AUTOINST*/
			 // Outputs
			 .lane_0_synth		(lane_0_synth[7:0]),
			 .lane_1_synth		(lane_1_synth[7:0]),
			 .valid_0_synth		(valid_0_synth),
			 .valid_1_synth		(valid_1_synth),
			 // Inputs
			 .clk_2f		(clk_2f),
		    .clk_f		(clk_f),
			 .data_in		(data_in[7:0]),
			 .reset			(reset),
			 .valid_in		(valid_in)); 

endmodule
