#!/bin/bash

# Grant Novota 

# execute chmod +x grades.sh first
# Regular Expressions

[[ -n "$1" ]] && echo "FileName=$1" || echo "Usage: regexAnswers.sh filename"

# count lines ending with number or alphabetic letter
grep '[A-Za-z|0-9]\+$' $1 | wc -l
# number of lines that do not start with a vowel
grep '^[^AEIOUaeiou]' $1 | wc -l
# number of lines that have 12 or more alphabetic letters
grep '[A-Za-z\{12,\}]' $1 | wc -l
# number of lines containing only numbers
grep '[0-9]' $1 | wc -l
# number of email addresses from UCDenver (e.g. end with 'UCDenver.edu')
grep -i 'UCDenver.edu' $1 | wc -l
# number of phone numbers in the file (i.e. format ___-___-____)
grep -E '\b[[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4}\b' $1 | wc -l
# number of city of Boulder phone numbers (303 numbers)
grep -E '\b303-[[:digit:]]{3}-[[:digit:]]{4}\b' $1 | wc -l
# number of lines begining with a vowel and ending with a number
grep '^[AEIOUaeiou]*[0-9]\+$' $1 | wc -l
# number of email addresses in "first.last" name format & involve someone whose first name starts with a letter in the second half of the alphabet
grep -E '\b[A-Ma-m].[O-Zo-z]\b' $1 | wc -l