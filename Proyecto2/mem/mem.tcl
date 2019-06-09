read_verilog mem.v
hierarchy -check -top mem
proc; opt; fsm; opt; memory; opt
techmap; opt
dfflibmap -liberty cmos_cells.lib
abc -liberty cmos_cells.lib
clean
write_verilog synth.v
show

