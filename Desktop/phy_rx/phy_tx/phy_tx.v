`include "mux.v"
`include "byte_striping.v"
`include "etapa_flops.v"
`include "ParaleloSerie.v"
`include "etapa2_flops.v"
`include "Otros_flops.v"
module phy_tx (
	input clk_2f,
    input clk_8f,
    input clk_f,
	input reset,
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


	wire v_out, valid0, valid1, valid0bs, valid1bs, v_out2, validps0, validps1;
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

    etapa2_flops flops2(.clk_8f (clk_8f),
                    .data_in0 (d_out),
                    .valid_in0 (v_out),
                    .data_out0 (d_out2),
                    .valid_out0(v_out2),
                    .reset (reset));

	byte_striping byte_striping1(.clk_2f (clk_2f),
								.clk_f (clk_f),
								.valid_in (v_out2),
								.data_in (d_out2),
								.reset (reset),
								.lane_0 (lane0),
								.lane_1 (lane1),
								.valid_0 (valid0bs),
								.valid_1 (valid1bs));



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
                    .reset (reset),
                    .valid_in(valid0bs),
                    .data2send (data2send0),
                    .data_outS (data_outS0)
);

		Otros_flops Otros_flops0_(.clk_8f(clk_8f),
										.valid_in44(valid0bs),
										.valid_inF(valid000),
										.reset(reset));

		Otros_flops Otros_flops00_(.clk_8f(clk_8f),
										.valid_in44(valid000),
										.valid_inF(valid000salida),
										.reset(reset));

    ParaleloSerie p2s1 (.clk_8f(clk_8f),
                    .clk_f (clk_f),
                    .data_inP(dataoutFPS),
                    .reset (reset),
                    .valid_in(FPS),
                    .data2send (data2send1),
                    .data_outS (data_outS1)
);
		etapa2_flops etapa2_flops_(

										.data_in0(lane1),
										.valid_in0(valid1bs),
										.data_out0(dataoutFPS),
										.valid_out0(FPS),
										.clk_8f(clk_2f),
										.reset(reset)
			);
		Otros_flops Otros_flops0_1(.clk_8f(clk_8f),
										.valid_in44(FPS),
										.valid_inF(valid001),
										.reset(reset));

		Otros_flops Otros_flops0_11(.clk_8f(clk_8f),
										.valid_in44(valid001),
										.valid_inF(valid001salida),
										.reset(reset));
endmodule
