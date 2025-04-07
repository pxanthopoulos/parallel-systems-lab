#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_mpi

## Output and error files
#PBS -o ../outfiles/4096-64.out
#PBS -e ../outfiles/4096-64.err

## How many machines should we get? 
#PBS -l nodes=8:ppn=8

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3
cd /home/parallel/parlab25/ex6/heat_transfer/mpi/src/
mpirun --mca btl tcp,self -np 64 ./jacobi_mpi 4096 4096 8 8