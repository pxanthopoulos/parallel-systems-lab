#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o ../outfiles/reduction_16.out
#PBS -e ../outfiles/reduction_16.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=16

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab25/ex2/kmeans/src
export OMP_NUM_THREADS=16
export GOMP_CPU_AFFINITY="0-63:1"
./kmeans_omp_reduction -s 256 -n 16 -c 16 -l 10
