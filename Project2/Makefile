
# 2
lfsr_test:
	@iverilog lfsr_test_tb.v lfsr.v -o lsfr_test.out
	@./lsfr_test.out 
	

lfsr_test_wave:
	@iverilog lfsr_test_tb.v lfsr.v -o lsfr_test.out
	@./lsfr_test.out 
	@gtkwave lsfr_test.vcd gtklsfr.gtkw &


misr_test:
	@iverilog misr_test_tb.v misr.v -o misr_test.out
	@./misr_test.out 
	

misr_test_wave:
	@iverilog misr_test_tb.v misr.v -o misr_test.out
	@./misr_test.out 
	@gtkwave misr_test.vcd gtkmisr.gtkw &

clean:
	@rm *.out *.vcd
	$(info All clean!)
