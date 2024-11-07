%%bash

i=0
var=$(cat data.txt)
for i in $var; do
    a=[ $i % 2 ]
    if [ $a == 0 ]; then
        i=[ $i + 1]
    fi
done
echo $i