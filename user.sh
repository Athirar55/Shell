#!/bin/bash
read -p "Enter username : " uname
read -p "Enter UID : " uid
read -p "Enter new Shell : " shell
read -p "Enter Gecos (without spaces): " ge
read -p "Do this user need sudo Access(only yes is accepted): " sudo 
grep $uname /etc/passwd
if [ $? -eq 0 ]
	echo "user already exist"
else
	echo "user does not exist"
if [ $sudo == yes ]
then
	useradd -u $uid -c $ge -s $shell -G wheel $uname
else
	useradd -u $uid -c $ge -s $shell $uname
fi
fi
echo "user $uname has been created successfully"


