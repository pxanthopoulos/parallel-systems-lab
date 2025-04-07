#!/bin/bash

qsub -q parlab -l nodes=1:ppn=1 4096-1.sh
qsub -q parlab -l nodes=1:ppn=2 4096-2.sh
qsub -q parlab -l nodes=1:ppn=4 4096-4.sh
qsub -q parlab -l nodes=1:ppn=8 4096-8.sh
qsub -q parlab -l nodes=2:ppn=8 4096-16.sh
qsub -q parlab -l nodes=4:ppn=8 4096-32.sh
qsub -q parlab -l nodes=8:ppn=8 4096-64.sh