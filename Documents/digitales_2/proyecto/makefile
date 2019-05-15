all:  verilog gtkwave

verilog:
	iverilog -o a.out bancoprueba.v
	vvp a.out
gtkwave:
	gtkwave p2s.gtkw
clean:
	rm -f *.out
