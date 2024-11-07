#!/bin/bash

#echo "select a file to look for the greatest number:"
#read -r variable

variable=$(cat studbyinit.txt)
a=0
for i in $variable; do
	if [ $i -gt $a ]; then
		export a=$i
		echo $i > bigger.txt
	fi
done

cat bigger.txt
