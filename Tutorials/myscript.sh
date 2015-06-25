#!/bin/bash
clear
#set -x


#echo "hello"

cat songs.txt | while read LINE
do
{
     echo $LINE;
     sleep 2;	
}
done
