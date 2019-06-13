#!/bin/bash

# Grant Novota 

# execute chmod +x grades.sh first
# scirpt withoug using the UNIX 'awk' command

[[ -n "$1" ]] && echo "FOO=$1" || echo "Usage: grades.sh filename"

echo "FileName: " $1

# calculate averages and put them in a new file
> average$1
while read first second third fourth fifth sixth; do
	let sum=($fourth+$fifth+$sixth)
	let avg=($sum/3)
	# echo "average: $avg" 
	echo "$avg $first $third $second" >> average$1
done < $1

echo "sorted by average:"
sort -r -k1 average$1

echo "sorted by last name:"
sort -k3 average$1

echo "sorted by first name:"
sort -k4 average$1

echo "sorted by id:"
sort -k2 average$1