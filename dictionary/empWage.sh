cd#!/bin/bash -x
# constants
IS_FULLTIME=1
IS_PARTIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=10
MAX_HRS_IN_MONTH=30

#Variables
totalEmpHrs=0
totalWorkingDays=0

declare -A empDailyWage
function getWorkingHours() {
	case $1 in
		$IS_FULLTIME)
			empHrs=8
		;;
		$IS_PARTTIME)
			empHrs=4
		;;
		*)
			empHrs=0
		;;
	esac
	echo $empHrs
}

function calculateDailyWage() {
	local workHrs=$1
	wage=$(($EMP_RATE_PER_HR*$workHrs))
	echo $wage
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	workHours="$( getWorkingHours $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$workHours))
	empDailyWage[$totalWorkingDays]="$( calculateDailyWage $workHours )"
done
Wage=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo "Daily Wage :: " ${empDailyWage[@]}
echo "Day :: " ${!empDailyWage[@]}