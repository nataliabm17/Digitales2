module probador_demux (
	output reg clk_2f, 
	output reg reset,
	input [7:0] data_out_0,
	input [7:0] data_out_1,
	output reg [7:0] data_in,
    output reg valid_in,
    input valid_out_0,
    input valid_out_1,
    input valid_out0_synth,
    input valid_out1_synth, 
    input [7:0] out_synth0,
	input [7:0] out_synth1);
    
    reg selector; 
    reg error; 
    reg [7:0]out0_pr_est;
    reg [7:0]out1_pr_est;
    reg [7:0]out0_pr_cond;
    reg [7:0]out1_pr_cond;
    
initial begin
	$dumpfile("demux.vcd");
	$dumpvars;
	{clk_2f,reset}= 3'b0;
     data_in=1'h0;
    @ (posedge clk_2f)
    valid_in<=1'b0; 
   reset<=1'b0; 
   repeat (14) begin     
        @ (posedge clk_2f)
        reset<=1'b1; //Se asignan valores aleatorios para las pruebas
        data_in<= $random; 
       //  if (data_in) begin
      
        valid_in<=$random;//1'b1; 
        //end else begin
        //valid_in<=0;
        //end
           
    end 
   
		
#10 $finish;		

end
     always @(posedge clk_2f) begin
    out0_pr_est<=out_synth0;
    out1_pr_est<=out_synth1; 
    out0_pr_cond<=data_out_0;
    out1_pr_cond<=data_out_1; 
    end
   always @(*) begin
    if (out0_pr_est==out0_pr_cond & out1_pr_est==out1_pr_cond) begin
       error=0;  
    end else begin
        error =1; 
        end 
    end 
		initial clk_2f <=0; //Se crea la senal de reloj

		always #2 clk_2f <= ~clk_2f; 
       
 
endmodule

