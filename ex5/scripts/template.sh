#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans-__-__-__

## Output and error files
#PBS -o ../outfiles/run_kmeans-__-__-__.out
#PBS -e ../outfiles/run_kmeans-__-__-__.err

## How many machines should we get? 
#PBS -l nodes=silver1:ppn=40

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex5/scripts/
export CUDA_VISIBLE_DEVICES=1

size='__'
coord='__'
center='__'
loop_threshold='__'
bs='__'

../bin/__ -s $size -n $coord -c $center -l $loop_threshold __
				