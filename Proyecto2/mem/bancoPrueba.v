`timescale 	1ns				/ 100ps
`include "mem.v"
`include "synth.v"
`include "probador.v"
`include "cmos_cells.v"

module BancoPruebas; 
	wire clk, rst, read_rq, write_rq;
	wire[3:0] w_address, r_address;
	wire[4:0] write_data, read_data, read_data_synth;
	mem mem(/*AUTOINST*/
		// Outputs
		.read_data		(read_data[4:0]),
		// Inputs
		.clk			(clk),
		.rst			(rst),
		.read_rq		(read_rq),
		.write_rq		(write_rq),
		.w_address		(w_address[3:0]),
		.r_address		(r_address[3:0]),
		.write_data		(write_data[4:0]));

	synth synth(/*AUTOINST*/
		    // Outputs
		    .read_data_synth	(read_data_synth[4:0]),
		    // Inputs
		    .clk		(clk),
		    .r_address		(r_address[3:0]),
		    .read_rq		(read_rq),
		    .rst		(rst),
		    .w_address		(w_address[3:0]),
		    .write_data		(write_data[4:0]),
		    .write_rq		(write_rq));
	
	probador probador_(	/*AUTOINST*/
			   // Outputs
			   .clk			(clk),
			   .rst			(rst),
			   .read_rq		(read_rq),
			   .write_rq		(write_rq),
			   .w_address		(w_address[3:0]),
			   .r_address		(r_address[3:0]),
			   .write_data		(write_data[4:0]),
			   // Inputs
			   .read_data		(read_data[4:0]),
			   .read_data_synth		(read_data_synth[4:0]));
endmodule
