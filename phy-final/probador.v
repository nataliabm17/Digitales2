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

	   /*   @(posedge clk_8f)
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
        @(posedge clk_8f)*/
        @(posedge clk_8f)
          resetCLK <=1;


        @(posedge clk_2f)
        @(posedge clk_2f)
      // @(posedge clk_2f)
         data_in0 <= 'hBC;
         data_in1 <= 'hBC;
         reset<=1;
        @(posedge clk_2f)
        @(posedge clk_2f)
        @(posedge clk_2f)
        @(posedge clk_2f)
        repeat (2) begin
        data_in0 <= 'hAA;
        data_in1 <= 'hDC;
        valid_in0 <= 0;
        valid_in1<=0;
        @(posedge clk_2f)
        valid_in0 <= 0;
        valid_in1<=0;
        data_in0 <= 'h3A;
        data_in1 <= 'hAB;
      @(posedge clk_2f)
        data_in0 <= 'h90;
        //data_in1 <= 'h;
        valid_in1 <= 1;
        valid_in0 <= 1;
        @(posedge clk_2f)
        data_in0 <= 'h0A;
        data_in1 <= 'h5D;
        //valid_in0 <= 1;
        //valid_in1 <= 1;
        @(posedge clk_2f)

        data_in0 <= 'h56;
        data_in1 <= 'h24;
      //  valid_in0 <= 1;
      //  valid_in1 <= 1;

        @(posedge clk_2f)

        data_in0 <= 'hAB;
        data_in1 <= 'hCD;
      //  valid_in0 <= 1;
      //  valid_in1 <= 1;

        @(posedge clk_2f)
        data_in0 <= 'h9A;
        data_in1 <= 'h8B;
      //  valid_in0 <= 1;
      //  valid_in1 <= 1;

        @(posedge clk_2f)
          data_in0 <= 'hAA;
          data_in1 <= 'h7B;
          valid_in0 <= 1;
          valid_in1 <= 1;

        @(posedge clk_2f)
        data_in0 <= 'h81;
        data_in1 <= 'h05;
        valid_in0 <= 1;
        valid_in1 <= 1;
        @(posedge clk_2f)
        data_in0 <= 'h03;
        data_in1 <= 'h34;
        valid_in0 <= 1;
        valid_in1 <= 1;
        @(posedge clk_2f)
        data_in0 <= 'h20;
        data_in1 <= 'h70;
        valid_in0 <= 1;
        valid_in1 <= 1;
        @(posedge clk_2f)
        data_in0 <= 'h58;
        data_in1 <= 'h4C;
    //    valid_in0 <= 0;
    //    valid_in1 <= 0;
        @(posedge clk_2f)
        data_in0 <= 'h43;
        data_in1 <= 'h60;
    //    valid_in0 <= 0;
    //    valid_in1 <= 0;
        @(posedge clk_2f)
        data_in0 <= 'h8A;
        data_in1 <= 'hBF;
        valid_in0 <= 1;
        valid_in1 <= 1;
        @(posedge clk_2f)
        data_in0 <= 'hBC;
        data_in1 <= 'hBC;
        valid_in0 <= 1;
        valid_in1 <= 1;
        @(posedge clk_2f)
        valid_in0 <= 1;
        valid_in1<=1;
        data_in0 <= 'hBC;
        data_in1 <= 'hBC;
      @(posedge clk_2f)
        data_in0 <= 'hBC;
        data_in1 <= 'h17;
        valid_in1 <= 1;
        valid_in0 <= 1;
        @(posedge clk_2f)
        data_in0 <= 'hBC;
        data_in1 <= 'h8E;
        valid_in0 <= 1;
        valid_in1 <= 1;
        @(posedge clk_2f)
          data_in0 <= 'hBC;
          data_in1 <= 'h16;
          valid_in1 <= 1;
          valid_in0 <= 1;
          @(posedge clk_2f)
          data_in0 <= 'hBC;
          data_in1 <= 'h23;
          valid_in0 <= 1;
          valid_in1 <= 1;
        @(posedge clk_2f)

        data_in0 <= 'h5D;
        data_in1 <= 'h44;
        valid_in0 <= 1;
        valid_in1 <= 1;
        /*@(posedge clk_2f)
        valid_in0 <= 0;
        valid_in1<=0;
        @(posedge clk_2f)
        valid_in0 <= 0;
        valid_in1<=0;
        @(posedge clk_2f)
        valid_in0 <= 0;
        valid_in1<=0;
        @(posedge clk_2f)
        valid_in0 <= 0;
        valid_in1<=0;*/

        end
  /*  repeat (6) begin

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



      end*/

   #400$finish;
	end


     initial	clk_8f <= 0;
	always	#1 clk_8f <= ~clk_8f;
endmodule
