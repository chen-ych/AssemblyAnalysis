CC=gcc
SRCS= $(wildcard *.c) $(wildcard *.cpp)
OBJS = $(SRCS:.c=.S)
LLs = $(SRCS:.c=.ll)
LLO3s = $(SRCS:.c=.O3.ll)
O3O0OBJS = $(SRCS:.c=.O3O0.S)
O0O3OBJS = $(SRCS:.c=.O0O3.S)
O3O3OBJS = $(SRCS:.c=.O3O3.S)
CLANG=clang 
LLC = /work/home/ychen/LLVM/build/bin/llc
LLC_FLAG = -filetype=asm 
LLVM_IR = -emit-llvm -S
all: $(OBJS) $(LLs) $(O3O0OBJS) $(O0O3OBJS) $(O3O3OBJS) $(LLO3s)

%.O3.ll:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) $(LLVM_IR)  -O3

%.O3O3.S:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) -S -O3
%.O0O3.S:%.ll
	$(LLC) -o $@ $^   $(LLC_FLAG)
%.O3O0.S:%.O3.ll 
	$(LLC) $^ -o $@ -O3  $(LLC_FLAG)


%.S:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) -S

%.ll:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) $(LLVM_IR)
    #$(CLANG) $(LLVM_IR)  -o $@ $^ $(LIBS)
clean:
	rm -f ./*.o ./*.exe ./*.ll ./*.S

clean-leq-ir:
	rm -f ./*.o ./*.exe ./*.S
