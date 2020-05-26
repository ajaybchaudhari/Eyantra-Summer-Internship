transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ajayb/QuartusProjects/Seven_Segment_Display/Seven_Segment_Display.vhd}

vcom -93 -work work {C:/Users/ajayb/QuartusProjects/Seven_Segment_Display/Seven_Segment_Display_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TEST

add wave *
view structure
view signals
run -all
