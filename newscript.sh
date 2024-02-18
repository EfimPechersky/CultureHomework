#!/bin/bash

# Define the directory to search in, the days threshold and extensions
directory="/home/efim/testdir"
days_threshold=0
extensions=(".txt" ".log" )

# Store the output of the find command in a variable
found_paths=$(find "$directory" -type f -mtime +$days_threshold)

# Iterate through the paths and remove each file
for path in $found_paths; do
    for ext in ${extensions[*]};do
	if [[ $path = *$ext* ]];then
	    rm "$path"
	    echo "Deleted: $path"
	fi
    done
done
