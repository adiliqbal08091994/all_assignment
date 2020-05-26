#!/bin/bash
declare -a rslt
for ((i=10;i<100;i++))
do
    if [[ $(($i%11)) == 0 ]]
    then
        rslt[${#rslt[@]}]=$i
    fi
done

echo ${rslt[@]}