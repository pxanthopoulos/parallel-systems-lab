#!/bin/bash

qsub -q parlab -l nodes=1:ppn=1 2048-1.sh
qsub -q parlab -l nodes=1:ppn=2 2048-2.sh
qsub -q parlab -l nodes=1:ppn=4 2048-4.sh
qsub -q parlab -l nodes=1:ppn=8 2048-8.sh
qsub -q parlab -l nodes=2:ppn=8 2048-16.sh
qsub -q parlab -l nodes=4:ppn=8 2048-32.sh
qsub -q parlab -l nodes=8:ppn=8 2048-64.sh