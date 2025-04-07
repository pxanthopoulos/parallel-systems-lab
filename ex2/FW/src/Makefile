.phony: all clean

all: fw fw_sr fw_tiled 

CC=gcc
CFLAGS= -Wall -O3 -Wno-unused-variable
OMPFLAGS= -fopenmp $(CFLAGS)
LDFLAGS= -fopenmp

HDEPS+=%.h

OBJS=util.o

fw: $(OBJS) fw.c 
	$(CC) $(CFLAGS) $(OBJS) fw.c -o fw
fw_sr: fw_sr.c 
	$(CC) $(OMPFLAGS) $(OBJS) fw_sr.c -o fw_sr $(LDFLAGS)
fw_tiled: fw_tiled.c 
	$(CC) $(OMPFLAGS) $(OBJS) fw_tiled.c -o fw_tiled $(LDLAGS)

%.o: %.c $(HDEPS)
	$(CC) $(OMPFLAGS) -c $< -o $@

clean:
	rm -f *.o fw fw_sr fw_tiled 


