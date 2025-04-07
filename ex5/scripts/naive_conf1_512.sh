#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans-naive-conf1-512

## Output and error files
#PBS -o ../outfiles/run_kmeans-naive-conf1-512.out
#PBS -e ../outfiles/run_kmeans-naive-conf1-512.err

## How many machines should we get? 
#PBS -l nodes=silver1:ppn=40

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab25/ex5/scripts/
export CUDA_VISIBLE_DEVICES=1

size='256'
coord='2'
center='16'
loop_threshold='10'
bs='512'

../bin/kmeans_cuda_naive -s $size -n $coord -c $center -l $loop_threshold -b $bs
				