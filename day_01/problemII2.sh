#!/bin/bash
#find a word systemd from all log in the folder /var/log and print number of occurences more than 0
cd /var/log
for file in $(ls *.log)
do

count=$(sudo grep -o -i systemd $file | wc -l)
if [ $count -ne 0 ]
then 
echo -e $file"\t"$count
else
  $PASS
fi
done

#create process list table display pid ,ppid command_name % of memory consumption %of cpu utilization
top