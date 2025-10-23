#!/bin/bash
read -p "Enter username : " uname
id $uname
if [ $? -eq 0 ]
then
	echo "user $uname exists"
	read -p "Enter new password : " pass
	echo "$pass" | passwd --stdin $uname
	echo "Password updated successfully"
else
        echo "user $uname does not exist"
fi

