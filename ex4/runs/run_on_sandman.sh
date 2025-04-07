#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_cgl2

## Output and error files
#PBS -o run_fgl2.out
#PBS -e run_fgl2.err

## How many machines should we get? 
##PBS -l nodes=1:ppn=64

##How long should the job run for?
#PBS -l walltime=00:20:00

## Start 
## Run make in the src folder (modify properly)


cd /home/parallel/parlab18/ask3/conc_ll

#thread_values="1 2 4 8 16 32 64 128"
thread_values="64 128"
sizes="1024 8192"
confs="100_0_0 80_10_10 20_40_40 0_50_50" 

for list_size in $sizes; do
    for conf in $confs; do
        contains=$(echo $conf | cut -d'_' -f1)
        add=$(echo $conf | cut -d'_' -f2)
        remove=$(echo $conf | cut -d'_' -f3)
        for threads in $thread_values; do
            if [[ $threads -eq 64 ]]; then
                export MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63
            elif [[ $threads -eq 128 ]]; then
                export MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63
            else
                export MT_CONF=$(seq 0 $((threads-1)) | tr '\n' ','| sed 's/,$//')
            fi
          
            ./x.fgl $list_size $contains $add $remove           
        done  
    done
done
