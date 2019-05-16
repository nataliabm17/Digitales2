//Daniela Bucce, B61256
//Tarea 2
//Descripcion conductual
//Se instancian entradas y salidas 

module demux (
	input clk_2f, 
	input reset,
    input valid_in,
	output reg [7:0] data_out_0,
	output reg [7:0] data_out_1,
    output reg valid_out_0,
    output reg valid_out_1,
	input [7:0] data_in);

    reg selector; //Senal interna
    reg [7:0]data_out_mem0;
    reg [7:0]data_out_mem1; 
    reg selectorF; 
        
     
	always @(*) begin //Se crea demux 
        valid_out_0=1'b0; 
        valid_out_1=1'b0; 
        
      data_out_0=data_out_mem0;
      data_out_1=data_out_mem1;
        if (valid_in==1) begin
        //valid_out_0=1'b0; 
        //valid_out_1=1'b0; 
               selector=selectorF;
        if (reset==1) begin
         
            if (!selector) begin
            //data_out_0=data_in;
            
                                                                                                                                              
               // if (valid_in==1) begin   
                data_out_0=data_in;              
               // valid_out_0=1'b1; 
                //valid_out_1=1'b0; 
               // data_out_0=data_out_mem0; 
               data_out_1=data_out_mem1;
                
                valid_out_0=1'b1; 
                valid_out_1=1'b0;
                
               // end else begin
                //valid_out_0=1'b0; 
               // data_out_0=data_out_mem0; 
                //end   
            end 
            else begin 
                //valid_out_0=data_in;
               // if (valid_in==1) begin
                data_out_1=data_in; 
              //  valid_out_1=1'b1;
               // valid_out_0=1'b0; 
                data_out_0=data_out_mem0;
                
                valid_out_1=1'b1; 
                valid_out_0=1'b0; 


                
               // end else begin
               // valid_out_1=1'b0;   
                //valid_out_0=data_out_mem1;
                //end 
            end         
        end
        else begin
            data_out_0=1'h0;
            data_out_1=1'h0; 
            selector=0; 
           // selectorF=0; 
        end 
        end else begin
        if (reset==1) begin
        selector=selectorF; 
        data_out_0=data_out_mem0;
        data_out_1=data_out_mem1; 
        valid_out_0=1'b0; 
        valid_out_1=1'b0; 
        end else begin
        
        data_out_0=1'b0;
        data_out_1=1'b0; 
        selector=0; 
        end 
        end 
    end
       
	 always @ (posedge clk_2f) begin 
     data_out_mem0=data_out_0; 
     data_out_mem1=data_out_1;
        
     end 
    always@(posedge valid_in) begin
        if (reset==1) begin
        if (selectorF) begin
        selectorF <=1'b0;        
        end else begin
        selectorF <=1'b1;
        end  
       end  else begin
        selectorF<=0;
        end
    end

endmodule


