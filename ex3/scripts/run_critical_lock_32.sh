#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o ../outfiles/critical_lock_32.out
#PBS -e ../outfiles/critical_lock_32.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=32

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab25/ex3/src
export OMP_NUM_THREADS=32
export GOMP_CPU_AFFINITY="0-63:1"
./kmeans_omp_critical -s 32 -n 16 -c 16 -l 10
