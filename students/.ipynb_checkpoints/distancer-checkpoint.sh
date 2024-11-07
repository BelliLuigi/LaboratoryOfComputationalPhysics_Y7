#!/bin/bash
#
nlines=$(wc -l < data.txt)
for (( i=1; i<=nlines; i++)); do
	line=$(sed -n "${i}p" data.txt)
	xyz=$(echo $line | grep -E '(^([0-9]+) ([0-9]+) ([0-9]+))')
	echo $xyz
done
#var=$(cat data.txt)
#for i in $var; do

