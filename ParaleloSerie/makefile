Wave1: Verilog1
	gtkwave ParaleloSerie.vcd

Verilog1: SED1
	iverilog -o a.o bancoprueba.v
	vvp a.o

SED1: Yosys1
	sed -i 's/ParaleloSerie/ParaleloSerie_Est/g' ParaleloSerie_Est.v
	sed -i 's/data2send/data2send_est/g' ParaleloSerie_Est.v
	sed -i 's/data_outS/data_outS_est/g' ParaleloSerie_Est.v
	sed -i 's/out44/out44_est/g' ParaleloSerie_Est.v
Yosys1:
	yosys -s ParaleloSerie.tcl

Autoinst1:
	emacs -batch bancoprueba.v -f verilog-auto -f save-buffer

clean::
		rm -f *.o
