CC=gcc
SRCS= $(wildcard *.c) $(wildcard *.cpp)
OBJS = $(SRCS:.c=.exe)
LLs = $(SRCS:.c=.ll)
CLANG=clang 
LLVM_IR = -emit-llvm 
all: $(OBJS) $(LLs)

%.exe:%.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

%.ll:%.c
	$(CLANG) $(CFLAGS) -o $@ $^ $(LIBS) $(LLVM_IR)
	$(CLANG)
    #$(CLANG) $(LLVM_IR)  -o $@ $^ $(LIBS)
clean:
	rm -f ./*.o ./*.exe ./*.ll
