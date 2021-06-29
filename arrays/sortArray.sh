#!/bin/bash -x
for ((i=0;i<10;i++))
do
   num[i]=$((RANDOM%1000))
done
echo ${num[*]}
len=${#num[@]}
for ((j=0;j<10-1;j++))
do
	for ((k=j+1;k<10;k++))
	do
		if [ ${num[k]} -lt ${num[j]} ];then
			temp=${num[k]}
			num[$k]=${num[j]}
			num[$j]=$temp
		fi
	done
done
echo ${num[*]}
max=0
secMax=0
min=999
secMin=999
for i in ${num[*]}
do
   if [[ $i -gt $max ]];
   then
      secMax=$max
      max=$i
   elif [[ $i -gt $secMax ]];
   then
      secMax=$i
   fi

   if [[ $i -lt $min ]];
   then
      secMin=$min
      min=$i
   elif [[ $i -lt $secMin ]];
   then
      secMin=$i
   fi
done
echo max : $max  second_max : $secMax
echo min : $min  second_min : $secMin

