#!/bin/bash

# Grant Novota 

# execute chmod +x grades.sh first
# Regular Expressions

[[ -n "$1" ]] && echo "FileName=$1" || echo "Usage: regexAnswers.sh filename"

# count lines ending with number or alphabetic letter
grep -o '[A-Za-z|0-9]*$' | wc -l
# number of lines that do not start with a vowel
grep -o '[^AEIOU]*^' | wc -l
# number of lines that have 12 or more alphabetic letters
grep -o '[A-Z\{12,\}]' | wc -l
# number of lines containing only numbers
grep -o '[0-9]' | wc -l
# number of email addresses from UCDenver (e.g. end with 'UCDenver.edu')
grep -o '[\<UCDenver.edu\>]'  | wc -c
# number of phone numbers in the file (i.e. format ___-___-____)

# number of city of Boulder phone numbers (303 numbers)

# number of lines begining with a vowel and ending with a number