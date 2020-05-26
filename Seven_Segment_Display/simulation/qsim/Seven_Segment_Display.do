onerror {exit -code 1}
vlib work
vcom -work work Seven_Segment_Display.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax Seven_Segment_Display_vhd_vec_tst/i1=Seven_Segment_Display_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Seven_Segment_Display_vhd_vec_tst
vcd file -direction Seven_Segment_Display.msim.vcd
vcd add -internal Seven_Segment_Display_vhd_vec_tst/*
vcd add -internal Seven_Segment_Display_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


