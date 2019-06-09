module mem(
	input    clk,
	input    rst,
	input    read_rq,
	input    write_rq,
	input[3:0]    w_address,
	input[3:0]	r_address,
	input[4:0]    write_data,
	output reg [4:0]    read_data
);
reg[4:0] r_data;
integer i;

reg [4:0] memory_ram_d [15:0];
reg [4:0] memory_ram_q [15:0];

always @(posedge clk or negedge rst) begin
//	read_data <= 'b0;
    if (!rst) begin
		r_data <= 'b0;
        for (i=0;i<16; i=i+1)
            memory_ram_q[i] <= 0;
    end
    else begin
        for (i=0;i<16; i=i+1)
             memory_ram_q[i] <= memory_ram_d[i];
    end
end


always @(*) begin
	
    for (i=0;i<16; i=i+1)
        memory_ram_d[i] = memory_ram_q[i];
    if (write_rq && !read_rq)
        memory_ram_d[w_address] = write_data;
    if (!write_rq && read_rq)
        r_data = memory_ram_q[r_address];
	if (write_rq && read_rq)
		r_data = memory_ram_q[r_address];
		memory_ram_d[w_address] = write_data;
	read_data <= r_data;
end
 
endmodule
