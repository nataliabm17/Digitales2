module etapa_flops (
                      input [7:0]      data_in0,
                      input [7:0]      data_in1,
                      input            valid_in0,
                      input            valid_in1,
                      output reg [7:0] data_out0,
                      output reg [7:0] data_out1,
                      output reg       valid_out0,
                      output reg       valid_out1,
                      input            clk_2f,
                      input            reset
                      );

   always @ (posedge clk_2f) begin
      if (!reset) begin
         data_out0 <= 0;
         data_out1 <= 0;
         valid_out0 <= 0;
         valid_out1 <= 0;

      end else begin
         data_out0 <= data_in0;
         data_out1 <=data_in1;
         valid_out0 <= valid_in0;
         valid_out1 <= valid_in1;
      end
   end

endmodule 


