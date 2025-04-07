#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_mpi

## Output and error files
#PBS -o ../outfiles/2048-32.out
#PBS -e ../outfiles/2048-32.err

## How many machines should we get? 
#PBS -l nodes=4:ppn=8

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3
cd /home/parallel/parlab25/ex6/heat_transfer/mpi/src/
mpirun --mca btl tcp,self -np 32 ./jacobi_mpi 2048 2048 4 8