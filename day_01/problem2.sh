#!/bin/bash
# Move files from one folder to the respective folder
touch abc.txt , def.txt , ghi.txt , jkl.txt
ls *.txt
for file in ls *.txt
do
    A=$(awk -F. '{print $1}' <<< $file)
    mkdir $A
    mv $file $A

done