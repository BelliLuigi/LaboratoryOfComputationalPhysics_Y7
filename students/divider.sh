#!/bin/bash

n=$1
file=$(cat data.txt)
for i in $(seq 1 $n); do
	for d in $file; do
		divided=$( echo "scale=2; $d/$i" | bc >> divdata${i}.txt )
	done
done
