#!/bin/bash
declare -A dice
roll()
{
    echo $(($(($RANDOM%6))+1))
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

min()
{
    if [[ $1 -lt $2 ]]
    then 
        echo $1
    else
        echo $2
    fi

}
dice[ones]=0
dice[twos]=0
dice[threes]=0
dice[fours]=0
dice[fives]=0
dice[sixs]=0
echo $rslt
echo ${!dice[@]}
while [[ n -lt 10 ]]
do
    rslt=$(roll)
    case "$rslt" in 
        "1") dice[ones]=$((${dice[ones]}+1))
            n=${dice[ones]}
        ;;
        "2") dice[twos]=$((${dice[twos]}+1))
            n=${dice[twos]}
        ;;
        "3") dice[threes]=$((${dice[threes]}+1))
            n=${dice[threes]}
        ;;
        "4") dice[fours]=$((${dice[fours]}+1))
            n=${dice[fours]}
        ;;
        "5") dice[fives]=$((${dice[fives]}+1))
            n=${dice[fives]}
        ;;
        "6") dice[sixs]=$((${dice[sixs]}+1))
            n=${dice[sixs]}
        ;;
    esac
done

echo ${dice[@]}
mx=0
mi=100
for i in ${dice[@]}
do
    mx=$(max $mx $i)
    mi=$(min $mi $i)
done
for i in ${!dice[@]}
do
    if [[ ${dice[$i]} == $mx ]]
    then
        echo "max is $i"
    elif [[ ${dice[$i]} == $mi ]]
    then 
        echo "min is $i "
    fi
done

#.............................................................................................................................................
rand_names()#generating random names
{
    echo $(pwgen 6 50)

}
dob()
{
    echo $(($RANDOM%12+1))
}
declare -A list
for i in $(rand_names)
do 
    list[$i]=$(dob)
done
unique_list=( 1 2 3 4 5 6 7 8 9 10 11 12 )
for i in ${unique_list[@]}
do
    echo -e "\n grouping by dob as **$i** "
    for j in ${!list[@]}
    do
        if [[ ${list[$j]} == $i ]]
        then
            echo -r " $j ,"
        fi
    done
done
