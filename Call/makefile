CC=gcc 
SRCS= $(wildcard *.c) $(wildcard *.cpp)
OBJS = $(SRCS:.c=.S)
LLs = $(SRCS:.c=.ll)
LLO3s = $(SRCS:.c=.O3.ll)
O3O0OBJS = $(SRCS:.c=.O3O0.S)
O0O3OBJS = $(SRCS:.c=.O0O3.S)
O3O3OBJS = $(SRCS:.c=.O3O3.S)
OBJDUMPS = $(SRCS:.c=.objdump) 
CLANG=/work/home/ychen/rvv-llvm/code_backup/llvm-project/build/bin/clang --target=riscv32
#CLANG =riscv32-rivai-elf-gcc
LLC = /work/home/ychen/LLVM/build/bin/llc
LLC_FLAG = -filetype=asm 
LLVM_IR = -emit-llvm -S
SYSROOT_GCC64:= --gcc-toolchain="/opt/riscv-toolchain-bin-rv64gcv/" --sysroot="/opt/riscv-toolchain-bin-rv64gcv/riscv64-unknown-elf/"
SYSROOT_GCC32 :=  --sysroot="/work/home/ychen/riscv32-gcc-linux/riscv-gnu-toolchain/build/install-newlib-nano/riscv32-unknown-elf/" --gcc-toolchain="/work/home/ychen/riscv32-gcc-linux/"
CFLAGS += $(SYSROOT_GCC32) 
ARCH = x86
AddArchFunc = $(foreach x, $($(1)), $(ARCH)$(x) )
ARCH_O3O0OBJS = $(call AddArchFunc,O3O0OBJS)
ARCH_O3O3OBJS = $(call AddArchFunc,O3O3OBJS)
ARCH_O0O3OBJS = $(call AddArchFunc,O0O3OBJS)
ARCH_LLs = $(call AddArchFunc,LLs)
ARCH_LLO3s = $(call AddArchFunc,LLO3s)
ARCH_OBJS = $(call AddArchFunc,OBJS)
ARCH_OBJDUMP = $(call AddArchFunc,OBJDUMPS)


all: $(OBJS)  $(OBJDUMPS) $(LLs) $(O3O0OBJS) $(O0O3OBJS) $(O3O3OBJS) $(LLO3s)
arch: $(ARCH_OBJS) $(ARCH_LLs) $(ARCH_O3O0OBJS) $(ARCH_O0O3OBJS) $(ARCH_O3O3OBJS) $(ARCH_LLO3s) $(ARCH_OBJDUMP)


%.O3.ll:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) $(LLVM_IR)  -O3

%.O3O3.S:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) -S -O3
%.O0O3.S:%.ll
	$(LLC) -o $@ $^   $(LLC_FLAG)
%.O3O0.S:%.O3.ll 
	$(LLC) $^ -o $@ -O3  $(LLC_FLAG)
%.objdump:%.c
	$(CLANG) $(CFLAGS) -o $@.o $^ $(LIBS)  
	riscv32-rivai-elf-objdump -d $@.o > $@
%.S:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) -S

%.ll:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) $(LLVM_IR)
    #$(CLANG) $(LLVM_IR)  -o $@ $^ $(LIBS)
clean:
	rm -f ./*.o ./*.exe ./*.ll ./*.S ./*.objdump

clean-leq-ir:
	rm -f ./*.o ./*.exe ./*.S
