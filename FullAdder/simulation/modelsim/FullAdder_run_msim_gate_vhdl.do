transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {FullAdder.vho}

vcom -93 -work work {C:/Users/ajayb/QuartusProjects/FullAdder/TestBenchAdder.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  TEST

add wave *
view structure
view signals
run -all
