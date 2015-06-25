#!/bin/bash
# Usage: forloop2.sh     or  forloop2.sh number
# Example using for loop
# Prints following format
#     *
#    * *
#   * * *
#    * *
#     *

n=${1-10}    # If command line argument not supplied default is 10
t=`expr $((2*$n - 1 ))`
a=$n
b=$(($a+1))
for (( i=1 ; i<=$n ;i++ ))
do
  echo -e -n "\033[47m"
  a=$(($b-1))
  b=$a
  k=1
for (( j=1 ; j<=$t ; j++ ))
  do
      if [ $j -eq $a ]
      then
         echo -e "\033[43m * \033[47m\c"
         if [ $k -lt $i ]
         then
            a=$((a+2))
            let k++
         fi
      else
         echo -n "   "
     fi
  done
  echo  ""
done

n=$(($n-1))
a=1
b=$a
for (( i=$n ; i>=1 ;i-- ))
do
  echo -e -n "\033[47m"
  a=$(($b+1))
  b=$a
  k=1
  for (( j=1 ; j<=$t ; j++ ))
  do
      if [ $j -eq $a ]
      then
         echo -e "\033[43m * \033[47m\c"
         if [ $k -lt $i ]
         then
            a=$((a+2))
            let k++
         fi
      else
         echo -n "   "
     fi
  done
  echo  ""
done
echo -e "\033[0m"
