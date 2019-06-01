module byte_striping (
    input clk_2f,
    input clk_f,
    input valid_in,
    input [7:0]data_in,
    input reset,
    output reg [7:0] lane_0,
    output reg  [7:0]lane_1,
    output reg valid_0,
    output reg valid_1
);
    reg contador1, contador0, v_in;//, contadorv0, contadorv1;
    reg [7:0]in;
    always @(posedge clk_2f)begin
    if (!reset)begin
    v_in<=0;
    in<=0;
    end else begin
    v_in<=valid_in;
    in<=data_in;
    end
    end
    always @(negedge clk_f)begin 
   // if (lane_0!=in)
    //valid_0<=0;
    if (!reset) begin 
    valid_1<=0;
    end else begin
    if (lane_1!=in)
    valid_1<=0; 
    /*88else 
    valid_1<=1;*/
     if (contador1==0&&v_in==1)
    valid_1<=1;
    else 
    valid_1<=0;
    end
    end
    always @(posedge clk_f)begin 
    if (!reset) begin 
    valid_0<=0;  
    end else begin   
    if (lane_0!=in)
    valid_0<=0;
   /*888 else
    valid_0<=1;*/
     if (contador0==0&&v_in==1)
    valid_0<=1;
    else
    valid_0<=0;
    end
        end 
   always @(posedge clk_2f)begin
       if(!reset) begin
        contador0<=0;
        contador1<=1;
       lane_0<=0;
       lane_1<=0;
       // valid_0<=0;
        //valid_1<=0;
    //    contadorv0<=0;
      //  contadorv1<=1;
        end else begin
    if(v_in==1) begin
        if (contador0==0&&v_in==1) begin
        lane_0<=in;
        contador0<=contador0+1;
        contador1<=contador1+1;

       // valid_0<=1;
        //contadorv0<=contadorv0+1;
        //contadorv1<=contadorv1+1;
       // if (contadorv1==1)
        //  valid_1<=0;
      end else begin
        lane_1<=in;
        contador1<=contador1+1;
        contador0<=contador0+1;
       // valid_1<=1;
        //contadorv0<=contadorv0+1;
      //  contadorv1<=contadorv1+1;
    //    if (contadorv0==0)
      //    valid_0<=0;
        end
        if (contador1==0&&v_in==1) begin
        lane_1<=in;
        contador1<=contador1+1;
        contador0<=contador0+1;
      //  valid_1<=1;
        //contadorv0<=contadorv0+1;
       // contadorv1<=contadorv1+1;
     //   if (contadorv0==0)
       //   valid_0<=0;
        end else begin
        lane_0<=in;
        contador0<=contador0+1;
        contador1<=contador1+1;
       // valid_0<=1;
      //sss  contadorv0<=contadorv0+1;
      //  contadorv1<=contadorv1+1;
     // if (contadorv1==1)
       // valid_1<=0;
        end/*
       end else begin
        if (contadorv0==0)
    valid_0<=0;
        if (contadorv1==1)
    valid_1<=0;
*/
        end
    end
   end
endmodule

