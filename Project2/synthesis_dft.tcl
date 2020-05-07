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
######## IMPORTANT ########
#### THE SIGNAL NAMED "clock" MAY NEED TO BE REPLACED
#### BY THE NAME OF THE CLOCK IN YOUR CIRCUIT
define_clock -name clk -period 10000 [find / -port clock] 

# Read the constraints from an SDC file
#read_sdc <SDC file>

# Define the scan type
set_attribute dft_scan_style muxed_scan

# Define the scan ports
define_dft shift_enable -active high -create_port scan_en
######## IMPORTANT ########
#### THE SIGNAL NAMED "clock" MAY NEED TO BE REPLACED
#### BY THE NAME OF THE CLOCK IN YOUR CIRCUIT
define_dft test_clock -name scan_clk clock

# Check for DFT violations 
check_dft_rules > dft_rules.report

# Synthesize
synthesize -to_mapped

# Generate report
report dft_registers

# Create the scan chain
define_dft scan_chain -name chain1 -create_ports -sdi scan_in -sdo scan_out
connect_scan_chains -auto_create_chains -preview
connect_scan_chains -auto_create_chains

# Generate reports
report qor
write_hdl -mapped > b01_scan_syn.v 
write_sdc > b01_scan.sdc
write_scandef > b01_scan_chain.txt
write_atpg -stil > b01_scan.stil
report gates > b01_scan_gates.txt
report timing > b01_scan_timing.txt

exit
