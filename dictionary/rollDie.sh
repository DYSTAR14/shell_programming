#!/bin/bash -x
max=0
min=99
loop=0
count1=1
count2=1
count3=1
count4=1
count5=1
count6=1
declare -A countDie
minValue(){
   val[0]=$1
   val[1]=$2
   val[2]=$3
   val[3]=$4
   val[4]=$5
   val[5]=$6
   for i in ${val[*]}
   do
      if [[ $i -lt $min ]];
      then
         min=$i
      fi
   done
   echo $min
}
maxValue(){
	val[0]=$1
	val[1]=$2
	val[2]=$3
	val[3]=$4
	val[4]=$5
	val[5]=$6
	for i in ${val[*]}
	do
	   if [[ $i -gt $max ]];
	   then
	      max=$i
	   fi
	done
	echo $max
}
while [ $loop -lt 10 ]
do
	die=$(((RANDOM%6)+1))
	case $die in
		1)	countDie[1]=$((count1++))
		;;
		2) countDie[2]=$((count2++))
		;;
		3) countDie[3]=$((count3++))
		;;
		4)	countDie[4]=$((count4++))
		;;
		5)	countDie[5]=$((count5++))
		;;
		6)	countDie[6]=$((count6++))
		;;
	esac
	maxVal=$( maxValue ${countDie[@]} )
	if [ $maxVal -eq 10 ];then
		loop=$maxVal
	fi
done
echo ${!countDie[@]}
echo ${countDie[@]}
min=$( minValue ${countDie[@]} )
echo max=$maxVal and min=$min
