#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_ll

## Output and error files
#PBS -o ../outfiles/fgl/fgl_16_8192_80-10-10.out
#PBS -e ../outfiles/fgl/fgl_16_8192_80-10-10.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:01:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex4/src
export MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
./x.fgl 8192 80 10 10
