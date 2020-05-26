#! /bin/bash +x
# get user info from etc/passwd and cgange ownership of user home directory 
#select higher than 1000
echo "a:"
cat /etc/passwd 

echo "b:"
head -n1 /etc/passwd

echo "c:"
awk -F ':' '$3>=1000 {print "Valid User :"$1","$3}'  /etc/passwd

echo "d:"
awk -F ':' '$3>=1000 ' /etc/passwd | awk -F: '{print $6}' 

echo "d:"
cat /etc/passwd | awk -F ':' '{print "user is :" $1 "dir is  "$6}' | head 

#echo "e:"
#chown -R user directory/ for ownership
#chgrp -R group directory  for changing the group


----------------------------------------------------------------------------------------------------

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

------------------------------------------------------------------------------------------------------
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

------------------------------------------------------------------------------------------------------------









-------------------------------------------------------------------------------------------------------
#!/bin/bash
#check if a folder exist or not if it is not present create it

echo "enter the folder name"
read folder_name
if  [ -d $folder_name ]
then
echo "true"
else 
mkdir -v $folder_name
fi
-------------------------------------------------------------------------------------------------------
#execute command 'hello'and 'ls' and check execution status and print whatever command execute successfully or not
if [ hello  ]
then
    echo "successful"
else
    echo "failed"
fi

if [ ls  ]
then
    echo "successful"
else
    echo "failed"
fi
----------------------------------------------------------------------------------------------------
#set environment usersecret="dH34xJaa23" if its already not set
printenv usersecret
export usersecret='dH34xJaa23'


------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------
#create process list table display pid ,ppid command_name % of memory consumption %of cpu utilization
top
--------------------------------------------------------------------------------------------------------

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

---------------------------------------------------------------------------------------------------------------
#!/bin/bash
mkdir original updated
diff -q original updated
