#!/bin/bash

# Define the directory to search in and the days threshold
directory="/home/efim/testdir"
days_threshold=0
extensions=(".txt" ".log" )
found_paths=$(find "$directory" -type f)
# Store the output of the find command in a variable
echo "$extensions"
# Iterate through the paths and remove each file
for path in $found_paths; do
    echo "$path"
    for ext in ${extensions[*]};do
	if [[ $path = *$ext* ]];then
	    rm "$path"
	    echo "Deleted: $path"
	fi
    done
done