#!/bin/bash
declare -A x
echo " enter the number of elements of the array "
read n
echo " enter the elements of the array "
for ((i=0;i<n;i++))
do
read x[$i]
done
big=${x[0]}
for ((i=1;i<n;i++))
do
if [ ${x[$i]} -gt $big ]
then
big=${x[$i]}
fi
done
echo " the biggest element in the array is $big "
