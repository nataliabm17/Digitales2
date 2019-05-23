module ParaleloSerie (
  input [7:0] data_inP,
  input reset,
  input clk_8f,
  input clk_f,
  input valid_in,
  output reg  [7:0] data2send,
  output reg data_outS);

  reg [2:0] out44, out44F;
  reg [7:0] data2sendF;

  always @ (posedge clk_8f) begin
    out44F <= out44 -1;
    data2sendF <= data2send;
  end

  always @ ( * ) begin
    data_outS = data2send[out44F];
    out44 = out44F;
    if (reset == 1) begin
      if (valid_in == 1) begin
        data2send = data_inP;
      end else begin
        data2send = 'hBC;
      end
    end else begin
      out44 = 8;
      data_outS = 0;
      data2send = data2sendF;
    end
  end

endmodule // ParaleloSerie
