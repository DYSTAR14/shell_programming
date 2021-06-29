#!/bin/bash -x
arr=(0 -1 2 -3 1)
echo ${arr[@]}
len=${#arr[@]}
for ((i=0;i<len-2;i++))
do
	for ((j=i+1;j<len-1;j++))
	do
		for ((k=j+1;k<len;k++))
		do
			if [ $((${arr[i]}+${arr[j]}+${arr[k]})) -eq 0 ];then
				echo ${arr[i]} ${arr[j]} ${arr[k]}
			fi
		done
	done
done
