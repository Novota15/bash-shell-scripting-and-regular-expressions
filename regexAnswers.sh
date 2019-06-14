#!/bin/bash

# Grant Novota 

# execute chmod +x grades.sh first
# Regular Expressions

[[ -n "$1" ]] && echo "FileName=$1" || echo "Usage: regexAnswers.sh filename"

# count lines ending with number or alphabetic letter
grep '[A-Za-z|0-9]\+$' $1 | wc -l #good
# number of lines that do not start with a vowel
grep '^[^AEIOUaeiou]' $1 | wc - #good
# number of lines that have 12 or more alphabetic letters
grep '[A-Za-z\{12,\}]' $1 | wc -l
# number of lines containing only numbers
grep '[0-9]' $1 | wc -l
# number of email addresses from UCDenver (e.g. end with 'UCDenver.edu')
grep -i 'UCDenver.edu' $1 | wc -l #confirmed
# number of phone numbers in the file (i.e. format ___-___-____)
grep '\b[[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4}\b' $1 | wc -l
# number of city of Boulder phone numbers (303 numbers)

# number of lines begining with a vowel and ending with a number