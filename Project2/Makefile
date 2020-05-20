
# 2
lfsr_test:
	@iverilog lfsr_test_tb.v lfsr.v -o lsfr_test.out
	@./lsfr_test.out 
	

lfsr_test_wave:
	@iverilog lfsr_test_tb.v lfsr.v -o lsfr_test.out
	@./lsfr_test.out 
	@gtkwave lsfr_test.vcd gtklfsr.gtkw &


misr_test:
	@iverilog misr_test_tb.v misr.v -o misr_test.out
	@./misr_test.out 
	

misr_test_wave:
	@iverilog misr_test_tb.v misr.v -o misr_test.out
	@./misr_test.out 
	@gtkwave misr_test.vcd gtkmisr.gtkw &

misr_seed_test:
	@iverilog misr_test_tb2.v misr.v lfsr.v -o misr_test.out
	@./misr_test.out 
	

misr_seed_test_wave:
	@iverilog misr_test_tb2.v misr.v lfsr.v -o misr_test.out
	@./misr_test.out 
	@gtkwave misr_test.vcd gtkmisr.gtkw &

controller_test:
	@iverilog controller_tb.v controller.v -o controller_test.out
	@./controller_test.out 
	

controller_test_wave:
	@iverilog controller_tb.v controller.v -o controller_test.out
	@./controller_test.out 
	@gtkwave controller_test.vcd gtkcontroller.gtkw &

circular_bist_test:
	@iverilog circular_bist_tb.v misr.v lfsr.v top.v controller.v wrappers.v circuito06_scan_syn.v CadenceFiles/*.v -o circular_bist_test.out
	@./circular_bist_test.out 
	

circular_bist_test_wave:
	@iverilog circular_bist_tb.v misr.v lfsr.v top.v controller.v wrappers.v circuito06_scan_syn.v CadenceFiles/*.v -o circular_bist_test.out
	@./circular_bist_test.out 
	@gtkwave circular_bist_test.vcd gtkcircularbist.gtkw &

syn_test:
	@iverilog circular_bist_tb.v top_syn.v CadenceFiles/*.v -o circular_bist_test.out
	@./circular_bist_test.out 
	

syn_test_wave:
	@iverilog circular_bist_tb.v top_syn.v CadenceFiles/*.v -o circular_bist_test.out
	@./circular_bist_test.out 
	@gtkwave circular_bist_test.vcd gtkcircularbist.gtkw &

check_duplicates:
	@iverilog circular_bist_tb.v top_syn.v CadenceFiles/*.v -o circular_bist_test.out
	@./circular_bist_test.out > outputs/signature_temp.txt
	python3 scripts/checkduplicates.py outputs/signature_temp.txt

clean:
	@rm *.out *.vcd
	$(info All clean!)
