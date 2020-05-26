#! /bin/bash +x
# get user info from etc/passwd and cgange ownership of user home directory 
#select higher than 1000
echo "a:"
cat /etc/passwd 

echo "b:"
head -n1 /etc/passwd

echo "c:"
awk -F ':' '$3>=1000 {print "Valid User :"$1","$3}'  /etc/passwd

echo "d:"
awk -F ':' '$3>=1000 ' /etc/passwd | awk -F: '{print $6}' 

echo "d:"
cat /etc/passwd | awk -F ':' '{print "user is :" $1 "dir is  "$6}' | head 

#echo "e:"
#chown -R user directory/ for ownership
#chgrp -R group directory  for changing the group
