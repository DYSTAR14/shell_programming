#!/bin/bash -x
read -p "Enter Number : " num
echo $num
if [ $num -eq 1 ];then
	echo $num is Not Prime Number
else
	for ((i=2;i<=$num/2;i++))
	do
		if [ $(($num%$i)) -eq 0 ];then
			echo $num is Not Prime Number
			exit
		fi
	done
	echo $num is Prime Number
fi
