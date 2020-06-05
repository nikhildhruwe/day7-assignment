#!/bin/bash -x
count=0
while (( $count<10 ))
do
	integer[count++]=$((RANDOM%900+100))
done

echo ${integer[@]}
 count=0
Max=${integer[0]}
Min=${integer[0]}
while (( ${integer[count]} ))
do
	if (( ${integer[count]}>$Max))
	then
		Max=${integer[count]}
	fi
	if (( ${integer[count]}<$Min))
	then
		Min=${integer[count]}
	fi
	((count++))
done
count=0;
MaxSecond=${integer[0]}
MinSecond=${integer[0]}

while (( ${integer[count]} ))
do
	if (( ${integer[count]}>$MaxSecond))
	then
		if ((${integer[count]}!=$Max))
		then
			MaxSecond=${integer[count]}
		fi
   fi

   if (( ${integer[count]}<$MinSecond))
   then
		if (( ${integer[count]}!=$Min))
  		then
      	MinSecond=${integer[count]}
		fi
   fi
   ((count++))
done
echo "largest : $Max , Minimum: $Min"
echo "Second largest =$MaxSecond, Second smallest=$MinSecond"
