module flops_valid (

                      input            valid_in,
                      output reg       valid_out,
                      input            clk_8f,
                      input            reset
                      );

   always @ (posedge clk_8f) begin
      if (!reset) begin
         valid_out <= 0;

      end else begin
         valid_out <=valid_in;
      end
   end

endmodule
