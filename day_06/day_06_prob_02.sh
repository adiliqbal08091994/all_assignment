#!/bin/bash
read -p "enter the number to generate table " n
i=1
while [ $i -le $n ]
do
    temp=$((2**$i))
    if [[ $temp -gt 256 ]]
    then 
        break
    fi
    echo $temp
    ((i++))
done
#....................................................................................................................................
#!/bin/bash
echo "think of a number betweeen 1- 100"
start=1
end=100
while [ $start -lt $end ]
do 
    mid=$(((($start+$end))/2))
    echo $mid
    echo "enter l if less and g if greater "
    read input
    case "$input" in
        l)  end=$mid
        ;;
        g)  start=$(($mid+1))
        ;;
    esac
done

echo "your number is " $start
#...............................................................................................................................
#!/bin/bash
flip()
{
    if [[ $((RANDOM%2)) == 0 ]]
    then
        echo "heads"
    else
        echo "tails"
    fi
}

a[0]=0
a[1]=0
while [ ${a[0]} -lt 11 ] &&  [ ${a[1]} -lt 11 ]
do  
    temp=$(flip)
    if [[ $temp == 'heads' ]]
    then
        a[0]=$((${a[0]}+1))
    else
        a[1]=$((${a[1]}+1))
    fi
done
echo "score of heads is ${a[0]} and tails is ${a[1]}"
if [[ ${a[0]} > ${a[1]} ]]
then
    echo "heads is winner"
else 
    echo "tails is winner"
fi
#...................................................................................................................................
#!/bin/bash
amount=100
won=0
loose=0
aim=200
play()
{   
    echo $((RANDOM%2))
}
while [ $amount -gt 0 ] && [ $amount -le $aim ]
do
    bet=$(play)
    if [[ $bet == 1 ]]
    then
        ((amount++))
        ((won++))
        echo $amount
    else
        ((amount--))
        ((loose++))
        echo $amount
    fi
done
if [[ $amount == 0 ]]
then 
    echo "he has lost the game"
else 
    echo " he has won the game"
fi

echo "he won $won times and loosed  $loose times "
#.....................................................................................................................