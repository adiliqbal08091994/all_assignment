#!/bin/bash
j=0
while IFS= read -r line
do
    a[$j]=$line
    ((j++))
done < state.txt

read -p "enter cutoff marks " marks
for (( i=1 ; i < ${#a[@]} ; i++))
do
    if [[ $(cut -d "," -f 3 <<< ${a[$i]}) -ge $marks ]] 
    then
        echo $(cut -d "," -f 1,2 <<< ${a[$i]})
    
    fi
done