#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_ll

## Output and error files
#PBS -o ../outfiles/fgl/fgl_8_1024_0-50-50.out
#PBS -e ../outfiles/fgl/fgl_8_1024_0-50-50.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:01:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex4/src
export MT_CONF=0,1,2,3,4,5,6,7
./x.fgl 1024 0 50 50
