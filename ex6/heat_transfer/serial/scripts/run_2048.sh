#!/bin/bash

## Give the Job a descriptive name
#PBS -N runjob

## Output and error files
#PBS -o ../outfiles/run_2048.out
#PBS -e ../outfiles/run_2048.err

## How many machines should we get?
#PBS -l nodes=1:ppn=1

#PBS -l walltime=00:05:00

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3

cd /home/parallel/parlab25/ex6/heat_transfer/serial/src
./jacobi 2048
