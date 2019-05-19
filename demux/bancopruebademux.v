
//Daniela Bucce, B61256
//Tarea 6
//Banco de prueba 

`timescale 1ns/100ps //se incluyen archivos y define el timescale

`include "probador_demux.v"
`include "demux.v"
`include "synth_demux.v"

`include "cmos_cells.v" 

module bancopruebademux;
//demux cond
    wire clk_2f;
    wire reset;
    wire [7:0]data_in;
    wire valid_in;
    
//probador
    wire [7:0] data_out_0;
    wire [7:0] data_out_1;
    wire [7:0] out_synth0;
    wire [7:0] out_synth1;
    wire valid_out0_synth;
    wire valid_out1_synth; 
    wire valid_out_0;
    wire valid_out_1;

  //  wire [3:0] data_in_2; 
    // uso de autoinst para instanciar las senales
	demux  dem(/*AUTOINST*/
		   // Outputs
		   .data_out_0		(data_out_0[7:0]),
		   .data_out_1		(data_out_1[7:0]),
		   .valid_out_0		(valid_out_0),
		   .valid_out_1		(valid_out_1),
		   // Inputs
		   .clk_2f		(clk_2f),
		   .reset		(reset),
		   .valid_in		(valid_in),
		   .data_in		(data_in[7:0]));

    synth_demux synthdemux (/*AUTOINST*/
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

    probador_demux prob1 (/*AUTOINST*/
			  // Outputs
			  .clk_2f		(clk_2f),
			  .reset		(reset),
			  .data_in		(data_in[7:0]),
			  .valid_in		(valid_in),
			  // Inputs
			  .data_out_0		(data_out_0[7:0]),
			  .data_out_1		(data_out_1[7:0]),
			  .valid_out_0		(valid_out_0),
			  .valid_out_1		(valid_out_1),
			  .valid_out0_synth	(valid_out0_synth),
			  .valid_out1_synth	(valid_out1_synth),
			  .out_synth0		(out_synth0[7:0]),
			  .out_synth1		(out_synth1[7:0]));

   


endmodule




