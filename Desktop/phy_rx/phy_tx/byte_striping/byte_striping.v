module byte_striping (
    input clk_2f, 
	inout clk_f,
    input valid_in,
    input [7:0]data_in,
    input reset,
    output reg [7:0] lane_0,
    output reg  [7:0]lane_1, 
    output reg valid_0F,
    output reg valid_1F
);
	reg [7:0] lane0F, lane1F;

    reg contador1, contador0, valid_0, valid_1; 
   always @(posedge clk_2f)begin
       if(!reset) begin 
			valid_0F <= 0;
			valid_1F <= 0;
			lane0F <= 0;
			lane1F <= 0;
		    contador0<=0; 
		    contador1<=1;
		   lane_0<=0; 
		   lane_1<=0;
		    valid_0<=0; 
		    valid_1<=0; 
		end else begin 
	  		if(valid_in==1) begin
				if (contador0==0 && valid_in==1) begin
					lane_0<=data_in; 
					contador0<=contador0+1;
					contador1<=contador1+1; 
					valid_0<=1; 
					valid_1<=0; 
				end else begin
					lane_1<=data_in; 
					contador1<=contador1+1;
					contador0<=contador0+1; 
					valid_0<=0; 
					valid_1<=1;
				end
				if (contador1==0 && valid_in==1) begin 
					lane_1<=data_in; 
					contador1<=contador1+1; 
					contador0<=contador0+1;
					valid_0<=0; 
					valid_1<=1;
				end else begin 
					lane_0<=data_in; 
					contador0<=contador0+1; 
					contador1<=contador1+1;
					valid_0<=1; 
					valid_1<=0;
				end
			end 
			else begin
				valid_0<=0;
				valid_1<=0; 
			end  
		end
   end 
	always @(posedge clk_f) begin
		valid_0F <= valid_0;
		valid_1F <= valid_1;
	end

endmodule
