.KEEP_STATE:

MPICC = mpicc

CFLAGS=-O3 -lm -Wall -Wextra -Wno-unused
CONV=-DTEST_CONV

all: jacobi_mpi

jacobi_mpi: mpi_skeleton.c utils.c
	$(MPICC) $(CFLAGS) mpi_skeleton.c utils.c -o jacobi_mpi

clean:
	rm jacobi_mpi

