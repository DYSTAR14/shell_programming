#!/bin/bash -x
max=0
loop=0
count1=1
count2=1
count3=1
count4=1
count5=1
count6=1
count7=1
count8=1
count9=1
count10=1
count11=1
count12=1
declare -A countBirthday
while [ $loop -lt 50 ]
do
   month=$(((RANDOM%12)+1))
   case $month in
      1) countBirthday[1]=$((count1++))
      ;;
      2) countBirthday[2]=$((count2++))
      ;;
      3) countBirthday[3]=$((count3++))
      ;;
      4) countBirthday[4]=$((count4++))
      ;;
      5) countBirthday[5]=$((count5++))
      ;;
      6) countBirthday[6]=$((count6++))
      ;;
		7) countBirthday[7]=$((count7++))
      ;;
		8) countBirthday[8]=$((count8++))
      ;;
		9) countBirthday[9]=$((count9++))
      ;;
		10) countBirthday[10]=$((count10++))
      ;;
		11) countBirthday[11]=$((count11++))
      ;;
		12) countBirthday[12]=$((count12++))
      ;;
   esac
   #maxVal=$( maxValue ${countDie[@]} )
	loop=$(($loop+1))
done
echo Month : Same Month Birthday
for ((i=1;i<=12;i++))
do
	echo $i   :    ${countBirthday[$i]}
done
