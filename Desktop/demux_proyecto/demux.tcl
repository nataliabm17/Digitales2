read_verilog demux.v
hierarchy -check -top demux
proc; opt; fsm; opt; memory; opt
techmap; opt
dfflibmap -liberty cmos_cells.lib
abc -liberty cmos_cells.lib
clean
write_verilog synth_demux.v
show
