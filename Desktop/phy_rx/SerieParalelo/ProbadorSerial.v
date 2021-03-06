module ProbadorSerial(
    input [7:0] data2send,
    input [3:0] BC_counter,
    input valid_out,
    input active,
    input [7:0] data2send_est,
	input [3:0]	BC_counter_est,
	input valid_out_est,
	input active_est,

    output reg clk_f,
    output reg clk_8f,
    output reg data_in,
    output reg reset
);
    initial begin
        $dumpfile("ConvertidorSP.vcd");
        $dumpvars;
        reset <= 0;
        data_in <= 0;
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
        @(posedge clk_8f)
            data_in <= 1;
            reset <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= $random;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 1;
        @(posedge clk_8f)
            data_in <= 0;
        @(posedge clk_8f)
            data_in <= 0;
    #100 $finish;
    end
    initial clk_8f <= 1;
    always #1 clk_8f <= ~clk_8f;
    initial clk_f <= 0;
    always #8 clk_f <= ~clk_f;
endmodule // ProbadorSerial
