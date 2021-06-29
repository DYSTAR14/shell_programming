#!/bin/bash -x
read -p "Enter year : " year
echo $year
if [ $(($year % 4)) -eq 0 -o $(($year % 400)) -eq 0 ]
then
	echo it a leap year

elif [ $(($year % 100)) -eq 0 ]
then
	echo not a leap year
else
   echo not a leap year
fi

