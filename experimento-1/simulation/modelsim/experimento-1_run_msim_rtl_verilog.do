transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-3/experimento-1 {C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-3/experimento-1/oneBitFullSubstractor_module.sv}
vlog -sv -work work +incdir+C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-3/experimento-1 {C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-3/experimento-1/nBitSubstractor_module.sv}
vlog -sv -work work +incdir+C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-3/experimento-1 {C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-3/experimento-1/nBitSubstractor_module_tb.sv}

