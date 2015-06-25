#!/bin/bash

clear

echo -n "Your name: "
read name
echo -e "\n Hi, " $name

echo $0 $1 $2
echo -e "\n To no of arguments: " $#
echo -e "\n Arguments are: " $*

echo `stat $1`
