#!/bin/bash
gen()
{
    for  ((i=o;i<$1;i++))
    do
        a[i]=$((RANDOM%100))
    done
    echo ${a[@]}
}
j=0
for i in $(gen 10)
do
    echo $i
    a[j]=$i
done    