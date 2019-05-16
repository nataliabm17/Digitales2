module ProbadorGenerador (
  input clk_f,
  input clk_2f,
  input clk_f_Est,
  input clk_2f_Est,
  output reg clk_8f,
  output reg reset);

  reg contar;
  initial begin
		$dumpfile("Generador128f.vcd");	// Nombre de archivo del "dump"
		$dumpvars;
    reset = 0;
    contar = 0;
    @(posedge clk_8f);
    reset <= 1;
    repeat(16)
      @(posedge clk_8f);
      contar = contar+1;
		$finish;
	end
  initial	clk_8f <= 0;
	always	#1 clk_8f <= ~clk_8f;

endmodule //ProbadorGenerador
