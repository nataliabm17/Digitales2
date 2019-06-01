all: 
	yosys -s demux.tcl
	sed -i 's/demux2/synth/' synth.v
	sed -i 's/data_out_0/out_synth0/' synth.v
	sed -i 's/data_out_1/out_synth1/' synth.v
	sed -i 's/valid_out_0/valid_out0_synth/' synth.v
	sed -i 's/valid_out_1/valid_out1_synth/' synth.v
	iverilog -o demux bancoPrueba.v 
	vvp demux
	gtkwave demux.gtkw
