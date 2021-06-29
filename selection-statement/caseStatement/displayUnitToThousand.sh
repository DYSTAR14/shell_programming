#!/bin/bash -x
read -p "Enter the number till four Digit : " num
echo Enter number is $num
x=${#num}
case "$x" in
	1) u=$((num%10))
		echo Units=$u
	;;
   2) u=$((num%10))
   	ten=$(((num/10)%10))
		echo Units=$u Tence=$ten
	;;
   3)	u=$((num%10))
   	ten=$(((num/10)%10))
   	hun=$(((num/100)%10))
		echo Units=$u Tence=$ten Hundreds=$hun
	;;
	4) u=$((num%10))
		ten=$(((num/10)%10))
		hun=$(((num/100)%10))
		th=$(((num/1000)%10))
		echo Units=$u Tence=$ten Hundreds=$hun Thousands=$th
	;;
	5) u=$((num%10))
   	ten=$(((num/10)%10))
   	hun=$(((num/100)%10))
   	th=$(((num/1000)%10))
		tenth=$(((num/1000)%100))
		echo Units=$u Tence=$ten Hundreds=$hun Thousands=$th TensofThousands=$tenth
	;;
	6) u=$((num%10))
   	ten=$(((num/10)%10))
   	hun=$(((num/100)%10))
   	th=$(((num/1000)%10))
   	tenth=$(((num/1000)%100))
		l=$(((num/100000)%10))
   	echo Units=$u Tence=$ten Hundreds=$hun Thousands=$th TensofThousands=$tenth lakh=$l
	;;
	7) u=$((num%10))
   	ten=$(((num/10)%10))
   	hun=$(((num/100)%10))
   	th=$(((num/1000)%10))
   	tenth=$(((num/1000)%100))
   	l=$(((num/100000)%10))
		tenl=$(((num/100000)%100))
   	echo Units=$u Tence=$ten Hundreds=$hun Thousands=$th TensofThousands=$tenth lakh=$l TensofLakh=$tenl
	;;
   8) u=$((num%10))
   	ten=$(((num/10)%10))
   	hun=$(((num/100)%10))
   	th=$(((num/1000)%10))
   	tenth=$(((num/1000)%100))
   	l=$(((num/100000)%10))
   	tenl=$(((num/100000)%100))
		c=$(((num/10000000)%10))
   	echo Units=$u Tence=$ten Hundreds=$hun Thousands=$th TensofThousands=$tenth lakh=$l TensofLakh=$tenl crore=$c
esac

