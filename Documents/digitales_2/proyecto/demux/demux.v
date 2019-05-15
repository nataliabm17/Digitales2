module demux (
	input clk,
	input reset_L,
	output reg[7:0] dataout0,
	output reg[7:0] dataout1,
	input [7:0] data_in,
	input valid_in,
	output reg validout0,
	output reg validout1);
	
	reg selector, valid_out0_mem, valid_out1_mem;
	reg[7:0] data_out0_mem;
	reg[7:0] data_out1_mem;

	initial begin
		validout0 = 0;
		validout1 = 0;
		valid_out0_mem = 0;
		valid_out1_mem = 0;
	end
	always @ (*) begin
		dataout0 = data_out0_mem;
		dataout1 = data_out1_mem;
		validout0 = valid_out0_mem;
		validout1 = valid_out1_mem;
		if (valid_in == 1)begin
			if (!reset_L) begin
				dataout0 = 8'b0;
				dataout1 = 8'b0;
			end
			else begin
				if (!selector) begin
					dataout0 = data_in;
					validout0 = 1;
					validout1 = 0;
				end
				else begin
					dataout1 = data_in;
					validout1 = 1;
					validout0 = 0;
				end
			end
		end
		else begin
			dataout0 = data_out0_mem;
			dataout1 = data_out1_mem;
			validout0 = valid_out0_mem;
			validout1 = valid_out1_mem;
		end
	end
	always @ (posedge clk) begin
		data_out0_mem = dataout0;
		data_out1_mem = dataout1;
		if (!reset_L) begin
			selector <= 1'b0;
		end 
		else begin
			selector <= ~selector;
		end
	end

endmodule
