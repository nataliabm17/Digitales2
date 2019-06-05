   module flops_rx (
                      input      data_in0,
                       output reg data_out0,
                      input            clk_8f,
                      input            reset
                      );
  reg data_out01,data_out02, data_out03, data_out04,data_out05,data_out06,data_out07,data_out08,data_out09;
   always @ (posedge clk_8f) begin
      if (!reset) begin
         data_out0 <= 0;
         data_out01 <= 0;
         data_out02 <= 0;
         data_out03 <= 0;
         data_out04 <= 0;
         data_out05 <= 0;
      end else begin
         data_out01 <= data_in0;
      end
   end
   always @ (posedge clk_8f) begin
      if (!reset) begin
         data_out0 <= 0;
         data_out01 <= 0;
         data_out02 <= 0;
         data_out03 <= 0;
         data_out04 <= 0;
         data_out05 <= 0;
      end else begin
         data_out02 <= data_out01;
      end
   end
   always @ (posedge clk_8f) begin
      if (!reset) begin
         data_out0 <= 0;
         data_out01 <= 0;
         data_out02 <= 0;
         data_out03 <= 0;
         data_out04 <= 0;
         data_out05 <= 0;
      end else begin
         data_out03 <= data_out02;
      end
   end
   always @ (posedge clk_8f) begin
      if (!reset) begin
         data_out0 <= 0;
         data_out01 <= 0;
         data_out02 <= 0;
         data_out03 <= 0;
         data_out04 <= 0;
         data_out05 <= 0;
      end else begin
         data_out04 <= data_out03;
      end
   end
   always @ (posedge clk_8f) begin
      if (!reset) begin
         data_out0 <= 0;
         data_out01 <= 0;
         data_out02 <= 0;
         data_out03 <= 0;
         data_out04 <= 0;
         data_out05 <= 0;
      end else begin
         data_out05 <= data_out04;
      end
   end
   always @ (posedge clk_8f) begin
      if (!reset) begin
         data_out0 <= 0;
         data_out01 <= 0;
         data_out02 <= 0;
         data_out03 <= 0;
         data_out04 <= 0;
         data_out05 <= 0;
      end else begin
         data_out0 <= data_out05;
      end
   end
   // always @ (posedge clk_8f) begin
   //    if (!reset) begin
   //       data_out0 <= 0;
   //       data_out01 <= 0;
   //       data_out02 <= 0;
   //       data_out03 <= 0;
   //       data_out04 <= 0;
   //       data_out05 <= 0;
   //    end else begin
   //       data_out07 <= data_out06;
   //    end
   // end
   // always @ (posedge clk_8f) begin
   //    if (!reset) begin
   //       data_out0 <= 0;
   //       data_out01 <= 0;
   //       data_out02 <= 0;
   //       data_out03 <= 0;
   //       data_out04 <= 0;
   //       data_out05 <= 0;
   //    end else begin
   //       data_out08 <= data_out07;
   //    end
   // end
   // always @ (posedge clk_8f) begin
   //    if (!reset) begin
   //       data_out0 <= 0;
   //       data_out01 <= 0;
   //       data_out02 <= 0;
   //       data_out03 <= 0;
   //       data_out04 <= 0;
   //       data_out05 <= 0;
   //    end else begin
   //       data_out09 <= data_out08;
   //    end
   // end
   // always @ (posedge clk_8f) begin
   //    if (!reset) begin
   //       data_out0 <= 0;
   //       data_out01 <= 0;
   //       data_out02 <= 0;
   //       data_out03 <= 0;
   //       data_out04 <= 0;
   //       data_out05 <= 0;
   //    end else begin
   //       data_out0 <= data_out09;
   //    end
   // end
endmodule
