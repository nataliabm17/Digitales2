read_verilog phy_rx.v
hierarchy -check -top phy_rx
proc; opt; fsm; opt; memory; opt
techmap; opt
dfflibmap -liberty cmos_cells.lib
abc -liberty cmos_cells.lib
clean
write_verilog synth.v


