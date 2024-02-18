#!/bin/bash

directory="/home/efim/testdir"
days_threshold=0
extensions=(".txt" ".log" )
found_paths=$(find "$directory" -type f)
for path in $found_paths; do
    for ext in ${extensions[*]};do
	if [[ $path = *$ext* ]];then
	    rm "$path"
	    echo "Deleted: $path"
	fi
    done
done
