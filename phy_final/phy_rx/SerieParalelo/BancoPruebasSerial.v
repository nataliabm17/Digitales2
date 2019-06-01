`timescale 1ns/100ps
`include "ProbadorSerial.v"
`include "SerieParalelo.v"
`include "SerieParalelo_Est.v"
module BancoPruebasSerial;

    wire clk_f;
    wire Clk_8f;
    wire data_in;
    wire reset;
    wire [7:0]data2send;
    wire [3:0]BC_counter;
    wire valid_out;
    wire active;
	wire [7:0] data2send_est;
	wire [3:0]	BC_counter_est;
	wire valid_out_est;
	wire active_est;

SerieParalelo SerieParalelo_(/*AUTOINST*/
			     // Outputs
			     .data2send		(data2send[7:0]),
			     .BC_counter	(BC_counter[3:0]),
			     .valid_out		(valid_out),
			     .active		(active),
			     // Inputs
			     .clk_f		(clk_f),
			     .clk_8f		(clk_8f),
			     .data_in		(data_in),
			     .reset		(reset));
ProbadorSerial ProbadorSerial_(/*AUTOINST*/
			       // Outputs
			       .clk_f		(clk_f),
			       .clk_8f		(clk_8f),
			       .data_in		(data_in),
			       .reset		(reset),
			       // Inputs
			       .data2send	(data2send[7:0]),
			       .BC_counter	(BC_counter[3:0]),
			       .valid_out	(valid_out),
			       .active		(active),
			       .data2send_est	(data2send_est[7:0]),
			       .BC_counter_est	(BC_counter_est[3:0]),
			       .valid_out_est	(valid_out_est),
			       .active_est	(active_est));
SerieParalelo_Est SerieParalelo_Est_(/*AUTOINST*/
				     // Outputs
				     .BC_counter_est	(BC_counter_est[3:0]),
				     .active_est	(active_est),
				     .data2send_est	(data2send_est[7:0]),
				     .valid_out_est	(valid_out_est),
				     // Inputs
				     .clk_8f		(clk_8f),
				     .clk_f		(clk_f),
				     .data_in		(data_in),
				     .reset		(reset));
endmodule
