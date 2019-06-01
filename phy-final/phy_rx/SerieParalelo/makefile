Wave1: Verilog1
	gtkwave ConvertidorSP.gtkw

Verilog1: SED1
	iverilog -o a.o BancoPruebasSerial.v
	vvp a.o

SED1: Yosys1
	sed -i 's/SerieParalelo/SerieParalelo_Est/g' SerieParalelo_Est.v
	sed -i 's/data2send/data2send_est/g' SerieParalelo_Est.v
	sed -i 's/BC_counter/BC_counter_est/g' SerieParalelo_Est.v
	sed -i 's/valid_out/valid_out_est/g' SerieParalelo_Est.v
	sed -i 's/active/active_est/g' SerieParalelo_Est.v
Yosys1:
	yosys -s SerieParalelo.tcl

Autoinst1:
	emacs -batch BancoPruebasSerial.v -f verilog-auto -f save-buffer

clean::
		rm -f *.o
