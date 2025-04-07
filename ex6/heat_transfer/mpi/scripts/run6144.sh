#!/bin/bash

qsub -q parlab -l nodes=1:ppn=1 6144-1.sh
qsub -q parlab -l nodes=1:ppn=2 6144-2.sh
qsub -q parlab -l nodes=1:ppn=4 6144-4.sh
qsub -q parlab -l nodes=1:ppn=8 6144-8.sh
qsub -q parlab -l nodes=2:ppn=8 6144-16.sh
qsub -q parlab -l nodes=4:ppn=8 6144-32.sh
qsub -q parlab -l nodes=8:ppn=8 6144-64.sh