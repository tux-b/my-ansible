#!/bin/bash
n=$1
t=$((2*n - 1 ))
a=$n
b=$((a+1))
echo -e -n "\033[47m"
for (( i=1; i<=$n; i++ ))
do
  a=$(($b-1))
  b=$a
  k=1
  for (( j=1; j<=$t; j++ ))
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
echo
done
echo -e "\033[0m"
