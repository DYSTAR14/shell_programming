#!/bin/bash -x
for ((i=0;i<10;i++))
do
	num[i]=$((RANDOM%1000))
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


