module probador( 
  output reg clk_f,
  output reg clk_2f,
  output reg reset,
  output reg[7:0] lane_0,
  output reg[7:0] lane_1,
  output reg valid_0,
  output reg valid_1,
  input [7:0] data_out,
  input valid_out,
  input [7:0] data_out_synth,
  input valid_out_synth
);	
	initial begin
		$dumpfile("unstriping.vcd");
		$dumpvars;		
		 @(posedge clk_2f)
			lane_0 <= 'b0;
			lane_1 <= 'b0;
			valid_0 <= 0;
			valid_1 <= 0;
			reset <= 0;
	
		 @(posedge clk_2f)
			lane_0 <= 8'hFF;
			lane_1 <= $random;
			valid_0 <= 1;
			valid_1 <= 0;
			reset <= 1;

		 @(posedge clk_2f)
			lane_0 <= 8'hFF;
			lane_1 <= 8'hEE;
			valid_0 <= 1;
			valid_1 <= 1;

		 @(posedge clk_2f)
			lane_0 <= 8'hDD;

		 @(posedge clk_2f)
			lane_1 <= 8'hCC;

		 @(posedge clk_2f)
			lane_0 <= $random;
			valid_0 <= 0;

		 @(posedge clk_2f)
			lane_1 <= $random;
			valid_1 <= 0;

		 @(posedge clk_2f)
			lane_0 <= 8'h03;
			valid_0 <= 1;

		 @(posedge clk_2f)
			lane_1 <= 8'h04;
			valid_1 <= 1;

		 @(posedge clk_2f)
			lane_0 <= $random;
			valid_0 <= 0;

		 @(posedge clk_2f)
			lane_1 <= $random;
			valid_1 <= 0;

		 @(posedge clk_2f)
			lane_0 <= 8'hAA;
			valid_0 <= 1;

		 @(posedge clk_2f)
			lane_1 <= 8'h99;
			valid_1 <= 1;

		 @(posedge clk_2f)
			lane_0 <= $random;
			valid_0 <= 0;

		 @(posedge clk_2f)
			lane_1 <= $random;
			valid_1 <= 0;

		 @(posedge clk_2f)


		$finish;
	
	end

	initial	clk_f 	<= 0;			
	always	#2 clk_f 	<= ~clk_f;	

	initial	clk_2f 	<= 1;			
	always	#1 clk_2f 	<= ~clk_2f;
	
endmodule
