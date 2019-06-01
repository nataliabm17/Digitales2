read_verilog ParaleloSerie.v
hierarchy -check -top ParaleloSerie
proc; opt; fsm; opt; memory; opt
techmap; opt
dfflibmap -liberty cmos_cells.lib
abc -liberty cmos_cells.lib
write_verilog ParaleloSerie_Est.v
show
