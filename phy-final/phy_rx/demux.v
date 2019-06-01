module demux (
	input clk_2f,
	input reset,
	output reg[7:0] data_out_0,
	output reg[7:0] data_out_1,
	input [7:0] data_in,
	input valid_in,
	output reg valid_out_0,
	output reg valid_out_1);
	
	reg selector, flag;
	always @(posedge clk_2f) begin
		if (!reset) begin
			selector <= 0;
			flag <= 0;
			valid_out_0 <= 0;
			valid_out_1 <= 0;
			data_out_0 <= 0;
			data_out_1 <= 0;
		end
		else if (selector == 1 && valid_in == 1) begin

			if (!flag) begin
				data_out_1 <= data_in;
				valid_out_1 <= 1;
				valid_out_0 <= 0;
				selector <= 0;
				flag <= 1;
			end	
			else begin
				data_out_0 <= data_in;
				valid_out_0 <= 1;
			end
		end
		else if(selector == 0 && valid_in == 1) begin
			
			if (!flag) begin
				data_out_0 <= data_in;
				valid_out_0 <= 1;
				valid_out_1 <= 0;
				flag <= 1;
				selector <= 1;
			end
			else begin
				data_out_1 <= data_in;
				valid_out_1 <= 1;
			end
		end
		else begin
			flag <= 0;
			valid_out_0 <= 0;
			valid_out_1 <= 0;
		end
	end

endmodule
