#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_ll

## Output and error files
#PBS -o ../outfiles/cgl/cgl_4_8192_100-0-0.out
#PBS -e ../outfiles/cgl/cgl_4_8192_100-0-0.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:01:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex4/src
export MT_CONF=0,1,2,3
./x.cgl 8192 100 0 0
