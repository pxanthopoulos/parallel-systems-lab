#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_ll

## Output and error files
#PBS -o ../outfiles/nb/nb_64_1024_80-10-10.out
#PBS -e ../outfiles/nb/nb_64_1024_80-10-10.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:01:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex4/src
export MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63
./x.nb 1024 80 10 10
