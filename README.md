# Physical Implementation of CORE-V CV32E40P RISC-V IP

This project showcases the **full ASIC physical implementation** of the [CORE-V CV32E40P RISC-V core](https://github.com/openhwgroup/cv32e40p) from the OpenHW Group, targeting **SAED 14nm technology**. It covers the complete digital backend flow from RTL to GDSII, with focus on industry-relevant steps including synthesis, floorplanning, placement, CTS, routing, timing closure, and DFT.

## Project Objectives

- Implement a full physical design flow for a commercial-grade RISC-V core (CV32E40P)
- Achieve timing closure and design rule compliance at 14nm node

## Tools & Technologies

- **Technology**: SAED 14nm standard cell library
- **Data Model**: Synopsys New Data Model (NDM)
- **Synthesis**: Synopsys Design Compiler
- **Place & Route**: Synopsys IC Compiler II (ICC2)
- **Timing Analysis**: Synopsys PrimeTime
- **Formal Verification**: Synopsys Formality

## Physical Design Flow

1. **RTL Synthesis**
2. **Design Setup and MCMM (Multi-Corner Multi-Mode) Configuration**
3. **Floorplanning**
4. **Placement**
5. **Clock Tree Synthesis (CTS)**
6. **Routing**
7. **Timing Closure**
