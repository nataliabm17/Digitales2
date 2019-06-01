module flopClock (
                      input       data_in,
                      output reg  data_out,
                      input            clk_2f,
                      input            reset,
                      output reg resetNEG
                      );

   always @ (posedge clk_2f) begin
      if (!reset) begin
         data_out <= 0;
         resetNEG <=0;

      end else begin
         data_out <= data_in;
         resetNEG <= reset;
      end
   end

endmodule
