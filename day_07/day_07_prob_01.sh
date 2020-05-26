#!/bin/bash
gen()
{
    for  ((i=o;i<$1;i++))
    do
        a[i]=$((RANDOM%100))
    done
    echo ${a[@]}
}

min()
{
    if [[ $1 -lt $2 ]]
    then 
        echo $1
    else
        echo $2
    fi
}

max()
{
    if [[ $1 -gt $2 ]]
    then 
        echo $1
    else
        echo $2
    fi
}
#.........................................................................................................................................
j=0
for i in $(gen 10)
do
    a[j]=$i
    ((j++))
done    
mx=${a[0]}
mi=${a[0]}
for i in ${a[@]}
do
    echo $i
    mx=$(max $i $mx)
    mi=$(min $i $mi)
done

delete=($mx)
new=${a[@]/$delete}
#echo ${new[@]}
delete=($mi)
new=${new[@]/$delete}
#echo ${new[@]}
mx=${new[0]}
mi=${new[0]}
for i in ${new[@]}
do
    #echo $i
    mx=$(max $i $mx)
    mi=$(min $i $mi)
done
echo "** second max and second min are "$mx "&" $mi
#....................................................................................................................................


un_sorted=( 11 22 4253 465 6875 8856 457 98 90)
echo ${un_sorted[@]}
declare -a sorted 
while [[ ${#un_sorted[@]} -gt 0 ]]
do
    #echo ${un_sorted[@]}
    mi=${un_sorted[0]}
    for i in ${un_sorted[@]}
    do
        mi=$(min $i $mi )
    done
    #echo $mi
    delete=($mi)
    un_sorted=(${un_sorted[@]/$delete})
    echo ${un_sorted[@]}
    sorted[${#sorted[@]}]=$mi
done
echo ${sorted[@]}
echo "second smallest is ${sorted[1]} and second largest is ${sorted[-2]}"
#................................................................................................................................
 read -p "enter the no to generate prime factors" n
declare -a prime_factors
for i in $(gen $n)
do
    if [[ $(($n%$i)) == 0 ]]
    then
        prime_factors[${#prime_factors[@]}]=$i
        echo $i
    fi
done
echo ${prime_factors[@]}
#........................................................................................................................
declare -a rslt
for ((i=10;i<100;i++))
do
    if [[ $(($i%11)) == 0 ]]
    then
        rslt[${#rslt[@]}]=$i
    fi
done

echo ${rslt[@]}
#................................................................................................................................







