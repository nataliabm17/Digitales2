all:
	yosys -s phy.tcl
	sed -i 's/phy_rx/synth_rx/g' phy_synth.v
	sed -i 's/phy_tx/synth_tx/g' phy_synth.v
	sed -i 's/Generador128f/generador_synth/g' phy_synth.v
	sed -i 's/data_out_0/data_out_0_synth/g' phy_synth.v
	sed -i 's/data_out_1/data_out_1_synth/g' phy_synth.v
	sed -i 's/valid_out_0/valid_out_0_synth/g' phy_synth.v
	sed -i 's/valid_out_1/valid_out_1_synth/g' phy_synth.v
	sed -i 's/etapa_flops/etapa_flops_synth/g' phy_synth.v
	sed -i 's/etapa2_flops/etapa2_flops_synth/g' phy_synth.v
	sed -i 's/etapa3_flops/etapa3_flops_synth/g' phy_synth.v
	sed -i 's/Otros_flops/otros_flops_synth/g' phy_synth.v
	sed -i 's/demux/demux_synth/g' phy_synth.v
	sed -i 's/mux/mux_synth/g' phy_synth.v
	sed -i 's/ParaleloSerie/p2s_synth/g' phy_synth.v
	sed -i 's/SerieParalelo/s2p_synth/g' phy_synth.v
	sed -i 's/unstriping/unstriping_synth/g' phy_synth.v
	sed -i 's/byte_striping/byte_striping_synth/g' phy_synth.v
	sed -i 's/phy/phy_synth/g' phy_synth.v
	sed -i 's/FlopsSerialUnstripe/FlopsSerialUnstripe_synth/g' phy_synth.v
	sed -i 's/flopClock/flopClock_synth/g' phy_synth.v
	sed -i 's/flops_rx/flops_rx_synth/g' phy_synth.v
	sed -i 's/flops_rx1/flops_rx1_synth/g' phy_synth.v
	sed -i 's/flops_valid/flops_valid_synth/g' phy_synth.v
	iverilog -o phy bancoPrueba.v
	vvp phy
	gtkwave phy_.gtkw
