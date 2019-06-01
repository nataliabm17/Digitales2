module probador( 
  output reg clk_2f,
  output reg clk_8f,
  output reg reset,
  output reg[7:0] data_in,
  input [7:0] data_out_0, 
  input [7:0] data_out_1,
  input [7:0] out_synth0, 
  input [7:0] out_synth1,
  output reg valid_in,
  input valid_out_0,
  input valid_out_1,
  input valid_out0_synth,
  input valid_out1_synth
);	
	reg error;

	initial begin
		$dumpfile("demux.vcd");
		$dumpvars;			
		
		@(posedge clk_2f);
		reset = 0;
		data_in <= $random;
		valid_in <= 1;

		@(posedge clk_2f);
		data_in <= $random;
        reset<=1;
		@(posedge clk_2f);
		data_in <= $random;
		//reset = 1;

		@(posedge clk_2f);
		data_in <= $random;

		@(posedge clk_2f);
		data_in <= $random;

		@(posedge clk_2f);
		data_in <= $random;
		valid_in <= 0;

		@(posedge clk_2f);
		data_in <= $random;

		@(posedge clk_2f);
		data_in <= $random;

		@(posedge clk_2f);
		data_in <= $random;
		valid_in <= 1;

		@(posedge clk_2f);
		data_in <= $random;

		@(posedge clk_2f);
		data_in <= $random;

		@(posedge clk_2f);
		data_in <= $random;
		valid_in <= 0;

		@(posedge clk_2f);
		data_in <= $random;

		@(posedge clk_2f);
		data_in <= $random;
		valid_in <= 1;

		@(posedge clk_2f);
		data_in <= $random;

		@(posedge clk_2f);
		data_in <= $random;
		valid_in <= 0;

		@(posedge clk_2f);
		data_in <= $random;

		$finish;	
	end

	initial	clk_2f 	<= 0;	
		
	always	#25 clk_2f 	<= ~clk_2f;	
     initial	clk_8f <= 1;
	always	#1 clk_8f <= ~clk_8f;
endmodule
