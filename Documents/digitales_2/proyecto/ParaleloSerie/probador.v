module probador(
    output reg clk_8f,
    output reg valid_in,
    output reg [7:0]data_inP,
    output reg reset,
    input [7:0]data2send,
    input data_outS,
    output reg clk_f);


    initial begin
	$dumpfile("ParaleloSerie.vcd");
	$dumpvars;
    reset = 0;
    @(posedge clk_f)
    reset = 1;
    valid_in<=0;
    @(posedge clk_f)
    valid_in<=1;
    data_inP<='hAA;
    @(posedge clk_f)
    data_inP<='hBB;
    @(posedge clk_f)
    data_inP<='hAC;




    #100 $finish;
    end

    initial clk_f <= 0;
      always #8 clk_f<= ~clk_f;
    initial clk_8f <=1;
      always #1 clk_8f<= ~clk_8f;




endmodule
