#!/bin/bash -x
count=0
while (( $count<10 ))
do
        integer[count++]=$((RANDOM%900+100))
done

end=$count
echo "Array: "
echo ${integer[@]}
count=0
for (( start=1; $start<10; (start++) ))
do
	for ((count=0;$count<$((10-$start)); (count++) ))
   do
		if (( ${integer[count]} > ${integer[count+1]} ))
    	then
       temp=${integer[count]}
       integer[count]=${integer[count+1]}
       integer[count+1]=$temp
      fi
   done
done
echo "Sorted: "
echo ${integer[@]}

MaxSecond=${integer[end-2]}
MinSecond=${integer[1]}

echo "Second smallest=$MinSecond"
echo "Second largest=$MaxSecond"
