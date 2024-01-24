#!/bin/bash
m=3
n=3
declare -A x
declare -A y
declare -A z
echo " enter the elements of matrix A "
for ((i=0;i<3;i++))
do
for ((j=0;j<3;j++))
do
read x[$i,$j]
done 
done

echo " enter the elements of matrix B "
for ((i=0;i<3;i++))
do
for ((j=0;j<3;j++))
do
read y[$i,$j]
done
done

echo " matrix A "
for ((i=0;i<3;i++))
do
for ((j=0;j<3;j++))
do
echo -ne " ${x[$i,$j]} "
done
echo
done

echo " matrix B "
for ((i=0;i<3;i++))
do
for ((j=0;j<3;j++))
do
echo -ne " ${y[$i,$j]} "
done 
echo
done

echo " the resultant matrix is "
for ((i=0;i<3;i++))
do
for ((j=0;j<3;j++))
do
z[$i,$j]=$((x[$i,$j]+y[$i,$j]))
echo -ne " ${z[$i,$j]} "
done
echo
done
