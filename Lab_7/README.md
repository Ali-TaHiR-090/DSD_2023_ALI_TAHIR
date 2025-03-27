# Lab: Sequential Circuit Design - Clock Manipulation
**Board:** Nexys A7-100T  
**Software:** QuestaSim, Xilinx Vivado  
**Language:** SystemVerilog  

## Overview  
This experiment involves designing a sequential circuit to control a seven-segment display by manipulating the clock signal. The circuit will display eight different characters on different seven-segment displays by rapidly switching between them, creating the illusion of simultaneous display.

## Implementation  
- **Clock Division:** Reduced the 100 MHz FPGA clock to 100 Hz using flip-flops.  
- **Sequential Storage:** Used flip-flops to store the displayed values.  
- **Multiplexing:** Enabled different seven-segment displays in a time-multiplexed manner.  
- **Simulation:** Verified design functionality in QuestaSim.  
- **FPGA Deployment:** Synthesized and tested on the Nexys A7 board.  

## Functionality  
1. The user stores values for each of the eight seven-segment displays using `write = 1`, `sel[2:0]`, and `num[3:0]`.  
2. The stored values are displayed sequentially at a rate of 100 Hz when `write = 0`.  
3. The reset input clears all stored values.  

## Performance  
- **Clock Reduction:** Implemented using toggle flip-flops to achieve 100 Hz frequency.  
- **Multiplexing Delay:** Analyzed for display refresh stability.  
- **Combinational Delay:** Evaluated from synthesis and implementation reports.  

## Deliverables  
- **SystemVerilog Code:** Behavioral model with modular design.  
- **Simulation Results:** Waveforms demonstrating sequential display operation.  
- **Synthesis Report:** Includes maximum combinational delay and resource utilization.  
- **FPGA Implementation:** Configured and tested on the Nexys A7 board.  

## Notes  
- Sequential circuits must use flip-flops (latches are not allowed).  
- The human eye perceives displays as simultaneously active if switched above 24 Hz, so we use 100 Hz.  
- The clock division must be optimized to ensure stable display switching.  
