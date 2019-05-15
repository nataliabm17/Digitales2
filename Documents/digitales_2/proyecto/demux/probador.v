module probador( 
  output reg clk,
  output reg reset_L,
  output reg[7:0] data_in,
  input [7:0] dataout0, 
  input [7:0] dataout1,
  input [7:0] out_synth0, 
  input [7:0] out_synth1,
  output reg valid_in,
  input validout0,
  input validout1,
  input valid_out0_synth,
  input valid_out1_synth
);	
	reg error;

	initial begin
		$dumpfile("mux.vcd");
		$dumpvars;			
		reset_L = 0;
		valid_in = 0;
		data_in = 8'b0;
		
		@(posedge clk);
		data_in <= $random;
		valid_in <= 1;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;
		valid_in <= 0;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;
		valid_in <= 1;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;
		valid_in <= 0;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;
		valid_in <= 1;

		@(posedge clk);
		data_in <= $random;

		@(posedge clk);
		data_in <= $random;
		valid_in <= 0;

		@(posedge clk);
		data_in <= $random;

		$finish;	
	end

	initial	clk 	<= 0;			
	always	#25 clk 	<= ~clk;	
endmodule
