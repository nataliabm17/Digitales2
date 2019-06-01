all: 
	yosys -s unstriping.tcl
	sed -i 's/unstriping/synth/g' synth.v
	sed -i 's/data_out/data_out_synth/g' synth.v
	sed -i 's/valid_out/valid_out_synth/g' synth.v
	iverilog -o unstriping bancoPrueba.v 
	vvp unstriping
	gtkwave unstriping.gtkw
