
# 4-bit Binary Comparator in Verilog

### Digital Logic Design | Verilog HDL

A simple digital circuit that compares two unsigned 4-bit binary numbers using Verilog HDL.

The circuit determines whether A is greater than, equal to, or less than B.

**256 Passed Checks | 0 Failed | Icarus Verilog**

---

## How It Works

The circuit compares two 4-bit inputs:

- `a` — First number (0–15)
- `b` — Second number (0–15)

It produces three outputs:

- `greater` — A > B
- `equal` — A = B
- `less` — A < B

Exactly one output is active for each input pair.

## Logic Diagram

~~~mermaid
flowchart LR
    A["A - 4 bits"] --> COMP["4-bit Comparator"]
    B["B - 4 bits"] --> COMP

    COMP --> G["Greater"]
    COMP --> E["Equal"]
    COMP --> L["Less"]
~~~

## Comparison Examples

| A | B | Greater | Equal | Less |
|---|---|---|---|---|
| 0000 | 0000 | 0 | 1 | 0 |
| 0011 | 0101 | 0 | 0 | 1 |
| 1001 | 0110 | 1 | 0 | 0 |
| 1111 | 1111 | 0 | 1 | 0 |
| 1111 | 0000 | 1 | 0 | 0 |

## Project Files

| File | Description |
|---|---|
| `comparator4.v` | Verilog comparator circuit |
| `comparator4_tb.v` | Self-checking testbench |
| `README.md` | Project documentation |

## Simulation and Verification

The comparator was simulated using Icarus Verilog on EDA Playground.

All 256 possible pairs of 4-bit inputs were tested.

### Test Results

~~~text
Passed: 256
Failed: 0
ALL 256 COMPARATOR CHECKS PASSED
~~~

### Live Simulation

[View Simulation on EDA Playground](https://www.edaplayground.com/x/NTVx)

## Run Locally

Install Icarus Verilog and run:

~~~bash
iverilog -g2012 -s comparator4_tb -o comparator4_test.vvp comparator4.v comparator4_tb.v
vvp comparator4_test.vvp
~~~

## Technologies

- Verilog HDL
- Digital Logic Design
- Icarus Verilog
- EDA Playground

## Author

**Abdulaziz Al-Modawi Al-Qahtani**

*Digital logic and hardware design project.*
