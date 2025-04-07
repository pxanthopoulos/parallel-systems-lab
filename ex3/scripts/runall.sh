#!/bin/bash

# Specify the directory containing your files
files_dir="."

# Loop through each file in the directory
for file in "$files_dir"/*
do
    # Check if it's a file (not a directory)
    if [ -f "$file" ]; then
        # Exclude specific files
        if [ "$(basename "$file")" != "make_on_queue.sh" ] && [ "$(basename "$file")" != "runall.sh" ]; then
            # Submit the job using qsub
            qsub -q serial -l nodes=sandman:ppn=64 $(basename "$file")
        fi
    fi
done
