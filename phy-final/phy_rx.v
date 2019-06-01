`include "demux.v"
`include "unstriping.v"
`include "etapa_flops.v"
`include "etapa2_flops.v"
`include "SerieParalelo.v"
`include "FlopsEntradaSerieParalelo.v"
`include "FlopsSerialUnstripe.v"
module phy_rx (
   input clk_f,
   input clk_2f,
   input clk_8f,
   input data_in0,
   input data_in1,
   input reset,
	output [7:0] data_out_0,
	output [7:0] data_out_1,
    output valid_out_0,
    output valid_out_1
);

	wire [7:0] d_out_us, d_out_F,data2send0, data2send1, out_0F, out_1F;
	wire [3:0] BC_counter0, BC_counter1;
  wire [7:0]dataFSU, dataByte;
  wire validFSU, validByte;
  wire v_out_us, v_out_F, valid_out_sp0, valid_out_sp1, data_in0, data_in1, active0, active1,vout_0F, vout_1F;
  wire flop012,flop112, flop023, flop123, flop034, flop134, flop045, flop145,flop056,flop156, salida6F0, salida6F1;
  FlopsEntradaSerieParalelo FlopsEntradaSerieParalelo_1(.clk_8f(clk_8f),
                .data_in0(data_in0),
                .data_in1(data_in1),
                .reset(reset),
                .data_out0(flop012),
                .data_out1(flop112));

  FlopsEntradaSerieParalelo FlopsEntradaSerieParalelo_2(.clk_8f(clk_8f),
                .data_in0(flop012),
                .data_in1(flop112),
                .reset(reset),
                .data_out0(flop023),
                .data_out1(flop123));
  FlopsEntradaSerieParalelo FlopsEntradaSerieParalelo_3(.clk_8f(clk_8f),
                .data_in0(flop023),
                .data_in1(flop123),
                .reset(reset),
                .data_out0(flop034),
                .data_out1(flop134));
  FlopsEntradaSerieParalelo FlopsEntradaSerieParalelo_4(.clk_8f(clk_8f),
                .data_in0(flop034),
                .data_in1(flop134),
                .reset(reset),
                .data_out0(flop045),
                .data_out1(flop145));
  FlopsEntradaSerieParalelo FlopsEntradaSerieParalelo_5(.clk_8f(clk_8f),
                .data_in0(flop045),
                .data_in1(flop145),
                .reset(reset),
                .data_out0(flop056),
                .data_out1(flop156));
  FlopsEntradaSerieParalelo FlopsEntradaSerieParalelo_6(.clk_8f(clk_8f),
                .data_in0(flop056),
                .data_in1(flop156),
                .reset(reset),
                .data_out0(salida6F0),
                .data_out1(salida6F1));
	SerieParalelo serieParalelo0(.clk_f (clk_f),
								.clk_8f (clk_8f),
								.reset (reset),
								.data_in (salida6F0),
								.data2send (data2send0),
								.BC_counter (BC_counter0),
								.valid_out (valid_out_sp0),
								.active (active0));

	SerieParalelo serieParalelo1(.clk_f (clk_f),
								.clk_8f (clk_8f),
								.reset (reset),
								//.data_in (salida6F1),
                .data_in(flop123),
								.data2send (data2send1),
								.BC_counter (BC_counter1),
								.valid_out (valid_out_sp1),
								.active (active1));

  etapa2_flops etapa2_flops99(
    .clk_8f(clk_2f),
    .data_in0(data2send1),
    .valid_in0(valid_out_sp1),

    .data_out0(dataByte),
    .v_test(validByte)
    );
	unstriping unstriping( .clk_f (clk_f),
			.clk_2f (clk_2f),
			.reset (reset),
			.lane_0 (data2send0),
			 .valid_0 (valid_out_sp0),
			.lane_1 (dataByte),
			.valid_1 (validByte),
			.data_out (d_out_us),
			.valid_out (v_out_us));

    etapa2_flops flops( .data_in0 (d_out_us),
                   .valid_in0 (v_out_us),
                      .data_out0 (d_out_F),
                      //.valid_out0 (v_out_F),
                      .v_test (v_out_F),
                   	.clk_8f (clk_8f),
                      .reset (reset));

	demux demux( .clk_2f (clk_2f),
			.reset (reset),
			.valid_in (v_out_F),
			 .data_out_0 (out_0F),
			.data_out_1 (out_1F),
			.valid_out_0 (vout_0F),
			.valid_out_1 (vout_1F),
			.data_in (d_out_F));

    etapa_flops flops2 (.clk_2f (clk_2f),
                            .reset (reset),
                            .data_in0 (out_0F),
                            .data_in1(out_1F),
                            .valid_in0(vout_0F),
                            .valid_in1(vout_1F),
                            .data_out0(data_out_0),
                            .data_out1(data_out_1),
                            .valid_out0(valid_out_0),
                            .valid_out1(valid_out_1));

endmodule
