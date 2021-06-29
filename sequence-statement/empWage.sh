#!/bin/bash -x
empCheck=$((RANDOM%2))
if [ $empCheck -eq 1 ]
then
	echo Employee is present
	empRatePerHr=20
	empHrs=8
	salary=$(($empRatePerHr*$empHrs))
else
	echo Employe is absent
	salary=0
fi
echo $salary
