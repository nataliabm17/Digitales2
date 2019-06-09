all: 
	yosys -s mem.tcl
	sed -i 's/mem/synth/' synth.v
	sed -i 's/read_data/read_data_synth/' synth.v
	iverilog -o mem.vvp bancoPrueba.v 
	vvp mem.vvp
	gtkwave mem.gtkw

