#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_mpi_kmeans

## Output and error files
#PBS -o ../outfiles/1.out
#PBS -e ../outfiles/1.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=1

##How long should the job run for?
#PBS -l walltime=00:05:00

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3
cd /home/parallel/parlab25/ex6/kmeans/src/
mpirun --mca btl tcp,self -np 1 ./kmeans_mpi -s 256 -n 16 -c 16 -l 10

