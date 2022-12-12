transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Celeste/Desktop/lab3/LabFinal/db {C:/Users/Celeste/Desktop/lab3/LabFinal/db/lab_pll_altpll.v}
vcom -93 -work work {C:/Users/Celeste/Desktop/lab3/LabFinal/ProyectoTyDD2.vhd}
vcom -93 -work work {C:/Users/Celeste/Desktop/lab3/LabFinal/lab_PLL.vhd}

vcom -93 -work work {C:/Users/Celeste/Desktop/lab3/LabFinal/Vhdl1.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Vhdl1

add wave *
view structure
view signals
run -all
