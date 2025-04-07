#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans-seq-conf2

## Output and error files
#PBS -o ../outfiles/run_kmeans-seq-conf2.out
#PBS -e ../outfiles/run_kmeans-seq-conf2.err

## How many machines should we get? 
#PBS -l nodes=silver1:ppn=40

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex5/scripts/

size='256'
coord='16'
center='16'
loop_threshold='10'

../bin/kmeans_seq -s $size -n $coord -c $center -l $loop_threshold 
				