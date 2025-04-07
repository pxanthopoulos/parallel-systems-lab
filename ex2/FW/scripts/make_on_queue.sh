#!/bin/bash

## Give the Job a descriptive name
#PBS -N make_fw

## Output and error files
#PBS -o ../outfiles/make_fw.out
#PBS -e ../outfiles/make_fw.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=1

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab25/ex2/FW/src
make
