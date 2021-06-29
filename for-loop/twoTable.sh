#!/bin/bash -x
n=$1
echo $n
powerValue=1
for ((i=1;i<=n;i++))
do
	powerValue=$((2*$powerValue))
	echo $powerValue
done
