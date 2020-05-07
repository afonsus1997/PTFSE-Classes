# Cadence Encounter(R) RTL Compiler
#   version RC14.25 - v14.20-s046_1 (64-bit) built Aug 11 2015
#
# Optional RC arguments:
#   -logfile rc.log
#   -cmdfile rc.cmd

# Read the circuit
read_hdl b01.v

# Elaboration (pre-synthesis)
elaborate b01

# Analyze the design
check_design

# Define the name of the clock signal and its frequency
define_clock -name clk -period 10000 [find / -port clock] 

# Read the constraints from an SDC file
#read_sdc <SDC file>

# Create a flatten circuit (circuit with only one module) 
ungroup -all

# Synthesize
synthesize -to_mapped

# Generate reports
report qor
write_hdl -mapped > b01_syn.v 
write_sdc > b01.sdc
report gates > b01_gates.txt
report timing > b01_timing.txt

exit
