#!/bin/bash
#
nlines=$(wc -l < data.txt)
bigger=0
smaller=0
for (( i=1; i<=nlines; i++)); do
	line=$(sed -n "${i}p" data.txt)
	xyz=$(echo $line | cut -d' ' -f1-3)
	z=$(echo $xyz | cut -d' ' -f3)
	y=$(echo $xyz | cut -d' ' -f2)
	x=$(echo $xyz | cut -d' ' -f1)
	z2=$(( z * z ))
	y2=$(( y * y ))
	x2=$(( x * x ))
	xyz2=$(( x2 + y2 + z2 ))
	distance=$( echo "scale=2; sqrt(${xyz2})" | bc )
	control=$( echo "scale=2; 100*sqrt(3)/2" | bc)
	if (( $(echo "$distance > $control" | bc -l) )); then
		((bigger++))
	else
		((smaller++))
	fi
done
echo "distance is bigger than control in $bigger entries"
echo "is smaller in $smaller entries"

#var=$(cat data.txt)
#for i in $var; do

