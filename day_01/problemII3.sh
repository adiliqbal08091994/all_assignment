#!/bin/bash
#Data Analysis manupulation AWK
echo "a:"
awk  '$4>1000 {print "employee_name : "$2" Total_pay : "$7}'  data.csv
echo -e "\nb:"
awk  '{if($4>10000)print $0}' data.csv
echo -e "\nc:"
awk  '{if($3 == "CAPTAIN")print $0}' data.csv

s=0
n=0
for i in $(awk  '{if($3 == "CAPTAIN")print $7}' data.csv)
do
s=$(($s+$i))
n=$(($n+1))
done
echo "total_pay_is " $s
echo "aggregate_total_pay is" $(($s/$n))

awk  '$5>7000 || $5 <10000 {print $3" "$5}'  data.csv

s=0
n=0
for i in $(awk  '{print $4}'  data.csv)
do
s=$(($s+$i))
n=$(($n+1))
done
echo "total_basepay_is " $s
echo "avg_total_basepay is" $(($s/$n))