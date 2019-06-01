module FlopsSerialUnstripe (
                      input [7:0]data_in0,
                      input valid_in,
                      input clk_2f,
                      input reset,
                      output reg valid_out,
                      output reg [7:0]data_out0

                      );

   always @ (posedge clk_2f) begin
      if (!reset) begin
         data_out0 <= 0;
         valid_out <= 0;

      end else begin
         data_out0 <= data_in0;
         valid_out <= valid_in;
      end
   end

endmodule
