#Daniela Bucce Higuerey, B61256
#Tarea 5

all: yosys verilog gtkwave
yosys:
	yosys -s demux.tcl
	sed -i 's/demux/synth_demux/' synth_demux.v
	sed -i 's/data_out_0/out_synth0/' synth_demux.v
	sed -i 's/data_out_1/out_synth1/' synth_demux.v
	sed -i 's/valid_out_0/valid_out0_synth/' synth_demux.v
	sed -i 's/valid_out_1/valid_out1_synth/' synth_demux.v

verilog:
	iverilog -o p.out bancopruebademux.v 
	vvp p.out 

gtkwave:
	gtkwave demux.gtkw



