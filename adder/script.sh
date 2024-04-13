#Analyze adder
ghdl -a adder.vhd
#Analyze adder_tb
ghdl -a adder_tb.vhd
#Elaborate adder_tb
ghdl -e adder_tb
#Run and generate vcd file
ghdl -r adder_tb --vcd=wave.vcd
#Open GTKWave
gtkwave wave.vcd