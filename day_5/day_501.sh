#!/bin/bash
echo "single digit is :" $(rand -M 10 )
echo "dice number is " $(($(rand -M 6)+1))
echo "sum of 2 dice number is: "$(($(rand -M 6)+2+$(rand -M 6)))

s=0
n=0
while [ $n -le 5 ]
do 
s=$(($s+$(rand -u)))
n=$((1+$n))

done 
echo "sum is" $s "and avg is "$(($s/$n))

read -p "enter inches " inch
x=$(echo "scale=2;$inch/12" | bc)
echo $x

y=$(echo "scale=2;(((60*40)*12*12)/(2.54*2.54))/10000" | bc)
echo $y
echo "scale=2;$y*25" | bc
