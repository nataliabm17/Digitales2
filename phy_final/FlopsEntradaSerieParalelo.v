module FlopsEntradaSerieParalelo (
                      input data_in0,
                      input data_in1,
                      input clk_8f,
                      input reset,
                      output reg data_out0,
                      output reg data_out1
                      );

   always @ (posedge clk_8f) begin
      if (!reset) begin
         data_out0 <= 0;
         data_out1 <= 0;
      end else begin
         data_out0 <= data_in0;
         data_out1 <= data_in1;
      end
   end

endmodule
