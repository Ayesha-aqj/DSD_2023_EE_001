# Experiment 5: Combinational Circuit Design using a Seven-Segment Display on Nexys-A7 FPGA

## Objective
To design a combinational circuit that drives a seven-segment display using the Nexys-A7 FPGA board. The circuit should decode a 4-bit binary input and display the corresponding hexadecimal digit on the seven-segment display.

## Requirements
- **Hardware**:
  - Nexys-A7 FPGA board
  - Seven-segment display (onboard)
  - Power supply
  - USB JTAG cable for programming

- **Software**:
  - Vivado Design Suite
  - QuestaSim for simulation

## Design Steps
1. **Truth Table Formation:**
   - Create a truth table mapping 4-bit binary inputs to seven-segment display outputs.

2. **K-Map Minimization:**
   - Simplify the Boolean equations for each segment (A-G) using Karnaugh maps.

3. **SystemVerilog Implementation:**
   - Implement the circuit using both structural and behavioral modeling in SystemVerilog.

4. **Synthesis and Simulation:**
   - Synthesize the design in Vivado and simulate using QuestaSim to verify correctness.

5. **FPGA Implementation:**
   - Program the FPGA board and verify real-time functionality.

## SystemVerilog Modules

### Structural Model
- Implements the seven-segment display logic using basic gates and assign statements.
- Defines segment control based on Boolean equations derived from K-maps.

### Behavioral Model
- Uses `always_comb` and `case` statements to implement the seven-segment decoding logic.
- Selects the active anode based on a 3-bit selection signal.

## Testing
- **Testbench:** A testbench is written to apply all 16 possible inputs and verify the output.
- **Self-Test:** Outputs are compared with expected seven-segment display patterns.

## Results and Analysis
- The seven-segment display correctly shows the hexadecimal representation of the input.
- Timing delays and resource utilization are analyzed in Vivado.

## Conclusion
A combinational circuit was successfully designed, simulated, and implemented on the Nexys-A7 FPGA to drive a seven-segment display. The design was verified using both structural and behavioral approaches.

