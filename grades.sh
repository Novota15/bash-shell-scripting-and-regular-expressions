#!/bin/bash

# execute chmod +x grades.sh first
# scirpt withoug using the UNIX 'awk' command

echo "FileName: " $1

# IFS= (or IFS='') prevents leading/trailing whitespace from being trimmed
# -r prevents backslash escapes from being interpreted

# read each line
# while IFS= read -r line; do
# 	echo "Text read from file: $line"
# 	# read each bit of info in the line and store in array
# 	array=()
# 	for element in $line
# 	do
# 		echo "$element"
# 		array+=("$element")
# 		echo ${#array[@]}

# 	done

# done < "$1"

while read fourth fifth sixth; do
	average = (fourth + fifth + sixth) / 3
	echo "average: $average" 