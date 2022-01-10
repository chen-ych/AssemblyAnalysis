# Assembly Analysis Code Base
This repo provide set of different C/C++ primitives and corresponding makefile for assembly analysis. 
Feel free to add primitives that you think it matters.

# Rule for adding code:
1. inside the c file, you need to write a summary for the code, what feature you want to see in the assembly 
2. Add makefile items (if necessary, most of the cases * will be compiled). Generally, x86, RISC-V, ARM, LLVM-IR, EIR assembly file will be generated. They are distinguished using suffix respectively.
3. There is no need to produce any binary file in this repo.


# Naming Rule Table

O0O3 = clang -O0  + llc -O3
O3O3 = clang -O3  + llc -O3

