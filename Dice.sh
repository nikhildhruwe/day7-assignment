#!/bin/bash -x

declare -A Dice
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

flag=0
while (( $flag != 1))
do
check=$((RANDOM%6+1))
case $check in
				1) ((count1++))
					Dice[one]=$count1;;
				2) ((count2++))
					Dice[two]=$count2;;
				3) ((count3++))
					Dice[three]=$count3;;
				4) ((count4++))
					Dice[four]=$count4;;
				5) ((count5++))
					Dice[five]=$count5;;
				6) ((count6++))
					Dice[six]=$count6;;
esac
if (( ($count1==10) || ($count2==10) || ($count3==10) || ($count4==10) || ($count5==10) || ($count6==10) ))
then
	flag=1;
fi
done
Max=0
Min=10
for key in ${!Dice[@]}
do
		echo $key : ${Dice[$key]}
		if ((${Dice[$key]}>$Max))
		then
			Max=${Dice[$key]}
			MaxDice=$key
		fi

		if ((${Dice[$key]}<$Min))
		then
			Min=${Dice[$key]}
			MinDice=$key
		fi
done
echo " "
echo "Maximim times : $MaxDice"
echo "Minimum times : $MinDice"
