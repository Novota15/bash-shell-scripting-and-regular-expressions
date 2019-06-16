#!/bin/bash

# script using the UNIX 'awk' command

[[ -n "$1" ]] && echo "FileName=$1" || echo "Usage: grades.sh filename"

# Using the awk command:
# 1. awk 'FNR > 1 { sum=0; for (col=3; col<=NF; col++) sum += $col; print $1 " " $2 " " sum/6; }' grades.txt
# 2. awk 'FNR > 1 {avg; for (col=6; col<=NF; col++) avg += $col/3;} END {print "Average = ", avg/6}' grades.txt, this gives 80.39

awk '{avg; for (col=4; col<=NF; col++) avg += $col/3; print "$avg $col=1 $col=3 $col=2" }' $1