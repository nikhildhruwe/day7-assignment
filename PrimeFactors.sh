#!/bin/bash -x

echo "Enter a Number"
read number
echo " "

while (($number%2==0))
do
	#echo 2
	prime[count++]=2
	number=$(($number/2))
done

for (( i=3; $(($i*$i))<=$number; i=$(( $i+2 )) ))
do
	while (( $(($number%$i))==0 ))
	do
	#	echo $i
		prime[count++]=$i;
		number=$(($number/$i))
	done
done

if (($number>2))
then
	#echo $number
	prime[count++]=$number
fi

echo Factors are:${prime[@]}
