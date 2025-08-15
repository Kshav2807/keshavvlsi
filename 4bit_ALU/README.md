# 4-Bit ALU (Arithmetic Logic Unit)

## Introduction
This project implements a 4-bit ALU capable of performing arithmetic and logical operations.  
Operations include: ADD, SUBTRACT, AND, OR, XOR, NOT, and SHIFT operations.  

The ALU takes two 4-bit inputs (A and B) and a 3-bit control signal to select the operation.

## Features
- 4-bit input operands
- Arithmetic operations: ADD, SUB
- Logical operations: AND, OR, XOR, NOT
- Shift operations: LEFT SHIFT, RIGHT SHIFT
- Zero and carry flags implemented

## Block Diagram
![4-bit ALU Block Diagram]https://www.researchgate.net/publication/360481510/figure/fig5/AS:1169952316899328@1655949777028/Construction-of-a-4-bit-ALU-block-diagram.png.

## Installation / Usage
### If C program:
```bash
# Clone repo
git clone https://github.com/YourUsername/4bit_ALU.git
cd 4bit_ALU/src

# Compile
gcc main.c alu.c -o alu

# Run
./alu
