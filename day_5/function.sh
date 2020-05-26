#!/bin/bash
#my_fun()
#
#    echo $1 $2
#}
#for ((i=0;$i<10;i++))
#do
#result="$( my_fun $((RANDOM%2)) )"
#echo ${result[0]}
#if [ $result -eq 1 ]
#then
#echo "success"
#else 
#echo "failure"
#fi
#done
#n=$(my_fun $((RANDOM%2)) "adil")
#echo ${n[0]}



#hello()
#
#    a=$1
#    echo "hi $a how are you"
#}
#a=iqbal
#echo $(hello adil)
#echo $a
#echo $1


check()
{
    if [ -f $1 ]
    then 
        return 0
        
    else
        return 1
    fi
}
read file
if ( check $file )
then
    echo "this is file"

else
    echo "this is folder"
fi


for file in $(ls *.*)
do
ext=$(awk -F. '{print $2}' <<< $file
#$($(awk -F. '{print $2}' <<< $file) < file.txt

echo $ext

case "$ext" in
   "sh") echo "$file is bash"
   ;;
   "txt") echo "$file is text file"
   ;;
   *) echo "$file is other format"
   
   ;;
esac 

done
