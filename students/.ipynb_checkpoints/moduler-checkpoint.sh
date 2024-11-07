#!/bin/bash
# need to replace spaces because space is understanded as newline
#sed -i 's/ //g' #flag -i to edit in place
#s means substitute, / / is space, /g is global
#run just one time lol.

var=$(cat LCP2223stud.csv)
n=1
ncycle=0
for i in $var; do
	if [ $n -le 18 ]; then
		echo $i >> group$ncycle.csv
		n=$(( n + 1 ))
		echo $n
	else
		n=1
		ncycle=$(( $ncycle + 1 ))
	fi
done

ls group*.csv

