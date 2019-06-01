read_verilog byte_striping.v
hierarchy -check -top byte_striping
proc; opt; fsm; opt; memory; opt
techmap; opt
dfflibmap -liberty cmos_cells.lib
abc -liberty cmos_cells.lib
clean
write_verilog byte_striping_synth.v
show byte_striping
