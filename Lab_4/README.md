# Lab 4: RGB LED Comparator  
**Board:** Nexys A7-100T  
**Language:** SystemVerilog  

## Overview  
This project implements a 2-bit comparator using SystemVerilog on the Nexys A7-100T FPGA. The comparison result is displayed using an RGB LED with specific colors for different conditions:  

- 🟡 **Yellow** → A = B  
- 🔵 **Cyan** → A < B  
- 🟣 **Purple** → A > B  

## Implementation  
- **Truth Table & K-Maps:** Used to derive the logic equations.  
- **Circuit Design:** Implemented using combinational logic.  
- **Simulation:** Verified using QuestaSim.  
- **Synthesis:** Performed in Xilinx Vivado.  

## Performance  
- **Combinational Delay:** 9.842 ns  
- **Resource Utilization:**  
  - 2 LUTs used  
  - 7 I/O pins used  
