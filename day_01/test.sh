#!/bin/bash
#code for reading a line
#x=0
#want=5
#cat access.log | while read line;
 #do
  #x=$(( x+1 ))
  #if [ $x -eq "$want" ]; then
 #   echo $line
#   break
#  fi
#done
#reading the variable using awk
#$(awk -F ';' '{print $3}' <<< $data_url)
#reading the variable using echo
#echo $data_url
#grep "https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)" output.txt



#raw=$(cat output.txt)
#echo $raw

#x=0
#want=1
#while read line <<< $raw
#do
#x=$(( x+1 ))
#if [ $x -eq "$want" ]
#then
#echo $line
#break
#fi
#done
#(awk -F '- -' '{print $1}' <<< $line) >> ip.txt 
#(awk -F '- -' '{print $2}' <<< $line) >> raw_url.txt

raw=$(cat access.log | tail -9) 
echo $raw
(awk -F '- -' '{print $1}' <<< $raw) >> ip.txt 
(awk -F '- -' '{print $2}' <<< $raw) >> bad_url.txt 

sort -u ip.txt | sort -k 4n



