module etapa2_flops (
                      input [7:0]      data_in0,
                      input            valid_in0,
                      output reg [7:0] data_out0,
                      output reg       valid_out0,
                      input            clk_8f,
                      input            reset
                      );

   always @ (posedge clk_8f) begin
      if (!reset) begin
         data_out0 = 0;
         valid_out0 = 0;
      end else begin
         data_out0 = data_in0;
         valid_out0 = valid_in0;
      end
   end

endmodule 


