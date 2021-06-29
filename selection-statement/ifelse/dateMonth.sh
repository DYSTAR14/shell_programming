#!/bin/bash -x
d=$1
m=$2
echo Date : $d Month : $m
if [ $m -le 6 -a $m -ge 3 ]
then
	if [ $m -eq 6 ]
	then
		if [ $d -le 20 ]
		then
			echo True
		else
			echo False
		fi
	elif [ $m -eq 3 ]
	then
		if [ $d -ge 20 ]
	   then
			echo True
		else
			echo False
		fi

	else
		echo True
	fi

else
	echo False
fi
