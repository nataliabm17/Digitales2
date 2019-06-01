all: yosys  verilog gtkwave

yosys:
	yosys -s bs.tcl
	sed -i 's/byte_striping/byte_striping_synth/' byte_striping_synth.v
	sed -i 's/lane_0/lane_0_synth/' byte_striping_synth.v
	sed -i 's/lane_1/lane_1_synth/' byte_striping_synth.v
	sed -i 's/valid_0F/valid_0_synth/' byte_striping_synth.v
	sed -i 's/valid_1F/valid_1_synth/' byte_striping_synth.v

verilog:
	iverilog -o a.out bancoprueba.v
	vvp a.out
gtkwave:
	gtkwave byte_striping.gtkw
clean:
	rm -f *.out
