# Multi-Clock Domain System Controller & ALU via UART (RTL-to-GDSII)

## Project Overview
This project implements a multi-clock domain digital system capable of executing ALU and Register File operations based on commands received from a master via a UART interface. Upon completion of the required operations, the system transmits the results back to the master. 

The project encompasses the complete digital design cycle, starting from RTL design and verification, down to the full **ASIC Implementation Flow (RTL-to-GDSII)**.

---


## System Architecture
The system consists of 10 primary blocks distributed across two asynchronous clock domains, utilizing robust synchronization techniques to prevent metastability.

<br><br>

<img width="1010" height="610" alt="{35A25FD1-3CBB-4422-8278-8CC46E840157}" src="https://github.com/user-attachments/assets/9a383fb4-31d7-448d-bcae-6f0b9d05a4e6" />

<br>

### Clock Domain 1 (Reference Clock: 50 MHz)
*   **SYS_CTRL:** The main FSM coordinating between the UART, Register File, and ALU.
*   **RegFile:** An 8x16 parameterized register file for storing operands, configurations, and general data.
*   **ALU:** Performs arithmetic, logical, comparison, and shift operations.
*   **Clock Gating:** Dynamically controls the ALU clock to minimize dynamic power dissipation.

### Clock Domain 2 (UART Clock: 3.6864 MHz)
*   **UART_RX & UART_TX:** Handles serial communication (reception and transmission) with configurable parity and prescaling.
*   **PULSE_GEN:** Generates single-cycle pulses for domain-crossing signals.
*   **Clock Dividers:** Generates internal clocks for the UART blocks based on configurable division ratios.

### Domain Crossing & Synchronizers
*   **RST_SYNC:** Synchronizes the asynchronous reset signals.
*   **DATA_SYNC:** Synchronizes control buses across clock domains.
*   **ASYNC_FIFO:** Safely transfers multi-bit data between the asynchronous clock domains.

---

## Supported ALU Operations
The ALU supports a wide range of operations, configured via a 4-bit `ALU_FUN` signal:
<img width="516" height="711" alt="{385AFE21-1F34-4A4A-8E06-940AAA7951EF}" src="https://github.com/user-attachments/assets/9f4991e4-498f-4aa9-8d42-01b6b518f106" />


---

## Memory Map & Configuration Registers
The Register File (8x16) allocates specific addresses for system configuration and general-purpose operations. Normal Write/Read operations utilize addresses `0x4` to `0x15`.


<img width="615" height="677" alt="{927DB77D-FC87-4615-8380-904BFA02251B}" src="https://github.com/user-attachments/assets/0bca8954-3193-43c3-8bf2-2c53646a119c" />

---

## Supported Commands & Frame Sequence
The master controls the system by sending multi-frame commands via UART.

<img width="599" height="203" alt="{04CF8D19-97FB-4A24-AC62-A85C013632D3}" src="https://github.com/user-attachments/assets/eb64d469-59a0-41da-a6e2-a062edb84c09" />
<img width="827" height="571" alt="{39659E84-CA7E-438B-A65D-E6268FE1EBF9}" src="https://github.com/user-attachments/assets/f77a2130-213f-4908-bfee-d34ac63e7b34" />

---

## ASIC Implementation Flow (RTL-to-GDSII)
This project was taken through a complete ASIC physical design flow to ensure manufacturability and timing closure.

*   **RTL Simulation & Verification:** Functionality verified using self-checking testbenches covering all command sequences and asynchronous FIFO corner cases.
*   **Logic Synthesis:** Translated RTL to a gate-level netlist using standard cell libraries.
*   **Design for Testability (DFT):** Inserted scan chains to ensure high fault coverage for manufacturing testing.
*   **Floorplanning & Power Planning:** Defined core boundaries, I/O placement, and created a robust power grid (VDD/VSS rings and stripes).
*   **Placement:** Standard cell placement optimized for timing and congestion.
*   **Clock Tree Synthesis (CTS):** Built a balanced clock tree to minimize skew and latency across the two asynchronous domains.
*   **Routing:** Completed global and detailed routing with clean design rules.
*   **Sign-off & Physical Verification:** 
    *   Performed Static Timing Analysis (STA) for setup and hold timing closure.
    
    
## Repository Structure
The repository is organized to reflect the different stages of the digital design and ASIC implementation flow:
**`RTL/`**: Contains the Verilog source codes for the individual system blocks (ALU, Register File, Synchronizers, Clock Dividers, etc.).
* **`Final_System_RTL/`**: Contains the top-level module integrating the entire system across the multi-clock domains, along with the main testbench.
* **`Synthesis/`**: Contains the TCL scripts, Synopsys Design Constraints (SDC), and the generated gate-level netlist and reports for the Logic Synthesis phase.
* **`Post-Syn Formality/`**: Contains the setup and scripts for Logic Equivalence Checking (LEC) between the original RTL and the synthesized netlist using Synopsys Formality.
* **`DFT/`**: Contains the Design for Testability scripts, scan-chain insertion configurations, and the resulting DFT netlist and coverage reports.
* **`Post-DFT Formality/`**: Contains Formality checks ensuring functional equivalence between the pre-DFT synthesized netlist and the post-DFT netlist.
* **`PNR/`**: Contains scripts, floorplanning configurations, and reports for the Place and Route (Physical Design) stage.
