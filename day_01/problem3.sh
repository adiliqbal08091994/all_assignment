#!/bin/bash
#Append current data to all log files names which has extension .log.1 from a folder
echo "a:"
touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
echo "b:"
ls *.log.1
echo "c:"
date
echo "d:"
date "+%D"
echo "e:"
dat=$(date "+%D")
for file in $(ls *.log.*)
do
    #echo $file
    name=$(awk -F. '{print $1}' <<< $file)
    #echo $name
    log=$(awk -F. '{print $2}' <<< $file)
    num=$(awk -F. '{print $3}' <<< $file)
    d=$(awk -F "/" '{print $1}' <<< $dat)
    m=$(awk -F "/" '{print $2}' <<< $dat)
    y=$(awk -F "/" '{print $3}' <<< $dat)

    new_file=$name"-"$d$m$y"."$log
    mv $file $new_file
        
done