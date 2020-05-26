#!/bin/bash
degf()
{
    if [[ $1 -lt 0 ]] || [[ $1 -gt 100 ]]
    then 
        echo "enter b/w 0 - 100"
    else
        temp=$1
        echo "scale=2;($temp*9/5)+32" | bc
    fi
}
degc()
{
    if [[ $1 -lt 32 ]] || [[ $1 -gt 212 ]]
    then
        echo "enter b/w 32 - 212 "
    else 
        temp=$1
        echo "scale=2;($temp-32)*5/9" | bc
    fi
}
read -p "enter your choice 1 for farenhite and 2 for celsious " choice
read -p "enter the temperature " temp
case "$choice" in
    "1") echo $(degf $temp)
    ;;
    "2") echo $(degc $temp)
    ;;
esac


#.....................................................................................................................................
#!/bin/bash
read -p "enter the number or string or anything" s
s_2=$(echo $s | rev)
if [[ $s == $s_2 ]]
then    
    echo " it is palindrome"
else 
echo "not a palindrome"
fi


#.........................................................................................................................
#!/bin/bash
palindrome()
{
    s=$1
    s_2=$(echo $s | rev)
    if [[ $s == $s_2 ]]
    then    
        echo 1
    else 
    echo 0
    fi
}


gen() # this generates the prime numbers
{
    x[0]=2
    for ((i=2;i<=$1;i++))
    do
        status=0
        for j in ${x[@]}
        do
        
            if [[ $(($i%$j)) == 0 ]]
            then
                status=1
                break
            fi
        done
        if [[ $status == 0 ]]
        then
            x[${#x[@]}]=$i
        fi
    done
    echo ${x[@]}
}
read -p "enter the range " n
temp=$(gen $n)
for i in ${temp[@]}
do 
    if [[ $(palindrome $i) == 1 ]]
    then 
        echo $i
    fi

done
#......................................................................................................................
