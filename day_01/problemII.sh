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
#set environment usersecret="dH34xJaa23" if its already not set
printenv usersecret
export usersecret='dH34xJaa23'