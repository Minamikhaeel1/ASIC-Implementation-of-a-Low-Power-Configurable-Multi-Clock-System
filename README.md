# Multi-Clock Domain System Controller & ALU via UART (RTL-to-GDSII)

## 📌 Project Overview
This project implements a multi-clock domain digital system capable of executing ALU and Register File operations based on commands received from a master via a UART interface. Upon completion of the required operations, the system transmits the results back to the master. 

The project encompasses the complete digital design cycle, starting from RTL design and verification, down to the full **ASIC Implementation Flow (RTL-to-GDSII)**.

---

## 🏗️ System Architecture
The system consists of 10 primary blocks distributed across two asynchronous clock domains, utilizing robust synchronization techniques to prevent metastability.

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

## 🛠️ Supported ALU Operations
The ALU supports a wide range of operations, configured via a 4-bit `ALU_FUN` signal:

| Category | Operations |
| :--- | :--- |
| **Arithmetic** | Addition, Subtraction, Multiplication, Division |
| **Logical** | AND, OR, NAND, NOR, XOR, XNOR |
| **Comparison** | $A = B$, $A > B$ |
| **Shift** | $A \gg 1$, $A \ll 1$ |

---

## 📝 Memory Map & Configuration Registers
The Register File (8x16) allocates specific addresses for system configuration and general-purpose operations. Normal Write/Read operations utilize addresses `0x4` to `0x15`.

| Address | Register Name | Description | Default Value |
| :--- | :--- | :--- | :--- |
| `0x0` | **REG0** | ALU Operand A | N/A |
| `0x1` | **REG1** | ALU Operand B | N/A |
| `0x2` | **REG2** | UART Config (Bit 0: Parity EN, Bit 1: Parity Type, Bits 7:2: Prescale) | Parity EN = 1, Type = 0, Prescale = 32 |
| `0x3` | **REG3** | Division Ratio (Bits 7:0) | Div Ratio = 32 |

---

## ⚙️ Supported Commands & Frame Sequence
The master controls the system by sending multi-frame commands via UART.

| Command Type | HEX Code | Frame 0 | Frame 1 | Frame 2 | Frame 3 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Register File Write** | `0xAA` | CMD (`0xAA`) | Address | Write Data | - |
| **Register File Read** | `0xBB` | CMD (`0xBB`) | Address | - | - |
| **ALU Op (With Operands)** | `0xCC` | CMD (`0xCC`) | Operand A | Operand B | ALU_FUN |
| **ALU Op (No Operands)** | `0xDD` | CMD (`0xDD`) | ALU_FUN | - | - |

---

## 🚀 ASIC Implementation Flow (RTL-to-GDSII)
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
    *   Passed Design Rule Check (DRC) and Layout Versus Schematic (LVS).

---

## 🧪 Testbench & Sequence of Operation
To run the verification environment, the testbench must perform the following sequence:

1.  **System Initialization:** The Clock Divider is enabled continuously.
2.  **Configuration:** Perform Register File write operations to addresses `0x2` and `0x3` to configure UART parameters and clock division ratios.
3.  **Command Execution:** The master sends command frames (e.g., `0xAA`, `0xCC`) via UART_RX.
4.  **Processing:** The `SYS_CTRL` block coordinates with the Register File and ALU (which uses Clock Gating for power saving).
5.  **Output Validation:** The system transmits the result back to the master via UART_TX, verifying the end-to-end multi-clock functionality.
