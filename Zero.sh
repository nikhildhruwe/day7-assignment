#!/bin/bash -x
count=0
echo "Enter Three Numbers"
while (($count<3))
do
	read number
	integer[count++]=$number
done
count=0
sum=0
while (( ${integer[count]} ))
do
	sum=$(( $sum + ${integer[count]}))
	((count++))
done

echo Three Numbers: ${integer[@]}
echo sum:$sum
