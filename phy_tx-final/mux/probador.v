module probador( 
  output reg f2,
  output reg reset_L,
  input [7:0] data_out,
  output reg[7:0] data_in0,
  output reg[7:0] data_in1,
  output reg valid_in0,
  output reg valid_in1,
  input valid_out,
  input [7:0] data_out_synth,
  input valid_out_synth
);	
	initial begin
		$dumpfile("mux.vcd");
		$dumpvars;			
		reset_L = 0;
		valid_in0 = 0;
		valid_in1 = 0;
		data_in0 = 8'b0;
		data_in1 = 8'b0;
		
		@(posedge f2);
		reset_L <= 1;
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in0 <= 1;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in1 <= 1;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;


		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in1 <= 0; 
		valid_in0 <= 0;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in1 <= 1; 

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in0 <= 1;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in0 <= 0;
		valid_in1 <= 0; 

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in0 <= 1;
		valid_in1 <= 1; 

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in0 <= 0;
		valid_in1 <= 0; 

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;
		valid_in0 <= 1;
		valid_in1 <= 1; 

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;

		@(posedge f2);
		data_in0 <= $random;
		data_in1 <= $random;


		$finish;	
	end

	initial	f2 	<= 0;			
	always	#25 f2 	<= ~f2;	
endmodule
