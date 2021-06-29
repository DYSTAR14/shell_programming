#!/bin/bash -x
n=$1
echo $n
powerValue=1
i=1
while [ $i -le $n ]
do
	powerValue=$((2*$powerValue))
	echo $powerValue
	i=$(($i+1))
done
