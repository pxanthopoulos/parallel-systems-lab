#!/bin/bash

## Give the Job a descriptive name
#PBS -N make_kmeans

## Output and error files
#PBS -o ../outfiles/make_kmeans.out
#PBS -e ../outfiles/make_kmeans.err

## How many machines should we get? 
#PBS -l nodes=silver1:ppn=40

##How long should the job run for?
#PBS -l walltime=00:01:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex5/src
make
