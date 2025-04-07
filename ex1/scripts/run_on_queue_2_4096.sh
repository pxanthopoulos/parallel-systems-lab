#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_gameoflife

## Output and error files
#PBS -o ../outfiles/run_gameoflife_2_4096.out
#PBS -e ../outfiles/run_gameoflife_2_4096.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=2

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab25/ex1/src
export OMP_NUM_THREADS=2
./Game_Of_Life 4096 1000

