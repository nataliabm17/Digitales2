read_verilog Generador128f.v
hierarchy -check -top Generador128f
proc; opt; fsm; opt; memory; opt
techmap; opt
write_verilog Generador128f_Est.v
show 
