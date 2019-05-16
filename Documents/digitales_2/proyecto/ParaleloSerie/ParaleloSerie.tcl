read_verilog ParaleloSerie.v
hierarchy -check -top ParaleloSerie
proc; opt; fsm; opt; memory; opt
techmap; opt
write_verilog ParaleloSerie_Est.v
show
