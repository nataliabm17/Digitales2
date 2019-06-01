all: 
	yosys -s phy_rx.tcl
	sed -i 's/phy_rx/synth/g' synth.v
	sed -i 's/demux/demux_synth/g' synth.v
	sed -i 's/unstriping/unstriping_synth/g' synth.v
	sed -i 's/data_out_0/data_out_0_synth/g' synth.v
	sed -i 's/data_out_1/data_out_1_synth/g' synth.v
	sed -i 's/valid_out_0/valid_out_0_synth/g' synth.v
	sed -i 's/valid_out_1/valid_out_1_synth/g' synth.v
	sed -i 's/etapa2_flops/etapa2_flops_synth/g' synth.v
	sed -i 's/etapa_flops/etapa_flops_synth/g' synth.v
	sed -i 's/SerieParalelo/SerieParalelo_synth/g' synth.v
	iverilog -o phy bancoPrueba.v 
	vvp phy
	gtkwave phy.gtkw
