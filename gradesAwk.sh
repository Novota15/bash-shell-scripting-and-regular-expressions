#!/bin/bash

# script using the UNIX 'awk' command

[[ -n "$1" ]] && echo "FileName=$1" || echo "Usage: grades.sh filename"

> average$1
echo "Sorted by average score"
awk '{avg=0; for (col=4; col<=NF; col++) avg += $col/3; print avg, $(col=1), $(col=3), $(col=2); }' $1 | sort -r -k1

echo "Sorted by last name"
awk '{avg=0; for (col=4; col<=NF; col++) avg += $col/3; print avg, $(col=1), $(col=3), $(col=2); }' $1 | sort -r -k3

echo "Sorted by first name"
awk '{avg=0; for (col=4; col<=NF; col++) avg += $col/3; print avg, $(col=1), $(col=3), $(col=2); }' $1 | sort -r -k4

echo "Sorted by ID"
awk '{avg=0; for (col=4; col<=NF; col++) avg += $col/3; print avg, $(col=1), $(col=3), $(col=2); }' $1 | sort -r -k2
