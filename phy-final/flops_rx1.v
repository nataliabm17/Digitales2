module flops_rx1 (
                      input      data_in0,
                      output reg  data_out0,
                      input            clk_8f,
                      input            reset
                      );
  reg data_out01;
   always @ (posedge clk_8f) begin
      if (reset==0) begin
         data_out0 <= 0;
         data_out01 <= 0;
      end else begin
         data_out0 <= data_in0;
      end
   end
   // always @ (posedge clk_8f) begin
   //    if (reset==0) begin
   //       data_out0 <= 0;
   //       data_out01 <= 0;
   //    end else begin
   //       data_out0 <= data_out01;
   //    end
   // end

endmodule
