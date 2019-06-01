module mux (
	input clk,
	input reset_L,
	output reg[7:0] data_out,
	input [7:0] data_in0,
	input [7:0] data_in1,
	input valid_in0,
	input valid_in1,
	output reg valid_out);
	
	reg selector, validout_mem, flag, selector2, dataout_mem;
	reg[7:0] data_outmem;
	reg[1:0] contador;

	initial begin
		valid_out = 0;
		validout_mem = 0;
		flag = 0;
		selector = 0;
		selector2 = 0;
		contador = 'b0;
		
	end
	always @ (*) begin
		data_out = dataout_mem;
		valid_out = validout_mem;
		if (valid_in0 == 0 && valid_in1 == 0)begin
			data_out = dataout_mem;
			valid_out = validout_mem;
		end
		else begin
			if (!reset_L) begin
				data_out = 8'b0;
			end
			else begin
				if (valid_in0 == 1 && valid_in1 == 0)begin
					data_out = data_in0;
					flag = 1;	
					selector = 0;					
				end
				else if (valid_in0 == 0 && valid_in1 == 1)begin
					data_out = data_in1;
					flag = 1;
					selector = 1;						
				end
				else if (valid_in0 == 1 && valid_in1 == 1)begin
					if (flag) begin
						if (selector)begin
							data_out = data_in1;
						end
						else begin
							data_out = data_in0;
						end
					end
					else begin
						if (selector2) begin
							data_out = data_in1;
							selector = 1;
							flag = 1;
							selector2 = 0;
						end
						else begin
							data_out = data_in0;
							selector = 0;
							flag = 1;
							selector2 = 1;
						end
					end						
				end
				else begin
					flag = 0;
				end
			end
		end
	end
	always @ (posedge clk) begin
		dataout_mem = data_out;
	end

endmodule
