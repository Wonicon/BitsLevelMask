sim: $(shell find -type f -name "*.v")
	iverilog -g2012 -I. $^ -o $@

run: sim
	vvp -n sim

clean:
	-rm -f sim
