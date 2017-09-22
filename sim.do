vlib work
vcom -93 -work work ../../src/ANDStruct.vhd
vcom -93 -work work ../../src/ORStruct.vhd
vcom -93 -work work ../../src/XORstruct.vhd
vcom -93 -work work ../../src/Lab1structural.vhd
vcom -93 -work work ../src/Lab1structural_tb.vhd
vsim -novopt Lab1structural_tb
do wave.do
run 500 ns
