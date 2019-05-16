`timescale 1ns/100ps
//`include "gen.v"
`include "probador.v"
`include "ParaleloSerie.v"
`include "ParaleloSerie_Est.v"
//`include "Generador128f.v"
module bancoprueba;

    wire clk_f;
    wire clk_8f;
    wire valid_in;
    wire [7:0]data_inP;
    wire [7:0] data2send;
    wire  data_outS;
    wire [7:0] data2send_est;
    wire data_outS_est;
    wire reset;


ParaleloSerie ParaleloSerie (/*AUTOINST*/
			     // Outputs
			     .data2send		(data2send[7:0]),
			     .data_outS		(data_outS),
			     // Inputs
			     .data_inP		(data_inP[7:0]),
			     .reset		(reset),
			     .clk_8f		(clk_8f),
			     .clk_f		(clk_f),
			     .valid_in		(valid_in));
probador prob (/*AUTOINST*/
	       // Outputs
	       .clk_8f			(clk_8f),
	       .valid_in		(valid_in),
	       .data_inP		(data_inP[7:0]),
	       .reset			(reset),
	       .clk_f			(clk_f),
	       // Inputs
	       .data2send		(data2send[7:0]),
	       .data_outS		(data_outS));
ParaleloSerie_Est ParaleloSerie_Est_(/*AUTOINST*/
				     // Outputs
				     .data2send_est	(data2send_est[7:0]),
				     .data_outS_est	(data_outS_est),
				     // Inputs
				     .clk_8f		(clk_8f),
				     .clk_f		(clk_f),
				     .data_inP		(data_inP[7:0]),
				     .reset		(reset),
				     .valid_in		(valid_in));


endmodule
