# PTFSE Project 1 - Circular BIST

Submission files for the circular BIST project.

* Group 2
  * Pedro Pina - 77973
  * Afonso Muralha - 84779



### Folder Structure

* Root

  * Cadence Reports

    * Fault Simulation
    * HAL
    * Synthesis
    
  * Code
  
    

###### Root folder

```PTFSE - Digital Controller.pdf``` - Formal Report

```Readme.html``` - This file. Meta information about the project submission

###### Cadence Reports

```Fault simulation``` - Folder with reports and outputs of the fault simulation.

```HAL``` - Folder with reports and outputs of HAL analysis.

```Synthesis``` - Folder with reports and outputs of synthesis operation.

###### Code

```circuito06.v``` - Original given circuit

```circuito06_scan_syn.v``` - Given circuit, but synthesized and with scan

```circular_bist_tb.v``` - Multi-purpose test-bench for testing the full system

```lfsr.v``` - Code for the linear feedback shift register

```lfsr_test_tb.v``` - Test-bench for the LFSR validation

```misr.v``` - Code for the multi-input shift register

```misr_test_tb.v``` - Test-bench for the LFSR validation

```misr_test_tb2.v``` - Alternate test-bench for the MISR validation

```top.v``` - Top-level description of the BIST system

```wrappers.v``` - Code for the wrappers (mux)




### Other information

The full source of the project alongside the changes made throughout its development is present on [Github](https://github.com/afonsus1997/PTFSE-Classes) (private until deadline expiration).