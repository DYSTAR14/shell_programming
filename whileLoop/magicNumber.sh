#!/bin/bash -x
echo Just imagine a number Between 1 to 100
start=0
end=$((100 - 1))
while [ $start -le $end ]
do
	mid=$((start + ((end-start)/2)))
	itemAtMid=$mid
	echo Select a option
	echo 1.This $mid is greater than imagine value
	echo 2.This $mid is less than imagine value
	echo 3.This $mid is your imagine value
	read num
	case $num in
		1) end=$((mid-1))
		;;
		2) start=$((mid+1))
		;;
		3) echo Your Imagine value is $mid
			exit
	esac
done
