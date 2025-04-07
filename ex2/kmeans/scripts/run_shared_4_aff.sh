#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o ../outfiles/shared_4_aff.out
#PBS -e ../outfiles/shared_4_aff.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=4

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab25/ex2/kmeans/src
export OMP_NUM_THREADS=4
export GOMP_CPU_AFFINITY="0-63:1"
./kmeans_omp_naive -s 256 -n 16 -c 16 -l 10
