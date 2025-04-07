#!/bin/bash

## Give the Job a descriptive name
#PBS -N make_gameoflife

## Output and error files
#PBS -o ../outfiles/make_gameoflife.out
#PBS -e ../outfiles/make_gameoflife.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=1

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab25/ex1/src
make

