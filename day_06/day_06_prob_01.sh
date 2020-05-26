#!/bin/bash 
read -p "enter the nth power of n = " n
gen()
{
    base=$1
    pow=$2
    echo $(($base**$pow))
}
#__________________________________________________________________________________________________________________________
for ((i=0;i<$n;i++))
do
    echo $(gen 2 $i)
done

#_________________________________________________________________________________________________________________________
s=0
read -p "enter the number to generate harmonic series" n
for ((i=1;i<=n;i++))
do
    temp=$(gen $i 1)
    temp2=$(echo "scale=2;1/$temp" | bc)
    s=$(echo "scale=2;$s+$temp2" | bc)
    
done
echo $s
#_____________________________________________________________________________________________________________________________
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

#......................................................................................................................

read -p "enter the number to check " num
j=0
for i in $(gen $num)
do 
    a[$j]=$i
    ((j++))
done
if [[ $num == ${a[$((${#a[@]}-1))]} ]]
then 
    echo $num " is a prime number"
else
    echo "not a prime nuber "
fi
#...............................................................................................................

read -p "enter the number to generate " num
echo $(gen $num)
#......................................................................................................................
fact()
{   
    p=1
    for ((i=1;i<=$1;i++))
    do
        p=$(($p*$i))
    done
    echo $p
}
 read -p "enter the no to generate factorial " n
 echo $(fact $n)

 #.................................................................................................................
 read -p "enter the no to generate prime factors" n

for i in $(gen $n)
do
    if [[ $(($n%$i)) == 0 ]]
    then
        echo $i
    fi
done