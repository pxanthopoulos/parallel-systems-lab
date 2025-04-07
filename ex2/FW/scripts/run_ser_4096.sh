#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_fw

## Output and error files
#PBS -o ../outfiles/run_fw_ser_4096.out
#PBS -e ../outfiles/run_fw_ser_4096.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=1

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex2/FW/src
./fw 4096
