module probador(
  output reg clk_8f,
  output reg resetCLK,
  output reg reset,
  output reg [7:0]data_in0,
  output reg [7:0]data_in1,
    output reg valid_in0,
    output reg valid_in1,
  input[7:0] data_out_0,
  input[7:0] data_out_1,
  input  valid_out_0,
  input valid_out_1,
  input[7:0] data_out_0_synth,
  input[7:0] data_out_1_synth,
  input  valid_out_0_synth,
  input clk_2f,
  input valid_out_1_synth
);

		initial begin
		$dumpfile("phy.vcd");
		$dumpvars;
        reset <= 0;
        resetCLK <= 0;
        data_in0 <= 0;
        data_in1<=0;
        valid_in1<=0;
        valid_in0<=0;

	      @(posedge clk_8f)
        resetCLK <=1;
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
          data_in0 <= 'hBC;
          data_in1 <= 'hBC;
          reset <= 1;
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
    repeat (6) begin

		//reset <= 1;
		data_in0 <= 'hBA;
		data_in1 <= 'hBD;
    valid_in1 <= 0;
		valid_in0 <= 0;


		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);

    //data_in0 <= 'hBC;
		data_in1 <= 'hAB;
    valid_in1 <= 0;
		valid_in0 <= 0;

		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);

		data_in0 <= 'h90;
		//data_in1 <= 'hBC;
    valid_in1 <= 1;
    valid_in0 <= 1;

		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);

		data_in0 <= 'h0A;
		data_in1 <= 'h5D;
    valid_in0 <= 1;
		valid_in1 <= 1;

		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);

		data_in0 <= 'h56;
		data_in1 <= 'h24;
		valid_in0 <= 1;
		valid_in1 <= 1;

    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);

    data_in0 <= 'hAB;
    data_in1 <= 'hCD;
    valid_in0 <= 1;
    valid_in1 <= 1;

    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);

    data_in0 <= 'h9A;
    data_in1 <= 'h8B;
    valid_in0 <= 1;
    valid_in1 <= 1;

		@(posedge clk_8f);
		@(posedge clk_8f);
		@(posedge clk_8f);
    @(posedge clk_8f);


      data_in0 <= 'hAA;
      data_in1 <= 'h7B;
      valid_in0 <= 1;
      valid_in1 <= 1;



      end

   #100$finish;
	end


     initial	clk_8f <= 0;
	always	#1 clk_8f <= ~clk_8f;
endmodule
