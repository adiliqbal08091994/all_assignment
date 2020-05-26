#!/bin/bash

read -p "Enter the length" counter
i=0
while [ $i -lt $counter ] 
#while [ $i -lt $counter ] (this is your mistake)
do
read -p "Enter the value" val
        Fr[$i]=$val
if [ $((${Fr[$i]}%2)) == 0 ]

then
        echo "It's an even number" $val
else
        echo "It's an odd number" $val

fi
((i++))
done