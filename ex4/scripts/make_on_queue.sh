#!/bin/bash

## Give the Job a descriptive name
#PBS -N make_ll

## Output and error files
#PBS -o ../outfiles/make_ll.out
#PBS -e ../outfiles/make_ll.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=1

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex4/src
make
