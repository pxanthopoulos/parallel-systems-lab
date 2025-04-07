#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_fw

## Output and error files
#PBS -o ../outfiles_128/run_fw_rec_1024_4.out
#PBS -e ../outfiles_128/run_fw_rec_1024_4.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=4

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab25/ex2/FW/src
export OMP_NUM_THREADS=4
./fw_sr 1024 128
