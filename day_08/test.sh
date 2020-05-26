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
            echo -n " $j ,"
        fi
    done
done
