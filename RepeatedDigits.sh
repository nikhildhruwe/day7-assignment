#!/bin/bash -x
read -p "Enter starting number: " start
read -p "Enter Last number: " end
count=0
for ((number=$start; $number<=$end; ((number++))))
do
	if (( (($number/10))==0 ))
	then
		continue
	fi

	flag=0
	temp=$number
	remainder=$(($temp%10))
	while (( $temp!=0 ))
	do
		remainder1=$(($temp%10))
		if (($remainder != $remainder1))
		then
			flag=1
		fi
		remainder=$remainder1
		temp=$(($temp/10))
	done

if (( $flag !=1 ))
then
	array[((count++))]=$number
fi
done

echo ${array[@]}
