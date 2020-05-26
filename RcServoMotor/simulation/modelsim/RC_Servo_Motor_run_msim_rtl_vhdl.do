transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ajayb/QuartusProjects/RcServoMotor/Servo_Control.vhd}

vcom -93 -work work {C:/Users/ajayb/QuartusProjects/RcServoMotor/RC_Servo_Motor_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TEST

add wave *
view structure
view signals
run -all
