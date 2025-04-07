#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_ll

## Output and error files
#PBS -o ../outfiles/fgl/fgl_1_1024_20-40-40.out
#PBS -e ../outfiles/fgl/fgl_1_1024_20-40-40.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:01:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex4/src
export MT_CONF=0
./x.fgl 1024 20 40 40
