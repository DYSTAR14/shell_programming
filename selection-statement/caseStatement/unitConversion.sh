#!/bin/bash -x
echo 1.Feet to Inch
echo 2.Feet to Meter
echo 3.Inch to Feet
echo 4.Meter to Feet
read -p "Select Any one value : " num
echo $num
case $num in
	1) read -p "Enter Value : " val1
		r1=$(($val1*12))
		echo $r1
	;;
	2)	read -p "Enter Value : " val2
		r2=`echo "scale=4; $val2/3.281" | bc`
		echo $r2
	;;
	3) read -p "Enter Value : " val3
      r3=`echo "scale=4; $val3/12" | bc`
      echo $r3
	;;
	4) read -p "Enter Value : " val4
      r4=`echo "scale=4; $val4*3.281" | bc`
      echo $r4
	;;
esac
