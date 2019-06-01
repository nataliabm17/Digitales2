read_verilog SerieParalelo.v
hierarchy -check -top SerieParalelo
proc; opt; fsm; opt; memory; opt
techmap; opt
dfflibmap -liberty cmos_cells.lib
abc -liberty cmos_cells.lib
write_verilog SerieParalelo_Est.v
