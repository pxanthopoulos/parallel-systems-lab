CC=gcc
CFLAGS=-O3 -lm -Wall

all: jacobi

jacobi: Jacobi_serial.c utils.c
	$(CC) $(CFLAGS) Jacobi_serial.c utils.c -o jacobi

clean:
	rm jacobi

