module probador(
  output reg clk_2f,
  output reg clk_f,
  output reg clk_8f,
  output reg reset,
  output reg data_in0,
  output reg data_in1,
  input[7:0] data_out_0,
  input[7:0] data_out_1,
  input  valid_out_0,
  input valid_out_1,
  input[7:0] data_out_0_synth,
  input[7:0] data_out_1_synth,
  input  valid_out_0_synth,
  input valid_out_1_synth
);

		initial begin
		$dumpfile("phy.vcd");
		$dumpvars;
        reset <= 0;
        data_in0 <= 0;
        data_in1<=0;
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
		    @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
repeat (2) begin
        @(posedge clk_8f)
			data_in1 <= 1;
            data_in0 <= 1;
            reset <= 1;
        @(posedge clk_8f)
            data_in0 <= 0;
			data_in1 <= 0;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 0;
			data_in1 <= 0;
        @(posedge clk_8f)
            data_in0 <= 0;
			data_in1 <= 0;//1
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 0;
			data_in1 <= 0;
        @(posedge clk_8f)
            data_in0 <= 1;
            data_in1<=1;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 0;
            data_in1<=0;
        @(posedge clk_8f)
            data_in0 <= 0;
			data_in1 <= 0;//2
      @(posedge clk_8f)
          data_in0 <= 1;
    data_in1 <= 1;
      @(posedge clk_8f)
          data_in0 <= 0;
    data_in1 <= 0;
      @(posedge clk_8f)
          data_in0 <= 1;
          data_in1<=1;
      @(posedge clk_8f)
          data_in0 <= 1;
    data_in1 <= 1;
      @(posedge clk_8f)
          data_in0 <= 1;
    data_in1 <= 1;
      @(posedge clk_8f)
          data_in0 <= 1;
    data_in1 <= 1;
      @(posedge clk_8f)
          data_in0 <= 0;
          data_in1<=0;
      @(posedge clk_8f)
          data_in0 <= 0;
    data_in1 <= 0;//3
    @(posedge clk_8f)
        data_in0 <= 1;
  data_in1 <= 1;
    @(posedge clk_8f)
        data_in0 <= 0;
  data_in1 <= 0;
    @(posedge clk_8f)
        data_in0 <= 1;
        data_in1<=1;
    @(posedge clk_8f)
        data_in0 <= 1;
  data_in1 <= 1;
    @(posedge clk_8f)
        data_in0 <= 1;
  data_in1 <= 1;
    @(posedge clk_8f)
        data_in0 <= 1;
  data_in1 <= 1;
    @(posedge clk_8f)
        data_in0 <= 0;
        data_in1<=0;
    @(posedge clk_8f)
        data_in0 <= 0;
  data_in1 <= 0;//4
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;//1
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;//2
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;//3
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;//4
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;//5
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;//6
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;//7
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;//8
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;//9
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)//10
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;
        @(posedge clk_8f)
            data_in0 <= $random;
			data_in1 <= $random;//11
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <=1;
			data_in1 <= 1;
        @(posedge clk_8f)
            data_in0 <= 1;
			data_in1 <= 1;//12

        end

   $finish;
	end


	initial	clk_2f 	<= 1;
	always	#4 clk_2f 	<= ~clk_2f;
     initial	clk_8f <= 1;
	always	#1 clk_8f <= ~clk_8f;
    initial clk_f <= 1;
      always #8 clk_f<= ~clk_f;
endmodule

