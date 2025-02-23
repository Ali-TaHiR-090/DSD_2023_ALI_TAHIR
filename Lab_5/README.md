# Lab: Seven-Segment Display Driver Using K-Maps  
**Board:** Nexys A7-100T  
**Software:** QuestaSim, Xilinx Vivado  
**Language:** SystemVerilog  

## Overview  
This project involves designing a seven-segment display driver circuit using K-Maps for logic minimization. The circuit is implemented on the Nexys A7 FPGA and simulated in QuestaSim.  

## Implementation  
- **Truth Table & K-Maps:** Derived and minimized logic equations for seven-segment display control.  
- **Circuit Design:** Implemented using structural coding (primitive gates) and behavioral coding.  
- **Simulation:** Verified in QuestaSim to ensure correct display of hexadecimal digits (0 to F).  
- **FPGA Deployment:** Synthesized and implemented on the Nexys A7 board.  

## Functionality  
1. The user inputs a 4-bit binary number (`num[3:0]`) to display a hexadecimal character (0-F).  
2. The user selects which of the eight seven-segment displays to activate using `sel[2:0]`.  
3. The selected display shows the corresponding character based on segment control logic.  

## Performance  
- **Combinational Delay:** Analyzed from synthesis and implementation reports.  

## Deliverables  
- **SystemVerilog Code:**  
  - Structural coding using minimized equations.  
  - Behavioral coding for seven-segment decoding.  
- **Simulation Results:** Waveforms demonstrating correct operation.  
- **Synthesis Report:** Including inferred circuit diagram, delay analysis, and resource utilization.  
- **Hardware Implementation:** Configured on the Nexys A7 board with functional verification.  

## Notes  
- The anode control logic ensures only the selected display is active.  
- The circuit has been optimized using K-Maps for efficiency.  

