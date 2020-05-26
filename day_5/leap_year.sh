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

