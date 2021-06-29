#!/bin/bash -x
num[0]=$((RANDOM%1000))
num[1]=$((RANDOM%1000))
num[2]=$((RANDOM%1000))
num[3]=$((RANDOM%1000))
num[4]=$((RANDOM%1000))
echo ${num[*]}
echo min number
max=0
min=999
for i in ${num[*]}
do
	if [[ $i -gt $max ]];
	then
		max=$i
	fi

	if [[ $i -lt $min ]];
	then
		min=$i
	fi
done
echo max : $max
echo min : $min


