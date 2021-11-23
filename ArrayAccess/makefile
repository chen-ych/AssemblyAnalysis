CC=gcc
SRCS= $(wildcard *.c) $(wildcard *.cpp)
OBJS = $(SRCS:.c=.exe)

all: $(OBJS)

%.exe:%.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)
        
clean:
	rm -f ./*.o ./*.exe
