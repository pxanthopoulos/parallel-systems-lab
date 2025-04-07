#!/bin/bash

# Check if an argument is provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <serial|cgl|fgl|opt|lazy|nb|all|#thrnum>"
    exit 1
fi

# Specify the directory containing your files
files_dir="."

# Get the argument from stdin
argument="$1"

# Loop through each file in the directory
for file in "$files_dir"/*
do
    # Check if it's a file (not a directory)
    if [ -f "$file" ]; then
        # Exclude specific files
        if [ "$(basename "$file")" != "make_on_queue.sh" ] && [ "$(basename "$file")" != "runall.sh" ] && [ "$(basename "$file")" != "template.sh" ]; then
            # Check if the file name contains the specified argument
            if [ "$argument" == "all" ] || [[ "$(basename "$file")" == *"$argument"* ]]; then
                # Submit the job using qsub
                qsub -q serial -l nodes=sandman:ppn=64 "$(basename "$file")"
            fi
        fi
    fi
done
