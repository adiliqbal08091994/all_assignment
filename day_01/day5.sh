#!/bin/bash
#rand -N 10 -M 10 -e -d '\n'
#-N is the number of random numbers you need
#-M would be the upper bound of the numbers rand outputs, so (max - min = 100)
#-e -d '\n' sets the delimiter to a newline.
#rand  -M 2 -e -d
f=0
while [ $f -le 21 ]

do
f=$(( $f + 1))
    if [ $(rand  -M 2 -u) == 1 ]
    then
        emphr=$(rand  -M 9 -u)
        echo "wage of $f emp is $(( 250*$emphr ))" 

    else
        echo "wage of $f emp is 0"
    fi
done