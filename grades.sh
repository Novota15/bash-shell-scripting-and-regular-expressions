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
# 	# cut -d " " -f4-6 $line 
# 	# array=()
# 	# for element in $line
# 	# do
# 	# 	echo "$element"
# 	# 	array+=("$element")
# 	# 	echo ${#array[@]}

# 	# done


# done < "$1"

while read first second third fourth fifth sixth; do
	let sum = 0
	sum += $fourth
	sum += $fifth
	sum += $sixth
	let avg = sum/3
	echo "average: $avg" 
done < $1