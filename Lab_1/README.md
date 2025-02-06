# Experiment 1: MOSFET as an Inverter

## Overview
This experiment explores the propagation delay in a MOSFET-based NOT gate circuit. Propagation delay is the time it takes for the output to stabilize after an input signal is applied. This delay is caused by the inherent capacitance of the MOSFET.

## Objective
- Study the MOSFET-based NOT gate.
- Measure the propagation delay at different frequencies.
- Understand MOSFET behavior in cut-off, linear, and saturation regions.

## Circuit Setup
- **Components**: IRF540n or 2N7000 MOSFET, 100 Ω & 1 kΩ resistors, LED, signal generator, and CRO.
- **Input (A)**: Signal applied.
- **Output (B)**: Observed output.

## Procedure
1. **Apply 5V** at terminal A, measure voltage at terminal B, and check if LED glows.
2. **Apply 0V** at terminal A, measure voltage at terminal B, and check LED.
3. Apply a **1 kHz, 5V peak** square wave at A, measure input and output on the CRO, and calculate propagation delay.
4. Repeat for **100 kHz** input frequency.
5. Observe the effect of frequency on MOSFET operation.

## Questions
1. What happens when **5V and 0V** are applied at terminal A?
2. Measure the **propagation delay** at 1 kHz and 100 kHz frequencies.
3. How does frequency affect the MOSFET operation?
