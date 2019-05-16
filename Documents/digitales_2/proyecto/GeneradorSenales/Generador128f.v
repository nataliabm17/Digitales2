module Generador128f (
  input clk_8f,
  input reset,
  output reg clk_f,
  output reg clk_2f);

  reg [1:0] contador;

  always @ (posedge clk_8f) begin
    if (reset == 0) begin
      contador <= 0;
      clk_2f <= 0;
      clk_f <= 0;
    end else begin
      contador <= contador + 1;
      if (contador == 0 || contador == 2) begin
        clk_2f <= ~clk_2f;
      end else begin
        clk_2f <= clk_2f;
      end
      if (contador == 2) begin
        clk_f <= ~clk_f;
      end else begin
        clk_f <= clk_f;
      end
    end
  end
endmodule //Generador12clk_8f
