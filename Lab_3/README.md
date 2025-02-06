# Combinational Circuits: Structural Modeling using Vivado

## Overview

The aim of this lab is to implement a simple combinational circuit using Vivado and synthesize it onto the FPGA. For this purpose, we utilized a Neuxs A7-100t FPGA board from our lab and used vivado to burn our SystemVerilog code onto the FPGA.

The combinational circuit in question has three inputs (`a`, `b`, `c`) and two outputs (`x`, `y`). The circuit logic has been designed and implemented in SystemVerilog.

## Truth Table

The truth table for the combinational circuit is as follows:

| a | b | c | x | y |
|---|---|---|---|---|
| 0 | 0 | 0 | 1 | 0 |
| 0 | 0 | 1 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 | 0 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

## Summary

The goal of this lab is to implement a simple combinational circuit using SystemVerilog and synthesize it on an FPGA. The circuit has three inputs and two outputs as described above. 

In the first step, we assign I/O pins to our modules, ensuring that the circuit can interface with the FPGA board. Then, we use Vivado to compile, synthesize, and burn the SystemVerilog code onto the Neuxs A7-100t FPGA. This process allows us to test the functionality of the circuit on actual hardware.

### Key Steps:
1. **SystemVerilog Code**: Implementation of the combinational circuit logic.
2. **Constraint File**: Assignment of I/O pins for FPGA synthesis.
3. **Vivado**: Synthesize and burn the design onto the FPGA.

By the end of the lab, the circuit will be functional on the FPGA, and the outputs will follow the behavior described by the truth table.

## Files in this Repository

- `lab3.sv`: SystemVerilog code for the combinational circuit.
- `constraints.xdc`: Constraints file for synthesizing the circuit on the Neuxs A7-100t FPGA.

## Tools Used

- **Vivado**: Used for synthesizing the SystemVerilog code and burning the design to the FPGA.
- **SystemVerilog**: The hardware description language used for implementing the combinational circuit.
- **Neuxs A7-100t FPGA**: The target FPGA board used for implementation.

---

For more details, please refer to the respective files and instructions in the repository.
