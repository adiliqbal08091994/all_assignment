#!/bin/bash 
#get 5 random numbers print sum  and avg
gen () 
{
    while [[ True ]]
    do
        number=$RANDOM
        if [[ $number -ge 100 && $number -le 1000 ]]
        then
            echo $number
            exit
        else
            $pass
        fi
    done
}
max ()
{
    x=$1
    y=$2
    if [[ $x > $y ]]
    then
        echo $x
    else
        echo $y
    fi
}
min ()
{
    x=$1
    y=$2
    if [[ $x < $y ]]
    then
        echo $x
    else
        echo $y
    fi
}
read -p "enter how many numbers : " n
for (( i=0;i<$n;i++ ))
do
    a[i]=$(gen)
done


for (( i=0;i<$n;i++ ))
do
    echo ${a[i]}
done

mx=0
mi=${a[0]}

for (( i=0;i<$n;i++ ))
do
    mx=$(echo $(max $mx ${a[i]}))
    mi=$(echo $(min $mi ${a[i]}))
done 

echo "minimum is $mi and max is "$mx
echo ${#a[0]}
#echo ${!a[@]}  this gives all the indexes
#echo ${a[@]}   this gives all the elements
#unset a[2]     this removes the value   
#echo ${a[@]}

#-------------------------------------------------------------------------------------------------------------------------------------
#check weather the year is leap year or not
check ()
{
    if [ $(($1%4)) == 0 ]
    then
        echo "is leap year "
    else
        echo "is not a leap year "
    fi
}
read -p "enter the year" year
if [ $(($year%100)) == 0 ]
then 
    parameter=$(($year/100))
    echo $(check $parameter)
else
    parameter=$year
    echo $(check $parameter)
fi

#--------------------------------------------------------------------------------------------------------------------------

#simulate flipping a coin
#!/bin/bash 
flip ()
{
if [ $(($RANDOM%2)) == 0 ]
then
    echo "heads"
else
    echo "tails"
fi
}

read -p "enter no of trials" n
for (( i=0 ; i < $n ; i++ ))
do
    flip
done

#--------------------------------------------------------------------------------------------------------------------------------------------

# read digit and show tha name in strings

check ()
{
    case "$1" in 
        "1") echo "one"
        ;;
        "2") echo "two"
        ;;
        "3") echo "three"
        ;;
        "4") echo "four"
        ;;
        "5") echo "five"
        ;;
        "6") echo "six"
        ;;
        "7") echo "seven"
        ;;
        "8") echo "eight"
        ;;
        "9") echo "nine"
        ;;
    esac
 }
 read -p "enter 1-9 : " n 
 echo "$n is $(check $n)"  

#------------------------------------------------------------------------------------------------------------------------------------------

 #display day of week by reading number


check ()
{
    case "$1" in 
        "1") echo "sunday"
        ;;
        "2") echo "monday"
        ;;
        "3") echo "tuesday"
        ;;
        "4") echo "wednesday"
        ;;
        "5") echo "thrusday"
        ;;
        "6") echo "friday"
        ;;
        "7") echo "saturday"
        ;;
        
    esac
 }
 read -p "enter 1-4 : " n 
 echo "$n is $(check $n)"  

#---------------------------------------------------------------------------------------------------------------------------------------------

 #read a number from user and display ones hundreds and thousands digit

 #!/bin/bash
read -p "enter any number 1-1000" num
n=${#num}
a=(ones tens hundreds thousands)
i=0
while [[ $i -lt ${#num} ]]
do
    dig=$(cut -c $(($n)) <<< $num)
    echo ${a[i]}" digit is " $dig
    ((i++))
    ((n--))
done

#------------------------------------------------------------------------------------------------------------------------------------------------

# read 3 no from user and print the max values of certain exp

for ((i=1;i<4;i++))
do
    read -p "enter $i no " a[$i]
done 

b[0]=$((${a[1]}+${a[2]}*${a[3]}))
b[1]=$((${a[1]}%${a[2]}+${a[3]}))
b[2]=$(echo "scale=2;${a[3]}+${a[1]}/${a[2]}" | bc)
b[3]=$((${a[1]}*${a[2]}+${a[3]}))
max=${b[0]}
for i in ${b[@]}
do
echo  $i
    if [[ $i > $max ]]
    then
        max=$i
    fi
done
echo $max

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Write a program that takes User Inputs and does Unit Conversion of different Length units 1. Feet to Inch 3. Inch to Feet 2. Feet to Meter 4. Meter to Feet


#!/bin/bash
read -p "enter your values  " val
read -p "enter values 1-4 " choice
case "$choice" in 
    "1") echo "feet to inch is " $(($val*12))
    ;;
    "2") echo "feet to meter is " $(echo "scale=2;$val*12*2.54/100" | bc)
    ;;
    "3") echo "inch to feet is " $(echo "scale=2;$val/12" | bc)
    ;;
    "4") echo "meter to feet is " $(echo "scale=2;$val*100/(12*2.54)" | bc)
    ;;
esac

#-----------------------------------------------------------------------------------------------------------------------------------------------------------