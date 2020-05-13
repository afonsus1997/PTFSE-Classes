
# 2
lfsr_test:
	iverilog lfsr_test_tb.v lfsr.v -o lsfr_test.out
	./lsfr_test.out 
	

lfsr_test_wave:
	iverilog lfsr_test_tb.v lfsr.v -o lsfr_test.out
	./lsfr_test.out 
	gtkwave lsfr_test.vcd gtklsfr.gtkw &

clean:
	#rm -rf .simvision .hal* fault_db fv libscore_work waves.shm xcelium.d b01_gates.txt b01_scan* b01.sdc b01_syn.v b01_timing.txt\
	#	dft_rules.report fault_list_1.tcl fault_report.txt fault_xrun_elab.log hal.* rc.* *.log *.history *.key 
	rm lsfr_test.out
	rm lsfr_test.vcd
	echo cleared
