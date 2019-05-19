
Wave1: Verilog1
	gtkwave Generador128f.vcd

Verilog1: SED1
	iverilog -o a.o BancoGenerador.v
	vvp a.o

SED1: Yosys1
	sed -i 's/Generador128f/ Generador128f_Est/g' Generador128f_Est.v
	sed -i 's/clk_f/clk_f_Est/g' Generador128f_Est.v
	sed -i 's/clk_2f/clk_2f_Est/g' Generador128f_Est.v

Yosys1:
	yosys -s Generador.tcl

Autoinst1:
	emacs -batch BancoGenerador.v -f verilog-auto -f save-buffer

clean::
		rm -f *.o
