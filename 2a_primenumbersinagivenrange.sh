#!/bin/bash
echo " enter the value of n to find the prime numbers between 1 and n "
read n

echo " the prime numbers between 1 and $n are "
for ((i=2;i<=n;i++))
do
flag=0
for ((j=2;j<$((i/2));j++))
do
if [ $((i%j)) == 0 ]
then
flag=1
break
fi
done
if [ $flag == 0 ]
then
echo -ne " $i"
fi

done
