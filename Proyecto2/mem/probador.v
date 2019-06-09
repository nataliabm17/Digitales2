module probador( 
    output reg clk,
    output reg rst,
    output reg read_rq,
    output reg write_rq,
    output reg[3:0] w_address,
	output reg[3:0] r_address,
    output reg[4:0] write_data,
    input[4:0] read_data,
    input[4:0] read_data_synth
);	

	initial begin
		$dumpfile("mem.vcd");
		$dumpvars;			
		rst = 0;
		read_rq = 0;
		write_rq = 0;
		w_address = 'b0;
		r_address = 'b0;
		write_data = 'b0;
		@(posedge clk)
		@(posedge clk)
		@(posedge clk)
			rst = 1;
		@(posedge clk)
			write_rq = 1;
			w_address = 0;
			write_data = 0;
		@(posedge clk)
			w_address = 1;
			write_data = 1;
		@(posedge clk)
			w_address = 2;
			write_data = 2;
		@(posedge clk)
			w_address = 3;
			write_data = 3;
		@(posedge clk)
			w_address = 4;
			write_data = 4;
		@(posedge clk)
			w_address = 5;
			write_data = 5;
		@(posedge clk)
			w_address = 6;
			write_data = 6;
		@(posedge clk)
			w_address = 7;
			write_data = 7;
		@(posedge clk)
			write_rq = 0;
			w_address = 0;
			write_data = 0;
		@(posedge clk)
			read_rq = 0;
			r_address = 0;
		@(posedge clk)
			read_rq = 1;
			r_address = 0;
		@(posedge clk)
			r_address = 1;
		@(posedge clk)
			r_address = 2;
		@(posedge clk)
			r_address = 3;
		@(posedge clk)
			r_address = 4;
		@(posedge clk)
			r_address = 5;
		@(posedge clk)
			r_address = 6;
		@(posedge clk)
			r_address = 7;
		@(posedge clk)
			read_rq = 0;
		@(posedge clk)
			read_rq = 1;
			write_rq = 1;
			r_address = 0;
			w_address = 7;
			write_data = 0;
		@(posedge clk)
			r_address = 1;
			w_address = 6;
			write_data = 1;
		@(posedge clk)
			r_address = 2;
			w_address = 5;
			write_data = 2;
		@(posedge clk)
			r_address = 3;
			w_address = 4;
			write_data = 3;
		@(posedge clk)
			read_rq = 0;
			write_rq = 0;
		@(posedge clk)
			read_rq = 0;
			write_rq = 0;
		@(posedge clk)
			read_rq = 1;
			r_address = 7;
		@(posedge clk)
			read_rq = 1;
			r_address = 6;
		@(posedge clk)
			read_rq = 1;
			r_address = 5;
		@(posedge clk)
			read_rq = 1;
			r_address = 4;
		@(posedge clk)
			read_rq = 0;
		@(posedge clk)
		@(posedge clk)
		$finish;	
	end

	initial	clk 	<= 0;			
	always	#25 clk 	<= ~clk;	
endmodule


