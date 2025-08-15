# 4-bit ALU & Traffic Light Controller (Verilog)

## 📌 Overview
This repository contains two Verilog-based projects:
1. **4-bit ALU** – Performs arithmetic and logical operations.
2. **Traffic Light Controller** – Simulates a traffic light sequence.

## 🛠 Tools Used
- Verilog HDL
- Icarus Verilog (iverilog, vvp)
- VS Code
- Windows + Git Bash

## 🚀 How to Run
```bash
# Compile and run ALU
iverilog -o alu_tb.vvp alu_4bit_simple.v alu_tb_simple.sv
vvp alu_tb.vvp

# Compile and run Traffic Light Controller
iverilog -o traffic_tb.vvp traffic_light.v traffic_tb.v
vvp traffic_tb.vvp
