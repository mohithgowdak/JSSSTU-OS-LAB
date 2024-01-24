#!/bin/bash
echo " enter number 1 "
read n1
echo " enter number 2 "
read n2
echo " enter number 3 "
read n3

if [ $n1 -gt $n2 ]
then
if [ $n1 -gt $n3 ]
then
echo " $n1 is the greatest among the three numbers "
fi
fi
if [ $n2 -gt $n1 ]
then
if [ $n2 -gt $n3 ]
then
echo " $n2 is the greatest among the three numbers "
fi
fi
if [ $n3 -gt $n1 ]
then
if [ $n3 -gt $n2 ]
then
echo " $n3 is the greatest among the three numbers "
fi
fi
