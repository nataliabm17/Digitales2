module byte_striping (
    input clk_2f, 
    input valid_in,
    input [7:0]data_in,
    input reset,
    output reg [7:0] lane_0,
    output reg  [7:0]lane_1, 
    output reg valid_0,
    output reg valid_1
);
    reg contador1, contador0; 
   always @(posedge clk_2f)begin
       if(!reset) begin 
        contador0<=0; 
        contador1<=1;
       lane_0<=0; 
       lane_1<=0;
        valid_0<=0; 
        valid_1<=0; 
        end else begin 
    if(valid_in==1) begin
        if (contador0==0&&valid_in==1) begin
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
        if (contador1==0&&valid_in==1) begin 
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
       end else begin
    valid_0<=0;
    valid_1<=0; 
        end  
    end
   end 
endmodule
