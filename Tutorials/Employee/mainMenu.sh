#!/bin/bash

clear

echo -e "\t\t\t\tEmployee Management System"
echo -e "\n\t\t\t\t***************************"
echo -e "\t\t\t\t  1.	Add Employee"
echo -e "\t\t\t\t  2.	Modify Employee"
echo -e "\t\t\t\t  3.	Delete Employee"
echo -e "\t\t\t\t  4.	Display Employee"
echo -e "\n"
echo -n "                            Enter your choice [0 to exit]: "
read choice 

if [ $choice -ge 0 ] && [ $choice -le 9 ]; then
	echo "valid input"
else
    echo "Invalid input"
fi


case $choice in
	1)	echo -e "\n You pressed 1"
		;;
	2)	echo -e "\n You pressed 2"
		;;	
	3)	echo -e "\n You pressed 3"
		;;
	4)	echo -e "\n You pressed 4"
		;;
	0)	exit;;
esac
