transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/and_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/or_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/xor_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/sll_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/srl_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/oneBitFullAdder_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/nBitAdder_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/oneBitFullSubstractor_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/nBitSubstractor_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/alu_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/decoder_module.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/top_module.sv}

vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-3/experimento-1/alu_module_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  alu_module_tb

add wave *
view structure
view signals
run -all
