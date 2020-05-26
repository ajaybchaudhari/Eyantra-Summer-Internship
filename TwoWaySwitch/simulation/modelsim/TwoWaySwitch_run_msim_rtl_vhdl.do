transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ajayb/QuartusProjects/TwoWaySwitch/two_way_switch.vhd}

vcom -93 -work work {C:/Users/ajayb/QuartusProjects/TwoWaySwitch/tb_two_way_switch.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
