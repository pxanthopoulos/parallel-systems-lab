#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_mpi

## Output and error files
#PBS -o ../outfiles/6144-16.out
#PBS -e ../outfiles/6144-16.err

## How many machines should we get? 
#PBS -l nodes=2:ppn=8

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3
cd /home/parallel/parlab25/ex6/heat_transfer/mpi/src/
mpirun --mca btl tcp,self -np 16 ./jacobi_mpi 6144 6144 4 4