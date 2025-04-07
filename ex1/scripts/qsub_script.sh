#!/bin/bash

# List of script files
scripts=(
  "run_on_queue_1_64.sh"
  "run_on_queue_1_1024.sh"
  "run_on_queue_1_4096.sh"
  "run_on_queue_2_64.sh"
  "run_on_queue_2_1024.sh"
  "run_on_queue_2_4096.sh"
  "run_on_queue_4_64.sh"
  "run_on_queue_4_1024.sh"
  "run_on_queue_4_4096.sh"
  "run_on_queue_6_64.sh"
  "run_on_queue_6_1024.sh"
  "run_on_queue_6_4096.sh"
  "run_on_queue_8_64.sh"
  "run_on_queue_8_1024.sh"
  "run_on_queue_8_4096.sh"
)

# Loop through the list and submit each script to qsub
for script in "${scripts[@]}"; do
  qsub -q parlab "$script"
done
