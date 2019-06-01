module ParaleloSerie (
  input [7:0] data_inP,
  input reset,
  input clk_8f,
  input clk_f,
  input valid_in,
  output reg  [7:0] data2send,
  output reg data_outS);

  reg [2:0] out44, out44F;
  reg contar, contarF;
  reg [7:0] data2sendF, datainF;

/*  always @ (posedge clk_f) begin
	if (!reset) begin
		datainF <= 0;
	end
	else begin
		datainF <= data_inP;
	end
  end*/

  // always @ (posedge clk_8f) begin
  //   out44 <= out44 -1;
  //   data_outS <= data2send[out44];
  //   if (reset == 1) begin
  //     if (valid_in == 1) begin
  //       data2send <= data_inP;
  //       //contar = contarF;
  //     end else begin
  //       data2send <= 'hBC;
  //       contar = 0;
  //     end
  //     if (data2send != 'hBC && contar == 0) begin
  //       out44 <= 7;
  //       contar <=1;
  //     end
  //   end else begin
  //     out44 <= 8;
  //     data_outS <= 0;
  //     data2send <= 'hBC;
  //     contar <=0;
  //     //data2sendF;
  //   end
  // end
  // always @ (posedge clk_8f) begin
  //
  //   data2sendF <= data2send;
  //   contarF <= contar;
  // end
  always @ (posedge clk_8f) begin
    out44 <= out44 -1;
    data_outS <= data2send[out44];
    //out44 = out44F;
      if (reset == 1) begin
        if (valid_in == 1) begin
          data2send <= data_inP;
          //contar = contarF;
        end else begin
          data2send <= 'hBC;
          //contar =0;
        end
        // if (data2sendF != 'hBC && contar == 0) begin
        //   //out44 = 7;
        //   contar =1;
        // end
      end else begin
        out44 <= 8;
        data_outS <= 0;
        data2send <= 'hBC;
        //contar =0;
        //data2sendF;
      end
  end

  // always @ (*) begin
  //   data_outS <= data2send[7] << 1;
  //   if (valid_in == 1) begin
  //     data2send <= data_inP;
  //   end else begin
  //     data2send <= 'hBC;
  //   end
  // end
  //
  // // always @ (posedge clk_8f) begin
  //
  // end


  // always @ ( * ) begin
  //   data_outS = data2send[contar];
  //   out44 = contar;
  //   if (reset == 1) begin
  //     if (valid_in == 1) begin
  //       data2send = data_inP;
  //     end else begin
  //       data2send = 'hBC;
  //     end
  //   end else begin
	//   data2sendF = 'hBC;
  //     out44 = 8;
  //     data_outS = 0;
  //     data2send = data2sendF;
  //   end
  // end

endmodule // ParaleloSerie
