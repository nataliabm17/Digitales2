all: 
	yosys -s mux.tcl
	sed -i 's/mux/synth/g' synth.v
	sed -i 's/data_out/data_out_synth/g' synth.v
	sed -i 's/valid_out/valid_out_synth/g' synth.v
	iverilog -o mux bancoPrueba.v 
	vvp mux
	gtkwave mux.gtkw
