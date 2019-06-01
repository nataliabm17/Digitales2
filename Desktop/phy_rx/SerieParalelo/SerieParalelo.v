`include "cmos_cells.v"
module SerieParalelo(
   input clk_f,
   input clk_8f,
   input data_in,
   input reset,

   output reg [7:0] data2send,
   output reg [3:0] BC_counter,
   output reg valid_out,
   output reg active
);
   reg [2:0] contador, contadorF;
   reg [7:0] pasoInSend, pasoInSendF;
   reg [3:0] BC_counterF;
   reg valid_outF, activeF;

always @(posedge clk_8f) begin
   contadorF <= contador - 1;
   pasoInSendF <= pasoInSend;
   activeF <= active;

end

always @(posedge clk_f) begin
   valid_outF <= active;
   data2send <= pasoInSend;
   if (reset == 0) begin
     BC_counter <= 'b0;
     
   end

   if (pasoInSend == 'hBC) begin
     BC_counter <= BC_counter + 1;
   end
end

always @(*) begin
   pasoInSend = pasoInSendF;
   contador = contadorF;
   if (reset == 'b1) begin
      pasoInSend[contadorF] = data_in;
      if (BC_counter == 4) begin
         active = 'b1;
         valid_out = valid_outF;
      end else begin
         valid_out = 'b0;
          active = activeF;
      end
   end else begin
    pasoInSend = 'b0;
    valid_out = 'b0;
    contador = 'b0;
    active = 'b0;
      //valid_out = 'b0;
   end
end
endmodule // SerieParalelo
