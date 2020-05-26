#!/bin/bash
cnt=0;
cnt_=0;
while [ $cnt -lt 11 ] || [ $cnt_ -lt 11 ]
do
        n=$(($RANDOM%2))
        echo $n
        if [[ $n == 0 ]]
        then
            ((cnt++))
         else 
            ((cnt_++))
        fi
done
if [[ $cnt -eq 11 ]]
then
        echo "HEADS IS THE WINNER"
else
        echo "TAILS IS THE WINNER"
fi