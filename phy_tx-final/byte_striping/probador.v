module probador(
    output reg clk_2f, 
	output reg clk_f,
    output reg valid_in,
    output reg [7:0]data_in,
    output reg reset,
    input  [7:0] lane_0,
    input   [7:0]lane_1, 
    input  valid_0,
    input  valid_1,
    input  [7:0] lane_0_synth,
    input   [7:0]lane_1_synth, 
    input  valid_0_synth,
    input  valid_1_synth
);

    initial begin
	$dumpfile("byte_striping.vcd");
	$dumpvars;
    @(posedge clk_2f)
    reset<=0; 
     data_in<='h0;
    @(posedge clk_2f)
    reset<=1; 
    valid_in<=0; 
     data_in<='h0;
    @(posedge clk_2f)
    valid_in<=1; 
    data_in<='hFF;
    @(posedge clk_2f)
    data_in<='hEE;
    @(posedge clk_2f)
    data_in<='hDD;
     @(posedge clk_2f)
    data_in<='hCC;
    @(posedge clk_2f)
    valid_in<=0; 
    data_in<=$random; 
    @(posedge clk_2f)
    valid_in<=0; 
    data_in<=$random; 
    @(posedge clk_2f)
    valid_in<=1;
    data_in='h03;
    @(posedge clk_2f)
    valid_in<=1;
    data_in<='h04; 
     @(posedge clk_2f)
    valid_in<=0; 
    data_in<=$random; 
    @(posedge clk_2f)
    valid_in<=0; 
    data_in<=$random;
      @(posedge clk_2f)
    valid_in<=1;
    data_in='h07;
    @(posedge clk_2f)
    valid_in<=1;
    data_in<='h08;
    @(posedge clk_2f)
    valid_in<=0;
    data_in<=$random;  
   
		
 #15 $finish;
    end

initial clk_2f <=1; //Se crea la senal de reloj

		always #2 clk_2f<= ~clk_2f; 
           initial clk_f <= 1;
      always #8 clk_f<= ~clk_f;
 
endmodule
