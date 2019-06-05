`include "mux.v"
`include "byte_striping.v"
//`include "etapa_flops.v"
`include "ParaleloSerie.v"
//`include "etapa2_flops.v"
`include "Otros_flops.v"
`include "flopClock.v"
`include "flops_valid.v"
module phy_tx (
	input clk_2f,
    input clk_8f,
    input clk_f,
	input reset,
	input resetCLK,
	input [7:0] data_in0,
	input [7:0] data_in1,
	input valid_in0,
	input valid_in1,
    output [7:0] data2send0,
    output  [7:0]data2send1,
    output   data_outS0,
    output   data_outS1
);
   // output clk_f,
   // output [7:0] lane_0,
    //output [7:0]lane_1,
    //output valid_0,
    //output valid_1);

	wire [7:0] d_out;
		wire [7:0] d_out3;
    wire [7:0] in0;
    wire [7:0] in1;
    wire [7:0] lane0;
    wire [7:0] lane1;
	wire [7:0] d_out2;
	wire [7:0] inps1;
	wire [7:0] inps0;
	wire valid000, valid001, valid000salida, valid001salida;
	wire [7:0]dataoutFPS;
	wire FPS;
	wire [7:0]FlopPS0, FlopPS1;
	wire [7:0]dataFF;
	wire validinn0, validinn1;


	wire  v_out,v_out2,v_out3, valid0, valid1, valid0bs, valid1bs, validps0, validps1, superClock1,superClock2, superReset1, superReset2;
    //wire clk2f;


    etapa_flops flops(.clk_2f (clk_2f),
                    .data_in0 (data_in0),
                    .data_in1 (data_in1),
                    .valid_in0 (valid_in0),
                    .valid_in1 (valid_in1),
                    .data_out0 (in0),
                    .data_out1(in1),
                    .valid_out0(valid0),
                    .valid_out1(valid1),
                    .reset (reset));

	mux mux1( .clk_2f (clk_2f),
			.reset (reset),
			.data_out (d_out),
			 .data_in0 (in0),
			.data_in1 (in1),
			.valid_in0 (valid0),
			.valid_in1 (valid1),
			.valid_out (v_out));

  /*	reg v_out2_d;
	always @ ( posedge clk_2f) begin
		//d_out2_d <= d_out2;
		v_out2_d	 <= v_out;
	end*/

    etapa2_flops flops2(.clk_8f (clk_8f), //clk_8f
                    .data_in0 (d_out),
                    .valid_in0 (v_out),
                    .data_out0 (d_out2),
										.valid_out0(v_out2),
										//.v_test(v_out2),
                    .reset (reset));


								/*	flops_valid flops_v (.clk_8f (clk_8f),
																				.reset (reset),
																				.valid_in (v_out2),
																				.valid_out (v_out2_d));
																			*/
	// flops_rx1 flopsRESETBYTE(.data_in0(reset),
	// 							.clk_8f(clk_2f),
	// 							.reset(resetCLK),
	// 							.data_out0(resetByte));
	reg resetByte0;
	always @ ( posedge clk_8f) begin
		//d_out2_d <= d_out2;
		resetByte0	 <= reset;
	end
	reg resetByte1;
	always @ ( posedge clk_8f) begin
		//d_out2_d <= d_out2;
		resetByte1	 <= resetByte0;
	end
	reg resetByte2;
	always @ ( posedge clk_8f) begin
		//d_out2_d <= d_out2;
		resetByte2	 <= resetByte1;
	end
	reg resetByte3;
	always @ ( posedge clk_8f) begin
		//d_out2_d <= d_out2;
		resetByte3	 <= resetByte2;
	end
	byte_striping byte_striping1(.clk_2f (clk_2f),
								.clk_f (clk_f),
								// .valid_in (v_out2),
								// .data_in (d_out2),
								.valid_in (v_out2),
								.data_in (d_out2),
								.reset (reset),
								.lane_0 (lane0),
								.lane_1 (lane1),
								.valid_0 (valid0bs),
								.valid_1 (valid1bs));


	flopClock flopClock_1(
		.data_in(clk_f),
		.data_out(superClock1),
		.clk_2f(clk_2f),
		.reset(reset),
		.resetNEG(superReset1));
	flopClock flopClock_2(
		.data_in(superClock1),
		.data_out(superClock2),
		.clk_2f(clk_2f),
		.reset(superReset1),
		.resetNEG(superReset2)
		);
		// flopClock flopClock_2(
		// 	.data_in(superClock1),
		// 	.data_out(superClock2),
		// 	.clk_2f(clk_2f),
		// 	.reset(superReset1),
		// 	.resetNEG(superReset2)
		// 	);
		// etapa_flops etapa_flops_00(
		// 								.clk_2f(clk_f),
		// 								.data_in0(lane0),
		// 								.data_in1(lane1),
		// 								.valid_in0(valid0bs),
		// 								.valid_in1(valid1bs),
		// 								.reset(reset),
		//
		// 								.data_out0(FlopPS0),
		// 								.data_out1(FlopPS1),
		// 								.valid_out0(validinn0),
		// 								.valid_out1(validinn1)
		// 	);

    ParaleloSerie p2s0 (.clk_8f(clk_8f),
                    .clk_f (clk_f),
                    .data_inP(lane0),
                    .reset (resetByte3),
                    .valid_in(valid0bs),
                    .data2send (data2send0),
                    .data_outS (data_outS0)
);

		// Otros_flops Otros_flops0_(.clk_8f(clk_8f),
		// 								.valid_in44(valid0bs),
		// 								.valid_inF(valid000),
		// 								.reset(reset));
		//
		// Otros_flops Otros_flops00_(.clk_8f(clk_8f),
		// 								.valid_in44(valid000),
		// 								.valid_inF(valid000salida),
		// 								.reset(reset));

    ParaleloSerie p2s1 (.clk_8f(clk_8f),
                    .clk_f (superClock2),
                    .data_inP(lane1),
                    .reset (superReset2),
                    .valid_in(valid1bs),
                    .data2send (data2send1),
                    .data_outS (data_outS1)
);
		// etapa2_flops etapa2_flops_(
		//
		// 								.data_in0(lane1),
		// 								.valid_in0(valid1bs),
		// 								.data_out0(dataoutFPS),
		// 								.valid_out0(FPS),
		// 								.clk_8f(clk_2f),
		// 								.reset(reset)
		// 	);
		// Otros_flops Otros_flops0_1(.clk_8f(clk_8f),
		// 								.valid_in44(FPS),
		// 								.valid_inF(valid001),
		// 								.reset(reset));

		// Otros_flops Otros_flops0_11(.clk_8f(clk_8f),
		// 								.valid_in44(valid001),
		// 								.valid_inF(valid001salida),
		// 								.reset(reset));
endmodule
