#!/bin/bash

n=101
range=$1
while [ $n -le $range ]  
do
h=$(($n/100))
temp=$(($n/10))
t=$(($temp%10))
o=$(($n%10))
s=$(($h**3+$t**3+$o**3))
if [ $s == $n ]
then
echo $s "is armstrong"
else 
 $pass
fi  
((n++))
done
# if [[ $a =~ [A-Za-z] ]] ; then echo "alphabhets" ; elif [[ $a =~ [0-9] ]]; then echo "digit";fi;