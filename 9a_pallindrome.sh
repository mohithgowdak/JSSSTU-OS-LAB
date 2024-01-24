#!/bin/bash
echo " enter a string to reverse "
read str
echo " the length of the string is "
length=${#str}
echo $length
for ((i=$length-1;i>=0;i--))
do
rev=$rev${str:$i:1}
done
echo " the reverse of the string is "
echo "$rev"
echo " to check whether the string is pallindrome or not "
if [ $str = $rev ]
then
echo " $str is a pallindrome "
else
echo " $str is not a pallindrome "
fi
