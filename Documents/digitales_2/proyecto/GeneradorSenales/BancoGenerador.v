`timescale 1ns/100ps
`include "ProbadorGenerador.v"
`include "Generador128f.v"
`include "Generador128f_Est.v"

module BancoGenerador;
  wire clk_f;
  wire clk_2f;
  wire clk_8f;
  wire clk_f_Est;
  wire clk_2f_Est;
  wire reset;

  ProbadorGenerador ProbadorGenerador_(/*autoinst*/
				       // Outputs
				       .clk_8f		(clk_8f),
				       .reset		(reset),
				       // Inputs
				       .clk_f		(clk_f),
				       .clk_2f		(clk_2f),
				       .clk_f_Est	(clk_f_Est),
				       .clk_2f_Est	(clk_2f_Est));
  Generador128f Generador128f_(/*autoinst*/
			       // Outputs
			       .clk_f		(clk_f),
			       .clk_2f		(clk_2f),
			       // Inputs
			       .clk_8f		(clk_8f),
			       .reset		(reset));
  Generador128f_Est Generador128f_Est_(/*autoinst*/
				       // Outputs
				       .clk_2f_Est	(clk_2f_Est),
				       .clk_f_Est	(clk_f_Est),
				       // Inputs
				       .clk_8f		(clk_8f),
				       .reset		(reset));

endmodule // BancoGenerador
