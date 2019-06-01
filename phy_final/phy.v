`include "Generador128f.v"
`include "phy_rx.v"
`include "phy_tx.v"
module phy (
   input clk_8f,
   input [7:0] data_in0,
   input [7:0]data_in1,
   input reset,
   input resetCLK,
    input valid_in0,
    input valid_in1,
	output [7:0] data_out_0,
	output [7:0] data_out_1,
    output valid_out_0,
    output valid_out_1,
    output clk_2f
);
	wire [7:0] data2send0;
    wire [7:0] data2send1;
    wire data_outS0, data_outS1;

    Generador128f generador (.clk_8f (clk_8f),
                            .reset (resetCLK),
                            .clk_2f  (clk_2f),
                            .clk_f (clk_f)

);

	phy_tx tx (/*AUTOINST*/
		   // Outputs
		   .data2send0		(data2send0[7:0]),
		   .data2send1		(data2send1[7:0]),
		   .data_outS0		(data_outS0),
		   .data_outS1		(data_outS1),
		   // Inputs
		   .clk_2f		(clk_2f),
		   .clk_8f		(clk_8f),
		   .clk_f		(clk_f),
		   .reset		(reset),
       .resetCLK		(resetCLK),
		   .data_in0		(data_in0[7:0]),
		   .data_in1		(data_in1[7:0]),
		   .valid_in0		(valid_in0),
		   .valid_in1		(valid_in1));
    phy_rx rx (/*AUTOINST*/
	       // Outputs
	       .data_out_0		(data_out_0[7:0]),
	       .data_out_1		(data_out_1[7:0]),
	       .valid_out_0		(valid_out_0),
	       .valid_out_1		(valid_out_1),
	       // Inputs
	       .clk_f			(clk_f),
	       .clk_2f			(clk_2f),
	       .clk_8f			(clk_8f),
	       .data_in0		(data_outS0),
	       .data_in1		(data_outS1),
	       .reset			(reset));

endmodule
