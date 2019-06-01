module unstriping (
	input clk_f,
	input clk_2f,
	input reset,
	input [7:0] lane_0,
	input  valid_0,
	input [7:0] lane_1,
	input valid_1,
	output reg [7:0] data_out,
	output reg valid_out);

	reg contador, selector;
	always @(posedge clk_2f) begin
		if (!reset) begin
			data_out <= 0;
			contador <= 0;
			selector <= 0;
			valid_out <= 0;
		end
		else begin
			if (!selector) begin
				if (valid_0) begin
					data_out <= lane_0;
					selector <= ~selector;
					valid_out <= 1;
				end
				else begin
					valid_out <= 0;
				end
			end
			else begin
				if (valid_1) begin
					data_out <= lane_1;
					selector <= ~selector;
					valid_out <= 1;
				end
				else begin
					valid_out <= 0;
				end

			end
		end
	end

endmodule
