#!/bin/bash -x
wins=0
headCoin=1
tailCoin=0
echo Which side you want to pick Heads or Tails
echo 1. For heads
echo 2. For Tails
read num
while [ $wins -lt 11 ]
do
	case $num in
		1)
			coins=$((RANDOM%2))
			if [ $coins -eq 1 ];then
				wins=$((wins+1))
			fi
			;;
		2)
      	coins=$((RANDOM%2))
      	if [ $coins -eq 0 ];then
      	   wins=$((wins+1))
      	fi
		   ;;
	esac
done
echo your wins is $wins

