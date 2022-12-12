onerror {quit -f}
vlib work
vlog -work work ProyectoTyDD2.vo
vlog -work work ProyectoTyDD2.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Completo_vlg_vec_tst
vcd file -direction ProyectoTyDD2.msim.vcd
vcd add -internal Completo_vlg_vec_tst/*
vcd add -internal Completo_vlg_vec_tst/i1/*
add wave /*
run -all
